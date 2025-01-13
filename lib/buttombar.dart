import 'package:flutter/material.dart';
import 'package:jumia_assignment/help.dart';
import 'package:jumia_assignment/jumia_app.dart';
import 'package:jumia_assignment/category.dart';
import 'package:jumia_assignment/my_account.dart';



class ButtomNav extends StatefulWidget {
  const ButtomNav({super.key});

  @override
  State<ButtomNav> createState() => _ButtomNavState();
}

class _ButtomNavState extends State<ButtomNav> {

  final List <Widget>_pages =[
    MyJumiaApp(),
    CartegoryScreen(),
    MyAccount(),
   MyHelpPage()
  ];

   int _selectScreen = 0;
   void _ontapped (int index){
    setState(() {
      _selectScreen = index;
    });
       
   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:_pages[_selectScreen],
      
      bottomNavigationBar: BottomNavigationBar(
        
        currentIndex:_selectScreen ,
         onTap:_ontapped ,
        selectedIconTheme: IconThemeData(
          color: Colors.orange,
        ),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            
            icon: Icon(Icons.home,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.article_outlined),
            label: 'category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined),
            label: 'account',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline_outlined),
            label: 'help',
          ),
    ]),
    );
  }
}