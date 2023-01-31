import 'package:flutter/material.dart';
import 'package:my_lungs/core/themes/colors.dart';
import 'package:my_lungs/core/utiles/navigate.dart';
import 'package:my_lungs/presentation/components/custom_text.dart';

import '../all_sickness/all_sickness.dart';

class ChooseAge extends StatelessWidget {
  const ChooseAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          'Choose Your Age',
          color: AppColors.white,
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
              child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    navigate(
                        context: context,
                        route: AllSickness(
                          adult: false,
                        ));
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/child.png',
                        width: 100,
                        height: 150,
                      ),
                      CustomText('Child')
                    ],
                  ),
                ),
              ),
              Expanded(
                child: GestureDetector(
                  onTap: () {
                    navigate(
                        context: context,
                        route: AllSickness(
                          adult: true,
                        ));
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/guy.png',
                        width: 100,
                        height: 150,
                      ),
                      CustomText('Adult')
                    ],
                  ),
                ),
              ),
            ],
          )),
        ],
      ),
    );
  }
}
