import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/product.dart';
import '../providers/cart_provider.dart';

class ProductListItem extends StatelessWidget {
  final Product product;

  ProductListItem({required this.product});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name),
      subtitle: Text('\Rs ${product.price.toStringAsFixed(2)}'),
      trailing: ElevatedButton(
        onPressed: () {
          Provider.of<CartProvider>(context, listen: false).addToCart(product);
        },
        child: Text('Add to Cart'),
      ),
    );
  }
}
