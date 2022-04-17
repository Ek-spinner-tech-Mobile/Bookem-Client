import 'package:bookem_client/bottom_nav_bar.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  BasicBottomNavBar(),
    );
  }
}
