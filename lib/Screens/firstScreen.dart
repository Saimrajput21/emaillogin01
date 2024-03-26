import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uitask1/utilities/commonWidgets.dart';

import 'loginscreen.dart';
import 'signup.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [

          Container(
            height: mediaQuery.size.height * 1, // 50% of screen height
            width: mediaQuery.size.width * 1,
            decoration: BoxDecoration(
                color: Colors.deepOrange[600],
                borderRadius: BorderRadius.only(topRight: Radius.circular(18),topLeft: Radius.circular(18))),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                ),
                Logobutton(),
                SizedBox(
                  height: 100,
                  width: 50,
                ),
                Text(
                  "All your favourite designs",
                  style: TextStyle(
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          offset: Offset(2.0, 2.0),
                          blurRadius: 3.0,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        Shadow(
                          offset: Offset(5.0, 5.0),
                          blurRadius: 5.0,
                          color: Colors.black.withOpacity(0.4),
                        ),
                      ],
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "check out the best designs  with\n out any cost to explore new\n ideas for humanity benefits.",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                // IconButton(onPressed: (){}, icon:Icon(Icons.menu))
              ],
            ),
          ),
          Container(
            height: 250,
            width: 1400,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.23),
              borderRadius: BorderRadius.circular(40.0),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 20,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignupScreen()),
                    );
                  },
                  child: GetStartedbutton(),
                ),
                SizedBox(
                  height: 30,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LoginScreen()),
                    );
                  },
                  child:LoginButton(),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}
