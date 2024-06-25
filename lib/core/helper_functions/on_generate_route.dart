import 'package:ecommerce_clothing_store/views/cart_view.dart';
import 'package:ecommerce_clothing_store/views/detail_view.dart';
import 'package:ecommerce_clothing_store/views/home_view.dart';
import 'package:flutter/material.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => HomeView());

    case DetailView.routeName:
      return MaterialPageRoute(builder: (context) => const DetailView());

    case CartView.routeName:
      return MaterialPageRoute(builder: (context) => const CartView());
    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
