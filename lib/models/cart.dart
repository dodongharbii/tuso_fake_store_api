import 'package:tuso_fake_store_api/models/products.dart';

class Cart {
  int? id;
  int? userId;
  DateTime? date;
  List<Products>? products;

  Cart({this.id, this.userId, this.date, this.products});

  factory Cart.fromJson(Map<String, dynamic> json) {
    return Cart(
      id: json['id'],
      userId: json['userId'],
      date: json['date'],
      products: json['products'],
    );
  }
}
