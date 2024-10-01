import 'package:flutter/material.dart';
import 'package:food_recipe_app/dummy_db.dart';
import 'package:food_recipe_app/utils/constants/color_constants.dart';
import 'package:food_recipe_app/view/Create_recipe/widget/Ingridienttextfield.dart';
import 'package:food_recipe_app/view/globalwidget/Custom_Button.dart';
import 'package:food_recipe_app/view/globalwidget/Customcontainer.dart';
import 'package:hugeicons/hugeicons.dart';

class CreateRecipe extends StatelessWidget {
  const CreateRecipe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Create recipe",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600)),
              SizedBox(height: 12),
              Stack(
                children: [recipecontainer(), Hugeiconalign()],
              ),
              SizedBox(height: 20),
              Textfield(),
              SizedBox(height: 16),
              CustomContainerScreen(
                  Havearrow: true,
                  incredientQuantity: "01",
                  incredientName: "Serves",
                  incredientImage: ""),
              CustomContainerScreen(
                  Havearrow: true,
                  incredientQuantity: "45 min",
                  incredientName: "Cook time",
                  incredientImage: ""),
              SizedBox(height: 24),
              ingredientscolumns()
            ],
          ),
        ),
      ),
    );
  }

  Container recipecontainer() {
    return Container(
      height: 230,
      width: double.infinity,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
              image: AssetImage("assets/images/recipe.jpeg"),
              fit: BoxFit.cover)),
      child: Center(
        child: CircleAvatar(
          radius: 30,
          backgroundColor: ColorConstants.grey,
          child: Icon(
            Icons.play_arrow,
            color: ColorConstants.white,
          ),
        ),
      ),
    );
  }

  Align Hugeiconalign() {
    return Align(
      alignment: Alignment.topRight,
      child: Padding(
        padding: const EdgeInsets.all(13),
        child: CircleAvatar(
          radius: 20,
          backgroundColor: ColorConstants.white,
          child: HugeIcon(
            icon: HugeIcons.strokeRoundedEdit02,
            size: 20,
            color: ColorConstants.primarycolor,
          ),
        ),
      ),
    );
  }

  TextField Textfield() {
    return TextField(
      decoration: InputDecoration(
        hintText: ("Bento lunch box ideas for work|"),
        suffix: Icon(Icons.remove_red_eye),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                BorderSide(color: ColorConstants.primarycolor, width: 1)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide:
                BorderSide(color: ColorConstants.primarycolor, width: 1)),
      ),
    );
  }

  Column ingredientscolumns() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Ingredients",
            style: TextStyle(
                color: ColorConstants.black,
                fontWeight: FontWeight.w600,
                fontSize: 20)),
        SizedBox(height: 16),
        ingridient_textfield(),
        SizedBox(height: 16),
        ingridient_textfield(),
        SizedBox(height: 16),
        ingridient_textfield(),
        SizedBox(height: 20),
        Text("+ Add new Ingredient",
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: ColorConstants.black)),
        SizedBox(height: 24),
        Custombutton(),
      ],
    );
  }

  CustomButton Custombutton() {
    return CustomButton(
      OnButtonpressed: () {},
      text: "Save my recipes",
      width: double.infinity,
      height: 50,
    );
  }

  AppBar Appbar() {
    return AppBar(
      surfaceTintColor: Colors.transparent,
      backgroundColor: ColorConstants.white,
      actions: [
        Icon(
          Icons.more_horiz,
          size: 25,
          color: ColorConstants.black,
        )
      ],
    );
  }
}
