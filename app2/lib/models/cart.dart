import 'package:flutter/material.dart';
import 'product.dart';

class Cart extends ChangeNotifier {
  List<Product> _items = [];

  List<Product> get items => _items;

  double get totalPrice {
    return _items.fold(0, (total, current) => total + current.price);
  }

  void addToCart(Product product) {
    _items.add(product);
    notifyListeners();
  }

  void removeFromCart(Product product) {
    _items.remove(product);
    notifyListeners();
  }
}
