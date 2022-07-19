import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/models/Product.dart';

import 'components/body.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatefulWidget {
  static String routeName = "/cart";
  late final Product product;

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  _CartScreenState();

  @override
  Widget build(BuildContext context) {
    void initState() {
      final Cart car = ModalRoute.of(context)!.settings.arguments as Cart;
      super.initState();
    }

    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Column(
        children: [
          Text(
            "Your Cart",
            style: TextStyle(color: Colors.black),
          ),
          Selector<CartModel, int>(
            selector: (context, cartModel) => cartModel.cartItemsNumber,
            builder: (context, cartModel, child) {
              return Text(
                "${cartModel} items",
                //onModel for resive data from detailes
                style: Theme.of(context).textTheme.caption,
              );
            },
          ),
        ],
      ),
    );
  }
}
