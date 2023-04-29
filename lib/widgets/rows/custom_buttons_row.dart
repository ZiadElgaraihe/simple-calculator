import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calculator/constant.dart';

import '../../providers/expression_text_provider.dart';
import '../buttons/numbers_button.dart';
import '../buttons/symbols_button.dart';

class CustomButtonsRow extends StatelessWidget {
  final String btnOne, btnTwo, btnThree, btnFour;
  final ButtonTypeEnum btnFourType;
  final Function symbolBtnCallBack;
  const CustomButtonsRow({
    super.key,
    required this.btnOne,
    required this.btnTwo,
    required this.btnThree,
    required this.btnFour,
    required this.btnFourType,
    required this.symbolBtnCallBack,
  });

  @override
  Widget build(BuildContext context) {
    ExpressionTextProvider myProvider = context.read<ExpressionTextProvider>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        NumbersButton(
          buttonText: btnOne,
          callBack: myProvider.numClicked,
        ),
        NumbersButton(
          buttonText: btnTwo,
          callBack: myProvider.numClicked,
        ),
        NumbersButton(
          buttonText: btnThree,
          callBack: myProvider.numClicked,
        ),
        SymbolsButton(
          buttonColor: btnFourType == ButtonTypeEnum.operationsBtn
              ? Colors.white
              : const Color(0xFFFE9600),
          textColor: btnFourType == ButtonTypeEnum.operationsBtn
              ? const Color(0xFF05796E)
              : Colors.white,
          buttonText: btnFour,
          callBack: symbolBtnCallBack,
        ),
      ],
    );
  }
}
