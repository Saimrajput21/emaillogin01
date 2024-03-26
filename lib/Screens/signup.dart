import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uitask1/Screens/loginscreen.dart';

import '../utilities/commonWidgets.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    final pixelRatio = MediaQuery.of(context).devicePixelRatio;

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
                      fontSize: 40),
                ),
                SizedBox(
                  height: 100,
                  width: 50,
                ),

                // IconButton(onPressed: (){}, icon:Icon(Icons.menu))
              ],
            ),
          ),
          Container(
            height: 500,
            width: 1400,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(1.0),
              borderRadius: BorderRadius.only(topRight: Radius.circular(40),topLeft: Radius.circular(40),),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 30,
                  width: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 30.0),
                  child: Text(
                    "Create an account",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
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
                    style: TextStyle(fontSize: 18),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                NamingText("Name"),
                SizedBox(
                  height: 5,
                ),
               MyDataContainer(),
                SizedBox(
                  height: 2,
                ),
               NamingText("EMAIL"),
                SizedBox(
                  height: 5,
                ),
                Container(
                  height: 50,
                  width: 300,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(width: 1.5,color: Colors.grey),
                  ),
                  child:
                  Row(
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
                        child: Icon(Icons.check_circle_outline,color: Colors.green,),
                      ), // Replace with your desired icon
                    ],
                  ),
                ),
                SizedBox(
                  height: 2,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 220),
                  child: Text("PASSWORD",
                      style: TextStyle(fontWeight: FontWeight.bold)),
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
                    border: Border.all(width: 1.5,color: Colors.grey),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: TextField(
                            decoration: InputDecoration(),
                            controller:
                                TextEditingController(text: 'Enter your password'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Icon(Icons.remove_red_eye,color: Colors.grey,),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
               GetStartedbutton(),

                MyCommonSizedBox(20),
                _alreadyHaveAnAccount(context)
              ],
            ),
          ),

        ],
      ),
    );
  }
  _alreadyHaveAnAccount(context){
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> LoginScreen()));
      },
      child:   const Text("Already have an account? Login"),
    );
  }
}
