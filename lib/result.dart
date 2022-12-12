import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:provider/provider.dart';
import 'package:reichan/recipe_model.dart';

import 'domain/recipe.dart';

class Result extends StatelessWidget {
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RecipeModel>(
      create: (_) => RecipeModel()..fetchRecipes(),
      child: Scaffold(
        appBar: AppBar(
          title: Text('firebase'),
        ),
        body: Center(
          child: Consumer<RecipeModel>(
            builder: (context, model, child) {
              final List<Recipe>? recipes = model.recipes;

              if (recipes == null) {
                return CircularProgressIndicator();
              }

              final List<Widget> widgets = recipes!
                  .map((recipe) => Slidable(
                        key: const ValueKey(0),
                        endActionPane: ActionPane(
                          motion: ScrollMotion(),
                          children: [
                            SlidableAction(
                              // An action can be bigger than the others.
                              flex: 2,
                              onPressed: null,
                              //     (_) async {
                              //   final bool? edited = await Navigator.of(context)
                              //       .push(MaterialPageRoute(
                              //     builder: (context) =>
                              //         EditRecipe(recipe: recipe),
                              //   ));
                              //   if (edited != null && edited) {
                              //     final snackbar = SnackBar(
                              //         backgroundColor: Colors.green,
                              //         content: Text('更新しました'));
                              //     ScaffoldMessenger.of(context)
                              //         .showSnackBar(snackbar);
                              //   }
                              // },
                              backgroundColor: Color(0xFF7BC043),
                              foregroundColor: Colors.white,
                              icon: Icons.edit,
                              label: '編集',
                            ),
                            SlidableAction(
                              onPressed: null,
                              backgroundColor: Color(0xFF0392CF),
                              foregroundColor: Colors.white,
                              icon: Icons.delete,
                              label: '削除',
                            ),
                          ],
                        ),
                        child: ListTile(
                            title: Text(recipe.recipe),
                            subtitle: Text(recipe.hoge)),
                      ))
                  .toList();
              return ListView(children: widgets);
            },
          ),
        ),
      ),
    );
  }
}
