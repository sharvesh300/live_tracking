import 'package:flutter/material.dart';

class ConfirmButton extends StatelessWidget {
   ConfirmButton({super.key,this.color = const Color.fromRGBO(61, 141, 122, 1)});

  Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61,
      width: 200,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          "Confirm",
          style: TextStyle(
            color: Colors.white,
            fontSize: 17,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}