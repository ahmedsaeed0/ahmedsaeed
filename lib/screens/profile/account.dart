import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/constants.dart';
import '../sign_in/sign_in_screen.dart';
import '../../components/coustom_bottom_nav_bar.dart';
import '../../enums.dart';




class PorfialAccount extends StatelessWidget {
  static String routeName = "/PorfialAccount";
  TextEditingController _address =new TextEditingController();
  TextEditingController _firstname =new TextEditingController();
  TextEditingController _lastname =new TextEditingController();
  TextEditingController _phone =new TextEditingController();

   PorfialAccount({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const snackBar = SnackBar(
      content: Text('Updated Sccuessfluy!'),
    );

    var accountuser= ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Account Info",style: TextStyle(fontSize: 30.0),),

               TextField(

                controller: _firstname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: ' FristName',
                ),
              ),

              TextField(

                controller: _lastname,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'LastName',
                ),
              ),

              TextField(
                controller: _phone,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Phone',
                ),
              ),

              TextField(
                controller:_address,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Address',
                ),


              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal:50.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(onPressed: ()  {
                            if (accountuser != null) {
                              print("hhhhhhhhhhhhhhhh");
                               FirebaseFirestore.instance.collection(
                                  "user").doc(
                                  accountuser).update({'user.id': accountuser,
                                'phone': _phone.text,
                                'name': _firstname.text + " " + _lastname.text,
                                'address': _address.text,});
                            }
                            ScaffoldMessenger.of(context).showSnackBar(snackBar);
                          } ,child: Text("update",style: TextStyle(),),)
                    ],
                ),
              )


          ],
          ),
        ),
      ),
    );
  }
}


