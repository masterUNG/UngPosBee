import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ungposbee/models/user_model.dart';
import 'package:ungposbee/states/my_service.dart';
import 'package:ungposbee/utility/dialog.dart';
import 'package:ungposbee/utility/my_constant.dart';
import 'package:ungposbee/utility/my_style.dart';

class Authen extends StatefulWidget {
  @override
  _AuthenState createState() => _AuthenState();
}

class _AuthenState extends State<Authen> {
  double screen;
  String user, password;

  @override
  Widget build(BuildContext context) {
    screen = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildLogo(),
              MyStyle().titleH1('Ung PoS Bee'),
              buildUser(),
              buildPassword(),
              buildLogin(),
            ],
          ),
        ),
      ),
    );
  }

  Container buildLogin() {
    return Container(
      margin: EdgeInsets.only(top: 8),
      width: screen * 0.35,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(primary: MyStyle().darkColor),
        onPressed: () {
          print('user = $user, password = $password');
          if ((user?.isEmpty ?? true) || (password?.isEmpty ?? true)) {
            normalDialog(context, 'Have Space ?', 'Please Fill Every Blank');
          } else {
            checkAuthen();
          }
        },
        child: Text('Login'),
      ),
    );
  }

  Future<Null> checkAuthen() async {
    String path =
        '${MyConstant().domain}/ungposbee/getUserWhereUser.php?isAdd=true&user=$user';
    await Dio().get(path).then(
      (value) {
        print('value = $value');
        if (value.toString() == 'null') {
          normalDialog(context, 'User False', 'No $user in my Database');
        } else {
          var result = json.decode(value.data);
          for (var item in result) {
            UserModel model = UserModel.fromMap(item);
            if (password == model.password) {
              Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(
                    builder: (context) => MyService(userModel: model),
                  ),
                  (route) => false);
            } else {
              normalDialog(
                  context, 'Password False', 'Please Try Again Password False');
            }
          }
        }
      },
    );
  }

  Container buildUser() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.35,
      child: TextField(
        onChanged: (value) => user = value.trim(),
        decoration: InputDecoration(
          labelText: 'User :',
          prefixIcon: Icon(Icons.perm_identity),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container buildPassword() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      width: screen * 0.35,
      child: TextField(
        onChanged: (value) => password = value.trim(),
        obscureText: true,
        decoration: InputDecoration(
          labelText: 'Password :',
          prefixIcon: Icon(Icons.lock_outline),
          border: OutlineInputBorder(),
        ),
      ),
    );
  }

  Container buildLogo() {
    return Container(
      width: screen * 0.2,
      child: MyStyle().showLogo(),
    );
  }
}
