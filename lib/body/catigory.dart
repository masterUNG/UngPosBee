import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:ungposbee/models/catigory_model.dart';
import 'package:ungposbee/states/list_product.dart';
import 'package:ungposbee/utility/my_constant.dart';
import 'package:ungposbee/utility/my_style.dart';

class Catigory extends StatefulWidget {
  @override
  _CatigoryState createState() => _CatigoryState();
}

class _CatigoryState extends State<Catigory> {
  List<CatigoryModel> catigoryModels = List();
  List<Widget> widgets = List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readAllCatigory();
  }

  Future<Null> readAllCatigory() async {
    String path = '${MyConstant().domain}/ungposbee/getAllCatitory.php';
    await Dio().get(path).then(
      (value) {
        print('value = $value');
        var result = json.decode(value.data);
        int index = 0;
        for (var item in result) {
          CatigoryModel model = CatigoryModel.fromMap(item);
          catigoryModels.add(model);
          setState(() {
            widgets.add(createWidget(model, index));
          });
          index++;
        }
      },
    );
  }

  Widget createWidget(CatigoryModel model, int index) => GestureDetector(
        onTap: () {
          print('You Click index = $index');
          Navigator.push(context, MaterialPageRoute(builder: (context) => ListProduct(model: catigoryModels[index],),));
        },
        child: Card(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 100,
                  height: 100,
                  child: Image(
                    image: NetworkImage('${MyConstant().domain}${model.url}'),
                  ),
                ),
                MyStyle().titleH2(model.name),
              ],
            ),
          ),
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: widgets.length == 0 ? MyStyle().showProgress() : buildGridView());
  }

  GridView buildGridView() {
    return GridView.extent(
      maxCrossAxisExtent: 200,
      children: widgets,
    );
  }
}
