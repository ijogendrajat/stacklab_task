import 'package:flutter/material.dart';
import 'package:stacklab_task/const/deviceinfo.dart';

class CartCard extends StatelessWidget {
  final String name;
  final int price;

  CartCard(
    this.name,
    this.price,
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            height: 100,
            width: DeviceInfo.width(context),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "₹" + price.toString(),
                      style: TextStyle(fontSize: 16),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Remove",
                        style: TextStyle(color: Colors.red),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
