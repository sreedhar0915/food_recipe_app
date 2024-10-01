import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:food_recipe_app/view/bottomnavbar_screen/bottomnavbar_screen.dart';
import 'package:food_recipe_app/view/homescreen/homescreen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 4)).then((value) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => BottomnavbarScreen()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.black,
      body: Center(
          child: Image.asset(
              height: 300,
              "assets/images/food_recipes_app_logo-removebg-preview.png")),
    );
  }
}
