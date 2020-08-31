import 'dart:math';
import 'welcome_screen.dart';

double bmi({int height, int weight, int age, gender genderType}) {
  if (genderType == gender.MALE) {
    return (weight / pow(height / 100, 2));
  } else {
    return (weight / pow(height / 90, 2));
  }
}

String presentCondition(double result) {
  if (result > 20) {
    return 'NORMAL';
  } else {
    return 'ABNORMAL';
  }
}

String suggestionBasedOnBmi(double result) {
  if (result > 20) {
    return 'Avoid Eating Rich Food keep yourself happy. On the other hand it gonna be dangerous';
  } else {
    return 'Eat more and more health food';
  }
}
