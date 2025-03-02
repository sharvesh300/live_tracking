
import 'package:flutter/material.dart';
import 'package:geo_live_tracking/config.dart';

class SignInField extends StatelessWidget {
   SignInField({
    super.key,
    required this.text,
    this.icon,
    this.controller
  });

  final String text;
  final Icon? icon;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: icon,
          hintText: text,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide(color: AppConfig.primaryColor,width: 2)
          ),
        // enabledBorder: OutlineInputBorder(
        //     borderRadius: BorderRadius.circular(7),
        //     borderSide: BorderSide(color: AppConfig.primaryColor)
        //   ),
          border: OutlineInputBorder(
            
            borderRadius: BorderRadius.circular(7)
          )
        ),
      ),
    );
  }
}