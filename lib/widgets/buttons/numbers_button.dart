import 'package:flutter/material.dart';

class NumbersButton extends StatelessWidget {
  const NumbersButton({
    super.key,
    required this.buttonText,
    required this.callBack,
  });

  final String buttonText;
  final Function callBack;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      height: 70,
      child: TextButton(
        style: const ButtonStyle(
          shape: MaterialStatePropertyAll(
            CircleBorder(),
          ),
        ),
        onPressed: () {
          callBack(buttonText);
        },
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
    );
  }
}
