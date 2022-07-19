import 'package:flutter/material.dart';
import 'Product.dart';

class Cart {
  final Product product;
  final int numOfItem;

  Cart({required this.product, required this.numOfItem});
  // void add(Cart demoCarts) {
  //   demoCarts.add(Cart(product: demoProducts[3], numOfItem: 6));
  // }

// Demo data for our cart
}

class CartModel extends ChangeNotifier {
  int get cartItemsNumber => demoCarts.length;

  void addItemToCart(Product addedProduct, int numOfItem) {
    demoCarts.add(Cart(product: addedProduct, numOfItem: numOfItem));
    notifyListeners();
  }

  void removeItem(index) {
    demoCarts.removeAt(index);
    notifyListeners();
  }
}

List<Cart> demoCarts = [];
