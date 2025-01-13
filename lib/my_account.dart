import 'package:flutter/material.dart';
import 'package:jumia_assignment/reusable_widgets.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({super.key});

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Account',
              style: TextStyle(
                  fontFamily: '900', fontSize: 30, color: Colors.white),
            ),
            Icon(
              Icons.search,
              size: 25,
              color: Colors.white,
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.shopping_cart_outlined, color: Colors.white),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            color: Colors.black,
            child: Padding(
              padding: const EdgeInsets.all(9.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('welcome!',
                            style:
                                TextStyle(color: Colors.white, fontSize: 25)),
                        Text('Enter your account',
                            style: TextStyle(color: Colors.white))
                      ],
                    ),
                    MaterialButton(
                      onPressed: () {},
                      height: 40,
                      color: Colors.orange,
                      child: Text(
                        'Login',
                        style: TextStyle(color: Colors.white),
                      ),
                    )
                  ]),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            color: Colors.white,
            height: 400,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 10,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'My Jumia Account',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 2,
                      width: 360,
                      child: ColoredBox(color: Colors.grey),
                    ),
                    SizedBox(
                      height: 10,
                    ),

                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: AccountOptions(
                          icon: Icons.card_giftcard_sharp,
                          text: 'orders',
                          secondIcon: Icons.arrow_right_sharp),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: AccountOptions(
                          icon: Icons.inbox,
                          text: 'inbox',
                          secondIcon: Icons.arrow_right_sharp),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: AccountOptions(
                          icon: Icons.rate_review_outlined,
                          text: 'rating & review',
                          secondIcon: Icons.arrow_right_sharp),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: AccountOptions(
                          icon: Icons.local_activity_outlined,
                          text: 'vouchers',
                          secondIcon: Icons.arrow_right_sharp),
                    ),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: AccountOptions(
                          icon: Icons.favorite_outline_rounded,
                          text: 'saved items',
                          secondIcon: Icons.arrow_right_sharp),
                    ),

                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: AccountOptions(
                          icon: Icons.home_work_outlined,
                          text: 'follow seller',
                          secondIcon: Icons.arrow_right_sharp),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: AccountOptions(
                          icon: Icons.youtube_searched_for_sharp,
                          text: 'recent searched',
                          secondIcon: Icons.arrow_right_sharp),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: AccountOptions(
                          icon: Icons.saved_search_rounded,
                          text: 'saved searched',
                          secondIcon: Icons.arrow_right_sharp),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
