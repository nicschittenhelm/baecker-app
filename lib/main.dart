import 'package:backstuebchen_app/screens/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        dividerTheme: DividerThemeData(
          space: 15,
          thickness: 1,
          color: Colors.black26,
          indent: 30,
          endIndent: 30,
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: KursScreen(),
    );
  }
}

