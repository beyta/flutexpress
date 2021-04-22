import 'package:flutter/material.dart';

const kTextFieldDecoration = InputDecoration(
  hintText: 'Enter a value',
  contentPadding:
  EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
);

const kTextFieldDecoration2 = InputDecoration(
  hintText: 'Enter a value',
  contentPadding: EdgeInsets.symmetric(vertical: 0.0, horizontal: 0.0),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(Radius.circular(1.0)),
  ),
  enabledBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 1.0),
    borderRadius: BorderRadius.all(Radius.circular(1.0)),
  ),
  focusedBorder: OutlineInputBorder(
    borderSide: BorderSide(color: Colors.blueAccent, width: 2.0),
    borderRadius: BorderRadius.all(Radius.circular(1.0)),
  ),
);

const kTextLabel = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 12.0,
  fontFamily: 'Fabrica',
  letterSpacing: 0.5,
  color: Colors.grey,
);

const kTextLabelSub1 = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 11.0,
  fontFamily: 'Fabrica',
  letterSpacing: 0.5,
  color: Colors.grey,
);

const kTextLabelData1 = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 15.0,
  fontFamily: 'Fabrica',
  letterSpacing: 0.5,
  color: Colors.blueGrey,
);

const kTextLabelDataSub1 = TextStyle(
  // fontWeight: FontWeight.w500,
  fontSize: 13.0,
  fontFamily: 'Fabrica',
  letterSpacing: 0.5,
  color: Colors.blueGrey,
);

const kHeaderLabel = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: 11.0,
  letterSpacing: 0.5,
  color: Colors.black,
);