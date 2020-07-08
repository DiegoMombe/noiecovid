import 'package:flutter/material.dart';
import 'package:noiecovid/constants.dart';
import 'package:noiecovid/components/reusable_card.dart';
import 'package:noiecovid/components/bottom_button.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CovidSecondScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NOI E COVID'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Row(children: <Widget>[
                Hero(
                  tag: 'handsWash',
                  child: Icon(
                    FontAwesomeIcons.handsWash,
                    size: 33.0,
                  ),
                ),
                Text(
                  '  Info',
                  style: kTitleTextStyle,
                ),
              ]),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColour,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(30.0),
                    child: Text(
                      'Il virus si trasmette anche toccando o stringendo una mano infetta e portandola alle mucose. Lavare le mani correttamente uccide il virus.',
                      textAlign: TextAlign.justify,
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            buttonTitle: 'H O M E    P A G E',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
