import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_app_wprovider/provider/cart_provider.dart';
import 'package:shopping_app_wprovider/provider/product_provider.dart';
import 'package:shopping_app_wprovider/screens/main_screen.dart';

void main() {
  runApp(
    MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => ProductProvider()),
          ChangeNotifierProvider(create: (_) => CartProvider()),
        ],
      child: MyApp(),
    )
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shopping app with provider',
      debugShowCheckedModeBanner: false,
      home: MainScreen(),
    );
  }
}
