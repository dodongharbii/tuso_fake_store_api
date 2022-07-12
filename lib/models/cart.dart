import 'package:tuso_fake_store_api/models/products.dart';

class Cart {
  int? id;
  int? userId;
  DateTime? date;
  List<Products>? products;

  Cart({this.id, this.userId, this.date, this.products});
}
