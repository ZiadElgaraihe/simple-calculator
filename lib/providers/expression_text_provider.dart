import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart' as math;

class ExpressionTextProvider extends ChangeNotifier {
  String expressionText = '';
  String historyText = '';
  int i = 0;

  void clearAll() {
    expressionText = '';
    historyText = '';
  }

  void clear() {
    i++;
    if (i == 1) {
      expressionText = '';
    } else if (i == 2) {
      clearAll();
    }
    notifyListeners();
    Future.delayed(
      const Duration(seconds: 1),
      () {
        i = 0;
      },
    );
  }

  void delete() {
    if (expressionText.length != 0) {
      expressionText =
          expressionText.replaceRange(expressionText.length - 1, null, '');
      notifyListeners();
    }
  }

  void numClicked(String number) {
    expressionText += number;
    notifyListeners();
  }

  void elevated(context) {
    try {
      math.Parser p = math.Parser();
      math.Expression exp = p.parse(expressionText);
      math.ContextModel contextModel = math.ContextModel();
      if (expressionText != '') {
        historyText = expressionText;
        expressionText =
            exp.evaluate(math.EvaluationType.REAL, contextModel).toString();
        notifyListeners();
      }
    } catch (e) {
      SnackBar snackBar = SnackBar(
        content: const Text(
          'Something Went Wrong!',
          textAlign: TextAlign.center,
        ),
        duration: const Duration(seconds: 2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        behavior: SnackBarBehavior.floating,
        width: 250,
      );
      ScaffoldMessenger.of(context).showSnackBar(snackBar);
    }
  }
}
