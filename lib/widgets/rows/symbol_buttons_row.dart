import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/expression_text_provider.dart';
import '../buttons/symbols_button.dart';

class SymbolButtonsRow extends StatelessWidget {
  const SymbolButtonsRow({super.key});

  @override
  Widget build(BuildContext context) {
    ExpressionTextProvider myProvider = context.read<ExpressionTextProvider>();
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SymbolsButton(
                  buttonColor: const Color(0xFF2B3D8F),
                  textColor: Colors.white,
                  buttonText: 'AC/C',
                  callBack: myProvider.clear,
                ),
                SymbolsButton(
                  buttonColor: const Color(0xFF2B3D8F),
                  textColor: Colors.white,
                  buttonText: 'Del',
                  callBack: myProvider.delete,
                ),
                SymbolsButton(
                  buttonColor: Colors.white,
                  textColor: const Color(0xFF05796E),
                  buttonText: '%',
                  callBack: myProvider.numClicked,
                ),
                SymbolsButton(
                  buttonColor: Colors.white,
                  textColor: const Color(0xFF05796E),
                  buttonText: '÷',
                  callBack: myProvider.numClicked,
                ),
              ],
            );
  }
}