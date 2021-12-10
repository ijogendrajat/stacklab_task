import 'package:flutter/material.dart';
import 'package:stacklab_task/const/deviceinfo.dart';
import 'package:stacklab_task/models/product_list.dart';
import 'package:stacklab_task/screens/cart_screen.dart';
import 'package:stacklab_task/widgets/card_home.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool mobileSelected = true;
  var laptop, mobile;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SafeArea(
          child: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          //top 2 butttom
          Container(
            width: MediaQuery.of(context).size.width,
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      height: 50,
                      width: DeviceInfo.width(context) / 3,
                      child: Center(
                        child: Text(
                          "Mobile",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Container(
                      height: 50,
                      width: MediaQuery.of(context).size.width / 3,
                      child: Center(
                        child: Text(
                          "Laptop",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ))
              ],
            ),
          ),
          //button done!!
          SizedBox(
            height: 10,
          ),

          Expanded(
            child: GridView.extent(
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              padding: EdgeInsets.all(5),
              childAspectRatio: ((DeviceInfo.width(context) / 2.4) /
                  (DeviceInfo.width(context) / 1.5)),
              maxCrossAxisExtent: DeviceInfo.width(context) / 2,
              children: [
                CardHome(Products.mobile[0].name, Products.mobile[0].price,
                    Products.mobile[0].photo),
                CardHome(Products.mobile[1].name, Products.mobile[1].price,
                    Products.mobile[1].photo),
                CardHome(Products.mobile[2].name, Products.mobile[2].price,
                    Products.mobile[2].photo),
                CardHome(Products.mobile[3].name, Products.mobile[3].price,
                    Products.mobile[3].photo),
                CardHome(Products.mobile[0].name, Products.mobile[0].price,
                    Products.mobile[0].photo),
                CardHome(Products.mobile[1].name, Products.mobile[1].price,
                    Products.mobile[1].photo),
                CardHome(Products.mobile[2].name, Products.mobile[2].price,
                    Products.mobile[2].photo),
                CardHome(Products.mobile[3].name, Products.mobile[3].price,
                    Products.mobile[3].photo),
              ],
            ),
          ),
        ],
      )),
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
            child: Text("Checkout"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CartScreen()),
              );
            },
          ),
        ),
      ),
    );
  }
}
