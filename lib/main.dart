import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:reichan/search.dart';

void main() async {
  // これ何をしているかわからない
  WidgetsFlutterBinding.ensureInitialized();
  // firebaseに初回疎通しているだけ？
  await Firebase.initializeApp();
  // アプリの実行
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // super.keyがよくわからん
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Search());
  }
}
