import 'dart:io';
import 'entities.dart';
import 'data.dart';

void main() {
  var repository = ProductRepositoryImpl();

  while (true) {
    print('\nProduct Manager');
    print('1. Add Product');
    print('2. View All Products');
    print('3. View Product');
    print('4. Edit Product');
    print('5. Delete Product');
    print('6. Exit');

    var choice = stdin.readLineSync();
    switch (choice) {
      case '1':
        print('Enter ID:');
        int id = int.parse(stdin.readLineSync()!);
        print('Enter Name:');
        String name = stdin.readLineSync()!;
        print('Enter Description:');
        String description = stdin.readLineSync()!;
        print('Enter Price:');
        double price = double.parse(stdin.readLineSync()!);
        repository.addProduct(Product(
            id: id, name: name, description: description, price: price));
        break;
      case '2':
        var products = repository.getAllProducts();
        if (products.isEmpty) {
          print('No products available.');
        } else {
          print('ID  Name  Description  Price');
          for (var p in products) {
            print('${p.id}  ${p.name}  ${p.description}  \$${p.price}');
          }
        }
        break;
      case '3':
        print('Enter Product ID:');
        int id = int.parse(stdin.readLineSync()!);
        var product = repository.getProductById(id);
        if (product != null) {
          print(
              '${product.id}  ${product.name}  ${product.description}  \$${product.price}');
        } else {
          print('Product not found.');
        }
        break;
      case '4':
        print('Enter Product ID:');
        int id = int.parse(stdin.readLineSync()!);
        print('Enter New Name:');
        String name = stdin.readLineSync()!;
        print('Enter New Description:');
        String description = stdin.readLineSync()!;
        print('Enter New Price:');
        double price = double.parse(stdin.readLineSync()!);
        repository.updateProduct(Product(
            id: id, name: name, description: description, price: price));
        break;
      case '5':
        print('Enter Product ID:');
        int id = int.parse(stdin.readLineSync()!);
        repository.deleteProduct(id);
        break;
      case '6':
        return;
      default:
        print('Invalid option.');
    }
  }
}
