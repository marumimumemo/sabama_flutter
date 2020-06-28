import 'package:flutter/material.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final items = List<String>.generate(100000, (i) => "Item $i");

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.blueAccent,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          leading: Icon(Icons.videocam),
          title: const Text('flutter版 sabama'),
          actions: <Widget>[
          SizedBox(
            width: 44,
            child: FlatButton(
              child: Icon(Icons.search),
              onPressed: () {

              }
            ),
          ),
          SizedBox(
            width: 44,
            child: FlatButton(
              child: Icon(Icons.more_vert),
                onPressed: () {

                }
            ),
          ),
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: Row(
                  children: <Widget>[
                   SizedBox(
                     width: 150,
                     height: 150,
                     child: Image.network(
                    'https://www.meishi-first.jp/upload_product/00000000196/rs002-03_0720.jpg?1593349860'
                     ),
                   ),
                   Column(
                     children: <Widget>[
                      const Text(
                      '名刺管理アプリ',
                      ),
                       const Text(
                         'sabama',
                       ),
                      FlatButton(
                        child: Row(
                          children: <Widget>[
                            Icon(Icons.video_call),
                            Text('名刺を撮影する'),
                          ]
                      ),
                        onPressed: () {

                      }
                   ),
                ],
              )
            ],
          ),
        ),
                 Expanded(
                 child: ListView.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsets.all(8),
                      leading: Image.network(
                          'https://www.meishi-first.jp/upload_product/00000000196/rs002-03_0720.jpg?1593349860'
                      ),
                      title: Column(
                        children: <Widget>[
                        Text(
                          '名刺太郎',
                          style: TextStyle(
                          fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: <Widget>[
                            Text(
                                '株式会社STV',
                        style: TextStyle(
                          fontSize: 13,
                        ),
                    ),
                            Text('開発部'),
                          ],
                        ),
                      ],
                      ),
                      trailing: Icon(Icons.more_vert),
                    );
                  }
              ),
                 ),
      ],
    ),
    ),
    ),
    );
  }
}

