import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/screens/5login_register.dart';

class Intro3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.rectangle,
            image: DecorationImage(
                image: AssetImage('assets/images/intro3.png'),
                fit: BoxFit.contain)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: Text(
                translator.translate('intro3'),
                style: TextStyle(
                    color: Colors.grey[900],
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: FlatButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Welcome();
                    }));
                  },
                  child: Text(
                    translator.translate('Skip'),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      //fontWeight: FontWeight.w100
                    ),
                    textAlign: TextAlign.center,
                  )),
            )
          ],
        ),
      ),
    ));
  }
}
