import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noiecovid/components/reusable_card.dart';
import 'package:noiecovid/constants.dart';
import 'package:flutter/services.dart';
import 'package:noiecovid/drawer_covid_screens/shop1.dart';
import 'package:noiecovid/drawer_covid_screens/shop2.dart';
import 'package:noiecovid/drawer_covid_screens/shop3.dart';
import 'package:noiecovid/drawer_covid_screens/shop4.dart';

class ShopScreen extends StatefulWidget {
  static const String id = 'shop_screen';

  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
      [
        DeviceOrientation.portraitUp,
      ],
    );
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: <Widget>[
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('NEGOZI'),
                ],
              ),
            ),
          ],
          // ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ShopScreen1(),
                        ),
                      );
                    },
                    colour: Colors.pink,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'shop1',
                          child: Icon(
                            FontAwesomeIcons.virusSlash,
                            size: 54.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5.0),
                          child: Text(
                            'INGRESSO',
                            style: kLabelTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ShopScreen2(),
                        ),
                      );
                    },
                    colour: Colors.black,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'shop2',
                          child: Icon(
                            FontAwesomeIcons.doorOpen,
                            size: 54.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5.0),
                          child: Text(
                            'MOVIMENTO',
                            style: kLabelTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          
          Expanded(
            child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ShopScreen3(),
                        ),
                      );
                    },
                    colour: Colors.orange[900],
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'shop3',
                          child: Icon(
                            FontAwesomeIcons.shoppingBag,
                            size: 54.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5.0),
                          child: Text(
                            'MERCE',
                            style: kLabelTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) =>
                              ShopScreen4(),
                        ),
                      );
                    },
                    colour: Colors.greenAccent[700],
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'shop4',
                          child: Icon(
                            FontAwesomeIcons.phone,
                            size: 54.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5.0),
                          child: Text(
                            'COMUNICAZIONE',
                            style: kLabelTextStyle,
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SizedBox(
                              width: 10.0,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
