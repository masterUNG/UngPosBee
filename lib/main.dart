import 'package:flutter/material.dart';
import 'package:ungposbee/router.dart';

String initRoute = '/authen';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: map,
      initialRoute: initRoute,
    );
  }
}
