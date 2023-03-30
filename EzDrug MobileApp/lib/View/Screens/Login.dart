import 'package:app01/Constant/color.dart';
import 'package:app01/View/Screens/HomeScreen.dart';
import 'package:flutter/material.dart';

import 'Register.dart';

class LoginScreen extends StatefulWidget {
  static const RouteName = 'LoginScreen';

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var rememberMe = false ;

  var emailController = TextEditingController();

  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Sign in ',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Container(
            color: AppColor.primaryAppColor,
            width: double.infinity,
            height: 900,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Container(
                    alignment: Alignment.center,
                    color: AppColor.white,
                    child: Image.asset(
                      'Assets/Images/Login.png',
                      width: 340,
                      height: 350,
                      fit: BoxFit.fill,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColor.white,
                        borderRadius: BorderRadius.circular(5)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sign in to continue ',textAlign: TextAlign.left,
                          style: TextStyle(
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        //EmailAddress
                        TextFormField(
                            controller: emailController,
                            keyboardType: TextInputType.emailAddress,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            decoration: InputDecoration(
                              labelText: 'Email Address',
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(50)),
                              prefixIcon: Icon(Icons.email),
                            )),
                        SizedBox(
                          height: 15,
                        ),
                        //Password
                        TextFormField(
                            controller: passwordController,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            onFieldSubmitted: (value) {
                              print(value);
                            },
                            decoration: InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(50)),
                                prefixIcon: Icon(Icons.lock),
                                suffixIcon: Icon(Icons.remove_red_eye))),
                        SizedBox(
                          height: 20,
                        ),

                              Row(
                                children: [
                                  Checkbox(value: rememberMe, onChanged: ((val) {
                                setState(() {
                                  rememberMe = val! ;
                                });;
                              })),

                              TextButton(
                                  onPressed: () {
                                    
                                  },
                                  child: Text('Remember me ?',style: TextStyle(color: AppColor.black))),
                                  SizedBox(width: 80,),
                                  TextButton(
                                      onPressed: () {
                                      },
                                      child: Text('Forget Password ?',style: TextStyle(color: AppColor.black),)),
                                ],
                              ),
                                
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25),
                          child: Container(
                            width: 350,
                            height: 60,
                            child: ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(
                                      context, HomeScreen.RouteName);
                                },
                                style: ButtonStyle(
                                    foregroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            AppColor.primaryButtonColor),
                                    shape: MaterialStateProperty.all<
                                            RoundedRectangleBorder>(
                                        RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(50),
                                    ))),
                                child: const Text(
                                  'Sign in',
                                  style: TextStyle(
                                      color: AppColor.white, fontSize: 20),
                                )),
                          ),
                        ),
                    
                        Container(
                          margin:EdgeInsetsDirectional.only(start: 30,
                          bottom: 100),
                          child: Row(
                            children: [
                              Text(
                                'Do You have an account ?',
                                style: TextStyle(color: Colors.grey),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.pushNamed(
                                        context, RegisterL.RouteName);
                                  },
                                  child: Text('Sign Up !')),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ]),
              ],
            ),
          ),
        ],
      )),
    );
  }
}
