import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class CartController extends GetxController {

  var shoppingCart = Map();
  double cartPrice = 0;
  var checkoutList = List();

  void addItem(String title, double price) {
    shoppingCart.update(title, (value) => shoppingCart[title] + 1);
    cartPrice += price;
    checkoutList.add(title);
    print(cartPrice);
    print(checkoutList);
  }

  void removeItem(String title, double price) {

    if (shoppingCart[title] <= 0) {
      shoppingCart.update(title, (value) => 0);
    } else {
      shoppingCart.update(title, (value) => shoppingCart[title] - 1);
      cartPrice -= price;
      checkoutList.remove(title);

    }

    if (cartPrice < 0) {
      cartPrice = 0;
    }

    print(cartPrice);
    print(checkoutList);

  }

}