// import 'dart:io';

// import 'package:dna_test_task/features/data/datasource/remote/product_api_service.dart';
// import 'package:dna_test_task/features/domain/entities/product_entities.dart';
// import 'package:dna_test_task/core/resources/data_state.dart';
// import 'package:dna_test_task/features/domain/repositories/products_repositores.dart';

// class ProductsRespositoryImpl implements ProductsRepository {
//     final ProductApiService _newsApiService;
//     ProductsRespositoryImpl(this._newsApiService);


// //   @override
// //   Future<DataState<List<Product>>> getAllProducts() async {
// //  if (httpResponse.response.statusCode == HttpStatus.ok) {
// //         return DataSuccess(httpResponse.data.articles);
// //       }
// //       return DataFailed(
// //         DioError(
// //           error: httpResponse.response.statusMessage,
// //           response: httpResponse.response,
// //           request: httpResponse.response.request,
// //           type: DioErrorType.RESPONSE,
// //         ),
// //       );
// //     } on DioError catch (e) {
// //       return DataFailed(e);
// //     }
// //   }
// // }
