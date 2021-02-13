import 'package:flutter/material.dart';
import 'package:ungposbee/models/catigory_model.dart';

class ListProduct extends StatefulWidget {
  final CatigoryModel model;
  ListProduct({@required this.model});
  @override
  _ListProductState createState() => _ListProductState();
}

class _ListProductState extends State<ListProduct> {
  CatigoryModel catigoryModel;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    catigoryModel = widget.model;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(catigoryModel.name),),
    );
  }
}
