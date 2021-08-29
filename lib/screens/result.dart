import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../components/reuseable_card.dart';
import '../components/buttom_button.dart';
import 'input_page.dart';
class ResultPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('BMI Calculator'),
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
                  style: kResultTitleTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReuseableCard(
                colour: kActiveCardColors,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'OVERWEIGHT',
                      style: kBMIResult,
                    ),
                    Text(
                      '26.7',
                      style: kResultNumber,
                    ),
                    Text(
                      'You have a higher than normal body weight.'
                      'Try to exercise more.',
                      textAlign: TextAlign.center,
                      style: kResultComment,
                    ),
                  ],
                ),
              ),
            ),
            ButtomButton(
              buttonTitle: 'RE-CALCULATE',
              onTap: (){
               Navigator.pop(context);

              },
            ),
          ],
        ),
      ),
    );
  }
}
