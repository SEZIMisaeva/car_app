import 'package:car_app/data/car_model.dart';
import 'package:flutter/material.dart';

class CartProvider extends  ChangeNotifier{
  List<CarModel> cartList = [];

  void addItemToCart(CarModel newItem){
    if (cartList.isEmpty) {
      cartList.add(newItem.addToCart());
    } else {
      cartList.first = cartList.first.addToCart();
    }
    notifyListeners();

  }
}