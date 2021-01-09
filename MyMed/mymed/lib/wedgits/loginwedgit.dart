import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:localize_and_translate/localize_and_translate.dart';

// ignore: must_be_immutable
class Loginwedgit extends StatelessWidget {
  @override
  Function validate;
  Function save;
  String label;
  Loginwedgit(
      {@required this.validate, @required this.save, @required this.label});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (newvalue) => validate(newvalue),
      onSaved: (newValue) => save(newValue),
      decoration: InputDecoration(
          labelText: translator.translate(label),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
    );
  }
}
