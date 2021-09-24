import 'package:flutter/material.dart';

class ReusableCode extends StatelessWidget {
  ReusableCode ({@required this.color,this.customchild,this.onpressed});
  final Function onpressed;
  final Color color;
  final customchild;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onpressed,
      child: Container(
        child:customchild,
        margin: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color:color,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
