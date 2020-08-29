import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noiecovid/components/reusable_card.dart';
import 'package:noiecovid/constants.dart';
import 'package:flutter/services.dart';
import 'package:noiecovid/drawer_covid_screens/park1.dart';
import 'package:noiecovid/drawer_covid_screens/park2.dart';
import 'package:noiecovid/drawer_covid_screens/park3.dart';
import 'package:noiecovid/drawer_covid_screens/park4.dart';


class ParkScreen extends StatefulWidget {
  static const String id = 'park_screen';

  @override
  _ParkScreenState createState() => _ParkScreenState();
}

class _ParkScreenState extends State<ParkScreen> {
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
                  Text('PARCHI'),
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
                              ParkScreen1(),
                        ),
                      );
                    },
                    colour: Colors.pink,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'park1',
                          child: Icon(
                            FontAwesomeIcons.headSideMask,
                            size: 54.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5.0),
                          child: Text(
                            'MASCHERINE',
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
                              ParkScreen2(),
                        ),
                      );
                    },
                    colour: Colors.black,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'park2',
                          child: Icon(
                            FontAwesomeIcons.glassCheers,
                            size: 54.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5.0),
                          child: Text(
                            'PIC-NIC E FESTE',
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
                              ParkScreen3(),
                        ),
                      );
                    },
                    colour: Colors.orange[900],
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'park3',
                          child: Icon(
                            FontAwesomeIcons.running,
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
                              ParkScreen4(),
                        ),
                      );
                    },
                    colour: Colors.greenAccent[700],
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'park4',
                          child: Icon(
                            FontAwesomeIcons.virusSlash,
                            size: 54.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5.0),
                          child: Text(
                            'PREVENZIONE',
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
