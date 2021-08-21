import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'card_widget.dart';
import 'reuseable_card.dart';

const bottomContainerHeight = 80.0;
const activeCardColors = Color(0xFF1D1E33);
const inactiveCardColors= Color(0xFF111328);
const bottomContainerColor = Colors.tealAccent;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

Color maleCardColor= inactiveCardColors;
Color femaleCardColor= inactiveCardColors;

void updateColor(int gender){
    if(gender==1){
      if(maleCardColor== inactiveCardColors){
        maleCardColor= activeCardColors;
        femaleCardColor= inactiveCardColors;
      } else{
        maleCardColor= inactiveCardColors;

      }

      }
    if (gender==2){
      if(femaleCardColor== inactiveCardColors){
        femaleCardColor= activeCardColors;
        maleCardColor= inactiveCardColors;
      } else{
        femaleCardColor= inactiveCardColors;

    }
    }
}



class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                     setState(() {
                       updateColor(1);
                     });
                    },
                    child: ReuseableCard(
                      colour: maleCardColor,
                      cardChild: CardWidget(
                        cardIcons: FontAwesomeIcons.mars,
                        cardText: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReuseableCard(
                      colour: femaleCardColor,
                      cardChild: CardWidget(
                        cardIcons: FontAwesomeIcons.venus,
                        cardText: 'Female',
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReuseableCard(
              colour: activeCardColors,
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReuseableCard(
                    colour: activeCardColors,
                  ),
                ),
                Expanded(
                  child: ReuseableCard(
                    colour: activeCardColors,
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: bottomContainerColor,
            height: bottomContainerHeight,
            width: double.infinity,
            margin: EdgeInsets.only(top: 15.0),
          ),
        ],
      ),
    );
  }
}

