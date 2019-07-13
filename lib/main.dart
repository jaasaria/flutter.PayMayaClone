import 'package:flutter/material.dart';
import 'ui/views/Home/home.dart';

import './layout.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Money',
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => Layout(),
        '/home': (context) => Home(),
      },
    );
  }
}
