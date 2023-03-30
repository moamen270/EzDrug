import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Emailladdress extends StatelessWidget {
  var emailController = TextEditingController();

  Emailladdress({super.key});


  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        onFieldSubmitted: (value) {
          print(value);
        },
        decoration: InputDecoration(
          labelText: 'Email Address',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          prefixIcon: Icon(
            Icons.email,
          ),
        ));
  }
}
