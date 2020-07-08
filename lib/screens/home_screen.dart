import 'dart:convert';
//import 'package:noiecovid/covid_screens/stats.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:noiecovid/components/reusable_card.dart';
import 'package:noiecovid/constants.dart';
import 'package:noiecovid/components/bottom_button.dart';
import 'package:noiecovid/covid_screens/screen1.dart';
import 'package:noiecovid/covid_screens/screen2.dart';
import 'package:noiecovid/covid_screens/screen3.dart';
import 'package:noiecovid/covid_screens/screen4.dart';
import 'package:noiecovid/covid_screens/learn_more_screen.dart';
import 'package:noiecovid/screens/license_screen.dart';
import 'package:noiecovid/screens/phone_screen.dart';
import 'package:noiecovid/screens/second_home_screen.dart';
import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Map worldData;
  String deaths;
  String cases;

  worldWideData() async {
    http.Response response = await http.get('https://corona.lmao.ninja/v2/all');
    
    setState(() {
      worldData = json.decode(response.body);
      deaths = worldData['deaths'].toString();
      cases = worldData['cases'].toString();
      print(deaths);
      print(cases);
      print('kusatta');
    });
  }

  @override
  void initState() {
    worldWideData();
    super.initState();
  }

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
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    child: Center(
                      child: Hero(
                        tag: 'appBar',
                        child: Icon(FontAwesomeIcons.virusSlash),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => LicenseScreen(),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('NOI E COVID'),
                ],
              ),
            ),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  GestureDetector(
                    child: Center(
                      child: Hero(
                        tag: 'phone',
                        child: Icon(FontAwesomeIcons.phone),
                      ),
                    ),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (BuildContext context) => PhoneScreen(),
                        ),
                      );
                    },
                  ),
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
                          builder: (BuildContext context) => CovidScreen1(),
                        ),
                      );
                    },
                    colour: Colors.red[600],
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'shieldVirus',
                          child: Icon(
                            FontAwesomeIcons.shieldVirus,
                            size: 54.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5.0),
                          child: Text(
                            'PROTEGGERE MAGGIORMENTE LE PERSONE PIÙ DEBOLI',
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
                          builder: (BuildContext context) => CovidScreen2(),
                        ),
                      );
                    },
                    colour: Colors.orange,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'sun',
                          child: Icon(
                            FontAwesomeIcons.sun,
                            size: 54.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5.0),
                          child: Text(
                            'ASCIUGARE LE MANI DOPO AVERLE LAVATE',
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
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(
                      //     builder: (BuildContext context) => CountryPage(),
                      //   ),
                      // );
                      print('bdp');
                    },
                    colour: kActiveCardColour,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    deaths != null ? deaths : 'loading',
                                    textAlign: TextAlign.center,
                                    style: kNumberTextStyle,
                                  ),
                                  Text(
                                    'MORTI',
                                    textAlign: TextAlign.center,
                                    style: kLabelTextStyle,
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Column(
                                children: <Widget>[
                                  Text(
                                    cases != null ? cases : 'loading',
                                    textAlign: TextAlign.center,
                                    style: kNumberTextStyle,
                                  ),
                                  Text(
                                    'CASI',
                                    textAlign: TextAlign.center,
                                    style: kLabelTextStyle,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (BuildContext context) => SecondHomeScreen(),
                      ),
                    );
                  },
                  child: Center(
                    child: Container(
                      child: Icon(
                        FontAwesomeIcons.arrowRight,
                      ),
                      height: 50.0,
                      width: 50.0,
                      margin: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        color: kActiveCardColour,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
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
                          builder: (BuildContext context) => CovidScreen3(),
                        ),
                      );
                    },
                    colour: Colors.green[800],
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'baby',
                          child: Icon(
                            FontAwesomeIcons.baby,
                            size: 54.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5.0),
                          child: Text(
                            'FARE ATTENZIONE AI BAMBINI',
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
                          builder: (BuildContext context) => CovidScreen4(),
                        ),
                      );
                    },
                    colour: Colors.lightBlue[700],
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Hero(
                          tag: 'headSideMask',
                          child: Icon(
                            FontAwesomeIcons.headSideMask,
                            size: 54.0,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 15.0, horizontal: 5.0),
                          child: Text(
                            'INDOSSARE LA MASCHERINA CON CHIUNQUE',
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
          BottomButton(
            buttonTitle: 'L E A R N    M O R E',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (BuildContext context) => CovidButtonScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
