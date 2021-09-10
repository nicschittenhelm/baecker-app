import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indexed/indexed.dart';

class KursScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Home",
          style:
          GoogleFonts.patuaOne(
              textStyle: TextStyle(
                fontSize: 32,
                color: Colors.black87,
              )
          ),
        ),

      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
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
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 120,
                    child: Image.asset('lib/assets/logo_white.png'),
                ),
              ],
            ),
          ),

        SizedBox(height: 50),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
                "ÖFFNUNGSZEITEN",
                style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(216, 125, 28, 1)
                ),
              ),
          ),

          Divider(),
          SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                "Dienstag - Freitag",
                  style: GoogleFonts.roboto(
                fontSize: 16,
                color: Colors.black87
                  ),
                ),

                Text(
                  "5:00 Uhr - 11:00 Uhr",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.black87,

                  ),
                ),

              ],
            ),
          ),

          SizedBox(height: 5),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Samstag - Sonntag",
                  style: GoogleFonts.roboto(
                      fontSize: 16,
                      color: Colors.black87
                  ),
                ),

                Text(
                  "7:00 Uhr - 13:00 Uhr",
                  style: GoogleFonts.roboto(
                    fontSize: 16,
                    color: Colors.black87,

                  ),
                ),

              ],
            ),
          ),

          SizedBox(height: 70),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "SERVICE",
              style: GoogleFonts.roboto(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: Color.fromRGBO(216, 125, 28, 1)
              ),
            ),
          ),


          Divider(),
          SizedBox(height: 15),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Stack(
              clipBehavior: Clip.none,
              fit: StackFit.loose,
                children: <Widget>[
                  Positioned(
                    top: -100,
                    left: 80,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 500,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("lib/assets/bread.png"))
                      ),
                    ),
                  ),

                  Positioned(
                    child:
                      Text(
                        "Bequem von zuhause bestellen, oder per Abonnement liefern lassen",
                        style: GoogleFonts.patuaOne(
                          fontSize: 20,
                          color: Colors.black87
                      ),
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