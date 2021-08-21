import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class KursScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(70)),
              image: DecorationImage(
                  image: AssetImage('lib/assets/header.jpg'),
                fit: BoxFit.cover
              ),
            ),
            padding: const EdgeInsets.only(left: 100),
            child: Row(
              children: [
                Text("Home",
                style:
                  GoogleFonts.patuaOne(
                    textStyle: TextStyle(
                      fontSize: 50,
                      color: Color.fromRGBO(162, 234, 255, 1),
                      letterSpacing: 1.2,
                    )
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}