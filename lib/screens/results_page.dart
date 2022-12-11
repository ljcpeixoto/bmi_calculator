import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/screens/results_arguments.dart';
import 'package:flutter/material.dart';

import '../components/bottom_button.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ResultsArguments;
    return Scaffold(
      appBar: AppBar(
        title: const Text('RESULTS'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Expanded(
            child: Text(
              'Your Result',
              style: kPageTitleTextStyle,
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      args.calculatorBrain.getResult(),
                      style: args.calculatorBrain.getResultTextStyle(),
                    ),
                    Text(
                      args.calculatorBrain.getBMI(),
                      style: kResultTextStyle,
                    ),
                    Text(
                      args.calculatorBrain.getInterpretation(),
                      style: kInterpretationTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            label: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
