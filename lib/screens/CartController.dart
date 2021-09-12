import 'package:get/get.dart';


class CartController extends GetxController {

  var test = 0.obs;

  var shoppingCart = Map();

  void addItem(String title) {
    shoppingCart.update(title, (value) => shoppingCart[title] + 1);
  }

  void removeItem(String title) {

    if (shoppingCart[title] <= 0) {
      shoppingCart.update(title, (value) => 0);
    } else {
      shoppingCart.update(title, (value) => shoppingCart[title] - 1);
    }

  }

}