import 'package:flutter/material.dart';
import 'package:noiecovid/constants.dart';
import 'package:noiecovid/components/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShopScreen1 extends StatelessWidget {
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
                    tag: 'shop1',
                    child: Icon(
                      FontAwesomeIcons.virusSlash,
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
                      'All\'ingresso è fondamentale igienizzarsi le mani con il gel disinfettante e rispettare le porte di entrata ed uscita',
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
