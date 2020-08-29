import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noiecovid/components/reusable_card.dart';
import 'package:noiecovid/constants.dart';
import 'package:flutter/services.dart';
import 'package:noiecovid/drawer_covid_screens/office1.dart';
import 'package:noiecovid/drawer_covid_screens/office2.dart';
import 'package:noiecovid/drawer_covid_screens/office3.dart';
import 'package:noiecovid/drawer_covid_screens/office4.dart';

class OfficeScreen extends StatefulWidget {
  static const String id = 'office_screen';

  @override
  _OfficeScreenState createState() => _OfficeScreenState();
}

class _OfficeScreenState extends State<OfficeScreen> {
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
                  Text('UFFICI'),
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
                              OfficeScreen1(),
                        ),
                      );
                    },
                    colour: Colors.pink,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'office1',
                          child: Icon(
                            FontAwesomeIcons.temperatureHigh,
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
                              OfficeScreen2(),
                        ),
                      );
                    },
                    colour: Colors.black,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'office2',
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
                              OfficeScreen3(),
                        ),
                      );
                    },
                    colour: Colors.orange[900],
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'office3',
                          child: Icon(
                            FontAwesomeIcons.soap,
                            size: 54.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5.0),
                          child: Text(
                            'PULIZIA',
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
                              OfficeScreen4(),
                        ),
                      );
                    },
                    colour: Colors.greenAccent[700],
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'office4',
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
        ],
      ),
    );
  }
}
