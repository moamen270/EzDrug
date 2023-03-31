import 'package:app01/Constant/color.dart';
import 'package:app01/View/Widget/Button.dart';
import 'package:app01/View/Widget/Login%20And%20Register/Email_Address.dart';
import 'package:app01/View/Widget/Login%20And%20Register/Password.dart';
import 'package:flutter/material.dart';

class RegisterL extends StatelessWidget {
  static const RouteName = 'RegisterL';
  var ConfirmpasswordController = TextEditingController();
  var fullName = TextEditingController();
  var PhoneNumber = TextEditingController();
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
          'Sign Up ',
          style: TextStyle(
              color: Colors.black, fontSize: 24, fontWeight: FontWeight.w600),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Expanded(
          child: Center(
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                width: 500,
                height: 700,
                color: AppColor.white,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                          child: Image.asset(
                        'Assets/Images/sign.PNG',
                        fit: BoxFit.cover,
                      )),
                      SizedBox(
                        height: 20,
                      ),

                      //FullName
                      TextFormField(
                          controller: fullName,
                          keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                          decoration: InputDecoration(
                            labelText: 'FullName',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)),
                            prefixIcon: Icon(
                              Icons.person,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      //PhoneNumber
                      TextFormField(
                          controller: PhoneNumber,
                          keyboardType: TextInputType.emailAddress,
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                          decoration: InputDecoration(
                            labelText: 'Phone Number',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)),
                            prefixIcon: Icon(
                              Icons.phone,
                            ),
                          )),
                      SizedBox(
                        height: 15,
                      ),
                      //EmailAddress
                      Emailladdress(),
                      SizedBox(
                        height: 15,
                      ),
                      //PAssword
                      Password(),
                      SizedBox(
                        height: 20,
                      ),
                      // Confirm Password
                      TextFormField(
                          controller: ConfirmpasswordController,
                          keyboardType: TextInputType.visiblePassword,
                          obscureText: true,
                          onFieldSubmitted: (value) {
                            print(value);
                          },
                          decoration: InputDecoration(
                            labelText: 'Confirm Password',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(50)),
                            prefixIcon: Icon(
                              Icons.lock,
                            ),
                            suffixIcon: Icon(
                              Icons.remove_red_eye,
                            ),
                          )),
                      SizedBox(
                        height: 20,
                      ),

                      //Register BUTTON
                      AppButton(),
                    ]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
