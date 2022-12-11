import 'dart:math';

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CalculatorBrain {
  final int height;
  final int weight;
  late double _bmi;

  CalculatorBrain({
    required this.height,
    required this.weight,
  }) {
    _bmi = weight / (pow(height / 100, 2));
  }

  String getBMI() {
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    }
    if (_bmi >= 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  TextStyle getResultTextStyle() {
    if (getResult() == 'Overweight') {
      return kOverweightTextStyle;
    }
    if (getResult() == 'Normal') {
      return kNormalWeightTextStyle;
    } else {
      return kUnderweightTextStyle;
    }
  }

  String getInterpretation() {
    if (getResult() == 'Overweight') {
      return 'You have a higher than normal body weight. Try to exercise more.';
    }
    if (getResult() == 'Normal') {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. Try to eat more.';
    }
  }
}
