import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'CartController.dart';
import 'package:get/get.dart';
import 'dart:convert';

final CartController c = Get.put(CartController());

class CheckoutScreen extends StatelessWidget {

  void createJson(Map<dynamic, dynamic> cart) {
    String cartJson = jsonEncode(cart);
    print(cartJson);
  }
  
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown,
        title: Text(
          "Warenkorb",
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

          SizedBox(height: 50,),

          Text("Gesammtpreis:",
            style: GoogleFonts.roboto(
                fontSize: 25,
                color: Colors.black87),
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
          ),

          Text("${c.cartPrice.toStringAsFixed(2)}€",
            style: GoogleFonts.roboto(
                fontSize: 80,
                fontWeight: FontWeight.w900,
                color: Colors.black87),
            overflow: TextOverflow.visible,
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 50,),

          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: c.checkoutList.map((Items) => Text(Items,
                style: GoogleFonts.roboto(
                  fontSize: 25,
                  color: Colors.black54),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
              )).toList(),


            ),
          ),

          SizedBox(height: 30),

          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: ElevatedButton(
                onPressed: () {
                  createJson(c.shoppingCart);
                  
                  showDialog(
                      context: context,
                      builder: (BuildContext context) =>
                      const AlertDialog(title: Text('Ihre Bestellung wurde aufgegeben')
                      ),
                  );
                  
                  
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.brown),
                  overlayColor: MaterialStateProperty.all<Color>(Colors.white.withOpacity(0.2)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
                child: Container(
                  width: 160,
                  height: 50,
                  padding: EdgeInsets.all(8.0),
                  child: Center(
                    child: Text('Bestellen',
                      style: GoogleFonts.roboto(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              )
          ),

          SizedBox(height: 80),

        ],
      ),





    );
  }
}
