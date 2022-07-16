import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/Product.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/size_config.dart';
import '../../../constants.dart';
import '../../../models/Cart.dart';
import 'product_description.dart';
import 'top_rounded_container.dart';
import 'product_images.dart';

class Body extends StatefulWidget {
  final Product product;

  const Body({Key? key, required this.product}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

int cont =0;
class _BodyState extends State<Body> {

  @override
  Widget build(BuildContext context) {
    var ahmed =  widget.product.id;
    final Cart a= new Cart(product: demoProducts[ahmed], numOfItem: 4);

    add( Cart demoCarts) {
      demoCarts.add(Cart(product: demoProducts[ahmed], numOfItem: 0));
    }

    return ListView(
      children: [
        ProductImages(product: widget.product),
        TopRoundedContainer(
          color: Colors.white,
          child: Column(
            children: [
              ProductDescription(
                product: widget.product,
                pressOnSeeMore: () {},
              ),
              TopRoundedContainer(
                color: Colors.white,
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: kPrimaryColor),
                        child: IconButton(
                          onPressed: () {
                            setState(() {
                              cont++;
                              print('$cont');
                            });


                          },
                          icon:Icon(Icons.add,color: Colors.white,)
                        ),
                      ),
                      Text('$cont',style: TextStyle(fontSize: 20.0)),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            color: kPrimaryColor),
                        child: IconButton(
                            onPressed: () {
                              setState(() {

                                if (cont>0){
                                  cont--;

                                }else
                                  cont=0;
                                print('$cont');
                              });


                            },
                            icon:Icon(Icons.minimize,color: Colors.white,)
                        ),
                      ),
                    ]),
                    Column(
                      children: [
                        TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 0.15,
                              right: SizeConfig.screenWidth * 0.15,
                            ),
                            child: DefaultButton(
                              text: "Add To Cart",
                              press: () {
                                //add(Cart(product: demoProducts[ahmed], numOfItem: cont));
                                Navigator.pushNamed(
                                  context,
                                  CartScreen.routeName,
                                  arguments: Cart(product: demoProducts[ahmed], numOfItem: cont));
                                print(ahmed);

                                //);
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

