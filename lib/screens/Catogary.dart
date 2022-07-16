import 'package:flutter/material.dart';
import 'package:provider/single_child_widget.dart';

import '../components/coustom_bottom_nav_bar.dart';
import '../components/product_card.dart';
import '../enums.dart';
import '../models/Product.dart';
import '../size_config.dart';
import 'home/components/section_title.dart';

class Catogary extends StatelessWidget {
  static String routeName = "/Catogary";

  const Catogary({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Catogary",style: TextStyle(color: Colors.black),),
      ),
      body: Cat(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}


class Cat extends StatelessWidget {
  const Cat({Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    var   catogryname = ModalRoute.of(context)!.settings.arguments as String;
      return SingleChildScrollView(
        child: Column(

          children: [
            Padding(
              padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
            ),
            SizedBox(height: getProportionateScreenWidth(20)),
            SizedBox(
              width: 400.0,
              child: Wrap(
                spacing: 15.0,
                runSpacing: 30.0,
                children: [
                  ...List.generate(demoProducts.length, (index) {
                    if (catogryname!=null){
                      print(catogryname);
                    if (demoProducts[index].type==catogryname) {
                      return ProductCard(product: demoProducts[index]);
                    }}

                    return SizedBox
                        .shrink(); // here by default width and height is 0
                  },
                  ),
                  SizedBox(width: getProportionateScreenWidth(20)),
                ],
              ),
            ),
          ],
        ),
      );
    }
  }
