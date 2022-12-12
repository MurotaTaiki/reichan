// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
//
// import 'domain/recipe.dart';
// import 'edit_recipe_model.dart';
//
// class EditRecipe extends StatelessWidget {
//   final Recipe recipe;
//
//   const EditRecipe({super.key, required this.recipe});
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<EditRecipeModel>(
//         create: (_) => EditRecipeModel(),
//         child: Scaffold(
//             appBar: AppBar(
//               title: Text('編集'),
//             ),
//             body: Center(child:
//                 Consumer<EditRecipeModel>(builder: (context, model, child) {
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Column(
//                   children: [
//                     TextField(
//                       decoration: InputDecoration(hintText: 'レシピ名'),
//                       onChanged: (text) {
//                         model.recipe2 = text;
//                       },
//                     ),
//                     SizedBox(
//                       height: 8,
//                     ),
//                     TextField(
//                       decoration: InputDecoration(hintText: 'コメント'),
//                       onChanged: (text) {
//                         model.hoge2 = text;
//                       },
//                     ),
//                     SizedBox(
//                       height: 16,
//                     ),
//                     ElevatedButton(
//                         onPressed: () async {
//                           try {
//                             await model.update();
//                             Navigator.of(context).pop(true);
//                           } catch (e) {
//                             final snackbar = SnackBar(
//                                 backgroundColor: Colors.red,
//                                 content: Text(e.toString()));
//                             ScaffoldMessenger.of(context)
//                                 .showSnackBar(snackbar);
//                           }
//                         },
//                         child: Text('更新する'))
//                   ],
//                 ),
//               );
//             }))));
//   }
// }
