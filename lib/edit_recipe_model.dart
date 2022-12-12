// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:flutter/cupertino.dart';
//
// class EditRecipeModel extends ChangeNotifier {
//   String? recipe2;
//   String? hoge2;
//
//   Future update() async {
//     if (recipe2 == null || recipe2!.isEmpty) {
//       throw 'レシピ名が入力されていません';
//     }
//     if (hoge2 == null || hoge2!.isEmpty) {
//       throw 'コメントが入力されていません';
//     }
//     await FirebaseFirestore.instance
//         .collection('recipes')
//         .add({'recipe': recipe2, 'hoge': hoge2});
//   }
// }
