import 'package:flutter/material.dart';

class ByxDateLeading extends StatelessWidget {

  ByxDateLeading(this.dateString);

  final String dateString;

  @override
  Widget build(BuildContext context) {
    String _day = dateString.substring(0, 2);
    String _month = dateString.substring(3, 5);
    String _monthDesc = '';
    String _year = dateString.substring(6, 10);

    if (_month == '01') {
      _monthDesc = 'JAN';
    } else if (_month == '02') {
      _monthDesc = 'FEB';
    } else if (_month == '03') {
      _monthDesc = 'MAC';
    } else if (_month == '04') {
      _monthDesc = 'APR';
    } else if (_month == '05') {
      _monthDesc = 'MAY';
    } else if (_month == '06') {
      _monthDesc = 'JUN';
    } else if (_month == '07') {
      _monthDesc = 'JUL';
    } else if (_month == '08') {
      _monthDesc = 'AUG';
    } else if (_month == '09') {
      _monthDesc = 'SEP';
    } else if (_month == '10') {
      _monthDesc = 'OCT';
    } else if (_month == '11') {
      _monthDesc = 'NOV';
    } else if (_month == '12') {
      _monthDesc = 'DEC';
    }

    return Container(
      child: Column(
        children: <Widget>[
          Text(
            '$_monthDesc',
            style: TextStyle(
              fontSize: 12.0,
              fontFamily: 'Fabrica',
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            _day,
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.orange,
              fontFamily: 'Fabrica',
              letterSpacing: 1.5,
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            _year,
            style: TextStyle(
              fontSize: 12.0,
              fontFamily: 'Fabrica',
            ),
          ),
        ],
      ),
    );
  }
}
