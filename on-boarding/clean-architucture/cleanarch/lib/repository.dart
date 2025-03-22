import 'entities.dart';

abstract class ProductRepository {
  void addProduct(Product product);
  List<Product> getAllProducts();
  Product? getProductById(int id);
  void updateProduct(Product product);
  void deleteProduct(int id);
}
