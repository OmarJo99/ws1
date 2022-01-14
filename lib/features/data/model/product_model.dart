import 'package:dna_test_task/features/domain/entities/product_entities.dart';

class ProductModel extends Product {
  ProductModel({
    int? id,
    required String title,
    required double price,
    required String description,
    required String image,
  }) : super(
          id: id as int,
          image: image,
          title: title,
          price: price,
          description: description,
        );
  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        title: json['title'],
        price: json['price'],
        description: json['description'],
        image: json['image']);
  }
}
