import 'dart:io';

import 'package:flutter/material.dart';

class Utiles {
  static bool isLogin = true;
  static bool onBoard = true;
  static bool start = true;
  static bool FirstOpen = true;
  static String token = '';
  static String name = '';
  static String UserId = '';
  static String email = '';
  static String phone = '';
  static String FCMToken = '';
  static String UserImage = '';
  static String complaint_phone = '';
  static String privacy = '';

  static ThemeMode appMode = ThemeMode.light;
  static List<KindsSick> kinds = [
    KindsSick(image: 'assets/images/athma.png', name: 'Asthma'),
    KindsSick(image: 'assets/images/copd.png', name: 'COPD'),
    KindsSick(image: 'assets/images/athma2.png', name: 'Asthma Inhalers'),
  ];
  static List<KindsSick> AsthmaChild = [
    KindsSick(
        image: 'assets/pdf/Asthma definition .pdf', name: 'Asthma definition'),
    KindsSick(
        image: 'assets/pdf/Diagnosis of asthma in childrens .pdf',
        name: 'Diagnosis of asthma in childrens'),
    KindsSick(
        image:
            'assets/pdf/Pharmacological treatment of asthma in childrens .pdf',
        name: 'Pharmacological treatment of asthma in childrens'),
    KindsSick(
        image: 'assets/pdf/primary prevention in childrens .pdf',
        name: 'primary prevention in childrens'),
    KindsSick(
        image: 'assets/pdf/Symptom of asthma in childern.pdf',
        name: 'Symptom of asthma in childern'),
  ];
  static List<KindsSick> AsthmaAdult = [
    KindsSick(
        image: 'assets/pdf/Asthma definition .pdf', name: 'Asthma definition'),
    KindsSick(
        image: 'assets/pdf/exacerbation and prevention in adult .pdf',
        name: 'exacerbation and prevention in adult'),
    KindsSick(
        image: 'assets/pdf/Non pharmacological treatment for adults.pdf',
        name: 'Non pharmacological treatment for adults'),
    KindsSick(
        image: 'assets/pdf/pharmacological treatment of asthma in adult.pdf',
        name: 'pharmacological treatment of asthma in adult'),
    KindsSick(
        image: 'assets/pdf/Symptoms of Asthma in ADULTS (Islam mostafa).pdf',
        name: 'Symptoms of Asthma in ADULTS'),
    KindsSick(
        image:
            'assets/pdf/Diagnostic criteria for asthma in adults and adolescents.pdf',
        name: 'Diagnostic criteria for asthma in adults and adolescents'),
  ];

  static List<COPD> copdData = [
    COPD(
        title: 'COPD definition',
        def:
            'Chronic Obstructive Pulmonary Disease (COPD) is a common, preventable,  and treatable disease that is characterized by persistent respiratory  symptoms and airflow limitation that is due to airway and/or alveolar  abnormalities usually caused by significant exposure to noxious particles or gases and  influenced by host factors including abnormal lung development.  Significant comorbidities may have an impact on morbidity and mortality'),
    COPD(
        title: 'Non-pharmacological management',
        def:
            '1-smoking cessation \n2- pulmonary rehabilitation \n3-Exercise training \n4- Nutritional support'),
    COPD(
        title: 'COPD Pharmacological treatment',
        def:
            'Pharmacological therapy for COPD is used to reduce symptoms, reduce  \nthe frequency and severity of exacerbations, and improve exercise  \ntolerance and health statues \nand include use of Bronchodialtiors, Anti-muscarinic agents ,  \nMethylxanthines and Combination bronchodilator therapy \nA)Bronchodilators:Bronchodilators are medications that increase FEV1 and/or change other spirometric variables. They act by altering airway smooth muscle tone and the improvements in expiratory flow reflect widening of the airways rather than changes in lung elastic recoilUse of short acting bronchodilators on a regular basis is not generally recommended. \n Beta2-agonists The principal action of beta2-agonists is to relax airway smooth muscle by  stimulating beta2-adrenergic receptors, which increases cyclic AMP and  produces functional antagonism to bronchoconstriction. There are shortacting (SABA) and long-acting (LABA) beta2-agonists. The effect of SABAs usually wears off within 4 to 6 hours.  LABAs show duration of action of 12 or more hours and do not preclude  additional benefit from as-needed SABA therapy Formoterol and salmeterol are twice-daily LABAs  Indacaterol is a once daily LABA that improves breathlessness, health  statusand exacerbation rate.  Some patients experience cough following the inhalation of indacaterol, Oladaterol and vilanterol are additional once daily LABAs  \nB)Anti-Muscarinic drugs: Antimuscarinic drugs block the bronchoconstrictor effects of acetylcholine  on M3 muscarinic receptors expressed in airway smooth muscle Short-acting antimuscarinics (SAMAs), namely ipratropium and  oxitropium, also block the inhibitory neuronal receptor M2, which  potentially can cause vagally induced bronchoconstriction Long-acting muscarinic antagonists (LAMAs), such as tiotropium,  aclidinium, glycopyrronium bromide (also known as glycopyrrolate) and  umeclidinium have prolonged binding to M3 muscarinic receptors, with  faster dissociation from M2 muscarinic receptors, thus prolonging the  duration of bronchodilator effect A systematic review of randomized controlled trials concluded that  ipratropium, a short acting muscarinic antagonist, alone provided small  benefits over short-acting beta2-agonist in terms of lung function, health  status and requirement for oral steroids.  Among LAMAs, some are administered once a day (tiotropium and  umeclidinium), others twice a day (aclidinium), and some are approved  for once daily dosing in some countries and twice daily dosing in others  (glycopyrronium). \n C)Methyl-Xanthines: They may act as non-selective phosphodiesterase inhibitors, but have  also been reported to have a range of non-bronchodilator actions Data on duration of action for conventional, or even slow-release,  xanthine preparations are lacking in COPD.  Theophylline, the most commonly used methylxanthine Addition of theophylline to salmeterol produces a greater improvement  in FEV1 and breathlessness than salmeterol alone.  \nD)Combination bronchodilator therapy : Combining bronchodilators with different mechanisms and durations of  action may increase the degree of bronchodilation with a lower risk of  side-effects compared to increasing the dose of a single bronchodilator Combinations of SABAs and SAMAs are superior compared to either  medication alone in improving FEV1 and symptoms.  Treatment with formoterol and tiotropium in separate inhalers has a  bigger impact on FEV1 than either component aloneThese combinations  improve lung function compared to placebo In one clinical trial, combination LABA/LAMA treatment had the greatest  improvement in quality of life compared to placebo or its individual  bronchodilator components in patients with a greater baseline'),
    COPD(
        title: 'COPD Prevention',
        def:
            '1-Smoking cessation reduces risk for many adverse health effects,  including poor reproductive health outcomes, cardiovascular diseases,  chronic obstructive pulmonary disease (COPD), and cancer. Quitting  smoking is also beneficial to those who have been diagnosed with heart  disease or COPD. \n2-Nicotine replacement products. Nicotine replacement therapy reliably  increases long-term smoking abstinence rates \n3-pharmacological products. Varenicline, bupropion,and nortriptyline  have been shown to increase long term quit rates \n4-also getting an annual flu vaccination and regular vaccination against  pneumococcal pneumonia to reduce your risk of or prevent some  infections which develop to COPD complications'),
    COPD(
        title: 'COPD Symptoms',
        def:
            ' 1)Chronic and progressive dyspnea (the most characteristic symptom of  COPD & the major cause of the disability and anxiety) \n(2)Chronic cough in COPD may be productive or unproductive (30% of  patients with sputum production & often the first symptom of COPD) \n(3)increased effort to breath, chest heaviness with air hunger, or gasping \n(4)Wheezing and chest tightness \n(5)Fatigue (feeling of tiredness or exhaustion) which is the most common  distressing symptoms That impacts a patient’s ability to perform activities of daily living and  their quality of life & they describe it as a feeling of “general  tiredness” or as a feeling of being “drained of energy” \n(6)Additional symptoms appears in severe cases:-  \n*weight loss, muscle loss, and anorexia  \n* rib fractures  \n* Ankle swelling \n * Syncope during cough'),
    COPD(
        title: 'COPD Diagnosis',
        def:
            '''For the diagnosis and assessment of COPD, spirometry is the gold standard.
1- Spirometry revealing an FEV1
/FVC less than 70% of predicted is the hallmark of COPD. 
Bronchodilator reversibility testing is no longer recommended.
2- Measurement of arterial blood gas tension should be considered for all 
patients with FEV1
less than 50% of predicted or clinical signs suggestive of respiratory failure or 
right heart failure.
3- On the basis of the spirometry result, a GOLD grade is assigned. The GOLD 
grade is primarily used to direct nonpharmacologic interventions 
(e.g., pulmonary rehabilitation, lung reduction and surgery).
i. GOLD 1: Mild FEV 80% or greater of predicted
ii. GOLD 2: Moderate FEV 50%–79% of predicted
iii. GOLD 3: Severe FEV 30%–49% of predicted
iv. GOLD 4: Very severe FEV less than 30% of predicted
COPD should be considered in any patient who has dyspnea, chronic cough or 
sputum production, a history of recurrent lower respiratory tract infections, and 
a history of exposure to risk factors for disease.
'''),
  ];

  static List<COPD> asthmaAdultsKinds = [
    COPD(
        title: 'Asthma definition ',
        def:
            '''Asthmaisacommonlungconditionthatcausesoccasionalbreathingdifficulties.
Itaffectspeopleofallagesandoftenstartsinchildhood,althoughitcanalsodevelopforthe
firsttimeinadults.
There'scurrentlynocure,buttherearesimpletreatmentsthatcanhelpkeepthesymptoms
undercontrolsoitdoesnothaveabigimpactonyourlife.'''),
    COPD(title: 'Diagnostic criteria for asthma', def: '''Feature
Symptoms or features that support the diagnosis of asthma
Wheeze, shortness of breath, chest tightness and cough
More than one type of respiratory symptom (in adults, isolated cough is seldom
due to asthma)
Symptoms occur variably over time and vary in intensity
Symptoms are often worse at night or on waking
Symptoms are often triggered by exercise, laughter, allergens, cold air
Symptoms often appear or worsen with viral infections
Symptoms 
12-39 years old:
symptoms
Sneezing. itching. blocked nose. throat-clearing Dyspnea, inspiratory wheezing (stridor)
Dizziness, paresthesia, sighing Productive cough. recurrent infections
Excessive cough and mucus production Cardiac murmurs Shortness of breath, family history of 
early onset of symptom
Condition:
Chronic upper airway cough syndrome Inducible laryngeal obstruction
Hyperventilation, dysfunctional breathing
Bronchiectasis
Cystic fibrosis
Congenital heart disease
Alpha1-antitrypsin deficiency
Inhaled foreign body
+40 years:
symptoms
Dyspnea, inspiratory wheezing (stridor)
Dizziness, paresthesia, sighing
Cough, sputum, dyspnea on exertion, smoking or noxious exposure
Productive cough, recurrent infections
Dyspnea with exertion, nocturnal symptoms, ankle edema
Treatment with angiotensin converting enzyme (ACE) inhibitor
Dyspnea with exertion, non-productive cough, finger clubbing, chest pain
Dyspnea, unresponsive to bronchodilators
Condition:
Inducible laryngeal obstruction
Hyperventilation, dysfunctional breathing
COPD*
Bronchiectasis
Cardiac failure
Medication-related cough
Parenchymal lung disease
Pulmonary embolism
Central airway obstruction
CONFIRMED VARIABLE EXPIRATORY AIRFLOW LIMITATION
Expiratory airflow limitation:
At a time when FEV is reduced, confirm that FEV/FVC is reduced compared with the lower limit
of normal (it is usually >0.75-0.80 in adults
Positive bronchodilator (BD) responsiveness reversibility test:
Adults: increase in FEV1 of >12% and >200 mL (greater confidence if increase is
>15% and >400 mL)
Excessive variability in twice-daily PEE over 2 weeks:
Adults: average daily diurnal PEF variability >10%*
Significant increase in lung function after 4 weeks of anti-inflammatory treatment:
Adults: increase in FEV1 by >12% and >200 mL (or PEFt by >20%) from baseline
after 4 weeks of treatment outside respiratory infections
Positive exercise challenge test:
Adults fall in FEVi of >10% and >200 m from baseline
Positive bronchial challenge test:
Fall in FEV1 from baseline of ≥20% with standard doses of methacholine, or 215%
Excessive variation in lung function between visits:
Adults: variation in FEV of >12% and >200 mL between visits. outside of respiratory infections'''),
    COPD(
        title: 'Definition of asthma exacerbations',
        def:
            'Pharmacological therapy for COPD is used to reduce symptoms, reduce  \nthe frequency and severity of exacerbations, and improve exercise  \ntolerance and health statues \nand include use of Bronchodialtiors, Anti-muscarinic agents ,  \nMethylxanthines and Combination bronchodilator therapy \nA)Bronchodilators:Bronchodilators are medications that increase FEV1 and/or change other spirometric variables. They act by altering airway smooth muscle tone and the improvements in expiratory flow reflect widening of the airways rather than changes in lung elastic recoilUse of short acting bronchodilators on a regular basis is not generally recommended. \n Beta2-agonists The principal action of beta2-agonists is to relax airway smooth muscle by  stimulating beta2-adrenergic receptors, which increases cyclic AMP and  produces functional antagonism to bronchoconstriction. There are shortacting (SABA) and long-acting (LABA) beta2-agonists. The effect of SABAs usually wears off within 4 to 6 hours.  LABAs show duration of action of 12 or more hours and do not preclude  additional benefit from as-needed SABA therapy Formoterol and salmeterol are twice-daily LABAs  Indacaterol is a once daily LABA that improves breathlessness, health  statusand exacerbation rate.  Some patients experience cough following the inhalation of indacaterol, Oladaterol and vilanterol are additional once daily LABAs  \nB)Anti-Muscarinic drugs: Antimuscarinic drugs block the bronchoconstrictor effects of acetylcholine  on M3 muscarinic receptors expressed in airway smooth muscle Short-acting antimuscarinics (SAMAs), namely ipratropium and  oxitropium, also block the inhibitory neuronal receptor M2, which  potentially can cause vagally induced bronchoconstriction Long-acting muscarinic antagonists (LAMAs), such as tiotropium,  aclidinium, glycopyrronium bromide (also known as glycopyrrolate) and  umeclidinium have prolonged binding to M3 muscarinic receptors, with  faster dissociation from M2 muscarinic receptors, thus prolonging the  duration of bronchodilator effect A systematic review of randomized controlled trials concluded that  ipratropium, a short acting muscarinic antagonist, alone provided small  benefits over short-acting beta2-agonist in terms of lung function, health  status and requirement for oral steroids.  Among LAMAs, some are administered once a day (tiotropium and  umeclidinium), others twice a day (aclidinium), and some are approved  for once daily dosing in some countries and twice daily dosing in others  (glycopyrronium). \n C)Methyl-Xanthines: They may act as non-selective phosphodiesterase inhibitors, but have  also been reported to have a range of non-bronchodilator actions Data on duration of action for conventional, or even slow-release,  xanthine preparations are lacking in COPD.  Theophylline, the most commonly used methylxanthine Addition of theophylline to salmeterol produces a greater improvement  in FEV1 and breathlessness than salmeterol alone.  \nD)Combination bronchodilator therapy : Combining bronchodilators with different mechanisms and durations of  action may increase the degree of bronchodilation with a lower risk of  side-effects compared to increasing the dose of a single bronchodilator Combinations of SABAs and SAMAs are superior compared to either  medication alone in improving FEV1 and symptoms.  Treatment with formoterol and tiotropium in separate inhalers has a  bigger impact on FEV1 than either component aloneThese combinations  improve lung function compared to placebo In one clinical trial, combination LABA/LAMA treatment had the greatest  improvement in quality of life compared to placebo or its individual  bronchodilator components in patients with a greater baseline'),
    COPD(
        title: 'COPD Prevention',
        def:
            '1-Smoking cessation reduces risk for many adverse health effects,  including poor reproductive health outcomes, cardiovascular diseases,  chronic obstructive pulmonary disease (COPD), and cancer. Quitting  smoking is also beneficial to those who have been diagnosed with heart  disease or COPD. \n2-Nicotine replacement products. Nicotine replacement therapy reliably  increases long-term smoking abstinence rates \n3-pharmacological products. Varenicline, bupropion,and nortriptyline  have been shown to increase long term quit rates \n4-also getting an annual flu vaccination and regular vaccination against  pneumococcal pneumonia to reduce your risk of or prevent some  infections which develop to COPD complications'),
    COPD(
        title: 'COPD Symptoms',
        def:
            ' 1)Chronic and progressive dyspnea (the most characteristic symptom of  COPD & the major cause of the disability and anxiety) \n(2)Chronic cough in COPD may be productive or unproductive (30% of  patients with sputum production & often the first symptom of COPD) \n(3)increased effort to breath, chest heaviness with air hunger, or gasping \n(4)Wheezing and chest tightness \n(5)Fatigue (feeling of tiredness or exhaustion) which is the most common  distressing symptoms That impacts a patient’s ability to perform activities of daily living and  their quality of life & they describe it as a feeling of “general  tiredness” or as a feeling of being “drained of energy” \n(6)Additional symptoms appears in severe cases:-  \n*weight loss, muscle loss, and anorexia  \n* rib fractures  \n* Ankle swelling \n * Syncope during cough'),
    COPD(
        title: 'COPD Diagnosis',
        def:
            '''For the diagnosis and assessment of COPD, spirometry is the gold standard.
1- Spirometry revealing an FEV1
/FVC less than 70% of predicted is the hallmark of COPD. 
Bronchodilator reversibility testing is no longer recommended.
2- Measurement of arterial blood gas tension should be considered for all 
patients with FEV1
less than 50% of predicted or clinical signs suggestive of respiratory failure or 
right heart failure.
3- On the basis of the spirometry result, a GOLD grade is assigned. The GOLD 
grade is primarily used to direct nonpharmacologic interventions 
(e.g., pulmonary rehabilitation, lung reduction and surgery).
i. GOLD 1: Mild FEV 80% or greater of predicted
ii. GOLD 2: Moderate FEV 50%–79% of predicted
iii. GOLD 3: Severe FEV 30%–49% of predicted
iv. GOLD 4: Very severe FEV less than 30% of predicted
COPD should be considered in any patient who has dyspnea, chronic cough or 
sputum production, a history of recurrent lower respiratory tract infections, and 
a history of exposure to risk factors for disease.
'''),
  ];
}

class KindsSick {
  String? image;
  String? name;
  KindsSick({
    this.image,
    this.name,
  });
}

class COPD {
  String? title;
  String? def;
  COPD({
    this.title,
    this.def,
  });
}
