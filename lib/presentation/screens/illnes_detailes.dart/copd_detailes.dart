import 'package:flutter/material.dart';
import 'package:my_lungs/core/themes/colors.dart';
import 'package:my_lungs/core/utiles/utiles.dart';
import 'package:my_lungs/presentation/components/custom_text.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CopdDetailes extends StatelessWidget {
  CopdDetailes({super.key, required this.index});
  int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(
          Utiles.copdData[index].title ?? '',
          color: AppColors.white,
        ),
      ),
      backgroundColor: Colors.blue.shade100,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: CustomText(
            Utiles.copdData[index].def ?? '',
            height: 1.5,
          ),
        ),
      ),
    );
  }
}
