import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../sign_in/sign_in_screen.dart';
import 'profile_menu.dart';
import '/screens/sign_in/components/sign_form.dart';

class Body extends StatelessWidget {
  var ncard = "2222-3829-4000-2323";
  int cash = 12;
  var style=  TextStyle(color: Colors.white,fontSize: 20);

  @override
  Widget build(BuildContext context) {
    var profialuser= ModalRoute.of(context)!.settings.arguments as String;
    final DeleteAccount =FirebaseFirestore.instance.collection("users");

    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.purple,
                  ],
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              height: 180,
              width: double.infinity,
              child: Column(children: [
                SizedBox(height: 20.0),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Image.asset(
                            "assets/images/sim.png",
                            width: 40.0,
                            color: Colors.white,
                          ),
                        ),
                        Image.asset(
                          "assets/images/master.png",
                          width: 120.0,
                        ),
                      ]),
                ),
                SizedBox(height: 10.0,),
                Container(
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$ncard',
                        style: TextStyle(color: Colors.white, fontSize: 20.0),
                      ),
                      SizedBox(height: 20.0,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '$cash',
                              style: style,
                            ),
                            Text(
                              '12/5',
                              style: style,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]),
            ),
          ),
          SizedBox(height: 20),
          // ProfileMenu(
          //   text: "My Account",
          //   icon: "assets/icons/User Icon.svg",
          //   press: () => {Navigator.pushNamed(context, PorfialAccount.routeName)
          //   },
          //
          // ),
          // ProfileMenu(
          //   text: "Bill",
          //   icon: "assets/icons/Bell.svg",
          //   press: () {
          //     Navigator.pushNamed(context, Bill.routeName);
          //   },
          // ),
          ProfileMenu(
            text: 'Delete Account',
            icon: "assets/icons/Question mark.svg",
            press: () async{
              print(profialuser);
              DeleteAccount.doc(profialuser).delete();


            },
          ),
          ProfileMenu(
            text: "Log Out",
            icon: "assets/icons/Log out.svg",
            press: () {



              Navigator.pushNamed(context, SignInScreen.routeName);
             }

          ),
        ],
      ),
    );
  }
}
