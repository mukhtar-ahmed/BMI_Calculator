import 'package:bmi_calculator/reuse_Container.dart';
import 'package:flutter/material.dart';
import 'constant.dart';
import 'butom_button.dart';
import 'package:bmi_calculator/input_Page.dart';

class ResultPage extends StatelessWidget {
  ResultPage({this.bmiResult,this.interpretation,this.resultText});
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.only(top: 30),
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: reuseContainer(
              colour: kInactiveColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    resultText.toUpperCase(),
                    style: kResultTextStyle,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    bmiResult,
                    style: kBMITextStyle,
                  ),
                  SizedBox(
                    height: 50.0,
                  ),
                  Text(
                    interpretation,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ),
          ButomButton(
            onpress: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => inputPage()));
            },
            label: 'RE-CALCULATE',
          ),
        ],
      ),
    );
  }
}
