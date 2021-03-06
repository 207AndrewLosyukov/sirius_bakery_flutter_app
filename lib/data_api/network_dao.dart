import 'package:shop_flutter_app/models/product.dart';

abstract class ProductApiDao {
  Future<List<Product>> getProducts();
  Future<List<Product>> searchProducts(String query);
}
