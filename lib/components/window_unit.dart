import 'package:flutter/material.dart';

class WindowUnit extends StatelessWidget {
  WindowUnit({@required this.color, this.windowChild, this.onTrigger});
  final Color color;
  final Widget windowChild;
  final Function onTrigger;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTrigger,
      child: Container(
        margin: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: color,
        ),
        child: windowChild,
      ),
    );
  }
}
