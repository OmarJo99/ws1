import 'package:dio/dio.dart';
import 'package:dna_test_task/core/utils/constants.dart';
import 'package:dna_test_task/features/domain/entities/product_entities.dart';

class ProductDio {
  Dio dio = Dio();
  Future getProduct() async {
    final url = kBaseUrl;
    Response response = await dio.get(url);
    List<Product> productlist = [];
    if (response.statusCode == 200) {
      for (var p in response.data) {
        productlist.add(Product.fromJson(p));
      }
      return productlist;
    }
  }
}
