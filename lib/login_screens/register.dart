import 'package:flutter/material.dart';
import 'package:mini_stock/login_screens/login.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _usernameController = TextEditingController();
  String username;
  String email;
  String password;
  bool _obscure = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Column(children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 100.0),
            height: 140.0,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                Positioned(
                    child: Align(
                  child: Container(
                    //   padding: EdgeInsets.only(top:50.0),
                    height: 130.0,
                    width: 130.0,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.green,
                    ),
                    alignment: Alignment.center,
                  ),
                )),
                Positioned(
                  child: Container(
                    padding: EdgeInsets.only(bottom: 25.0, right: 40.0),
                    child: Text(
                      "REGI",
                      style: TextStyle(
                          fontSize: 44.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Positioned(
                  child: Align(
                    child: Container(
                      padding: EdgeInsets.only(top: 40.0, left: 28.0),
                      width: 130.0,
                      child: Text(
                        "STER",
                        style: TextStyle(
                            fontSize: 40.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0, top: 60.0),
            child: text_input_field(
                Icon(Icons.person), "User Name", _usernameController, false),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: text_input_field(
                Icon(Icons.email), "Email", _emailController, false),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0),
            child: text_input_field(
                Icon(Icons.lock), "Password", _passwordController, false),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(
                left: 20.0,
                right: 20.0,
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50.0,
                child: RaisedButton(
                  color: Colors.green,
                  hoverColor: Colors.greenAccent,
                  child: Text(
                    "Register",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  onPressed: () {
                    _registerUser();
                  },
                )),
          )
        ])));
  }

  void _registerUser() {
    username = _usernameController.text;
    email = _emailController.text;
    password = _passwordController.text;
    _usernameController.clear();
    _emailController.clear();
    _passwordController.clear();
  }
}
