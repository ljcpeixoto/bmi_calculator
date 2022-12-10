import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Padding(
            padding: EdgeInsets.all(40.0),
            child: Text(
              'Your Result',
              style: kPageTitleTextStyle,
            ),
          ),
          Expanded(
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
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(
                context,
                'input',
              );
            },
            child: Container(
              alignment: Alignment.center,
              color: kBottomContainerColor,
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
              child: const Text(
                'RE-CALCULATE',
                style: kLargeButtonTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
