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
        title: Text(
          "Shop",
          style: GoogleFonts.patuaOne(
              textStyle: TextStyle(
            fontSize: 32,
            color: Colors.white,
          )),
        ),
        centerTitle: true,
      ),

      body: ListView(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Positioned(

                child: Opacity(
                    opacity: 0.2,
                    child: Image.asset("lib/assets/heroBackground.png")),
              ),

              Positioned(
                top: 60,
                left: 30,
                child: Opacity(
                  opacity: 0.6,
                  child: Image.asset("lib/assets/hero2.jpg", width: 150),
                ),
              ),

              Positioned(
                top: 250,
                left: 20,
                child: Opacity(
                    opacity: 0.8,
                    child: Image.asset("lib/assets/hero1.jpg", width: 120)),
              ),

              Positioned(
                top: 100,
                left: 220,
                child: Opacity(
                  opacity: 0.8,
                  child: Image.asset("lib/assets/hero3.jpg", width: 150),
                ),
              ),

              Positioned(
                top: 310,
                left: 160,
                child: Container(
                  width: 190,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "SERVICE",
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.brown,
                        ),
                        textAlign: TextAlign.right,
                      ),
                      Text(
                        "Jeden Tag frisch!",
                        style: GoogleFonts.patuaOne(
                            fontSize: 20, color: Colors.black87),
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Wir beziehen frische Backwaren jeden Morgen frisch von lokalen Bäckereien.",
                        style: GoogleFonts.roboto(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.right,
                      ),
                    ],
                  ),
                ),
              ),

            ],
          ),

          SizedBox(height: 190,),

          ShopItem('lib/assets/hero1.jpg', 'Muffin', 'Schmeckt gut!'),
          ShopItem('lib/assets/hero1.jpg', 'Muffin', 'Schmeckt gut!'),
          ShopItem('lib/assets/hero1.jpg', 'Muffin', 'Schmeckt gut!'),
          ShopItem('lib/assets/hero1.jpg', 'Muffin', 'Schmeckt gut!'),
          ShopItem('lib/assets/hero1.jpg', 'Muffin', 'Schmeckt gut!'),
          ShopItem('lib/assets/hero1.jpg', 'Muffin', 'Schmeckt gut!'),
          ShopItem('lib/assets/hero1.jpg', 'Muffin', 'Schmeckt gut!'),



        ],
      ),



    );
  }
}
