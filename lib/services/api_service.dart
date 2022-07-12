import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:tuso_fake_store_api/models/product.dart';

class ApiService {
  static const String baseUrl = 'https://fakestoreapi.com';

  Future<List<String>> getAllCategories() {
    return http.get(Uri.parse('$baseUrl/products/categories')).then((data) {
      final categories = <String>[];
      if (data.statusCode == 200) {
        final jsonData = json.decode(data.body);

        for (var item in jsonData) {
          categories.add(item);
        }
      }
      return categories;
    }).catchError((e) => print(e));
  }

  Future<List<Product>> getAllProducts() async {
    return http.get(Uri.parse('$baseUrl/products')).then((data) {
      final products = <Product>[];
      if (data.statusCode == 200) {
        final jsonData = json.decode(data.body);
        for (var product in jsonData) {
          products.add(Product.fromJson(product));
        }
      }
      return products;
    }).catchError((err) => print(err));
  }
}
