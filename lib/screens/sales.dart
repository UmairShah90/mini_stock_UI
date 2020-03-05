import 'package:flutter/material.dart';
import 'package:mini_stock/model/products_item.dart';

class Sales extends StatefulWidget {
  @override
  _SalesState createState() => _SalesState();
}

class _SalesState extends State<Sales> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: products.length,
          itemBuilder: (context, int index) {
            final sales = products[index];
            return Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10.0),
                      width: 335.0,
                      height: 90.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(14.0)),
                        border: Border.all(color: Colors.green, width: 1.0),
                      ),
                      child: Row(
                        children: <Widget>[
                          Image.asset(sales.productImg),
                          Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                SizedBox(height: 5.0),
                                Text(sales.productName,
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.green)),
                                SizedBox(width: 10.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Text(sales.productQuantity)
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0)
              ],
            );
          }),
    );
  }
}
