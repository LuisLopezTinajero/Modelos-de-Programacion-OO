import 'package:flutter/material.dart';

class name extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.symmetric(
        vertical: 180.180,
        horizontal: 50.50,
      ),
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.rectangle,
          color: Colors.red,
        ),
        padding: EdgeInsets.all(30),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.purple,
          ),
          child: Text(
            "Jazmin, Jocelyn, Ruben, Luis",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black, fontSize: 30),
          ),
          padding: EdgeInsets.fromLTRB(50, 50, 50, 50),
        ),
      ),
    );
  }
}
