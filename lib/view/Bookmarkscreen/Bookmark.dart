import 'package:flutter/material.dart';
import 'package:food_recipe_app/dummy_db.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:food_recipe_app/view/globalwidget/Custom_recipecard.dart';
import 'package:food_recipe_app/view/globalwidget/Customvideocard.dart';
import 'package:food_recipe_app/view/recipedetials/recipedetials.dart';

class BookmarkScreen extends StatefulWidget {
  const BookmarkScreen({super.key});

  @override
  State<BookmarkScreen> createState() => _BookmarkScreenState();
}

class _BookmarkScreenState extends State<BookmarkScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
          appBar: Appbar(),
          body: Expanded(
              child: TabBarView(children: [
            Listviewvideocard(),
            Listviewrecipecard(),
          ]))),
    );
  }

  ListView Listviewrecipecard() {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => CustomRecipeCart(
              image: DummyDb.Recipecard[index]["image"],
              title: DummyDb.Recipecard[index]["title"],
              rating: DummyDb.Recipecard[index]["rating"],
              Ingredients: DummyDb.Recipecard[index]["Ingredients"],
            ),
        separatorBuilder: (context, index) => SizedBox(),
        itemCount: DummyDb.Recipecard.length);
  }

  ListView Listviewvideocard() {
    return ListView.separated(
        padding: EdgeInsets.symmetric(horizontal: 20),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => Customvideocard(
              oncardTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Recipedetials(
                              recipetitle: DummyDb.trendingnowlist[index]
                                  ["title"],
                              recipeimage: DummyDb.trendingnowlist[index]
                                  ["bgimage"],
                              reciperating: DummyDb.trendingnowlist[index]
                                  ["rating"],
                              recipeprofileimage: DummyDb.trendingnowlist[index]
                                  ["userurl"],
                              recipeusername: DummyDb.trendingnowlist[index]
                                  ["username"],
                            )));
              },
              width: double.infinity,
              rating: DummyDb.trendingnowlist[index]["rating"],
              bgimage: DummyDb.trendingnowlist[index]["bgimage"],
              duration: DummyDb.trendingnowlist[index]["duration"],
              foodname: DummyDb.trendingnowlist[index]["title"],
              username: DummyDb.trendingnowlist[index]["username"],
              userurl: DummyDb.trendingnowlist[index]["userurl"],
            ),
        separatorBuilder: (context, index) => SizedBox(height: 10),
        itemCount: 4);
  }

  AppBar Appbar() {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: ColorConstants.white,
      title: Text(
        "Saved recipes",
        style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
      ),
      bottom: TabBar(
          padding: EdgeInsets.symmetric(horizontal: 20),
          indicatorSize: TabBarIndicatorSize.tab,
          labelColor: ColorConstants.white,
          unselectedLabelColor: ColorConstants.primarycolor,
          indicator: BoxDecoration(
              color: ColorConstants.primarycolor,
              borderRadius: BorderRadius.circular(10)),
          tabs: [
            Tab(
              child: Text("Video"),
            ),
            Tab(
              child: Text("Recipe"),
            ),
          ]),
    );
  }
}
