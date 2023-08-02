import 'dart:async';

import 'package:flutter/material.dart';
import 'package:user_truvel/authentication/login_screen.dart';
import 'package:user_truvel/mainScreens/main_screen.dart';

import '../global/global.dart';


class MySplashScreen extends StatefulWidget 
{
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}



class _MySplashScreenState extends State<MySplashScreen> 
{
  startTimer()
  {
    Timer(const Duration(seconds: 3), () async
    {
      if(await fAuth.currentUser !=null)
        {
          currentFirebaseUser = fAuth.currentUser;
          Navigator.push(context, MaterialPageRoute(builder: (c)=> MainScreenUser()));

        }
      else
        {
          Navigator.push(context, MaterialPageRoute(builder: (c)=> LoginScreenUser()));

        }


    });
  }

  @override
  void initState(){
    super.initState();

    startTimer();
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              Image.asset("images/logo5.png"),

             const SizedBox(height: 10,),

              const Text(
                "Travel with Truvel",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }
}
