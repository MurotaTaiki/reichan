import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';

class AddRecipeModel extends ChangeNotifier {
  String? recipe;
  String? hoge;

  Future add() async {
    if (recipe == null || recipe!.isEmpty) {
      throw 'レシピ名が入力されていません';
    }
    if (hoge == null || hoge!.isEmpty) {
      throw 'コメントが入力されていません';
    }
    await FirebaseFirestore.instance
        .collection('recipes')
        .add({'recipe': recipe, 'hoge': hoge});
  }
}
