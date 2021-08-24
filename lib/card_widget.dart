import 'package:flutter/material.dart';
import 'constants.dart';


class CardWidget extends StatelessWidget {
  CardWidget({this.cardIcons, this.cardText});

  final IconData cardIcons;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          cardIcons,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          cardText,
          style:kCardTextStyle,
        ),
      ],
    );
  }
}
