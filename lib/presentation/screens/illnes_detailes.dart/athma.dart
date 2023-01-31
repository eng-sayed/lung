import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../../../core/themes/colors.dart';
import '../../components/custom_text.dart';

class AthmaInhalers extends StatelessWidget {
  const AthmaInhalers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        title: CustomText(
          'Asthma Inhalers',
          color: AppColors.white,
        ),
        centerTitle: true,
      ),
      body: SfPdfViewer.asset(
        'assets/pdf/Asthma.pdf',
      ),
//       body: SingleChildScrollView(
//         child: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               CustomText(
//                 'Rescue inhalers (or quick-relief inhalers)',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.title,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               CustomText(
//                 'You use these medications to ease asthma symptoms. They relax the muscles that tighten around your airways. This helps open them up so you can breathe easier. If you’re using this type of medication more than 2 days a week, see your doctor.',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.normal,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               CustomText(
//                 '•	Short-acting beta-agonists are the first choice for quick relief of asthma symptoms. They include albuterol (ProAir HFA, Proventil HFA, Ventolin HFA), epinephrine (Asthmanefrin, Primatene Mist), and levalbuterol (Xopenex HFA).',
//                 color: AppColors.black,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'assets/images/asthma1.png',
//                     width: 200,
//                   ),
//                 ],
//               ),
//               CustomText(
//                 'Uses',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.title,
//                 fontsize: 20,
//               ),
//               CustomText(
//                 'Albuterol (also known as salbutamol) is used to prevent and treat wheezing and shortness of breath caused by breathing problems (such as asthma, chronic obstructive pulmonary disease). It is also used to prevent asthma brought on by exercise. It is a quick-relief drug. Albuterol belongs to a class of drugs known as bronchodilators. It works by relaxing the muscles around the airways so that they open up and you can breathe more easily. Controlling symptoms of breathing problems can decrease time lost from work or school. How to use Ventolin HFA Aerosol With Adapter Shake the canister well before using. Follow the instructions for test sprays in the air if you are using a canister for the first time or if you have not used it for 2 weeks or more, or if the inhaler has been dropped. A fine mist is a sign that the inhaler is working properly. Avoid spraying the medication in your eyes. Inhale this medication by mouth as directed by your doctor, usually every 4 to 6 hours as needed. Dosage is based on your medical condition and response to treatment. Do not increase your dose or use this drug more often than prescribed without your doctor\'s approval. Using too much of this medication will increase your risk of serious (possibly fatal) side effects. If you are using this medication to prevent asthma brought on by exercise, inhale as directed by your doctor, usually 2 puffs 15 to 30 minutes before exercise.',
//                 color: AppColors.black,
//               ),
//               SizedBox(
//                 width: 400,
//                 child: Divider(),
//               ),
//               CustomText(
//                 'Anticholinergics ',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.title,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               CustomText(
//                 'such as ipratropium (Atrovent) lessen mucus in addition to opening your airways. They take longer to work than short-acting beta-agonists.',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.normal,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'assets/images/asthma2.png',
//                     width: 200,
//                   ),
//                 ],
//               ),
//               CustomText(
//                 'Uses',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.title,
//                 fontsize: 20,
//               ),
//               CustomText(
//                 '''Ipratropium is used to control and prevent symptoms (wheezing and shortness of breath) caused by ongoing lung disease (chronic obstructive pulmonary disease-COPD which includes bronchitis and emphysema). It works by relaxing the muscles around the airways so that they open up and you can breathe more easily. Controlling symptoms of breathing problems can decrease time lost from work or school.For preventing symptoms of lung disease, this medication must be used regularly to be effective. Use your quick-relief inhaler or nebulized solution (such as albuterol, also called salbutamol in some countries) for wheezing or sudden shortness of breath unless otherwise directed by your doctor. Ipratropium does not work as fast as your quick-relief medication, but may sometimes be used together with your quick-relief medication to relieve symptoms of wheezing or sudden shortness of breath if so prescribed by your doctor.''',
//                 color: AppColors.black,
//               ),
//               SizedBox(
//                 width: 400,
//                 child: Divider(),
//               ),
//               CustomText(
//                 'How to use Atrovent Solution ',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.title,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               CustomText(
//                 '''This product should be clear and colorless. Before using, check this product visually for particles or discoloration. If either is present, do not use the liquid.
// Inhale this medication into your lungs using the nebulizer as directed by your doctor, usually 3 to 4 times a day (6 to 8 hours apart). Avoid getting this medication into your eyes. It may cause eye pain/irritation, temporary blurred vision, and other vision changes. It is recommended that you use a mouthpiece rather than a face mask with the nebulizer or that you close your eyes during use. Each treatment usually takes about 5 to 15 minutes. Use this medication only through a nebulizer. Do not swallow or inject the solution. To prevent infections, clean the nebulizer and mouthpiece/face mask according to the manufacturer's directions.
// Rinse your mouth after treatment to prevent dry mouth and throat irritation.

// •	Oral corticosteroids such as methylprednisolone and prednisone lower swelling in your airways.
// ''',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.normal,
//               ),
//               CustomText(
//                 'Uses',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.title,
//                 fontsize: 20,
//               ),
//               CustomText(
//                 '''•	Prednisone is used to treat conditions such as arthritis, blood disorders, breathing problems, severe allergies, skin diseases, cancer, eye problems, and immune system disorders. Prednisone belongs to a class of drugs known as corticosteroids. It decreases your immune system's response to various diseases to reduce symptoms such as swelling and allergic-type reactions.
// •	Combination quick-relief medicines have both an anticholinergic and a short-acting beta-agonist.
// ''',
//                 color: AppColors.black,
//               ),
//               SizedBox(
//                 width: 400,
//                 child: Divider(),
//               ),
//               CustomText(
//                 'How to use prednisone oral ',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.title,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               CustomText(
//                 '''Take this medication by mouth, with food or milk to prevent stomach upset, as directed by your doctor. Take the tablet form of this medication with a full glass of water (8 ounces/240 milliliters) unless your doctor directs you otherwise. If you are using the liquid form of this medication, carefully measure the dose using a special measuring device/spoon. Do not use a household spoon because you may not get the correct dose. If you are prescribed only one dose per day, take it in the morning before 9 A.M.
// Take this medication exactly as directed by your doctor. Follow the dosing schedule carefully. The dosage and length of treatment are based on your medical condition and response to treatment. If you are taking this medication on a different schedule than a daily one (such as every other day), it may help to mark your calendar with a reminder.
// Do not stop taking this medication without consulting your doctor. Some conditions may become worse when this drug is suddenly stopped.

// Preventive long-term medications
// These treat symptoms and prevent asthma attacks. They reduce swelling and mucus in your airways so they’re less sensitive and less likely to react to asthma triggers.
// •	Inhaled corticosteroids are the most effective long-term control medicines. These aren’t the same as anabolic steroids that people use to grow muscle. They include beclomethasone (Qvar RediHaler), budesonide (Pulmicort Flexhaler), ciclesonide (Alvesco), fluticasone (Flovent HFA), and mometasone (Asmanex Twisthaler).
// ''',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.normal,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'assets/images/asthma3.png',
//                     width: 200,
//                   ),
//                 ],
//               ),
//               CustomText(
//                 'Uses',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.title,
//                 fontsize: 20,
//               ),
//               CustomText(
//                 '''Budesonide is used to control and prevent symptoms (wheezing and shortness of breath) caused by asthma. This medication belongs to a class of drugs known as corticosteroids. It works directly in the lungs to make breathing easier by reducing the irritation and swelling of the airways.This medication must be used regularly to be effective. It does not work right away and should not be used to relieve sudden asthma attacks. If an asthma attack occurs, use your quick-relief inhaler as prescribed.''',
//                 color: AppColors.black,
//               ),
//               SizedBox(
//                 width: 400,
//                 child: Divider(),
//               ),
//               CustomText(
//                 'How to use Pulmicort Flexhaler 180 Mcg/Actuation Breath Activated ',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.title,
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               CustomText(
//                 '''Do not shake this product, and do not use a spacer with it. Hold the device upright while using. If the inhaler device is dropped or shaken, or if you accidentally breathe into the device after the dose has been loaded, you will lose the dose. Load another dose. Do not use the inhaler if it has been damaged or if the mouthpiece has come off.
// Inhale this medication by mouth, usually once or twice daily or as directed by your doctor. Inhale deeply and forcefully while using the device. Turn your mouth away from the device to breathe out before inhaling. Do not exhale back into the device.
// If your prescribed dose is 2 puffs, wait at least one minute between them. If you are using other inhalers at the same time, wait at least 1 minute between the use of each medication, and use this drug (the corticosteroid) last.

// •	Inhaled long-acting beta-agonists open your airways by relaxing the smooth muscles around them. You’ll take this medication along with an inhaled corticosteroid. They include formoterol, salmeterol, and vilanterol.
// ''',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.normal,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'assets/images/asthma4.png',
//                     width: 200,
//                   ),
//                 ],
//               ),
//               CustomText(
//                 'Uses',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.title,
//                 fontsize: 20,
//               ),
//               CustomText(
//                 '''Salmeterol is used as a long-term (maintenance) treatment to prevent or decrease wheezing and trouble breathing caused by asthma or ongoing lung disease (chronic obstructive pulmonary disease-COPD, which includes chronic bronchitis and emphysema). It should only be used long-term if your asthma symptoms are not controlled by your other asthma medications (such as inhaled corticosteroids). Salmeterol must not be used alone to treat asthma.

// •	Combination inhaled medicines have an inhaled corticosteroid along with a long-acting beta-agonist. This is an easy way to take them together. They include Advair, Breo, Dulera, and Symbicort.
// ''',
//                 color: AppColors.black,
//               ),
//               SizedBox(
//                 width: 400,
//                 child: Divider(),
//               ),
//               CustomText(
//                 'How to use Symbicort turbohaler',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.title,
//               ),
//               CustomText(
//                 '''Turbuhalers can be used by children over 8, and adults.
// 1.	Unscrew the cap of the turbuhaler anticlockwise and lift off.
// ''',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.normal,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'assets/images/asthma51.jpg',
//                     width: 200,
//                   ),
//                 ],
//               ),
//               CustomText(
//                 '''2.	Hold the turbuhaler upright. Load it by turning the coloured base of the turbuhaler to the right as far as it will go.
// ''',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.normal,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'assets/images/asthma52.jpg',
//                     width: 200,
//                   ),
//                 ],
//               ),
//               CustomText(
//                 '''3.	Then twist it back to the left until it clicks. It is now loaded.''',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.normal,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'assets/images/asthma53.jpg',
//                     width: 200,
//                   ),
//                 ],
//               ),
//               CustomText(
//                 '''4.	Breathe out gently, away from turbuhaler. Hold the turbuhaler without covering the air inlets and put the tip of the mouthpiece between your lips. Be sure you make a good seal. Breathe in quickly and deeply through your mouth and hold your breath for 5–10 seconds.''',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.normal,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'assets/images/asthma54.jpg',
//                     width: 200,
//                   ),
//                 ],
//               ),
//               CustomText(
//                 '''5.	Remove the turbuhaler from your mouth and breathe out. Replace the cap and screw it shut.''',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.normal,
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Image.asset(
//                     'assets/images/asthma55.jpg',
//                     width: 200,
//                   ),
//                 ],
//               ),
//               CustomText(
//                 '''If another dose is required, repeat steps 1 to 5.
// Note: you will not get more than one dose at a time.
// You must inhale the medicine before loading the device again
// ''',
//                 color: AppColors.black,
//                 textStyleEnum: TextStyleEnum.normal,
//               ),
//               SizedBox(
//                 width: 400,
//                 child: Divider(),
//               ),
//                SizedBox(
//                 width: 400,
//                 child: Divider(),
//               ),
//             ],
//           ),
//         ),
//       ),
    );
  }
}
