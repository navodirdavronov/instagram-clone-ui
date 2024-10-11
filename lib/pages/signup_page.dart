import 'package:flutter/material.dart';
import 'package:ngdemo5/pages/home_page.dart';
import 'package:ngdemo5/pages/signin_page.dart';

class SignupPage extends StatefulWidget {
  static const String id = "signup_page";

  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {

  _callSignInPage(){
    Navigator.of(context).pushReplacementNamed(SignInPage.id);
  }

  _callHomePage(){
    Navigator.of(context).pushReplacementNamed(HomePage.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(20),
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color.fromRGBO(193, 53, 132, 1),
                  Color.fromRGBO(131, 58, 180, 1),
                ]
            )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [

            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    //logoart
                    Text("Instagram", style: TextStyle(fontSize: 45, fontFamily: "Billabong", color: Colors.white),
                    ),

                    //full_name_input
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(left: 10, right: 10),
                      //padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Full name",
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 17, color: Colors.white54),
                        ),
                      ),
                    ),

                    //email_input
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(left: 10, right: 10),
                      //padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 17, color: Colors.white54),
                        ),
                      ),
                    ),

                    //password_input
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      padding: EdgeInsets.only(left: 10, right: 10),
                      //padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        color: Colors.white.withOpacity(0.2),
                      ),
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Password",
                          border: InputBorder.none,
                          hintStyle: TextStyle(fontSize: 17, color: Colors.white54),
                        ),
                      ),
                    ),

                    //signin_button
                    GestureDetector(
                      onTap: (){
                        _callHomePage();
                      },
                      child: Container(
                        margin: EdgeInsets.only(top: 10),
                        padding: EdgeInsets.only(left: 10, right: 10),
                        //padding: EdgeInsets.symmetric(horizontal: 10),
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7),
                          color: Colors.white.withOpacity(0.2),
                        ),
                        child: Center(
                          child: Text("Sign Up", style: TextStyle(fontSize: 17, color: Colors.white),),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              height: 40,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account", style: TextStyle(color: Colors.white),),
                  SizedBox(width: 10,),
                  GestureDetector(onTap: (){_callSignInPage();}, child: Text("Sign In", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),)),
                ],
              ),
            )
          ],
        ),

      ),
    );
  }
}
