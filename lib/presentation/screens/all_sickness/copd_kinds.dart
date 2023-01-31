import 'package:flutter/material.dart';
import 'package:my_lungs/core/utiles/utiles.dart';

import '../../../core/themes/colors.dart';
import '../../../core/utiles/navigate.dart';
import '../../components/custom_text.dart';
import '../illnes_detailes.dart/copd_detailes.dart';

class CopdKindss extends StatelessWidget {
  const CopdKindss({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        centerTitle: true,
        title: CustomText('COPD', color: AppColors.white),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            Utiles.copdData.length,
            (index) => GestureDetector(
              onTap: () {
                navigate(
                    context: context,
                    route: CopdDetailes(
                      index: index,
                    ));
              },
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Column(
                  children: [
                    Image.asset(
                      'assets/images/copd.png',
                      width: 80,
                      height: 100,
                    ),
                    CustomText(
                      Utiles.copdData[index].title ?? '',
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
