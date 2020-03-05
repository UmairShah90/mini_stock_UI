import 'package:flutter/material.dart';
import 'package:mini_stock/clipper.dart';
import 'package:mini_stock/login_screens/login.dart';

class Spalsh extends StatefulWidget {
  @override
  _SpalshState createState() => _SpalshState();
}

class _SpalshState extends State<Spalsh> {

  
   

  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreen,
      body: Column(
        children: <Widget>[
          Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.15),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                child: Stack(children: <Widget>[
                  Positioned(
                    child: Container(
                      child: Align(
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.white),
                          width: 150.0,
                          height: 150.0,
                        ),
                      ),
                      height: 154.0,
                    ),
                  ),
                  Positioned(
                    child: Container(
                      height: 154.0,
                      child: Align(
                        child: Text(
                          "GO",
                          style: TextStyle(
                              fontSize: 120,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightGreen),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    width: MediaQuery.of(context).size.width * 0.15,
                    height: MediaQuery.of(context).size.width * 0.15,
                    bottom: MediaQuery.of(context).size.height * 0.046,
                    right: MediaQuery.of(context).size.width * 0.22,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                  Positioned(
                    width: MediaQuery.of(context).size.width * 0.08,
                    height: MediaQuery.of(context).size.width * 0.08,
                    bottom: 0,
                    right: MediaQuery.of(context).size.width * 0.32,
                    child: Container(
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                    ),
                  ),
                 
                ]),
              )),
          Padding(
            child: Container(
              child: _button(
                
                "Login",
                Colors.white,
                Colors.white,
                Colors.green,
             
              ),
              
              height: 50.0,
              width: MediaQuery.of(context).size.width,
            ),
            padding: EdgeInsets.only(
              top: 80,
              left: 20,
              right: 20,
            ),
          ),
          Padding(
            child: Container(
              child: OutlineButton(
                highlightedBorderColor: Colors.white,
                borderSide: BorderSide(color: Colors.white, width: 2.0),
                highlightElevation: 0.0,
                splashColor: Colors.white,
                highlightColor: Theme.of(context).primaryColor,
                color: Theme.of(context).primaryColor,
                shape: RoundedRectangleBorder(
                  borderRadius: new BorderRadius.circular(30.0),
                ),
                child: Text(
                  "REGISTER",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: 20),
                ),
                onPressed: () {
                 Navigator.pushNamed(context, '/register');
                
                },
              ),
              height: 50.0,
              width: MediaQuery.of(context).size.width,
            ),
            padding: EdgeInsets.only(top: 10.0, left: 20.0, right: 20.0),
          ),
          Expanded(
            child: Align(
              child: ClipPath(
                child: Container(
                  color: Colors.white,
                  height: 300.0,
                ),
                clipper: BottomWaveClipper(),
              ),
              alignment: Alignment.bottomCenter,
            ),
          )
        ],
        crossAxisAlignment: CrossAxisAlignment.stretch,
      ),
    );
  }



Widget _button(
  String text,
  Color highlightColor,
  Color fillColor,
  Color textColor,
  
) {
  return RaisedButton(
    highlightElevation: 0.0,
    //   splashColor: splashColor,
    elevation: 0.0,
    color: fillColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
    child: Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.bold, color: textColor, fontSize: 20),
    ),
    onPressed: () {
      Navigator.pushNamed(context, '/login');
     
    },
  );
}
}