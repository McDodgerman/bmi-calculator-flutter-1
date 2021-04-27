import 'package:flutter/material.dart';
import 'constants.dart';
import 'screens/input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF2E5667),
        scaffoldBackgroundColor: const Color(0xFF244F61),
        accentColor: const Color(0xFFE6A358),
        textTheme: TextTheme(
          body1: TextStyle(color: Colors.white),
        ),
        sliderTheme: SliderTheme.of(context).copyWith(
          thumbColor: kBottomUnitColor,
          thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
          overlayColor: const Color(0x88BA4786),
          overlayShape: RoundSliderOverlayShape(overlayRadius: 30.0),
          activeTrackColor: kActiveUnitColor,
          inactiveTrackColor: const Color(0xFF244F61),
        ),
      ),
      home: InputPage(),
    );
  }
}
