import 'package:flutter/material.dart';
import 'package:reichan/practice/favorite.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String nameText = '';
    return Scaffold(
        appBar: AppBar(title: const Text('冷蔵庫のれいちゃん')),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                    'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                TextField(
                  onChanged: (text) {
                    nameText = text;
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: '入力してね'),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => Favorite(nameText),
                          fullscreenDialog: true));
                    },
                    child: const Text('お気に入り登録')),
              ],
            ),
          ),
        ));
  }
}
