import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/components/window_unit.dart';
import 'package:bmi_calculator/components/cool_icon_button.dart';
import 'package:bmi_calculator/components/gender_window.dart';
import 'package:bmi_calculator/components/bottom_unit.dart';
import 'package:bmi_calculator/components/calculator_brain.dart';
import 'results_page.dart';

enum GenderSelect { male, female }

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  GenderSelect sg;
  int userHeight = 180;
  int userWeight = 60;
  int userAge = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: WindowUnit(
                      color: sg == GenderSelect.male
                          ? kActiveUnitColor
                          : kWindowUnitColor,
                      // color: mColor,
                      windowChild: GenderWindow(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                      onTrigger: () {
                        setState(() {
                          sg = GenderSelect.male;
                        });
                      },
                    ),
                  ),
                  Expanded(
                    child: WindowUnit(
                      color: sg == GenderSelect.female
                          ? kActiveUnitColor
                          : kWindowUnitColor,
                      windowChild: GenderWindow(
                        icon: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                      onTrigger: () {
                        setState(() {
                          sg = GenderSelect.female;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: WindowUnit(
                color: kWindowUnitColor,
                windowChild: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style: kLabelTextStyle,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          userHeight.toString(),
                          style: kNumberTextStyle,
                        ),
                        Text(
                          ' cm',
                          style: kLabelTextStyle,
                        ),
                      ],
                    ),
                    Slider.adaptive(
                      value: userHeight.toDouble(),
                      min: kSliderMin,
                      max: kSliderMax,
                      onChanged: (double val) {
                        setState(() {
                          userHeight = val.round();
                        });
                      },
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: WindowUnit(
                      color: kWindowUnitColor,
                      windowChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'WEIGHT',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            userWeight.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CoolIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onTrigger: () {
                                    setState(() {
                                      userWeight--;
                                    });
                                  }),
                              SizedBox(
                                width: 10.0,
                              ),
                              CoolIconButton(
                                icon: FontAwesomeIcons.plus,
                                onTrigger: () {
                                  setState(() {
                                    userWeight++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: WindowUnit(
                      color: kWindowUnitColor,
                      windowChild: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style: kLabelTextStyle,
                          ),
                          Text(
                            userAge.toString(),
                            style: kNumberTextStyle,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CoolIconButton(
                                  icon: FontAwesomeIcons.minus,
                                  onTrigger: () {
                                    setState(() {
                                      userAge--;
                                    });
                                  }),
                              SizedBox(
                                width: 10.0,
                              ),
                              CoolIconButton(
                                icon: FontAwesomeIcons.plus,
                                onTrigger: () {
                                  setState(() {
                                    userAge++;
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            BottomUnit(
              label: 'CALCULATE',
              onTrigger: () {
                CalculatorBrain calc =
                    CalculatorBrain(height: userHeight, weight: userWeight);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultsPage(
                      bmiNum: calc.calculateBMI(),
                      bmiLabel: calc.getResult(),
                      bmiText: calc.getText(),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
