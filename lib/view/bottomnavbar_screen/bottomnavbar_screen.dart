import 'package:flutter/material.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:food_recipe_app/view/Bookmarkscreen/Bookmark.dart';
import 'package:food_recipe_app/view/Create_recipe/Create_recipe.dart';
import 'package:food_recipe_app/view/Notificationscreen/notification_screen.dart';
import 'package:food_recipe_app/view/Profile_screen/Profilescreen.dart';
import 'package:food_recipe_app/view/homescreen/homescreen.dart';

class BottomnavbarScreen extends StatefulWidget {
  const BottomnavbarScreen({super.key});

  @override
  State<BottomnavbarScreen> createState() => _BottomnavbarScreenState();
}

class _BottomnavbarScreenState extends State<BottomnavbarScreen> {
  int selecttab = 0;
  List screen = [
    Homescreen(),
    BookmarkScreen(),
    NotificationsScreen(),
    Profilescreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screen[selecttab],
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        backgroundColor: ColorConstants.primarycolor,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => CreateRecipe()));
        },
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            selecttab = value;
            setState(() {});
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.home),
                icon: Icon(Icons.home_outlined),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.bookmark),
                icon: Icon(Icons.bookmark_outline),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.notifications),
                icon: Icon(Icons.notifications_none_outlined),
                label: ""),
            BottomNavigationBarItem(
                activeIcon: Icon(Icons.person),
                icon: Icon(Icons.person_outline),
                label: ""),
          ]),
    );
  }
}
