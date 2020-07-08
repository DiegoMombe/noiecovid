import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noiecovid/constants.dart';
import 'package:noiecovid/components/reusable_card.dart';
import 'package:noiecovid/components/bottom_button.dart';
import 'package:noiecovid/covid_screens/lm_screen3_2.dart';

class LearnMoreScreen3 extends StatelessWidget {
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
            child: Row(
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
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => LearnMoreSecondScreen3(),
                        ),
                      );
                    },
                    child: Center(
                      child: Container(
                        child: Icon(
                          FontAwesomeIcons.arrowRight,
                          color: kInactiveCardColour,
                        ),
                        height: 50.0,
                        width: 50.0,
                        margin: EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
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
                  Image.asset(
                    'images/mask.jpg',
                  ),
                  Text(
                    'https://www.farmaciaesteticaportapia.com/wp-content/uploads/2020/02/81k31KvkkbL._SL1500_.jpg',
                    style: TextStyle(fontSize: 3.0),
                    textAlign: TextAlign.right,
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
