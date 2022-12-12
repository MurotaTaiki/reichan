import 'package:flutter/material.dart';
import 'package:reichan/result.dart';

import 'add_recipe.dart';

class Search extends StatefulWidget {
  Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  String syokuzai = '';
  List<String> syokuzaiList = [];

  void _addSyokuzaiList() {
    setState(() {
      syokuzaiList.add(syokuzai);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('冷蔵庫のれいちゃん'),
        ),
        body: Container(
          child: Column(
            children: [
              TextField(
                onChanged: (text) {
                  syokuzai = text;
                },
                decoration: InputDecoration(labelText: '食材を入力しよう！'),
              ),
              ElevatedButton(onPressed: _addSyokuzaiList, child: Text('追加')),
              Expanded(
                  child: ListView.builder(
                      padding: const EdgeInsets.all(8),
                      itemCount: syokuzaiList.length,
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          // height: 50,
                          child: Center(child: Text(syokuzaiList[index])),
                        );
                      })),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Result()));
                  },
                  child: Text('検索')),
              ElevatedButton(
                  onPressed: () async {
                    final bool? added = await Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => AddRecipe(),
                            fullscreenDialog: true));
                    if (added != null && added) {
                      final snackbar = SnackBar(
                          backgroundColor: Colors.green,
                          content: Text('追加しました'));
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }
                  },
                  child: Text('登録'))
            ],
          ),
        ));
  }
}
