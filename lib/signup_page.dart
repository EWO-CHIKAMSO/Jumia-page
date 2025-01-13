import 'package:flutter/material.dart';
import 'package:jumia_assignment/login_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _numberController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  Future<void> signUp() async {
    if (_formKey.currentState!.validate()) {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setString('name', _nameController.text);
      await prefs.setString('Number', _numberController.text);
      await prefs.setString('password', _passwordController.text);

      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=> LogInHomePage()));
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
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sign up',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Please sign up to continue shopping',
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade800),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Full Name',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          TextFormField(
                            controller: _nameController,
                            keyboardType: TextInputType.name,

                            validator: (value) {
                              if(value == null || value.isEmpty){
                                return'please input your name';
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Enter full name',
                              filled: true,
                              fillColor: Colors.grey.shade100,
                              enabledBorder: InputBorder.none,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Phone Number',
                              style: TextStyle(fontWeight: FontWeight.bold)),

                              TextFormField(
                                     controller: _numberController,
                                     validator: (value) {
                                       if(value == null || value.isEmpty){
                                        return 'please enter a valid number';
                                       }
                                       return null;
                                     },
                            decoration: InputDecoration(
                                hintText: 'Enter phone number',
                                filled: true,
                                fillColor: Colors.grey.shade100,
                                enabledBorder: InputBorder.none),
                          )
                        ],
                      ),
                      SizedBox(
                        height: 18,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Password',
                              style: TextStyle(fontWeight: FontWeight.bold)),

                          TextFormField(
                            obscureText: true,
                            keyboardType: TextInputType.text,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter a password';
                              }
                              return null;
                            },
                            controller: _passwordController,
                            
                            decoration: InputDecoration(
                              
                                hintText: 'Create new password',
                                filled: true,
                                suffixIcon: Icon(Icons.visibility_off),
                                fillColor: Colors.grey.shade100,
                                enabledBorder: InputBorder.none),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          Checkbox(value: false, onChanged: (ValueKey) {}),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                  "By tapping the 'Sign up' button you agree with our "),
                              Row(
                                children: [
                                  Text("Terms & condition "),
                                  Text('and'),
                                  Text("Terms & condition "),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                        onPressed: signUp,
                        color: Colors.red,
                        minWidth: 320,
                        height: 50,
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
