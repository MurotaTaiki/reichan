import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

import '../domain/recipe_practice.dart';

class FirebaseModel extends ChangeNotifier {
  // streamってなんだろう
  final Stream<QuerySnapshot> _usersStream =
      FirebaseFirestore.instance.collection('recipes').snapshots();

  List<Recipe>? recipes;

  void fetchRecipes() {
    // listenってなんだろう
    _usersStream.listen((QuerySnapshot snapshot) {
      final List<Recipe> recipes =
          snapshot.docs.map((DocumentSnapshot document) {
        Map<String, dynamic> data = document.data()! as Map<String, dynamic>;
        final String recipe = data['recipe'];
        final String hoge = data['hoge'];
        return Recipe(recipe, hoge);
      }).toList();
    });
    this.recipes = recipes;
    notifyListeners();
  }
}
