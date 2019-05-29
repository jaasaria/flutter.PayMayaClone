import 'package:flutter/material.dart';
import 'ui/views/home.dart';
import 'ui/views/store.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Money',
      home: Store(),
    );
  }
}
