import 'package:auroraleave/flutex_style/master_style.dart';
import 'package:flutter/material.dart';

class ByxDataViewLabelRow extends StatelessWidget {
  ByxDataViewLabelRow({
    this.labelName,
    this.labelValue,
    this.labelNameColor,
    this.labelValueColor,
  });

  final String labelName;
  final String labelValue;
  final Color labelNameColor;
  final Color labelValueColor;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              labelName,
              textAlign: TextAlign.left,
              style: kTextLabel.copyWith(
                color: labelNameColor
              ),
            ),
            Expanded(
              child: Text(
                labelValue,
                textAlign: TextAlign.right,
                style: kTextLabelData1.copyWith(
                  color: labelValueColor
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
      ],
    );
  }
}
