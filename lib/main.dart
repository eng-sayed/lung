import 'dart:async';
import 'dart:isolate';
import 'dart:ui';

import 'package:app_settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_background_service/flutter_background_service.dart';
import 'package:geolocator/geolocator.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:open_settings/open_settings.dart';
import 'package:workmanager/workmanager.dart';

import 'presentation/screens/splash_screen/splash_screen.dart';

Future<void> initializeService() async {
  final service = FlutterBackgroundService();
  await service.configure(
      iosConfiguration: IosConfiguration(),
      androidConfiguration:
          AndroidConfiguration(onStart: onStart, isForegroundMode: true));
}

@pragma('vm:entry-point')
Future<void> onStart(ServiceInstance service) async {
  DartPluginRegistrant.ensureInitialized();
  await Hive.initFlutter();

  var box = await Hive.openBox("data");

  Timer.periodic(Duration(seconds: 3), (s) async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    //dsffdsfdsfd
    // if (!serviceEnabled) {
    //   await OpenSettings.openLocationSourceSetting();
    //   //await Geolocator.openAppSettings();
    //   //return Future.error('Location services are disabled.');
    // }
    var data = await Geolocator.getCurrentPosition();
    print(data.latitude.toString() + "  " + data.longitude.toString());
    box.add(data.latitude.toString() +
        "  " +
        data.longitude.toString() +
        " " +
        DateTime.now().toString());
    print("hi from background");
  });
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  bool serviceEnabled;
  LocationPermission permission;
  await initializeService();

  // Test if location services are enabled.
  serviceEnabled = await Geolocator.isLocationServiceEnabled();
  if (!serviceEnabled) {
    // Location services are not enabled don't continue
    // accessing the position and request users of the
    // App to enable the location services.
    //  await Geolocator.requestPermission();
    //  return Future.error('Location services are disabled.');
    await OpenSettings.openLocationSourceSetting();
  }

  permission = await Geolocator.checkPermission();
  if (permission == LocationPermission.denied) {
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      // Permissions are denied, next time you could try
      // requesting permissions again (this is also where
      // Android's shouldShowRequestPermissionRationale
      // returned true. According to Android guidelines
      // your App should show an explanatory UI now.
      await Geolocator.requestPermission();
      return Future.error('Location permissions are denied');
    }
  }

  if (permission == LocationPermission.deniedForever) {
    // Permissions are denied forever, handle appropriately.
    return Future.error(
        'Location permissions are permanently denied, we cannot request permissions.');
  }
  permission = await Geolocator.checkPermission();
  // if (permission == LocationPermission.always) {
  // }

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool x = false;
  Box? box;
  List list = [];
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      if ((await Geolocator.checkPermission()) != LocationPermission.always) {
        await AppSettings.openLocationSettings();
        // await Geolocator.openLocationSettings
      }
      bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if (!serviceEnabled) {
        // Location services are not enabled don't continue
        // accessing the position and request users of the
        // App to enable the location services.
        await Geolocator.requestPermission();
        return Future.error('Location services are disabled.');
      }

      x = true;

      setState(() {});
    });
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Lunguide',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            floatingActionButton: FloatingActionButton(onPressed: () async {
              await Hive.initFlutter();
              if (box == null) {
                box = await Hive.openBox("data");
                list = box!.values.toList();
              } else {
                box = Hive.box("data");
                list = box!.values.toList();
              }
              setState(() {});
            }),
            body: box == null
                ? CircularProgressIndicator()
                : ListView.builder(
                    itemBuilder: ((context, index) => Text(
                          list[index],
                          style: TextStyle(color: Colors.red),
                        )),
                    itemCount: box!.length,
                  )));
  }
}
