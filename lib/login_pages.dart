import 'package:flutter/material.dart';
import 'package:jumia_assignment/signup_page.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:jumia_assignment/buttombar.dart';

class LogInHomePage extends StatefulWidget {
  const LogInHomePage({super.key});

  @override
  State<LogInHomePage> createState() => _LogInHomePageState();
}

class _LogInHomePageState extends State<LogInHomePage> {

final TextEditingController _numberController = TextEditingController();
final TextEditingController _passwordController = TextEditingController();
final _formKey = GlobalKey<FormState>();

  Future <void> login() async{
    if(_formKey.currentState!.validate()){
    final prefs = await SharedPreferences.getInstance();
    final savedNumber = prefs.getString('Number');
    final savedPassword = prefs.getString('password');

    if(_numberController.text == savedNumber && _passwordController.text == savedPassword){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>ButtomNav()));
      print('hello world');
    }else{
      print('wrong password');
    }
    }
  }
    @override
    Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 100,
        elevation: 5,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'fast delivery',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            Image(
              image: AssetImage('assets/images/delivery_service.png'),
              height: 100,
            ),
          ],
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Welcome back!',
                      style: TextStyle(
                        fontSize: 25,
                      
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Form(
                  key: _formKey,
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Email or Phone',style: TextStyle(fontWeight: FontWeight.bold),),
                        TextFormField(
                          controller: _numberController,
                          validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a password';
                              }
                              return null;
                            },
                          decoration: InputDecoration(
                            hintText: 'Emial or Phone',
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Enter Password',style: TextStyle(fontWeight: FontWeight.bold)),
                        TextFormField(
                          controller: _passwordController,
                          validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a password';
                              }
                              return null;
                            },
                          decoration: InputDecoration(
                            hintText: 'Enter Password',
                            fillColor: Colors.grey.shade100,
                            filled: true,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            suffixIcon: Icon(Icons.visibility_off),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [Text('Forgotten Password ?',style: TextStyle(fontWeight: FontWeight.bold),)],
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    MaterialButton(
                      onPressed:login,
                      color: Colors.red,
                      minWidth: 320,
                      height: 50,
                      child: Text(
                        'Log In',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    Container(
                        child: Center(
                            child: Text(
                      "Skip",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    ))),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 150, 0, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Dont have an account?"),
                          TextButton(
                            onPressed: () {
                              Navigator.push(context,MaterialPageRoute(builder:(context)=>SignUpPage()));
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                          //
                        ],
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
