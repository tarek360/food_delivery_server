import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as io;
import 'package:shelf_router/shelf_router.dart';

import 'routes/images.dart';
import 'routes/products.dart';

final _port = 8080;

void main() async {
  // Create a router to handle different routes
  final router = Router();

  // Define the routes
  router.get('/products', getProducts);
  router.get('/products/<id>', getProduct);
  router.get('/images/<image_id>', getImage);

  // Wrap the router with a middleware handler
  final handler = const Pipeline().addMiddleware(logRequests()).addHandler(router.call);

  // Start the server
  final server = await io.serve(handler, 'localhost', _port);

  print('Server running on localhost:${server.port}');
}
