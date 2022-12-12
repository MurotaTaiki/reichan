import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import 'domain/recipe.dart';

class RecipeModel extends ChangeNotifier {
  List<Recipe>? recipes;

  void fetchRecipes() async {
    final QuerySnapshot snapshot =
        await FirebaseFirestore.instance.collection('recipes').get();
    final List<Recipe> recipes = snapshot.docs.map((DocumentSnapshot document) {
      Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
      final String recipe = data['recipe'];
      final String hoge = data['hoge'];
      return Recipe(recipe, hoge);
    }).toList();

    this.recipes = recipes;
    notifyListeners();
  }
}
