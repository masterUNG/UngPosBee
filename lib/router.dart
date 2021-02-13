import 'package:flutter/material.dart';
import 'package:ungposbee/states/authen.dart';
import 'package:ungposbee/states/list_product.dart';
import 'package:ungposbee/states/my_service.dart';

final Map<String, WidgetBuilder> map = {
  '/authen':(BuildContext context)=> Authen(),
  '/myService':(BuildContext context)=> MyService(),
  '/listProduct':(BuildContext context)=> ListProduct(),
};
