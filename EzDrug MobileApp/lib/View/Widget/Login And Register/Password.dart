import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Password extends StatelessWidget {
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        controller: passwordController,
        keyboardType: TextInputType.visiblePassword,
        obscureText: true,
        onFieldSubmitted: (value) {
          print(value);
        },
        decoration: InputDecoration(
          labelText: 'Password',
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(50)),
          prefixIcon: Icon(
            Icons.lock,
          ),
          suffixIcon: Icon(
            Icons.remove_red_eye,
          ),
        ));
  }
}
