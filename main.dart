import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nuevo/nuevo.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: name());
  }
}
