// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:loginui/main.dart';

Widget RegisterBottom(BuildContext context) {
  var userName = '', course = '', password = [];

  return Container(
    decoration: BoxDecoration(
        color: items.light_yellow_color(),
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), topRight: Radius.circular(20))),
    padding: EdgeInsets.fromLTRB(40, 10, 40, 5),
    child: ListView(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Hello ...",
            style: TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        SizedBox(height: 15),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Register",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.highlight_off)),
          ],
        ),
        SizedBox(
          height: 25,
        ),
        items.text_field_pick(
            "Username/Email", Icon(Icons.remove_red_eye), (userName) {}),
        SizedBox(
          height: 25,
        ),
        items.text_field_pick(
            "Course", Icon(Icons.remove_red_eye), (course) {}),
        SizedBox(
          height: 25,
        ),
        items.pass_field_pick("Password", Icon(Icons.lock), (password) {}),
        SizedBox(
          height: 25,
        ),
        items.pass_field_pick(
            "Confirm Password", Icon(Icons.lock), (password) {}),
        SizedBox(height: 25),
        items.button_peak(() {}, "Register", 20, items.dark_blue_color(),
            Colors.transparent, items.light_yellow_color()),
        SizedBox(
          height: 5,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Already have account?"),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Login",
                  style: TextStyle(color: items.red_color()),
                ))
          ],
        )
      ],
    ),
  );
}
