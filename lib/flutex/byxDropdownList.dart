import 'package:flutter/material.dart';

class ByxDropdownList extends StatelessWidget {

  ByxDropdownList ({this.selectedValue, this.listValue, this.onChanged, this.ddlTextField, this.ddlValueField});
  final String selectedValue;
  final List listValue;
  final Function onChanged;
  final String ddlTextField;
  final String ddlValueField;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child:  DropdownButton(
        hint: Text("- SELECT -"),
        isExpanded: true,
        value: selectedValue,
        items: listValue.map((item) {
          return DropdownMenuItem(
            child: Text(item[ddlTextField]),
            value: item[ddlValueField],
          );
        }).toList(),
        onChanged: onChanged,
      ),
    );
  }
}

class ByxDropdownListManual extends StatelessWidget {

  ByxDropdownListManual ({this.selectedValue, this.listValue, this.onChanged,});
  final String selectedValue;
  final List<DropdownMenuItem<String>> listValue;
  final Function onChanged;

  @override
  Widget build(BuildContext context) {
    return DropdownButtonHideUnderline(
      child: DropdownButton(
        isExpanded: true,
        value: selectedValue,
        items: listValue,
        onChanged: onChanged,
      ),
    );
  }
}