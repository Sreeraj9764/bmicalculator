import 'dart:math';

class FunctionBrain {
  FunctionBrain({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;
  String CalculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String BmiString() {
    if (_bmi >= 25) {
      return 'OVERWEIGHT';
    }
    else if (_bmi > 18.5) {
      return 'NORMAL';
    }
    else {
      return 'UNDERWEIGHT';
    }
  }
  String BmiQuote() {
    if (_bmi >= 25) {
      return 'You Need To Exercise Daily'.toUpperCase();
    }
    else if (_bmi > 18.5) {
      return 'Eat Healthy And Maintain Your Weight'.toUpperCase();
    }
    else {
      return 'More Calories Needed,Eat well'.toUpperCase();
    }
  }
}