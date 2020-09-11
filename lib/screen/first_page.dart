import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String email;
  String password;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Colors.orange[900],
                Colors.orange[700],
                Colors.orange[500],
              ],
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 60),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '   Welcome Back',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                height: 20,
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                          topLeft: Radius.circular(40))),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height: 50),
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, 3),
                                  blurRadius: 20,
                                  offset: Offset(0, 10))
                            ]),
                        child: Column(
                          children: <Widget>[
                            TextField(
                              cursorColor: Colors.orange,
                              style: TextStyle(fontSize: 18),
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Enter Your Email',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 12),
                              ),
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                email = value;
                              },
                            ),
                            TextField(
                              cursorColor: Colors.orange,
                              style: TextStyle(fontSize: 18),
                              obscureText: true,
                              decoration: InputDecoration(
                                hintText: 'Enter Your Password',
                                contentPadding:
                                    EdgeInsets.symmetric(vertical: 12),
                              ),
                              textAlign: TextAlign.center,
                              onChanged: (value) {
                                password = value;
                              },
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 40),
                      Text('forgot password?',
                          textAlign: TextAlign.center,
                          style: TextStyle(color: Colors.grey, fontSize: 20)),
                      SizedBox(height: 20),
                      Material(
                        elevation: 10,
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(40),
                        child: MaterialButton(
                          minWidth: 250,
                          height: 50,
                          child: Text(
                            'login',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          onPressed: () {
                            print('Email : $email');
                            print('Password : $password');
                          },
                        ),
                      ),
                      SizedBox(height: 40),
                      Text(
                        'Continue With Social Media',
                        style: TextStyle(color: Colors.grey, fontSize: 20),
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Expanded(
                            child: Material(
                              elevation: 10,
                              color: Colors.blue,
                              borderRadius: BorderRadius.circular(40),
                              child: MaterialButton(
                                minWidth: 180,
                                height: 50,
                                child: Text(
                                  'facebook',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Material(
                              elevation: 10,
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(40),
                              child: MaterialButton(
                                minWidth: 180,
                                height: 50,
                                child: Text(
                                  'Github',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
