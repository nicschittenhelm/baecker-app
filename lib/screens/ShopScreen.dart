import 'dart:ui';
import 'package:backstuebchen_app/screens/ShopItem.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text("Home",
          style:
          GoogleFonts.patuaOne(
              textStyle: TextStyle(
                fontSize: 32,
                color: Colors.white,
              )
          ),
        ),
        centerTitle: true,
      ),

      body: Container(
        color: Colors.lightGreenAccent,
        child: Stack(
          children: [
            Positioned(
              child: Image.asset("lib/assets/bread.png"),
            ),
          ],
        ),

      ),

    );
  }
}