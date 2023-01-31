import 'package:flutter/material.dart';
import 'package:my_lungs/core/utiles/navigate.dart';
import 'package:my_lungs/core/utiles/utiles.dart';

import '../../../core/themes/colors.dart';
import '../../components/custom_text.dart';
import '../illnes_detailes.dart/athma.dart';
import 'asthma_kinds.dart';
import 'copd_kinds.dart';

class AllSickness extends StatelessWidget {
  AllSickness({super.key, required this.adult});
  bool adult;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          'Choose The type of disease',
          color: AppColors.white,
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: List.generate(
              Utiles.kinds.length,
              (index) => Padding(
                padding: const EdgeInsets.all(5.0),
                child: GestureDetector(
                  onTap: () {
                    if (index == 0)
                      navigate(
                          context: context,
                          route: AsthmaKinds(
                            adult: adult,
                          ));
                    if (index == 1)
                      navigate(context: context, route: CopdKindss());
                    if (index == 2)
                      navigate(context: context, route: AthmaInhalers());
                  },
                  child: Card(
                    child: Container(
                      width: 200,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Column(
                          children: [
                            Image.asset(
                              Utiles.kinds[index].image ?? '',
                              width: 100,
                              height: 130,
                            ),
                            CustomText(Utiles.kinds[index].name ?? '')
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
