import 'package:flutter/material.dart';

class ByxAlertBox extends StatelessWidget {

  ByxAlertBox ({this.title, this.messageText, this.typeAlert});

  final String title;
  final String messageText;
  final String typeAlert;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
        side: BorderSide(color: Colors.blueGrey),
      ),
      insetPadding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 24.0),
      elevation: 5.0,
      titlePadding: const EdgeInsets.all(0.0),
      title: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(20, 10, 20, 0),
                child: Column(
                  children: [
                    _getImage(typeAlert),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      title,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      content: Text(
        messageText,
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _getImage(String typeAlert){

    if (typeAlert == 'Success')
      return Image.asset('images/icon_success.png');
    else if (typeAlert == 'Error')
      return Image.asset('images/icon_error.png');
    else if (typeAlert == 'Info')
      return Image.asset('images/icon_info.png');
    else if (typeAlert == 'Warning')
      return Image.asset('images/icon_warning.png');
    else
      return Container();

  }
}
