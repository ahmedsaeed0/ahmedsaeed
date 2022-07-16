import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/screens/bill/bill.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/profile/profile_screen.dart';

import '../constants.dart';
import '../enums.dart';
import '../screens/profile/account.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    var user= ModalRoute.of(context)!.settings.arguments as String;

    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/Shop Icon.svg",
                  color: MenuState.home == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, HomeScreen.routeName ,arguments: user),
              ),
              IconButton(
                icon: SvgPicture.asset("assets/icons/Bell.svg"),
                onPressed: () {Navigator.pushNamed(context, Bill.routeName ,arguments: user);
                  print(user);},
              ),
              IconButton(
                icon: SvgPicture.asset("assets/icons/Lock.svg"),
                onPressed: () {
                  Navigator.pushNamed(context,PorfialAccount.routeName ,arguments: user);
                  print(user);
                },
              ),
              IconButton(
                icon: SvgPicture.asset(
                  "assets/icons/User Icon.svg",
                  color: MenuState.profile == selectedMenu
                      ? kPrimaryColor
                      : inActiveIconColor,
                ),
                onPressed: () {
                  Navigator.pushNamed(
                      context, ProfileScreen.routeName, arguments: user);
                  print(user);
                }
              ),
            ],
          )),
    );
  }
}
