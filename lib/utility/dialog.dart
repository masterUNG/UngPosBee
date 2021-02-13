import 'package:flutter/material.dart';
import 'package:ungposbee/utility/my_style.dart';

Future<Null> normalDialog(
    BuildContext context, String title, String message) async {
  showDialog(
    context: context,
    builder: (context) => SimpleDialog(
      title: ListTile(
        leading: MyStyle().showLogo(),
        title: MyStyle().titleH1(title),
        subtitle: Text(message),
      ),children: [TextButton(onPressed: () => Navigator.pop(context), child: Text('OK'))],
    ),
  );
}
