import 'package:flutter/material.dart';

class SymbolsButton extends StatelessWidget {
  const SymbolsButton({
    super.key,
    required this.buttonColor,
    required this.buttonText,
    required this.textColor,
    required this.callBack,
  });

  final Color buttonColor;
  final String buttonText;
  final Function callBack;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        width: 70,
        height: 70,
        child: FloatingActionButton(
          backgroundColor: buttonColor,
          onPressed: () {
            if (buttonText == 'Del' ||
                buttonText == 'AC/C' ||
                buttonText == '=') {
              callBack();
            } else if (buttonText == '÷') {
              callBack('/');
            } else if (buttonText == '×') {
              callBack('*');
            } else {
              callBack(buttonText);
            }
          },
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 24, color: textColor),
          ),
        ),
      ),
    );
  }
}
