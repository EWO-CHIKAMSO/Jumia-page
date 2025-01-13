import 'package:flutter/material.dart';
import 'package:jumia_assignment/category.dart';

class MyJumiaApp extends StatefulWidget {
  const MyJumiaApp({super.key});
  @override
  State<MyJumiaApp> createState() => _MyJumiaAppState();
}

class _MyJumiaAppState extends State<MyJumiaApp> {
  List<String> categories = [
    'fashion',
    'clothings',
    'furniture',
    'fashion',
    'clothings',
    'furniture',
    'fashion',
    'clothings',
    'furniture',
  ];

  List<Map<String, dynamic>> products = [

    {
      'name': 'Chair',
      'price': '200',
      'image': 'assets/images/Abingdon_chair.png'
    },
    {
      'name': 'Beach Shirt',
      'price': '500',
      'image': 'assets/images/Beach_Shirts.png'
    },
    {
      'name': 'Black',
      'price': '200',
      'image': 'assets/images/Black_hoodie.png'
    },
    {
      'name': 'Casual',
      'price': '50',
      'image': 'assets/images/Casual_printed.png'
    },
    {'name': 'chair', 'price': '400', 'image': 'assets/images/Chair.png'},
    {
      'name': 'Hoodies',
      'price': '210',
      'image': 'assets/images/Cytssx_2024.png'
    },
    {
      'name': 'vintage',
      'price': '100',
      'image': 'assets/images/Features_of_vintage.png'
    },
    {
      'name': 'iphone 14',
      'price': '280',
      'image': 'assets/images/iphone_14_pro_Max.png'
    },
    {
      'name': 'iphone 14',
      'price': '210',
      'image': 'assets/images/iphone_14.png'
    },
    {
      'name': 'iphone 13',
      'price': '240',
      'image': 'assets/images/iphone_13.png'
    },
    {'name': 'iphone', 'price': '270', 'image': 'assets/images/iphone.png'},
    {
      'name': 'iphone case',
      'price': '30',
      'image': 'assets/images/Leather_iphone_Case.png'
    },
    {
      'name': 'Shirt Solid',
      'price': '700',
      'image': 'assets/images/Men_Shirt_Solid.png'
    },
    {
      'name': 'Cutleries',
      'price': '100',
      'image': 'assets/images/Sachi_-_set.png'
    },
    {'name': 'Shirt', 'price': '700', 'image': 'assets/images/Shirt.png'},
    {'name': 'sofa Chair', 'price': '800', 'image': 'assets/images/sofa.png'},
    {
      'name': 'cutleries',
      'price': '1200',
      'image': 'assets/images/Stainless_Steel.png'
    },
    {
      'name': 'vintage men',
      'price': '300',
      'image': 'assets/images/Vintage_Men.png'
    }
  ];

  List<Widget> pages = [
    CartegoryScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white, size: 24),
        title: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16),
              child: Icon(Icons.search),
            )
          ],
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(Icons.shopping_cart_outlined),
          )
        ],
      ),
      body: Column(children: [
        Container(
          height: 90,
          child: Padding(
            padding: EdgeInsets.all(8),
            child: ListView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.all(7),
                  child: Chip(
                    label: Text(categories[index]),
                  ),
                );
              },
            ),
          ),
        ),
        Expanded(
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 0.5,
            ),
            itemCount: products.length,
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Image(
                      height: 210,
                      image: AssetImage(products[index]['image']),
                    ),
                    Text(
                      products[index]['name'],
                      style: TextStyle(fontSize: 25),
                    ),
                    Text(
                      products[index]['price'],
                      style: TextStyle(fontSize: 20),
                    ),
                    MaterialButton(
                      color: Colors.orange,
                      onPressed: () {},
                      child: Text(
                        'add to cart',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ],
                ),
              );
            },
          ),
        ),
      ]),
    );
  }
}
