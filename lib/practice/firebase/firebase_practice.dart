import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reichan/practice/firebase/firebase_model.dart';

import '../domain/recipe_practice.dart';

class FirebasePractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // changeNotifierProvicerというのはfirebase側で変更があったら起動する？
    return ChangeNotifierProvider<FirebaseModel>(
        // (_)ってなんだろう
        // ..fetch~~もよくわからない
        create: (_) => FirebaseModel()..fetchRecipes(),
        child: Scaffold(
            appBar: AppBar(
              title: Text('hoge'),
            ),
            body: Center(child:
                // consumerとはなんだろう
                Consumer<FirebaseModel>(builder: (context, model, child) {
              final List<Recipe>? recipes = model.recipes;

              if (recipes == null) {
                return CircularProgressIndicator();
              }

              final List<Widget> widgets = recipes!
                  .map((recipe) => ListTile(
                      title: Text(recipe.recipe), subtitle: Text(recipe.hoge)))
                  .toList();
              return ListView(children: widgets);
            }))));
  }
}
