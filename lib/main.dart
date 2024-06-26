import 'package:ecommerce_clothing_store/core/helper_functions/on_generate_route.dart';
import 'package:ecommerce_clothing_store/views/cart_view.dart';
import 'package:ecommerce_clothing_store/views/detail_view.dart';
import 'package:ecommerce_clothing_store/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const ClothingStore());
}

class ClothingStore extends StatelessWidget {
  const ClothingStore({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: onGenerateRoute,
      initialRoute: CartView.routeName,
    );
  }
}
