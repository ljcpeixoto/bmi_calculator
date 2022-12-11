import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

import 'bottom_button.dart';
import 'constants.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  children: const [
                    Text(
                      'Overweight',
                      style: kOverweightTextStyle,
                    ),
                    Text(
                      '26.7',
                      style: kResultTextStyle,
                    ),
                    Text(
                      'You have a higher than normal body weight. Try to exercise more.',
                      style: kSuggestionTextStyle,
                    )
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            label: 'RE-CALCULATE',
            onTap: () {
              Navigator.pushNamed(
                context,
                'input',
              );
            },
          ),
        ],
      ),
    );
  }
}
