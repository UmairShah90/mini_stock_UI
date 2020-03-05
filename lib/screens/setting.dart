import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  @override
  _SettingState createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(15.0),
          child: Center(
            child: Column(
              children: <Widget>[
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      labelText: "Shop Name",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: BorderSide(
                          color: Colors.green,
                        ),
                      )),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      labelText: "Email Address",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(color: Colors.green))),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                TextFormField(
                  keyboardType: TextInputType.phone,
                  cursorColor: Colors.green,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      labelText: "Phone Number",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(color: Colors.green))),
                ),
                Padding(padding: EdgeInsets.only(top: 15.0)),
                TextFormField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      filled: true,
                      labelText: "Full Address",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide(color: Colors.green),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide(color: Colors.green))),
                  maxLines: 5,
                ),
                Padding(padding: EdgeInsets.only(top: 20.0)),
                RaisedButton(
                  color: Colors.green,
                  child: Text(
                    "SAVE DETAIL",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
