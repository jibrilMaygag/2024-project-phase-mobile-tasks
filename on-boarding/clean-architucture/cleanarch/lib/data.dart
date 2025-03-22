import 'entities.dart';
import 'repository.dart';

class ProductRepositoryImpl implements ProductRepository {
  final List<Product> _products = [];

  @override
  void addProduct(Product product) {
    _products.add(product);
    print('Product added.');
  }

  @override
  List<Product> getAllProducts() => _products;

  @override
  Product? getProductById(int id) {
    return _products.firstWhere((p) => p.id == id,
        orElse: () => null as Product);
  }

  @override
  void updateProduct(Product product) {
    int index = _products.indexWhere((p) => p.id == product.id);
    if (index != -1) {
      _products[index] = product;
      print('Product updated.');
    } else {
      print('Product not found.');
    }
  }

  @override
  void deleteProduct(int id) {
    _products.removeWhere((p) => p.id == id);
    print('Product deleted.');
  }
}
