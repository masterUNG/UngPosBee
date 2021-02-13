import 'package:flutter/material.dart';
import 'package:ungposbee/body/catigory.dart';
import 'package:ungposbee/models/user_model.dart';
import 'package:ungposbee/utility/my_style.dart';

class MyService extends StatefulWidget {
  final UserModel userModel;
  MyService({@required this.userModel});
  @override
  _MyServiceState createState() => _MyServiceState();
}

class _MyServiceState extends State<MyService> {
  UserModel model;
  Widget current = Catigory();
  List<String> titles = ['Catigory'];
  int index = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    model = widget.userModel;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(titles[index]),
        backgroundColor: MyStyle().primaryColor,
      ),
      drawer: Drawer(
        child: Column(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                    radius: 1,
                    center: Alignment(-0.7, -0.3),
                    colors: [Colors.white, MyStyle().primaryColor]),
              ),
              currentAccountPicture: MyStyle().showLogo(),
              accountName:
                  MyStyle().titleH1(model == null ? 'Name' : model.name),
              accountEmail: null,
            ),
            buildMenuCatigory(),
          ],
        ),
      ),
      body: current,
    );
  }

  ListTile buildMenuCatigory() {
    return ListTile(
      onTap: () => Navigator.pop(context),
      leading: Icon(Icons.home),
      title: Text('Catigory'),
      subtitle: Text('แสดงหมวดหมู่ ของ สินค้า'),
    );
  }
}
