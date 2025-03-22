import 'dart:io';

class Product {
  String? name;
  String? description;
  double? price;

  Product(this.name, this.description, this.price);
}

class ProductManger {
  List<Product> products = [];

  void addProducts(name, description, price) {
    var product = Product(name, description, price);
    products.add(product);
    print('product added succesfully');
  }

  void viewProducts() {
    if (products.length == 0) {
      print('no product to view');
    } else {
      print('Name    Description    price');
      for (int i = 0; i < products.length; i++) {
        print(
            "${products[i].name} ${products[i].description} ${products[i].price}");
      }
    }
  }

  void viewSingleProduct(int id) {
    if (id > products.length - 1) {
      print('product fetch failed');
    } else {
      print(
          "${products[id].name} ${products[id].description} ${products[id].price}");
    }
  }

  void editProducts(int id,
      {String name = "", String description = "", double price = 0.0}) {
    if (id > products.length - 1) {
      print('product doesn\'t exist');
    } else {
      products[id].name = name == '' ? products[id].name : name;
      products[id].description =
          description == '' ? products[id].description : description;
      products[id].price = price == 0.0 ? products[id].price : price;
      print('product edited successfully');
    }
  }

  void deleteProduct(int id) {
    if (id > products.length - 1) {
      print('the product doesn\'t exist');
    } else {
      products.removeAt(id);
      print('product deleted successfully');
    }
  }
}

main() {
  var myProductManager = ProductManger();
  do {
    print('Welcome to our product manager');
    print('a.Add produc');
    print('b.view All products');
    print('c.view single product');
    print('d.Edit product');
    print('e.Delete product');
    print('f.Exit');

    var option = stdin.readLineSync();
    switch (option) {
      case 'a':
        print('Enter the Name');
        var name = stdin.readLineSync();
        print('Enter the Description');
        var description = stdin.readLineSync();
        print('Enter the price');
        double price = double.parse(stdin.readLineSync()!);
        myProductManager.addProducts(name, description, price);
        break;
      case 'b':
        myProductManager.viewProducts();
        break;
      case 'c':
        print('Enter product ID');
        int id = int.parse(stdin.readLineSync()!);
        myProductManager.viewSingleProduct(id);
        break;
      case 'd':
        print('enter product id');
        int id = int.parse(stdin.readLineSync()!);
        print('enter new name');
        var name = stdin.readLineSync();
        print('enter new description');
        var description = stdin.readLineSync();
        print('enter new price');
        double price = double.parse(stdin.readLineSync()!);
        myProductManager.editProducts(id,
            name: name!, description: description!, price: price);
        break;
      case 'e':
        print('Enter product ID');
        int id = int.parse(stdin.readLineSync()!);
        myProductManager.deleteProduct(id);
        break;
      case 'f':
        return;

      default:
        print('invalid input');
    }
  } while (true);
}
