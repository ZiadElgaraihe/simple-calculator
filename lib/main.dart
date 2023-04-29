import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calculator/providers/expression_text_provider.dart';
import 'pages/home_page.dart';

void main() {
  runApp(const SimpleCalculator());
}

class SimpleCalculator extends StatelessWidget {
  const SimpleCalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ExpressionTextProvider>(
      create: (context) => ExpressionTextProvider(),
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Simple Calculator',
        home: HomePage(),
      ),
    );
  }
}
