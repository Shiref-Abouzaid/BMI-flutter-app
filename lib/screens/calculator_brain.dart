import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;
  double _bmi;
  CalculatorBrain({this.height,this.weight});

  String calculateBMI() {
    _bmi = weight / pow(this.height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResault() {
    _bmi = weight / pow(this.height / 100, 2);
    if(_bmi  >= 25) {
      return 'Overwight';
    } else if(_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if(_bmi  >= 25) {
      return 'You have a higher than normal body weight. try to exercise more.';
    } else if(_bmi > 18.5) {
      return 'You have a perfect body weight, good job';
    } else {
      return 'You have a lower than normal body weight, You can eat a bit more.';
    }
  }
}