import 'package:flutter/material.dart';
import 'package:noiecovid/constants.dart';
import 'package:noiecovid/components/reusable_card.dart';
import 'package:noiecovid/components/bottom_button.dart';

class LearnMoreScreen2 extends StatelessWidget {
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
              child: Text(
                'Info',
                style: kTitleTextStyle,
              ),
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
                    padding: EdgeInsets.all(15.0),
                    child: Image.asset(
                      'images/hands.jpg',
                    ),
                  ),
                  Text(
                    'http://www.seguonews.it/wp-content/uploads/2014/05/lavarsi-le-mani-acqua-e-sapone.jpg',
                    style: TextStyle(fontSize: 3.0),
                    textAlign: TextAlign.right,
                  )
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
