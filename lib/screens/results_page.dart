import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/customWidgets/bottom_button.dart';
import 'package:flutter/material.dart';
import '../customWidgets/reusable_card.dart';
import '../constants.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {@required this.interpretation,
      @required this.bmiResult,
      @required this.resultText});

  final String bmiResult;
  final String resultText;
  final String interpretation;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(15.0),
            child: Center(
              child: Text(
                "YOUR RESULT",
                style: titleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 6,
            child: ReusableCard(
              width: double.infinity,
              colour: containerColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: resultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: bmiTextStyle,
                  ),
                  Text(
                    'NORMAL BMI RANGE:\n18.5 - 25kg/m\u00B2 ',
                    style: labelTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      interpretation,
                      style: bodyTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  )
                ],
              ),
            ),
          ),
          BottomButton(
              onTap: () {
                Navigator.pop(context);
              },
              buttonTitle: 'RE-CALCULATE')
        ],
      ),
    );
  }
}
