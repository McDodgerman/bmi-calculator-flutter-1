import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CoolIconButton extends StatelessWidget {
  CoolIconButton({@required this.icon, @required this.onTrigger});

  final IconData icon;
  final Function onTrigger;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onTrigger,
      shape: BeveledRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0))),
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      elevation: 6.0,
      // shape: CircleBorder(),
      child: Icon(icon),
      fillColor: kActiveUnitColor,
    );
  }
}
