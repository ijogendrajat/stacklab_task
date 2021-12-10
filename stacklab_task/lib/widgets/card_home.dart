import 'package:flutter/material.dart';
import 'package:stacklab_task/const/deviceinfo.dart';

class CardHome extends StatelessWidget {
  final String name;
  final int price;
  final String photo;

  CardHome(this.name, this.price, this.photo);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        height: DeviceInfo.width(context) / 1.5,
        width: DeviceInfo.width(context) / 2.4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "₹" + price.toString(),
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                height: DeviceInfo.width(context) / 2.6,
                width: DeviceInfo.width(context) / 2.6,
                // color: Colors.black,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: NetworkImage(photo), fit: BoxFit.cover)),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    name,
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(
                width: DeviceInfo.width(context) / 2.4,
                child: ElevatedButton(
                  child: Text(
                    "Add to cart",
                    style: TextStyle(fontSize: 14),
                  ),
                  onPressed: () {},
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
