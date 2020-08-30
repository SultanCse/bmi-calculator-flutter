import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CircularIconChild extends StatelessWidget {
  final String label;
  final int measure;
  final Function onTapPlus;
  final Function onTapMinus;
  CircularIconChild(
      {this.label, this.measure, this.onTapPlus, this.onTapMinus});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(label),
        Text(
          measure.toString(),
          style: TextStyle(fontSize: 40),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: onTapPlus,
              child: CircleAvatar(
                child: Icon(
                  Icons.add,
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            GestureDetector(
              onTap: onTapMinus,
              child: CircleAvatar(
                child: Icon(FontAwesomeIcons.minus),
              ),
            ),
          ],
        )
      ],
    );
  }
}
