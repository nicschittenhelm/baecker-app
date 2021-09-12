import 'dart:ui';
import 'package:backstuebchen_app/screens/CartController.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'CartController.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

final CartController c = Get.put(CartController());


class ShopScreen extends StatefulWidget {


  @override
  _ShopScreenState createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
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
          Container(
            width: MediaQuery.of(context).size.width,
            height: 450,
            child: Stack(
            clipBehavior: Clip.hardEdge,
            fit: StackFit.expand,
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
          ),

          ShopItem('lib/assets/hero1.jpg', 'Muffin', 'Schmeckt gut!'),
          ShopItem('lib/assets/hero1.jpg', 'Brot', 'Schmeckt gut!'),
          ShopItem('lib/assets/hero1.jpg', 'Kuchen', 'Schmeckt gut!'),
          ShopItem('lib/assets/hero1.jpg', 'Toast', 'Schmeckt gut!'),




        ],
      ),



    );
  }
}




Widget ShopItem(String imgPath, String title, String desc) {

  c.shoppingCart[title] = 0;
  print("test");
  print(c.shoppingCart);

  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
    child: SimpleShadow(

      opacity: 0.2,
      color: Colors.black54,
      sigma: 6,

      child: Container(
        height: 100,
        color: Colors.white,
        child: Row(
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(imgPath),),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        title,
                        style: GoogleFonts.patuaOne(
                            fontSize: 20, color: Colors.black87),
                        textAlign: TextAlign.left,
                      ),
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        desc,
                        maxLines: 4,
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            Container(
              width: 50,
              height: 100,
              decoration: BoxDecoration(color: Colors.white),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Flexible(
                    flex:3,
                    child: IconButton(
                        icon: Icon(Icons.keyboard_arrow_up_rounded),
                        iconSize: 20,
                        onPressed: () {

                        },

                    ),
                  ),


                  Flexible(
                    flex: 3,
                    child: Text(
                      "0",
                      maxLines: 4,
                      style: GoogleFonts.roboto(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),

                  Flexible(
                    flex: 3,
                    child: IconButton(
                        icon: Icon(Icons.keyboard_arrow_down_rounded),
                        iconSize: 20,
                        onPressed: ()=>c.removeItem(title),
                    ),
                  ),

                ],
              ),

            ),

          ],
        ),
      ),
    ),
  );
}
