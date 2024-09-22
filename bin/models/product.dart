import 'dart:core';

abstract class Product {
  String name;
  double price;
  String category;
  int id;

  Product(this.name, this.price, this.category, this.id);

  printDetails() {
    print("""
    Product ID: $id
    Product Name: $name
    Product Price: $price
    Product Category: $category
    """);
  }
}

class Furniture extends Product {
  String dimension;
  double weightCapacity;
  Furniture({
    required this.dimension,
    required int id,
    required this.weightCapacity,
    required String name,
    required double price,
  }) : super(name, price, "Furniture", id);
}

class Electronic extends Product {
  double powerConsumption;
  int warrantyInYears;
  String brand;

  Electronic({
    required this.powerConsumption,
    required int id,
    required this.warrantyInYears,
    required this.brand,
    required String name,
    required double price,
  }) : super(name, price, "Electronics", id);
}

class Cloth extends Product {
  String size;
  String color;
  String gender;

  Cloth({required this.size, required this.gender, required int id, required this.color, required String name, required double price}) : super(name, price, "Clothes", id);
}
