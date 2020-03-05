import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50.0),
      child: Container(
          child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(25),
                        height: 140,
                        width: 150.0,
                        decoration: BoxDecoration(
                            color: Colors.green[300],
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(15.0),
                              bottomRight: Radius.circular(15.0),
                            )),
                        child: Column(children: <Widget>[
                          Image.asset(
                            'images/warehouse.png',
                            color: Colors.white,
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Warehouse",
                            style: TextStyle(color: Colors.white),
                          )
                        ]))
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(25),
                      height: 140,
                      width: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                        ),
                        border: Border.all(color: Colors.green, width: 1.0),
                      ),
                      child: Column(children: <Widget>[
                        Image.asset(
                          'images/forecast.png',
                          color: Colors.green,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Sales",
                          style: TextStyle(color: Colors.green),
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 25),
          Row(
            children: <Widget>[
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(25),
                      height: 140,
                      width: 150.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                        border: Border.all(color: Colors.green, width: 1.0),
                      ),
                      child: Column(children: <Widget>[
                        Image.asset(
                          'images/scan.png',
                          color: Colors.green,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Products",
                          style: TextStyle(color: Colors.green),
                        )
                      ]),
                    )
                  ],
                ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(25),
                      height: 140,
                      width: 150.0,
                      decoration: BoxDecoration(
                          color: Colors.green[300],
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15.0),
                            bottomLeft: Radius.circular(15.0),
                          )),
                      child: Column(children: <Widget>[
                        Image.asset(
                          'images/users.png',
                          color: Colors.white,
                        ),
                        SizedBox(height: 5),
                        Text(
                          "Customers",
                          style: TextStyle(color: Colors.white),
                        )
                      ]),
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 40),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(25),
                height: 140,
                width: 300.0,
                decoration: BoxDecoration(
                    color: Colors.green[300],
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      bottomLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                      bottomRight: Radius.circular(15.0),
                    )),
                child: Row(children: <Widget>[
                  Image.asset(
                    'images/sales.png',
                    color: Colors.white,
                  ),
                  SizedBox(width: 20),
                  Expanded(
              
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(height: 8,),
                        Text("Sales Now ", style: TextStyle(color: Colors.white,fontSize:25.0,fontWeight: FontWeight.bold)),
                        SizedBox(height: 5),
                        Text(
                          "For Urgent Sales",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  )
                ]),
              )
            ],
          )
        ],
      )),
    );
  }
}
