import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class BottomUnit extends StatelessWidget {
  final Function onTrigger;
  final String label;

  BottomUnit({this.label, this.onTrigger});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTrigger,
      child: Container(
        child: Center(child: Text(label, style: kBottomUnitTextStyle)),
        color: kBottomUnitColor,
        margin: EdgeInsets.only(top: 10.0),
        // padding: EdgeInsets.only(bottom: 20.0),
        width: double.infinity,
        height: kBottomUnitHeight,
      ),
    );
  }
}
