import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_shadow/simple_shadow.dart';


Widget ShopItem(String imgPath, String title, String desc) {
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
              decoration: BoxDecoration(color: Colors.lightGreenAccent),
            ),

          ],
        ),
      ),
    ),
  );
}
