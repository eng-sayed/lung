import 'package:flutter/material.dart';

import '../../../core/themes/colors.dart';
import '../../../core/utiles/navigate.dart';
import '../../../core/utiles/utiles.dart';
import '../../components/custom_text.dart';
import '../illnes_detailes.dart/asthma_detailes.dart';
import '../illnes_detailes.dart/copd_detailes.dart';

class AsthmaKinds extends StatelessWidget {
  AsthmaKinds({super.key, required this.adult});
  bool adult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        centerTitle: true,
        title: CustomText('Asthma', color: AppColors.white),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            adult ? Utiles.AsthmaAdult.length : Utiles.AsthmaChild.length,
            (index) => GestureDetector(
              onTap: () {
                navigate(
                    context: context,
                    route: AsthmaDetailes(
                      index: index,
                      adult: adult,
                    ));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/athma.png',
                      width: 80,
                      height: 100,
                    ),
                    CustomText(
                      adult
                          ? Utiles.AsthmaAdult[index].name ?? ''
                          : Utiles.AsthmaChild[index].name ?? '',
                      fontsize: 15,
                      maxLines: 2,
                    ),
                    SizedBox(
                      width: 300,
                      child: Divider(
                        thickness: .8,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )),
      ),
    );
  }
}
