import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/screens/8newclinicaccount.dart';
import 'package:mymed/screens/9newpatientaccount.dart';
import 'package:mymed/utiles/colors.dart';

class CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        //  crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(80),
                    bottomRight: Radius.circular(80)),
                image: DecorationImage(
                    image: AssetImage("assets/images/logreg1.jpg"),
                    fit: BoxFit.cover)),
            width: double.infinity,
            height: 500,
            child: Center(
              child: Text(
                translator.translate("Creat Account"),
                style: TextStyle(
                    color: mainappColor,
                    fontSize: 80,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Container(
            width: 500,
            height: 150,
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: 200,
                    height: 120,
                    child: RaisedButton(
                      color: mainappColor.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90)),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Newclinic();
                        }));
                      },
                      child: Text(
                        translator.translate('New Clinic'),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Expanded(
                  child: Container(
                    width: 200,
                    height: 120,
                    child: RaisedButton(
                      color: mainappColor.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(90)),
                      onPressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Newpatient();
                        }));
                      },
                      child: Text(
                        translator.translate('New patient'),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
