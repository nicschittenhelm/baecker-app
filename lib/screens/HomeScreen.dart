import 'dart:ui';
import 'package:backstuebchen_app/screens/ShopScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:indexed/indexed.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title:Text("Home",
            style:
            GoogleFonts.patuaOne(
                textStyle: TextStyle(
                  fontSize: 32,
                  color: Colors.black87,
                )
            ),
          ),
        centerTitle: true,
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
                  height: 80,
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
                  color: Colors.brown,
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
                  "6:00 Uhr - 11:00 Uhr",
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
                  color: Colors.brown,
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
                    width: MediaQuery.of(context).size.width*0.4,
                    height: MediaQuery.of(context).size.height*0.6,
                    top: -100,
                    left: 220,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        height: 500,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage("lib/assets/bread.png"))
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                Colors.white.withOpacity(1),
                                Colors.white.withOpacity(0.8),
                              ],
                              stops: [0.4,1],
                              begin: Alignment.bottomRight,
                            ),
                          ),
                        ),
                      ),
                  ),

                  Positioned(
                    child:
                      Container(
                        width: 250,
                        child: Text(
                          "Bequem von zuhause bestellen, oder per Abonnement liefern lassen",
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            color: Colors.black87
                            ),
                          ),
                      ),
                  ),

                ],
              ),
          ),

          SizedBox(height: 30),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => ShopScreen()));
              },
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.brown),
                overlayColor: MaterialStateProperty.all<Color>(Colors.white.withOpacity(0.2)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              child: Container(
                width: 160,
                height: 40,
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Icon(Icons.navigate_next),
                    SizedBox(width: 8,),
                    Text('Entdecken',
                      style: GoogleFonts.roboto(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ),


        ],
      ),
    );
  }
}