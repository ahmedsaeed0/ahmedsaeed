import 'package:flutter/material.dart';

import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/models/Product.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(title: "Popular Products", press: () {}),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
         SizedBox(
           width: 400.0,
           child: Wrap(
             spacing: 15.0,
              runSpacing: 30.0,

              children: [
                ...List.generate(demoProducts.length, (index) {
                    if (demoProducts[index].isPopular)
                      return ProductCard(product: demoProducts[index]);

                    return SizedBox
                        .shrink(); // here by default width and height is 0
                  },
                ),
                SizedBox(width: getProportionateScreenWidth(20)),
              ],
            ),
         ),
      ],
    );
  }
}
