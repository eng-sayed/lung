import 'package:flutter/material.dart';
import 'package:my_lungs/presentation/components/custom_text.dart';
import 'package:my_lungs/presentation/screens/enter_data/enter_data.dart';

import '../../../core/themes/colors.dart';
import '../../../core/utiles/navigate.dart';
import '../choose_age/choose_age.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      await Future.delayed(
        const Duration(milliseconds: 3000),
        () {
          //   navigateReplacement(context: context, route: ChooseAge());
        },
      );
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          alignment: Alignment.bottomCenter,
          decoration: BoxDecoration(
              color: Color(0xff01396A),
              image: DecorationImage(
                  image: Image.asset(
                "assets/images/icon.png",
                // gaplessPlayback: true,
                fit: BoxFit.fill,
                // width: double.infinity,
                // height: double.infinity,
              ).image)),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          // width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 50),
            child: GestureDetector(
              onTap: () {
                navigateReplacement(context: context, route: ChooseAge());
              },
              child: Container(
                color: Color.fromARGB(255, 4, 115, 212),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: CustomText(
                    'Start',
                    color: AppColors.white,
                  ),
                ),
              ),
            ),
          )),
    );
  }

  // _navigateToHome() async {
  //   await Future.delayed(
  //     const Duration(milliseconds: 4000),
  //     () {},
  //   );
  //   navigateReplacement(context: context, route: EnterData());
  // }
}
