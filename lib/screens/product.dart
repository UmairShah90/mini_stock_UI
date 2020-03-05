import 'package:flutter/material.dart';
import 'package:mini_stock/model/products_item.dart';

class Product extends StatefulWidget {
  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Padding(
          padding: EdgeInsets.only(top: 20.0, right: 10.0, left: 10.0),
          child: Container(
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: products.length,
                itemBuilder: (context, int index) {
                  var p = products[index];
                  final p2 = products_two[index];
                  return Column(children: <Widget>[
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Container(
                                height: 230.0,
                                width: 150.0,
                                padding: EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10.0)),
                                  border: Border.all(
                                      color: Colors.green, width: 1.0),
                                ),
                                child: Column(
                                  children: <Widget>[
                                    Stack(
                                      children: <Widget>[
                                        Positioned(
                                            child: Align(
                                          alignment: Alignment.topRight,
                                          child: Text(
                                            p.productQuantity,
                                            style: TextStyle(
                                                color: Colors.green,
                                                fontStyle: FontStyle.italic),
                                          ),
                                        ))
                                      ],
                                    ),
                                    Image.asset(p.productImg),
                                    Text(p.productName),
                                    Text(p.productPrice,
                                        style: TextStyle(color: Colors.green)),
                                    _updateButton()
                                  ],
                                ),
                              ),
                              SizedBox(height: 10.0)
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Column(
                                children: <Widget>[
                                  Container(
                                    height: 230.0,
                                    width: 150.0,
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(10.0)),
                                      border: Border.all(
                                          color: Colors.green, width: 1.0),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Stack(
                                          children: <Widget>[
                                            Positioned(
                                                child: Align(
                                              alignment: Alignment.topRight,
                                              child: Text(
                                                p2.productQuantity,
                                                style: TextStyle(
                                                    color: Colors.green,
                                                    fontStyle:
                                                        FontStyle.italic),
                                              ),
                                            ))
                                          ],
                                        ),
                                        Image.asset(p2.productImg),
                                        Text(p2.productName),
                                        Text(
                                          p2.productPrice,
                                          style: TextStyle(color: Colors.green),
                                        ),
                                        _updateButton()
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 10.0),
                                ],
                              )
                            ],
                          )
                        ])
                  ]);
                }),
          )),
    );
  }
}

Widget _updateButton() {
  return Container(
    height: 28.0,
    width: 80.0,
    decoration: BoxDecoration(
      color: Colors.green,
      borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0), topLeft: Radius.circular(10.0)),
    ),
    child: Center(
        child: Text(
      "UPDATE",
      style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
    )),
  );
}
