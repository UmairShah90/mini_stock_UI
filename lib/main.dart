import 'package:flutter/material.dart';
import 'package:mini_stock/login_screens/login.dart';
import 'package:mini_stock/login_screens/register.dart';
import 'package:mini_stock/login_screens/splash.dart';
import 'package:mini_stock/screens/product.dart';
import 'package:mini_stock/screens/sales.dart';
import 'package:mini_stock/screens/setting.dart';
import 'package:mini_stock/screens/home.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
  
     initialRoute: '/splash',
     routes: {
      '/splash' : (context) => Spalsh(),
       '/login' : (context) => Login(),
       '/register' : (context) => Register(),
       '/dashboard' : (context) => Home(),
       '/product' : (context) => Product(),
       '/sales' : (context) => Sales(),
       '/setting' : (context) => Setting(),
       '/tab' : (context) => TabViews(),
     },
));


class TabViews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
            length: 4,
            child: Scaffold(
              appBar: AppBar(
                elevation: 5.0,
                backgroundColor: Colors.green,
                title: Text("Mini Stock",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold)),
                bottom: TabBar(
                  unselectedLabelColor: Colors.greenAccent,
                  indicatorColor: Colors.green,
                  labelPadding: EdgeInsets.only(top: 15, bottom: 15),
                  
                  tabs: <Widget>[
                    Text("HOME"),
                    Text("PRODUCT"),
                    Text("SALES"),
                    Text("SETTING"),
                  ],
                ),
              ),
              body: TabBarView(
                children: <Widget>[
                  Home(),
                  Product(),
                  Sales(),
                  Setting(),
                ],
              ),
            )));
      
      
    
  }
}