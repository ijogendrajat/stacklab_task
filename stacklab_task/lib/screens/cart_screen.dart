import 'package:flutter/material.dart';
import 'package:stacklab_task/const/deviceinfo.dart';
import 'package:stacklab_task/models/product_list.dart';
import 'package:stacklab_task/widgets/card_cart.dart';
import 'package:stacklab_task/widgets/popup.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        title: Text(
          "My Cart",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: CartList(),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.grey,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.brown, // background
              onPrimary: Colors.white, // foreground
            ),
            child: Text("Done"),
            onPressed: () {
              showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return PopUp();
                  });
            },
          ),
        ),
      ),
    );
  }
}

class CartList extends StatefulWidget {
  @override
  _CartListState createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          CartCard(Products.mobile[2].name, Products.mobile[2].price),
          CartCard(Products.laptop[1].name, Products.laptop[1].price),
          CartCard(Products.mobile[1].name, Products.mobile[1].price),
        ],
      ),
    );
  }
}
