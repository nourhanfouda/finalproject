import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';
import 'package:mymed/screens/5login_register.dart';
import 'package:mymed/utiles/colors.dart';
import 'package:mymed/wedgits/loginwedgit.dart';
import 'package:string_validator/string_validator.dart';

class Newclinic extends StatefulWidget {
  @override
  _NewclinicState createState() => _NewclinicState();
}

class _NewclinicState extends State<Newclinic> {
  String clinicname;
  String doctorname;
  String email;
  String password;
  String location;
  String spacialist;

  var registerkey = GlobalKey<FormState>();

  saveform() {
    if (isAccepted) {
      bool validateresult = registerkey.currentState.validate();
      if (validateresult) {
        return true;
      } else
        return;
    }
  }

  saveclinicname(String value) {
    this.email = value;
  }

  savedoctorname(String value) {
    this.email = value;
  }

  saveemail(String value) {
    this.email = value;
  }

  savepassword(String value) {
    this.password = value;
  }

  savespacialist(String value) {
    this.spacialist = value;
  }

  String validateclinicname(String value) {
    if (value.isEmpty) {
      return '*Required';
    } else
      return null;
  }

  String validatedoctorname(String value) {
    if (value.isEmpty) {
      return '*Required';
    } else
      return null;
  }

  String validatespacialist(String value) {
    if (value.isEmpty) {
      return '*Required';
    } else
      return null;
  }

  String validatepassword(String value) {
    if (value.isEmpty) {
      return '*Required';
    } else if (value.length < 6) {
      return ' paswword must be more than 6 chatachter';
    } else
      return null;
  }

  String validateemail(String value) {
    if (value.isEmpty) {
      return '*required';
    } else if (!isEmail(value)) {
      return 'incorrect Email pattern ';
    } else
      return null;
  }

  int groupValue;
  bool isAccepted = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Text(
                translator.translate("New Clinic"),
                style: TextStyle(
                    color: mainappColor,
                    fontSize: 60,
                    fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 100),
              child: Form(
                key: registerkey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Loginwedgit(
                      label: translator.translate("Email"),
                      save: saveemail,
                      validate: validateemail,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Loginwedgit(
                      label: translator.translate("Clinic Name"),
                      save: saveclinicname,
                      validate: validateclinicname,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Loginwedgit(
                      label: translator.translate("doctorname"),
                      save: savedoctorname,
                      validate: validatedoctorname,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Loginwedgit(
                      label: translator.translate("Password"),
                      save: savepassword,
                      validate: validatepassword,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Loginwedgit(
                      label: translator.translate("spicaliset"),
                      save: savespacialist,
                      validate: validatespacialist,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      //  margin: EdgeInsets.all(20),

                      //margin: EdgeInsets.symmetric(vertical: 10),
                      height: 40,
                      width: double.infinity,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              // padding: EdgeInsets.all(20),
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/location.jpg'),
                                      fit: BoxFit.cover))),
                          Text(
                            translator.translate("Location"),
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: 250,
                      height: 60,
                      child: RaisedButton(
                          color: mainappColor.withOpacity(0.4),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          child: Text(
                            translator.translate("submit"),
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                          onPressed: () {
                            saveform();
                          }),
                    ),
                    SizedBox(height: 30),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: FlatButton(
                          onPressed: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return Welcome();
                            }));
                          },
                          child: Text(
                            translator.translate("Back"),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w100),
                            textAlign: TextAlign.center,
                          )),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
