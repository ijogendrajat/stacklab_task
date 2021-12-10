import 'package:flutter/material.dart';

class Products {
  final String name;
  final int price;
  final String photo;
  Products({this.name, this.photo, this.price});

  static List<Products> get mobile => [
        Products(
            name: "iphone 10",
            photo:
                "https://images.unsplash.com/photo-1564014769-ae1364f9dec2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80",
            price: 999),
        Products(
            name: "iphone 11",
            photo:
                "https://images.unsplash.com/photo-1552257320-fd7788389c8b?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1025&q=80",
            price: 750),
        Products(
            name: "iphone 12",
            photo:
                "https://images.unsplash.com/photo-1616410072514-e92114cf1a88?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80",
            price: 1250),
        Products(
            name: "iphone 13",
            photo:
                "https://images.unsplash.com/photo-1620787384355-59e33847ab6a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1632&q=80",
            price: 1600),
        Products(
            name: "iphone 14",
            photo:
                "https://images.unsplash.com/photo-1506025883753-c77a55138eae?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1783&q=80",
            price: 2000),
      ];

  static List<Products> get laptop => [
        Products(
            name: "Macbook Air",
            photo:
                "https://images.unsplash.com/photo-1625766763788-95dcce9bf5ac?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80",
            price: 799),
        Products(
            name: "Macbook Pro",
            photo:
                "https://images.unsplash.com/photo-1569770218135-bea267ed7e84?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=880&q=80",
            price: 1200),
      ];
}

// end