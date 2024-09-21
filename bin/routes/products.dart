import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

const List<Map<String, dynamic>> _products = [
  {'id': 'p1', 'price': 9.99, 'name': 'Diner', 'image_id': 'i1'},
  {'id': 'p2', 'price': 14.99, 'name': 'Beef Bacon', 'image_id': 'i2'},
  {'id': 'p3', 'price': 12.99, 'name': 'Stovetop Seared', 'image_id': 'i3'},
  {'id': 'p4', 'price': 13.99, 'name': 'Air-Fried', 'image_id': 'i4'},
  {'id': 'p5', 'price': 15.99, 'name': 'Cheese-in Patty', 'image_id': 'i5'},
  {'id': 'p6', 'price': 10.99, 'name': 'Bacon-Wrapped', 'image_id': 'i6'},
];

Response getProducts(Request request) {
  final jsonProducts = json.encode(_products);
  return Response.ok(
    jsonProducts,
    headers: {'Content-Type': 'application/json'},
  );
}

Response getProduct(Request request) {
  final id = request.params['id'];
  final product = _products.firstWhere((product) => product['id'] == id);
  final jsonProduct = json.encode(product);
  return Response.ok(
    jsonProduct,
    headers: {'Content-Type': 'application/json'},
  );
}
