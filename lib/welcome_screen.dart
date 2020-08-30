import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.dart';
import 'icon_child.dart';
import 'card_design.dart';
import 'circuler_icon.dart';
import 'result_screen.dart';

enum gender { MALE, FEMALE }

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  Color onTapColor = kPrimaryColor;
  Color onTapColor2 = kPrimaryColor;
  gender selectGender;
  double sliderValue = 100;
  int weight = 50;
  int age = 25;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
          primaryColor: kBackGroundColor,
          scaffoldBackgroundColor: kBackGroundColor),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'BMI CALCULATOR',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              children: [
                CardDesign(
                  onTapFunction: () {
                    setState(() {
                      onTapColor = kActiveColor;
                      onTapColor2 = kInactiveColor;
                    });
                    print(onTapColor);
                  },
                  color: onTapColor,
                  child: IconChild(
                    icon: FontAwesomeIcons.mars,
                    gender: 'MALE',
                    //color: onTapColor,
                  ),
                ),
                CardDesign(
                  onTapFunction: () {
                    selectGender = gender.FEMALE;
                    setState(() {
                      onTapColor2 = kActiveColor;
                      onTapColor = kInactiveColor;
                    });
                    print(onTapColor);
                  },
                  color: onTapColor2,
                  child: IconChild(
                    icon: FontAwesomeIcons.venus,
                    gender: 'FEMALE',
                  ),
                ),
              ],
            ),
            CardDesign(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'HEIGHT',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        '${sliderValue.round()}',
                        style: TextStyle(
                          fontSize: 40,
                        ),
                      ),
                      Text(
                        'cm',
                      )
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xff6F6B7E),
                      thumbColor: Color(0xffff3385),
                      overlayColor: Color(0x59ff3385),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 13,
                      ),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
                    ),
                    child: Slider(
                      value: sliderValue,
                      min: 50,
                      max: 180,
                      onChanged: (value) {
                        setState(() {
                          sliderValue = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
              color: kPrimaryColor,
              onTapFunction: null,
            ),
            Row(
              children: [
                CardDesign(
                    child: CircularIconChild(
                      label: 'WEIGHT',
                      measure: weight,
                      onTapPlus: () {
                        setState(() {
                          weight++;
                        });
                      },
                      onTapMinus: () {
                        setState(() {
                          weight--;
                        });
                      },
                    ),
                    color: kPrimaryColor,
                    onTapFunction: null),
                CardDesign(
                    child: CircularIconChild(
                      label: 'AGE',
                      measure: age,
                      onTapPlus: () {
                        setState(() {
                          age++;
                        });
                      },
                      onTapMinus: () {
                        setState(() {
                          age--;
                        });
                      },
                    ),
                    color: kPrimaryColor,
                    onTapFunction: null),
              ],
            ),
            Container(
              margin: EdgeInsets.only(top: 10.0),
              height: 60.0,
              child: RaisedButton(
                color: Color(0xffF33158),
                child: Text(
                  'CALCULATE',
                  style: TextStyle(fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ResultScreen()),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
