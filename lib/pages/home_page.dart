import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:simple_calculator/constant.dart';
import 'package:simple_calculator/widgets/appbars/home_app_bar.dart';
import 'package:simple_calculator/widgets/rows/custom_buttons_row.dart';
import 'package:simple_calculator/widgets/rows/symbol_buttons_row.dart';
import 'package:simple_calculator/widgets/texts/expression_text_widget.dart';
import '../providers/expression_text_provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    ExpressionTextProvider myProvider = context.read<ExpressionTextProvider>();
    return Scaffold(
      backgroundColor: const Color(0xFF4C72FB),
      appBar: HomeAppBar(height: MediaQuery.of(context).size.height / 13),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ExpressionTextWidget(),
            SymbolButtonsRow(),
            CustomButtonsRow(
              btnOne: '7',
              btnTwo: '8',
              btnThree: '9',
              btnFour: '×',
              btnFourType: ButtonTypeEnum.operationsBtn,
              symbolBtnCallBack: myProvider.numClicked,
            ),
            CustomButtonsRow(
              btnOne: '4',
              btnTwo: '5',
              btnThree: '6',
              btnFour: '-',
              btnFourType: ButtonTypeEnum.operationsBtn,
              symbolBtnCallBack: myProvider.numClicked,
            ),
            CustomButtonsRow(
              btnOne: '1',
              btnTwo: '2',
              btnThree: '3',
              btnFour: '+',
              btnFourType: ButtonTypeEnum.operationsBtn,
              symbolBtnCallBack: myProvider.numClicked,
            ),
            CustomButtonsRow(
              btnOne: '0',
              btnTwo: '00',
              btnThree: '.',
              btnFour: '=',
              btnFourType: ButtonTypeEnum.equalBtn,
              symbolBtnCallBack: () {
                myProvider.elevated(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
