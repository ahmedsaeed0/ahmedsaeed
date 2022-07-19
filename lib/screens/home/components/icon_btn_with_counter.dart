import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:badges/badges.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/models/Cart.dart';
import '../../../constants.dart';
import '../../../size_config.dart';

class IconBtnWithCounter extends StatelessWidget {
  const IconBtnWithCounter({
    Key? key,
    required this.svgSrc,
    this.numOfitem = 0,
    required this.press,
  }) : super(key: key);

  final String svgSrc;
  final int numOfitem;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Selector<CartModel, int>(
      selector: (context, cartModel) => cartModel.cartItemsNumber,
      builder: (context, cartModel, child) {
        return Badge(
        badgeContent: Text('${cartModel}',style: TextStyle(color: Colors.white),),
        child: InkWell(
          borderRadius: BorderRadius.circular(100),
          onTap: press,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                padding: EdgeInsets.all(getProportionateScreenWidth(12)),
                height: getProportionateScreenWidth(46),
                width: getProportionateScreenWidth(46),
                decoration: BoxDecoration(
                  color: kSecondaryColor.withOpacity(0.1),
                  shape: BoxShape.circle,
                ),
                child: SvgPicture.asset(svgSrc),
              ),
            ],
          ),
        ),
      );
      },
    );
  }
}
