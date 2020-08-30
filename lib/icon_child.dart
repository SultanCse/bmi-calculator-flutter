import 'package:flutter/material.dart';

class IconChild extends StatelessWidget {
  final IconData icon;
  final String gender;
  IconChild({this.icon, this.gender});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 60,
          ),
          Text(
            gender,
            style: TextStyle(fontSize: 15),
          ),
        ],
      ),
    );
  }
}
