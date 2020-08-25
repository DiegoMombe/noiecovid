import 'package:flutter/material.dart';
import 'package:noiecovid/constants.dart';
import 'package:noiecovid/components/reusable_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LicenseScreen extends StatelessWidget {
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
                  tag: 'appBar',
                  child: Icon(
                    FontAwesomeIcons.virusSlash,
                    size: 33.0,
                  ),
                ),
                Text(
                  '  Licenza',
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
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      '''

Copyright (C) 12.06.2020:10.00 Lorenzo Aluisini, Diego Mombelli, Laura Nicolini, Giuseppe Tampalini. 

Il programma è rilasciato secondo i termini della licenza GNU General Public License, sia la versione 3, sia ogni versione successiva, e della licenza Creative Commons BY SA 4.0, sia ogni versione successiva. Questo programma è distribuito SENZA ALCUNA GARANZIA; senza anche l'implicita garanzia di IDONEITA' A UN PROPOSITO PARTICOLARE. Una copia delle licenze utilizzate si trova ai seguenti URL: https://www.gnu.org/licenses/gpl-3.0.html e https://creativecommons.org/licenses/by-sa/4.0/deed.it

Il progetto ha utilizzato le seguenti librerie:
-> https://corona.lmao.ninja
Licenza: https://github.com/NovelCOVID/API

Il progetto è stato realizzato nel sistema Arch Linux x86_64 Linux 5.6.15-arch1-1, utilizzando l\'ambiente di sviluppo Dart versione 2.8.4 con framework Flutter versione 1.17.3

noiecovid 1.0
''',
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
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
