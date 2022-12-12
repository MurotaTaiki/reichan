import 'package:flutter/material.dart';

class YoutubeSample extends StatelessWidget {
  final List<String> entries = <String>[
    'ああああああああああああああああああ',
    'hogeまる',
    'こんにちは'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'youtube',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.black,
          actions: [
            Icon(Icons.ondemand_video),
            SizedBox(width: 24),
            Icon(Icons.search),
            SizedBox(width: 24),
            Icon(Icons.menu),
            SizedBox(width: 24),
          ],
        ),
        body: Container(
            color: Colors.black,
            child: ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: entries.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    height: 100,
                    padding: EdgeInsets.all(8),
                    child: Row(
                      children: [
                        Image.network(
                          'https://i.ytimg.com/an_webp/5voaTJ1al38/mqdefault_6s.webp?du=3000&sqp=CMDFh5wG&rs=AOn4CLDUAkp3SmcifY3JD02zq6dRKFB_pw',
                        ),
                        SizedBox(width: 16),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                entries[index],
                                style:
                                    TextStyle(color: Colors.white, height: 1.3),
                                maxLines: 3,
                              ),
                              Text('1053回視聴 5日前',
                                  style: TextStyle(
                                      color: Colors.grey, fontSize: 12)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                })));
  }
}
