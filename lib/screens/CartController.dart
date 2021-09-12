import 'package:get/get.dart';

class CartController extends GetxController {

  var books = 0.obs;

  var shoppingCart = Map();

  addItem(String titel){
    shoppingCart[titel] = shoppingCart[titel] + 1;
  }

  removeItem(String titel){
    shoppingCart[titel] = shoppingCart[titel] - 1;
  }

}