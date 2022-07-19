import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/material.dart';


class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final double coiteme;
  final double  price,rating;
  final bool isFavourite, isPopular;
  late final  String type;
  Product({
    required this.id ,
    required this.images,
    required this.coiteme,
    required this.rating,
    this.isFavourite = false,
    this.isPopular = false,
    required this.title,
    required this.price,
    required this.description,
    required this.type,
  });

}

// Our demo Products

 final List<Product> demoProducts = [

  Product(
    id: 1,
    images: [
      "assets/images/ps4_console_white_1.png",
    ],
    type: "Electornic",

    title: "Wireless Controller for PS4™",
    price: 64.99,
    description: "يد للالعاب يمكن لاللعب بها ",
    isFavourite: true,
    isPopular: true,
    coiteme: 6,
    rating: 3.4,
  ),
  Product(
    id: 2,
    type: "Clothes",

    images: [
      "assets/images/Image Popular Product 2.png",
    ],
    title: "Nike Sport White - Man Pant",
    price: 50.5,
    description: "شورت كره قدم جيد ",
    isPopular: true,
    coiteme: 10,
    rating: 2.0
  ),
  Product(
    id: 3,
    type: "accessory",

    images: [
      "assets/images/glap.png",
    ],
    title: "Gloves XC Omega - Polygon",
    price: 36.55,
    description:"قفزات قويه غير قابله للقطع",
    isFavourite: true,
    isPopular: true,
    coiteme: 2,
    rating: 4.0
  ),
  Product(
    id: 4,
    type: "Electornic",

    images: [
      "assets/images/wireless headset.png",
    ],
    title: "Logitech Head",
    price: 20.20,
    description: "سماعات للراس ",
    isFavourite: true,
    isPopular: true,
    coiteme: 2,
    rating: 2.4
  ),
  Product(
    id: 5,
    type: "Electornic",

    images: [
      "assets/images/SC.png",
    ],
    title: "Logitech Head",
    price: 20.20,
    description: "منتج لالتجربة",
    isFavourite: true,
      isPopular: true,
      coiteme: 2,
    rating: 1.2

  ),
   Product(
     id: 6,
     images: [
       "assets/images/ps4_console_white_1.png",
     ],
     type: "Electornic",

     title: "Wireless  ™",
     price: 64.99,
     description: "   aaaaaaaaaaaaaaaaaa ",
     isFavourite: true,
     isPopular: true,
     coiteme: 6,
     rating: 3.4
   ),
   Product(
     id: 7,
     images: [
       "assets/images/ps4_console_white_1.png",
     ],
     type: "Clothes",

     title: " Controller for PS4™",
     price: 64.99,
     description: "يد للالعاب يمكن لاللعب بها ",
     isFavourite: true,
     isPopular: true,
     coiteme: 6,
     rating: 3.6
   ),
   Product(
       id: 8,
       type: "Clothes",

       images: [
         "assets/images/Image Popular Product 2.png",
       ],
       title: "Nike Sport White ",
       price: 50.5,
       description: "شورت كره قدم جيد ",
       isPopular: true,
       coiteme: 10,
       rating: 2.0
   ),
   Product(
       id: 9,
       type: "Clothes",

       images: [
         "assets/images/Image Popular Product 2.png",
       ],
       title: "Nike Sport White - Man Pant",
       price: 50.5,
       description: "شورت كره قدم جيد ",
       isPopular: true,
       coiteme: 10,
       rating: 2.0
   ),
];

// Product.formJson(DocumentSnapShot data){
  // id = data["id"];
// ];
// Product fromSnapshot(DocumentSnapshot snap){
// Product product =Product(
// id: snap['id'],
// images: snap['images'],
// coiteme: snap['coiteme'],
// rating: snap['rating'],
// title: snap['title'],
// price: snap['price'],
// description:snap ['description'],
// type: snap['type'],
// );
// return product;
// }