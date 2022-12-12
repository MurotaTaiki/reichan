import 'package:flutter/material.dart';

class Favorite extends StatelessWidget{
  Favorite(this.name);
  String name = '';
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
            title: Text('hge')
        ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(('images/fix_octopus.jpg')),
            Text(name,
            style: TextStyle(
              fontSize: 50
            ),),
            ElevatedButton(
              onPressed: (){
                Navigator.pop(context);
              },
              child: Text('ホームへ戻る')
            ),
          ],
        ),
      ),
    );
  }

}