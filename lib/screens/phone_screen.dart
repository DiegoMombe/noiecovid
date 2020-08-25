import 'package:flutter/material.dart';
import 'package:noiecovid/constants.dart';
import 'package:noiecovid/components/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class PhoneScreen extends StatefulWidget {
  @override
  _PhoneScreenState createState() => _PhoneScreenState();
}

class _PhoneScreenState extends State<PhoneScreen> {
  String dropdownValue = 'Abruzzo';
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                  tag: 'phone',
                  child: Icon(
                    FontAwesomeIcons.phone,
                    size: 33.0,
                  ),
                ),
                Text(
                  '  Numeri',
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
                  FlatButton(
                    onPressed: () => launch('tel:112'),
                    child: Text(
                      'NUMERO DI EMERGENZA NAZIONALE',
                      style: kLabelTextStyle,
                    ),
                  ),
                  FlatButton(
                    onPressed: () => launch('tel:800833833'),
                    child: Text(
                      'SUPPORTO PSICOLOGICO',
                      style: kLabelTextStyle,
                    ),
                  ),
                  FlatButton(
                    onPressed: () => launch('tel:1500'),
                    child: Text(
                      'NUMERO DI PUBBLICA UTILITÀ',
                      style: kLabelTextStyle,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: DropdownButton<String>(
                            value: dropdownValue,
                            icon: Icon(Icons.arrow_downward),
                            iconSize: 24,
                            elevation: 16,
                            style: TextStyle(color: Colors.white),
                            underline: Container(
                              height: 2,
                              color: Colors.white,
                            ),
                            onChanged: (String newValue) {
                              setState(() {
                                dropdownValue = newValue;
                              });
                            },
                            items: <String>[
                              'Abruzzo',
                              'Basilicata',
                              'Calabria',
                              'Campania',
                              'Emilia-Romagna',
                              'Friuli Venezia Giulia',
                              'Lazio',
                              'Liguria',
                              'Lombardia',
                              'Marche',
                              'Molise',
                              'Piemonte',
                              'Puglia',
                              'Sardegna',
                              'Sicilia',
                              'Toscana',
                              'Provincia di Bolzano',
                              'Provincia di Trento',
                              'Umbria',
                              'Valle d\'Aosta',
                              'Veneto',
                            ].map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(value),
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(15.0),
                          child: GestureDetector(
                            onTap: () {
                              if (dropdownValue == 'Abruzzo') {
                                launch('tel:800169326');
                              } else if (dropdownValue == 'Basilicata') {
                                launch('tel:800996688');
                              } else if (dropdownValue == 'Calabria') {
                                launch('tel:800767676');
                              } else if (dropdownValue == 'Campania') {
                                launch('tel:800909699');
                              } else if (dropdownValue == 'Emilia-Romagna') {
                                launch('tel:800033033');
                              } else if (dropdownValue ==
                                  'Friuli Venezia Giulia') {
                                launch('tel:800500300');
                              } else if (dropdownValue == 'Lazio') {
                                launch('tel:800118800');
                              } else if (dropdownValue == 'Liguria') {
                                launch('tel:800938883');
                              } else if (dropdownValue == 'Lombardia') {
                                launch('tel:800894545');
                              } else if (dropdownValue == 'Marche') {
                                launch('tel:800936677');
                              } else if (dropdownValue == 'Molise') {
                                launch('tel:0874313000');
                              } else if (dropdownValue == 'Piemonte') {
                                launch('tel:800192020');
                              } else if (dropdownValue == 'Puglia') {
                                launch('tel:800713931');
                              } else if (dropdownValue == 'Sardegna') {
                                launch('tel:800311377');
                              } else if (dropdownValue == 'Sicilia') {
                                launch('tel:800458787');
                              } else if (dropdownValue == 'Toscana') {
                                launch('tel:800556060');
                              } else if (dropdownValue ==
                                  'Provincia di Bolzano') {
                                launch('tel:800751751');
                              } else if (dropdownValue ==
                                  'Provincia di Trento') {
                                launch('tel:800867388');
                              } else if (dropdownValue == 'Umbria') {
                                launch('tel:800636363');
                              } else if (dropdownValue == 'Valle d\'Aosta') {
                                launch('tel:800122121');
                              } else if (dropdownValue == 'Veneto') {
                                launch('tel:800462340');
                              }
                            },
                            child: Icon(
                              FontAwesomeIcons.phone,
                              size: 33.0,
                            ),
                          ),
                        ),
                      ),
                    ],
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
