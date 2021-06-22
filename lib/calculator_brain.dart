import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({required this.height, required this.weight});

  final int height;
  final int weight;

  late double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'OverWeight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'UnderWeight';
    }
  }

  String getInterpertation() {
    if (_bmi >= 25) {
      return 'You have a higher than a normal body weight. Try to excercise more.';
    } else if (_bmi > 18.5) {
      return 'you have a normal body weight. Good Job!';
    } else {
      return 'You have lower than normal body weight. You can eat a bit more.';
    }
  }
}
