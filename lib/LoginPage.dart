// ignore_for_file: prefer_const_constructors, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'RegisterBottom.dart';
import 'itemPicker.dart';
import 'User.dart';
import 'LoginBottom.dart';

itemPicker items = itemPicker();

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key, required this.title}) : super(key: key);
  //final bool IsCheck=false;
  //static bool IsCheck = false;

  final String title;

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          margin: EdgeInsets.all(10),
          child: ListView(
            children: [
              Column(
                children: [
                  Image.asset("Assets/LoginPicture.png"),
                  Text(
                    "Welcome",
                    style: TextStyle(
                        color: Color.fromRGBO(0xEF, 0x58, 0x58, 1),
                        fontSize: 40),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod",
                      style: TextStyle(
                          color: Colors.white70,
                          fontSize: 20,
                          fontFamily: "Roboto",
                          fontWeight: FontWeight.w200),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 35,
                  ),
                  items.button_peak(
                      _Register,
                      "Create Account",
                      20,
                      items.light_yellow_color(),
                      Colors.transparent,
                      items.dark_blue_color()),
                  SizedBox(
                    height: 15,
                  ),
                  items.button_peak(
                    _Login,
                    "Login",
                    20,
                    items.dark_blue_color(),
                    items.light_yellow_color(),
                    items.light_yellow_color(),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
      backgroundColor: items.dark_blue_color(),
    );
  }

  void _Login() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return LoginBottom(context);
        });
  }

  void _Register() {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return RegisterBottom(context);
        });
  }
}
