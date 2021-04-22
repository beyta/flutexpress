import 'package:flutter/material.dart';

class ByxPanel extends StatelessWidget {
  ByxPanel(
      {
        this.backgroundColour,
        this.borderColour,
        this.borderWidth,
        this.borderRadius,
        this.panelChild,
        this.onPress
      });

  final Color backgroundColour;
  final Widget panelChild;
  final Function onPress;
  final Color borderColour;
  final double borderWidth;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: Colors.grey,
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: backgroundColour,
        border: Border.all(color: borderColour, width: borderWidth),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: panelChild,
    );
  }
}
