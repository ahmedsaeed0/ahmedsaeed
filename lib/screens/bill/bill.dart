

import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';

import '../../components/coustom_bottom_nav_bar.dart';
import '../../enums.dart';

class Bill extends StatelessWidget {
  static String routeName = "/Bill";

  const Bill({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("bill info ",style: TextStyle(color: Colors.black),)
      ),
        bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
        body: Body());
  }
}

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(

                  border: Border.all(width: 1),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("No bill"),
                          Text("No Product"),
                          Text("quantity"),
                          Text("total"),
                        ],
                      ),
                      SizedBox(height: 20.0),
                      Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Text("1"),
                        Text("32"),
                        Text("45"),
                          Text("3400")
                      ],),
                    ],
                  ),
                ),
              ),
            ),

              ],
    )));
  }
}
