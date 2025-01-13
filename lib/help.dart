import 'package:flutter/material.dart';
import 'package:jumia_assignment/reusable_widgets.dart';

class MyHelpPage extends StatelessWidget {
  const MyHelpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
       appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Help',
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
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
               width: 340,
               height: 60,
              child: MaterialButton(onPressed: (){},
              color:Colors.orange,
              child:Row(
                children: [
                  Icon(Icons.message,color: Colors.white,),
                  SizedBox(width: 80,),
                  Text('start live chart',style: TextStyle(color: Colors.white),)
                ],
              ) ,
              ),
            ),
          ),
          Container(
              height: 200,
             color: Colors.white70,
            child: Column(
              children: [

                     Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Column(
                                           crossAxisAlignment: CrossAxisAlignment.start,
                                           children: [
                         Text('About jumia',
                                           style: TextStyle(fontWeight: FontWeight.bold, color: Colors.grey.shade600),),
                                         SizedBox(
                                           height: 2,
                                          width: 370,
                                         child: ColoredBox(color: Colors.grey),
                                         )
                                           ],
                                         ),
                     ),


                  Padding(padding: EdgeInsets.all(5.0),
                  child: HelpOptions(text: 'Jumuia Service', icon:Icons.arrow_right_sharp),
                  ),
                  Padding(padding: EdgeInsets.all(5.0),
                  child: HelpOptions(text: 'Faq', icon:Icons.arrow_right_sharp),
                  ),
                  Padding(padding: EdgeInsets.all(5.0),
                  child: HelpOptions(text: 'Privacy Policy', icon:Icons.arrow_right_sharp),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}