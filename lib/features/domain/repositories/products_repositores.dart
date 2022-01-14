import 'package:dna_test_task/core/resources/data_state.dart';
import 'package:dna_test_task/features/domain/entities/product_entities.dart';

abstract class ProductsRepository {
  Future<DataState<List<Product>>> getAllProducts();
}
