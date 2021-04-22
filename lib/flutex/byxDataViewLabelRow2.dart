import 'package:auroraleave/flutex_style/master_style.dart';
import 'package:flutter/material.dart';

class byxDataViewLabelRow2 extends StatelessWidget {
  byxDataViewLabelRow2({
    this.labelName,
    this.labelValue,
  });

  final String labelName;
  final String labelValue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                padding: EdgeInsets.fromLTRB(0, 5, 5, 5),
                child: Text(
                  labelName,
                  textAlign: TextAlign.left,
                  style: kTextLabel.copyWith(),
                ),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.fromLTRB(6, 6, 6, 6),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey.withOpacity(0.3), width: 1.5 ),
                  //color: Colors.white30.withOpacity(0.3),
                ),
                child: Text(
                  labelValue,
                  textAlign: TextAlign.left,
                  style: kTextLabel.copyWith(),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
      ],
    );
  }
}
