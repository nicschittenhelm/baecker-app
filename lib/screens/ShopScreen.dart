import 'dart:ui';
import 'package:backstuebchen_app/screens/CartController.dart';
import 'package:flutter/material.dart';
import 'package:simple_shadow/simple_shadow.dart';
import 'CartController.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'CheckoutScreen.dart';

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

        actions: [

          IconButton(
              icon: Icon(Icons.shopping_cart_outlined),
              iconSize: 30,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => CheckoutScreen()));
              },
          ),

        ],

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

          ShopItem(imgPath: "lib/assets/1.jpg", title: "Dinkelbrot mit Sonnenblumenkernen", desc: "Sonnenblumenkind. Super saftig. Gsund & munter.", price: 3.60),
          FillMap("Dinkelbrot mit Sonnenblumenkernen"),

          ShopItem(imgPath: "lib/assets/2.jpg", title: "Dinkelvollkornbrot", desc: "Aromatisch. Herrlich saftig. Lecker & mild.", price: 5.20),
          FillMap("Dinkelvollkornbrot"),

          ShopItem(imgPath: "lib/assets/3.jpg", title: "Dinkelwalnussbrot", desc: "Ganze Walnüsse. Herrlich saftig. Für Körnerliebhaber.", price: 3.90),
          FillMap("Dinkelwalnussbrot"),

          ShopItem(imgPath: "lib/assets/4.jpg", title: "Eiweißbrot", desc: "Massig Eiweiß. Wenig Kohlenhydrate. Körnerbombe.", price: 3.90),
          FillMap("Eiweißbrot"),

          ShopItem(imgPath: "lib/assets/5.jpg", title: "Holzofenbrot", desc: "Brotzeitklassiker. Roggen & Weizen. Würzig.", price: 4.95),
          FillMap("Holzofenbrot"),

          ShopItem(imgPath: "lib/assets/6.jpg", title: "Holzofenbrot RoggenDinkel", desc: "Dinkel. Traditionell. Aromatisch.", price: 4.95),
          FillMap("Holzofenbrot RoggenDinkel"),

          ShopItem(imgPath: "lib/assets/7.jpg", title: "Dinkelvollkorntoast", desc: "Genuss pur. Allrounder. Weich.", price: 4.00),
          FillMap("Dinkelvollkorntoast"),

          ShopItem(imgPath: "lib/assets/8.jpg", title: "Bio Urkornbrot", desc: "Jedermanns. Urig. Mineralbombe.", price: 4.95),
          FillMap("Bio Urkornbrot"),




        ],
      ),
    );
  }
}

Widget FillMap(String title) {

  c.shoppingCart[title] = 0;

  return Container(
    height: 0,
  );

}


class ShopItem extends StatefulWidget {

  String imgPath;
  String title;
  String desc;
  double price;


  ShopItem({Key key, @required this.imgPath, @required this.title, @required this.desc, @required this.price}) : super(key: key);

  _ShopItemState createState() => _ShopItemState();
}

class _ShopItemState extends State<ShopItem> {
  @override
  Widget build(BuildContext context) {

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
                  image: DecorationImage(image: AssetImage(widget.imgPath),),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [

                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                            Container(
                              width: MediaQuery.of(context).size.width*0.33,
                              child: Text(
                                widget.title,
                                style: GoogleFonts.patuaOne(
                                    fontSize: 18, color: Colors.black87),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                              ),
                            ),


                            Text(
                              "${widget.price.toStringAsFixed(2)} €",
                              style: GoogleFonts.patuaOne(
                                  fontSize: 14, color: Colors.black87),
                              overflow: TextOverflow.visible,
                              textAlign: TextAlign.right,
                            ),


                        ],
                      ),



                      Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.desc,
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
                width: 40,
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


                          setState(() {


                            c.addItem(widget.title,widget.price);

                          });

                        },

                      ),
                    ),


                    Flexible(
                      flex: 3,
                      child: Text(
                        c.shoppingCart[widget.title].toString(),
                        style: GoogleFonts.roboto(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),

                    Flexible(
                      flex: 3,
                      child: IconButton(
                          icon: Icon(Icons.keyboard_arrow_down_rounded),
                          iconSize: 20,
                          onPressed: () {

                            setState(() {
                              c.removeItem(widget.title, widget.price);
                            });

                          }
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
}
