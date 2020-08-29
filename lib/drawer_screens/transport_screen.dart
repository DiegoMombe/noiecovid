import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noiecovid/components/reusable_card.dart';
import 'package:noiecovid/constants.dart';
import 'package:flutter/services.dart';
import 'package:noiecovid/drawer_covid_screens/transport1.dart';
import 'package:noiecovid/drawer_covid_screens/transport2.dart';
import 'package:noiecovid/drawer_covid_screens/transport3.dart';
import 'package:noiecovid/drawer_covid_screens/transport4.dart';


class TransportScreen extends StatefulWidget {
  static const String id = 'restaurant_screen';

  @override
  _TransportScreenState createState() => _TransportScreenState();
}

class _TransportScreenState extends State<TransportScreen> {
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
                  Text('TRASPORTI'),
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
                              TransportScreen1(),
                        ),
                      );
                    },
                    colour: Colors.pink,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'trans1',
                          child: Icon(
                            FontAwesomeIcons.bus,
                            size: 54.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5.0),
                          child: Text(
                            'CAPIENZA',
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
                              TransportScreen2(),
                        ),
                      );
                    },
                    colour: Colors.black,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'trans2',
                          child: Icon(
                            FontAwesomeIcons.rulerHorizontal,
                            size: 54.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5.0),
                          child: Text(
                            'DISTANZIAMENTO',
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
                              TransportScreen3(),
                        ),
                      );
                    },
                    colour: Colors.orange[900],
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'trans3',
                          child: Icon(
                            FontAwesomeIcons.doorOpen,
                            size: 54.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5.0),
                          child: Text(
                            'ACCESSO',
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
                              TransportScreen4(),
                        ),
                      );
                    },
                    colour: Colors.greenAccent[700],
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'trans4',
                          child: Icon(
                            FontAwesomeIcons.ticketAlt,
                            size: 54.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5.0),
                          child: Text(
                            'BIGLIETTO',
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
