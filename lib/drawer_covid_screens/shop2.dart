import 'package:flutter/material.dart';
import 'package:noiecovid/constants.dart';
import 'package:noiecovid/components/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShopScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NEGOZI'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.bottomLeft,
              child: Row(
                children: <Widget>[
                  Hero(
                    tag: 'shop2',
                    child: Icon(
                      FontAwesomeIcons.doorOpen,
                      size: 33.0,
                    ),
                  ),
                  Text(
                    '  Info',
                    style: kTitleTextStyle,
                  ),
                ],
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
                    padding: EdgeInsets.all(30.0),
                    child: Text(
                      'Mantenere la distanza di sicurezza e non creare assembramenti. Fondamentale indossare sempre la mascherina fin sotto agli occhi.',
                      textAlign: TextAlign.justify,
                      style: kBodyTextStyle,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
