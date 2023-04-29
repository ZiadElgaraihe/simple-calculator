import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../providers/expression_text_provider.dart';

class ExpressionTextWidget extends StatelessWidget {
  const ExpressionTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: double.infinity,
      child: Consumer<ExpressionTextProvider>(
        builder: (context, value, child) => ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              child: Text(
                value.historyText,
                style: const TextStyle(
                  color: Color(0xFF748DCF),
                  fontSize: 18,
                ),
                textAlign: TextAlign.end,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 24),
              child: Text(
                value.expressionText,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                ),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
