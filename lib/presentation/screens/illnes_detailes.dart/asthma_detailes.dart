import 'package:flutter/material.dart';
import 'package:my_lungs/presentation/components/custom_text.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../core/utiles/utiles.dart';

class AsthmaDetailes extends StatelessWidget {
  AsthmaDetailes({super.key, required this.adult, required this.index});
  bool adult;
  int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomText(adult
            ? Utiles.AsthmaAdult[index].name ?? ''
            : Utiles.AsthmaChild[index].name ?? ''),
      ),
      body: SfPdfViewer.asset(
        adult
            ? Utiles.AsthmaAdult[index].image ?? ''
            : Utiles.AsthmaChild[index].image ?? '',
      ),
    );
  }
}
