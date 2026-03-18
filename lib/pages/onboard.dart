import 'package:chat_app/services/auth_services.dart';
import 'package:flutter/material.dart';

class Onboard extends StatefulWidget {
  const Onboard({super.key});

  @override
  State<Onboard> createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("images/onboard.png" , fit: BoxFit.cover,),
          SizedBox(height: 10.0,),
          Text(
            "Enjoy the new experience of chatting with global friends.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),

          SizedBox(height: 10,),
          Text(
            "Connect with people around the world for free.",
            style: TextStyle(
              fontSize: 17.0,
              color: Colors.grey,
            ),
          ),
          SizedBox(height: 10,),

         
              GestureDetector(
                onTap: () {
                  AuthMethods().signInWithGoogle(context);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 20.0 , left: 30.0 , right: 30.0),
                  padding: EdgeInsets.symmetric(horizontal: 30.0 , vertical: 10.0),
                  decoration: BoxDecoration(
                    color: Color(0xff703eff),
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  child: Row(
                    children: [
                      Image.asset("images/search.png" , width: 50.0,),
                      SizedBox(width: 20.0,),
                      Text(
                        "Sign in with Google",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),  
                            
                          ),
              )
        ],
      ),
    );
  }
}