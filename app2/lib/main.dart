import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screens/main_page.dart';
import 'screens/cart_page.dart';
import 'providers/cart_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CartProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        initialRoute: '/',
        routes: {
          '/': (context) => MainPage(),
          '/cart': (context) => CartPage(),
        },
      ),
    );
  }
}
