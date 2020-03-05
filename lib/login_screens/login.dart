import 'package:flutter/material.dart';
import 'package:mini_stock/main.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
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
                    child: Text(
                      "LOGIN",
                      style: TextStyle(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    alignment: Alignment.center,
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20.0, top: 60.0),
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
                    "Login",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40.0)),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => TabViews(),
                    ));
                    _loginUser();
                  },
                )),
          )
        ]),
      ),
    );
  }

  void _loginUser() {
    email = _emailController.text;
    password = _passwordController.text;
    _emailController.clear();
    _passwordController.clear();
  }
}

Widget text_input_field(
    Icon icon, String hint, TextEditingController controller, bool obsecure) {
  return Container(
    padding: EdgeInsets.only(left: 20.0, right: 20.0),
    child: TextFormField(
      controller: controller,
      obscureText: obsecure,
      style: TextStyle(fontSize: 20.0),
      decoration: InputDecoration(
          hintStyle: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 20, color: Colors.green),
          hintText: hint,
          focusColor: Colors.green,
          fillColor: Colors.green,
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30.0),
              borderSide: BorderSide(color: Colors.green, width: 2.0)),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide(
              color: Colors.green,
              width: 3,
            ),
          ),
          prefixIcon: Padding(
            child: IconTheme(
              data: IconThemeData(color: Colors.green),
              child: icon,
            ),
            padding: EdgeInsets.only(left: 30.0, right: 10.0),
          )),
    ),
  );
}
