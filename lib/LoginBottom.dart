// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'itemPicker.dart';
import 'User.dart';
import 'LoginPage.dart';

bool? IsCheck = false;
void remeberSetState(bool? isCheck) {
  IsCheck = isCheck!;
}

Widget LoginBottom(BuildContext context) {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
              "Login",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Icon(Icons.highlight_off),
            )
          ],
        ),
        SizedBox(
          height: 25,
        ),
        TextField(
            controller: userController,
            decoration: InputDecoration(
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(18.0)),
              hintText: "Username/Email",
              suffixIcon: Icon(Icons.visibility),
            )),
        SizedBox(
          height: 25,
        ),
        TextField(
            controller: passwordController,
            obscureText: true,
            keyboardType: TextInputType.number,
            inputFormatters: <TextInputFormatter>[
              FilteringTextInputFormatter.allow(RegExp(r'[0-9]'))
            ],
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(18.0)),
                labelText: "Password",
                suffixIcon: Icon(Icons.lock_outline),
                helperText: "*Just enter Numbers",
                helperStyle: TextStyle(color: items.red_color()))),
        SizedBox(height: 25),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                StatefulBuilder(
                    builder: (BuildContext context, StateSetter setState) {
                  return Checkbox(
                      value: IsCheck,
                      onChanged: (isCheck) {
                        setState(
                          () => remeberSetState(isCheck),
                        );
                      });
                }),
                Text("Remember me")
              ],
            ),
            TextButton(
                onPressed: () {
                  Future.delayed(Duration(seconds: 2)).then((value) => null);
                },
                child: Text("Forget Password?")),
          ],
        ),
        SizedBox(height: 25),
        items.button_peak(() async {
          showDialog(
              context: context,
              builder: (BuildContext context) =>
                  Center(child: CircularProgressIndicator()));
          await Future.delayed(Duration(seconds: 2));
          Navigator.of(context).pop();

          if (myuser.userName == userController.text &&
              myuser.password == passwordController.text) {
            showDialog(
                context: context,
                builder: (BuildContext context) => items.sumbitLogin());
            print("accepted");
          } else {
            showDialog(
                context: context,
                builder: (BuildContext context) => items.errorLogin());
            print("Wrong data");
          }
        }, "Login", 20, items.dark_blue_color(), Colors.transparent,
            items.light_yellow_color())
      ],
    ),
  );
}
