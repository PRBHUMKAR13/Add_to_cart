import 'package:flutter/material.dart';
import '../models/product.dart';
import '../models/cart.dart';

class CartProvider extends ChangeNotifier {
  final Cart cart = Cart();

  void addToCart(Product product) {
    cart.addToCart(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    cart.removeFromCart(product);
    notifyListeners();
  }
}
