import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/window_unit.dart';
import 'package:bmi_calculator/components/bottom_unit.dart';
import 'package:bmi_calculator/components/calculator_brain.dart';

class ResultsPage extends StatelessWidget {
  final String bmiNum;
  final String bmiLabel;
  final String bmiText;

  ResultsPage(
      {@required this.bmiNum, @required this.bmiLabel, @required this.bmiText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              padding: EdgeInsets.all(10.0),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: WindowUnit(
              color: kWindowUnitColor,
              windowChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(bmiLabel, style: kHLTextStyle),
                  Text(bmiNum, style: kBMITextStyle),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(bmiText,
                        textAlign: TextAlign.center, style: kBodyTextStyle),
                  )
                ],
              ),
            ),
          ),
          BottomUnit(
            label: 'BACK',
            onTrigger: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
