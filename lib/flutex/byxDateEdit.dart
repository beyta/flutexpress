import 'package:flutter/material.dart';

class ByxDateEdit extends StatelessWidget {

  ByxDateEdit ({this.labelText, this.dateSelected, this.onPressed});

  final String labelText;
  final DateTime dateSelected;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      flex: 1,
      child: GestureDetector(
        onTap: onPressed,
        child: Container(
          padding: EdgeInsets.fromLTRB(5,3,2,2),
          decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
              border: Border.all(
                  color: Colors.black.withOpacity(0.5),
                  width: 0.5
              )
          ),
          child:  Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: new EdgeInsets.only(left:0),
                child: Text(
                  '$labelText',
                  textAlign: TextAlign.left,
                  style: TextStyle(fontWeight: FontWeight.bold,),
                ),
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                      height: 20.0,
                      width: 20.0,
                      child: new IconButton(
                        padding: new EdgeInsets.all(0.0),
                        icon: new Icon(Icons.calendar_today,
                            size: 20.0, color: Colors.black),
                        onPressed: onPressed,
                      )),
                  Container(
                    padding: EdgeInsets.only(left:5),
                    child: Text(
                      "${dateSelected.toLocal()}".split(' ')[0],
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 13),
                    ),
                    height: 18.0,
                    alignment: Alignment.topLeft,
                    // width: 160.0,
                  ),
                ],
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ),
    );
  }
}
