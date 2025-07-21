import 'package:flutter/material.dart';

import '../models/meal.dart';

class MealsScreen extends StatelessWidget {
  const MealsScreen({ super.key, required this.title, required this.meals});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {

    Widget content = ListView.builder(itemBuilder: (ctx, index) => Text(meals[index].title) );

    if(meals.isEmpty){
      content = Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,

          children: [
          SizedBox(height: 16,),
          Center(
            child: Text("Try to select different category", style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground),),
          ),

          SizedBox(height: 16,),
          Center(
            child: Text("Try to select different category", style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground),),
          )
        ],
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: content, );

  }
}
