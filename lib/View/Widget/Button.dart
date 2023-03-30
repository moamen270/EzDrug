import 'package:flutter/material.dart';

import '../../Constant/color.dart';
import '../Screens/HomeScreen.dart';

class AppButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 60,
      child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, HomeScreen.RouteName);
          },
          style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
              backgroundColor:
                  MaterialStateProperty.all<Color>(AppColor.primaryButtonColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ))),
          child: const Text(
            'Sign Up',
            style: TextStyle(color: AppColor.white, fontSize: 20),
          )),
    );
  }
}
