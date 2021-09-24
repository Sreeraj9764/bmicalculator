import 'package:flutter/material.dart';

class Reusbleicon extends StatelessWidget {
   Reusbleicon({this.icon,this.label});

    final IconData icon;
    final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 90.0,
        ),
        SizedBox(height: 15.0),
        Text(
         label, style: TextStyle(fontSize: 18.0, color: Color(
            0xFF8D8E98), fontWeight: FontWeight.bold),),
      ],
    );
  }
}