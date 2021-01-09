import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
//import 'package:mymed/utiles/Styles.dart';
import 'package:mymed/utiles/colors.dart';
//import 'package:mymed/utiles/Styles.dart';
//import 'package:mymed/utiles/colors.dart';
//import 'package:mymed/utiles/colors.dart';

import '2intro1.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 7)).then((value) {
      Get.off(Intro1());
    });
    return Scaffold(
      appBar: CupertinoNavigationBar(
        trailing: IconButton(
            icon: Icon(Icons.language),
            color: Colors.white,
            onPressed: () {
              translator.setNewLanguage(
                context,
                newLanguage: translator.currentLanguage == 'ar' ? 'en' : 'ar',
                remember: true,
                restart: true,
              );
            }),
        backgroundColor: mainappColor,
      ),
      body: Container(
          //  alignment: Alignment.center,
          height: double.infinity,
          width: double.infinity,
          color: mainappColor,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                " MED+",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.w800),
                textAlign: TextAlign.center,
              ),
              FlatButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Intro1();
                    }));
                  },
                  child: Text(
                    translator.translate('Skip'),
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w100),
                    textAlign: TextAlign.center,
                  ))
            ],
          )),
    );
  }
}
