import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:uitask1/utilities/commonWidgets.dart';
import 'package:uitask1/Screens/signup.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    const double paddingFactor = 0; // Factor for calculating padding

    return Scaffold(
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: mediaQuery.size.height * 1,
            width: mediaQuery.size.width * 1,
            decoration: BoxDecoration(
                color: Colors.deepOrange[600],
                borderRadius: BorderRadius.circular(20)),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: 50,
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: MyBackButton()),

                Text(
                  "YOUR LOGO",
                  style: TextStyle(
                    color: Colors.white,
                    shadows: [
                      Shadow(
                        offset: Offset(2.0, 2.0),
                        blurRadius: 3.0,
                        color: Colors.white24.withOpacity(0.1),
                      ),
                      Shadow(
                        offset: Offset(5.0, 5.0),
                        blurRadius: 5.0,
                        color: Colors.black.withOpacity(0.4),
                      ),
                    ],
                    fontWeight: FontWeight.bold,
                    fontSize: mediaQuery.size.shortestSide *
                        0.07,
                  ),
                ),
                SizedBox(
                  height: 100,
                  width: 50,
                ),


              ],
            ),
          ),
          Container(
            height: mediaQuery.size.height * 0.65,
            width: mediaQuery.size.width * 1,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(1.0),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40), topRight: Radius.circular(40)

                  ),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 64.0),
                  child: Text(
                    "Sign in account",
                    style: MediaQuery.of(context).size.width > 600
                        ? TextStyle(fontSize: 40, fontWeight: FontWeight.bold)
                        : TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 3,
                  width: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 140),
                  child: Text(
                    "sign up to continue",
                    style: MediaQuery.of(context).size.width > 600
                        ? TextStyle(
                            fontSize: 15,
                          )
                        : TextStyle(
                            fontSize: 20,
                          ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 4,
                ),
                NamingText("EMAIL"),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 50,
                  width: 300,
                  // 60% of screen width
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1.5, color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            decoration: InputDecoration(),
                            controller:
                                TextEditingController(text: 'Enter your email'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.check_circle_outline,
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 200),
                  child: Text(
                    "PASSWORD",
                    style: MediaQuery.of(context).size.width > 600
                        ? TextStyle(fontSize: 15, fontWeight: FontWeight.bold)
                        : TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 50,
                  width: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1.5, color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            decoration: InputDecoration(),
                            controller: TextEditingController(
                                text: 'Enter your password'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(
                          Icons.remove_red_eye,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                LoginButton(),
                SizedBox(
                  height: 30,
                ),
               _dontHaveAnAccount(context)
              ],
            ),
          ),

        ],
      ),
    );
  }
  _dontHaveAnAccount(context){
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> SignupScreen()));
      },
      child:   const Text("Don't have an account? Signup"),
    );
  }
}
