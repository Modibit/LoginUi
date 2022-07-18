import 'package:flutter/material.dart';
import 'LoginPage.dart';
import 'itemPicker.dart';
import 'package:flutter/gestures.dart';

void main() {
  runApp(MyApp());
}

itemPicker items = itemPicker();

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Modibit',
      theme: ThemeData(
        // primarySwatch: Colors.blue,
        primaryColor: items.dark_blue_color(),
        canvasColor: Colors.transparent,
      ),
      home: LoginPage(title: 'Login Page'),
      scrollBehavior: MyCustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  // Override behavior methods and getters like dragDevices
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
      };
}
