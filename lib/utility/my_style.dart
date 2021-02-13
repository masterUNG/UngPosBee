import 'package:flutter/material.dart';

class MyStyle {
  Color darkColor = Colors.blue.shade800;
  Color primaryColor = Colors.pink.shade200;
  Color lightColor = Colors.orange.shade200;

  Widget showProgress() => Center(child: CircularProgressIndicator());

  Widget showLogo() => Image(image: AssetImage('images/logo.png'));

  Widget titleH1(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          color: darkColor,
        ),
      );

      Widget titleH2(String string) => Text(
        string,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w500,
          color: darkColor,
        ),
      );

  MyStyle();
}
