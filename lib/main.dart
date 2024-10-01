import 'package:flutter/material.dart';
import 'package:food_recipe_app/view/Splashscreen/splashscreen.dart';
import 'package:food_recipe_app/view/startscreen/startscreen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}
