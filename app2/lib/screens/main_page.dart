import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
import '../models/product.dart';
import '../widgets/product_list_item.dart';

class MainPage extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Iphone 13', price: 120599.0),
    Product(name: 'Samsung S21 ', price: 102000.0),
    Product(name: 'Vivo V3', price: 30000.0),
    Product(name: 'MI NOTE 13', price: 12599.0),
    Product(name: 'Oneplus Open ', price: 81000.0),
    Product(name: 'Google Pixel', price: 30000.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductListItem(product: products[index]);
        },
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Align(
          alignment: Alignment.bottomRight,
          child: FloatingActionButton(
            onPressed: () {
              Navigator.pushNamed(context, '/cart');
            },
            child: Icon(Icons.shopping_cart),
          ),
        ),
      ),
    );
  }
}
