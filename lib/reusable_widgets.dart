import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String image;
  final String name;
  final String price;

  const ProductCard(
      {super.key,
      required this.image,
      required this.name,
      required this.price,
     });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Container(
        height: 300,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(
                image: AssetImage(
                  image,
                ),
                height: 150,
                width: 145,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              name,
              style: TextStyle(fontSize: 24),
            ),
            Text(price, style: TextStyle(fontSize: 20)),
            MaterialButton(
              onPressed: () {},
              color: Colors.orange,
              child: Text(
                'add to cart',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AccountOptions extends StatelessWidget {
  final IconData icon;
  final String text;
  final IconData secondIcon;

  const AccountOptions(
      {super.key,
      required this.icon,
      required this.text,
      required this.secondIcon});

  @override
  Widget build(BuildContext context) {

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          child: Row(
            children: [
              Icon(icon),
              SizedBox(width: 10,),
              Text(text),
            ],
          ),
        ),
        Icon(secondIcon)
      ],
    );
  }
}













class HelpOptions extends StatelessWidget {

  final String text;
  final IconData icon;

  const HelpOptions({super.key,
   required this.text,
   required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(text),
          Icon(icon)
        ],
      ),
    );
  }
}