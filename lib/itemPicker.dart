// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class itemPicker {
  Color light_yellow_color() {
    return Color.fromRGBO(0xFF, 0xEC, 0xAA, 1);
  }

  Color dark_blue_color() {
    return Color.fromRGBO(0x05, 0x05, 0x22, 1);
  }

  Color red_color() {
    return Color.fromRGBO(0xEF, 0x58, 0x58, 1);
  }

  Widget text_field_pick(
      String _Title, Icon _icon, void incontrol(String inputControl)) {
    var text_control = TextEditingController();
    return TextField(
        onChanged: (String) {
          incontrol(text_control.text);
        },
        controller: text_control,
        obscureText: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
          labelText: _Title,
          suffixIcon: _icon,
        ));
  }

  Widget pass_field_pick(
      String _Title, Icon _icon, void incontrol(String inputControl)) {
    var text_control = TextEditingController();
    return TextField(
        onChanged: (String) {
          incontrol(text_control.text);
        },
        controller: text_control,
        obscureText: true,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
        ],
        decoration: InputDecoration(
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
            labelText: _Title,
            suffixIcon: _icon,
            helperText: "*Just enter Numbers",
            helperStyle: TextStyle(color: red_color())));
  }

  Widget button_peak( _press(), String _Text, double _fsize, Color _back,
      Color _border, Color _fcolor) {
    return SizedBox(
      height: 60,
      width: 300,
      child: ElevatedButton(
        onPressed: () {
          _press();
        },
        child: Text(
          _Text,
          style: TextStyle(
            color: _fcolor,
            fontSize: _fsize,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w500,
          ),
        ),
        style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: _border))),
          elevation: MaterialStateProperty.all<double>(0),
          backgroundColor: MaterialStateProperty.all<Color>(
            _back,
          ),
        ),
      ),
    );
  }

  Widget sumbitLogin() {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
        height: 300.0,
        width: 300.0,
        child: ListView(
          children: <Widget>[
            Icon(
              Icons.check_circle_outline,
              size: 80,
              color: Colors.greenAccent,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome To Your Account",
              style: TextStyle(
                color: Colors.green,
                fontFamily: "Roboto",
                fontWeight: FontWeight.w600,
                fontSize: 35,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }

  Widget errorLogin() {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0)), //this right here
      child: Container(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
        height: 300.0,
        width: 300.0,
        child: ListView(
          children: <Widget>[
            Icon(
              Icons.highlight_off,
              size: 80,
              color: Colors.redAccent[400],
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "UserName or Password Wrong",
              style: TextStyle(
                color: red_color(),
                fontFamily: "Roboto",
                fontWeight: FontWeight.w600,
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
