import 'package:flutter/material.dart';

class CardDesign extends StatelessWidget {
  final Widget child;
  final Color color;
  final Function onTapFunction;
  CardDesign({this.child, this.color, this.onTapFunction});
  @override
  Widget build(BuildContext context) {
    double x = MediaQuery.of(context).size.height / 4;
    return Expanded(
      child: GestureDetector(
        onTap: onTapFunction,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: color,
          ),
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          height: x,
          child: child,
        ),
      ),
    );
  }
}
