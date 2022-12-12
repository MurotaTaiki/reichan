import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:reichan/add_recipe_model.dart';

class AddRecipe extends StatelessWidget {
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<AddRecipeModel>(
        create: (_) => AddRecipeModel(),
        child: Scaffold(
            appBar: AppBar(
              title: Text('登録'),
            ),
            body: Center(
                //ここがよくわかっていない
                child:
                    Consumer<AddRecipeModel>(builder: (context, model, child) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(hintText: 'レシピ名'),
                      onChanged: (text) {
                        model.recipe = text;
                      },
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    TextField(
                      decoration: InputDecoration(hintText: 'コメント'),
                      onChanged: (text) {
                        model.hoge = text;
                      },
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    ElevatedButton(
                        onPressed: () async {
                          try {
                            await model.add();
                            Navigator.of(context).pop(true);
                          } catch (e) {
                            final snackbar = SnackBar(
                                backgroundColor: Colors.red,
                                content: Text(e.toString()));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackbar);
                          }
                        },
                        child: Text('追加する'))
                  ],
                ),
              );
            }))));
  }
}
