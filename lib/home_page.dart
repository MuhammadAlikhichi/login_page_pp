import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
          height: screenSize.height * 0.25,
          child: Center(
            child: Padding(
              padding: EdgeInsets.only(top: screenSize.height * 0.08),
              child: Text(
                "Slakosta",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    fontFamily: 'Lobster',
                    letterSpacing: 3),
              ),
            ),
          ),
        ),
        Container(
          height: screenSize.height * 0.75,
          width: screenSize.width * 1,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(50),
              topLeft: Radius.circular(50),
            ),
            color: Colors.white,
          ),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: EdgeInsets.only(
                    top: screenSize.height * 0.06,
                    left: screenSize.width * 0.06),
                child: Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'Lobster',
                    fontSize: 35,
                    // fontWeight: FontWeight.bold,
                    letterSpacing: 2,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: screenSize.height * 0.04,
                  left: screenSize.width * 0.06,
                  right: screenSize.width * 0.06,
                ),
                child: Container(
                  height: screenSize.height * 0.09,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pinkAccent,
                          //spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(1, 1),
                        ),
                      ]),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.email),
                        hintText: 'E-mail...',
                        // border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: screenSize.height * 0.04,
                  left: screenSize.width * 0.06,
                  right: screenSize.width * 0.06,
                ),
                child: Container(
                  height: screenSize.height * 0.09,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.pinkAccent,
                          // spreadRadius: 1,
                          blurRadius: 10,
                          offset: Offset(1, 1),
                        ),
                      ]),
                  child: Center(
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.password),
                        hintText: 'Password...',
                        // border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenSize.height * 0.04),
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.pinkAccent,
                      shadowColor: Colors.pinkAccent,
                      elevation: 18,
                      padding: EdgeInsets.zero,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Ink(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.pinkAccent, Colors.purple],
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Container(
                        height: screenSize.height * 0.07,
                        width: screenSize.width * 0.5,
                        alignment: Alignment.center,
                        child: Text(
                          "Login",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenSize.height * 0.04),
                child: Center(child: Text("Subscribe in Social Media App")),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenSize.height * 0.04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'images/Facebook.png',
                      width: screenSize.width * 0.222,
                    ),
                    Image.asset(
                      'images/Instagram.png',
                      width: screenSize.width * 0.222,
                    ),
                    Image.asset(
                      'images/Tiktok.png',
                      width: screenSize.width * 0.222,
                    )
                  ],
                ),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
