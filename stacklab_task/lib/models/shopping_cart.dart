import 'package:stacklab_task/models/product_list.dart';
import 'product_list.dart';

class ShoppingCart {
  final Products products;
  final int price;
  final String photo;
  final String name;

  ShoppingCart({this.products, this.name, this.price, this.photo});
}
