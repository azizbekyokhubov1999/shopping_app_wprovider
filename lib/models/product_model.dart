import 'package:uuid/uuid.dart';

var uuid = const Uuid();

class ProductModel {
  final String id;
  final String name;
  final int price;
  final String image;
  final String desc;
  List? sizes;
  List? colors;
  final bool isAvailable;
  bool isFavourite;

  ProductModel({
    required this.name,
    required this.price,
    required this.image,
    required this.desc,
    required this.sizes,
    required this.colors,
    required this.isAvailable,
     this.isFavourite = false,
}):  id= uuid.v4();
}