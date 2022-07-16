
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'Product.dart';
class Cart   extends ChangeNotifier {
  final Product product;
  final int numOfItem;

  Cart({required this.product, required this.numOfItem});

  add( Cart demoCarts){
  demoCarts. add(Cart(product: demoProducts[3], numOfItem:6 ));



}




// Demo data for our cart
}
List<Cart> demoCarts = [
  Cart(product: demoProducts[2], numOfItem: 7),
  Cart(product: demoProducts[4], numOfItem: 0),
  Cart(product: demoProducts[2], numOfItem: 3),
  Cart(product: demoProducts[0], numOfItem: 4),
  Cart(product: demoProducts[1], numOfItem: 20),
  Cart(product: demoProducts[2], numOfItem: 20),
  Cart(product: demoProducts[3], numOfItem: 70),


];
