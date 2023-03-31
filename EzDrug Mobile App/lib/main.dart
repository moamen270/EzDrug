import 'package:app01/Constant/color.dart';
import 'package:app01/View/Screens/HomeScreen.dart';
import 'package:app01/View/Screens/Login.dart';
import 'package:app01/View/Screens/Register.dart';
import 'package:app01/View/Screens/onBording.dart';
import 'package:flutter/material.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:get/get.dart';
import 'package:localization/localization.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      routes: {
        LoginScreen.RouteName: (context) => LoginScreen(),
        RegisterL.RouteName: (context) => RegisterL(),
        HomeScreen.RouteName: (context) => HomeScreen(),
        onBording.RouteName: (context) => onBording(),
      },
      home: AnimatedSplashScreen(
          splash: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Image(image: AssetImage('Assets/Images/Logo.png'),fit: BoxFit.fill,)),
                Expanded(child: Text('EzDrugz', style:TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: AppColor.splashText) ,))
              ],
            ),
          ),
          duration: 3000,
          nextScreen: onBording()),
      debugShowCheckedModeBanner: false,
    );
  }
}

