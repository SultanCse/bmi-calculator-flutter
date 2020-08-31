import 'package:flutter/material.dart';
import 'package:flutter_app/constants.dart';
import 'welcome_screen.dart';
import 'bmi_brain.dart';

class ResultScreen extends StatelessWidget {
  final int height;
  final int weight;
  final int age;
  final gender genderType;
  ResultScreen({this.height, this.weight, this.age, this.genderType});
  @override
  Widget build(BuildContext context) {
    double result =
        bmi(height: height, weight: weight, age: age, genderType: genderType);
    return Scaffold(
      body: Container(
        color: kBackGroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 10, left: 10),
              child: Text(
                'YOUR RESULT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.4,
              margin: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                color: kActiveColor,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    presentCondition(result),
                    style: TextStyle(color: Colors.amberAccent, fontSize: 25),
                  ),
                  Text(
                    result.round().toString(),
                    style: TextStyle(
                        fontSize: 70,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    suggestionBasedOnBmi(result),
                    style: TextStyle(
                      color: Colors.lightBlueAccent,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
            ),
            RaisedButton(
              padding: EdgeInsets.symmetric(vertical: 20),
              color: Color(0xffF33158),
              child: Text(
                'RE-CALCULATE',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          ],
        ),
      ),
    );
  }
}
