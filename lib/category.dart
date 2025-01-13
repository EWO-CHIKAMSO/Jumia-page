import 'package:flutter/material.dart';
import 'package:jumia_assignment/reusable_widgets.dart';

class CartegoryScreen extends StatefulWidget {
  const CartegoryScreen({super.key});

  @override
  State<CartegoryScreen> createState() => _CartegoryScreenState();
}

class _CartegoryScreenState extends State<CartegoryScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
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
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            margin: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  color: Colors.amber,
                  child: Center(
                      child: Text(
                    'Clothing',
                    style: TextStyle(fontSize: 25),
                  )),
                ),
                Row(
                  children: [
                    ProductCard(
                      image: 'assets/images/Men_Shirt_Solid.png',
                      name: 'Shirt',
                      price: '200',
                   
                    ),
                    ProductCard(
                      image: 'assets/images/Black_hoodie.png',
                      name: 'black',
                      price: '200',
                  
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            color: Colors.white,
            margin: EdgeInsets.all(8.0),
            child: Column(
              children: [
                Container(
                  color: Colors.amber,
                  child: Center(
                      child: Text(
                    'Furniture',
                    style: TextStyle(fontSize: 25,color: Colors.white),
                  )),
                ),
                Row(
                  children: [
                    ProductCard(
                      image: 'assets/images/Abingdon_chair.png',
                      name: 'Chair',
                      price: '200',
                    
                    ),
                    ProductCard(
                      image: 'assets/images/Features_of_vintage.png',
                      name: 'Vintage',
                      price: '200',
                
                    )
                  ],
                )
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            color: Colors.white,
            child: Column(
              children: [
                Container(
                  color: Colors.amber,
                  child: Center(
                      child: Text(
                    'Cutleries',
                    style: TextStyle(fontSize: 25,color: Colors.white),
                  )),
                ),
                Row(
                  children: [
                    ProductCard(
                      image: 'assets/images/Sachi_-_set.png',
                      name: 'kamso',
                      price: '200',
                     
                    ),
                    ProductCard(
                      image: 'assets/images/Stainless_Steel.png',
                      name: 'kamso',
                      price: '200',
            
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
