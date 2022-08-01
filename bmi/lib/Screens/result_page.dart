import 'package:bmi/constants.dart';
import 'package:bmi/Screens/input_page.dart';
import 'package:flutter/material.dart';
import '../component/reusable_card.dart';
import '../component/bottom_button.dart';

class ResultPage extends StatelessWidget {
  final String bmiResult;
  final String reseltText;
  final String interpetation;

  ResultPage(
      {required this.bmiResult,
      required this.reseltText,
      required this.interpetation});

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
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Text(
                'Your Result',
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                   reseltText.toUpperCase(),
                    style: KresultTextStyle,
                  ),
                  Text(
                    bmiResult,
                    style: KBMITextStyle,
                  ),
                  Text(
                    interpetation,
                    textAlign: TextAlign.center,
                    style: KBodyTextStyle,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'RE-CALCULATE',
            onTapp: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
