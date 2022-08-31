import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    TabBar myTabbar = TabBar(
        indicator: BoxDecoration(
            color: Colors.red,
            border: Border(top: BorderSide(color: Colors.purple, width: 7))),
        tabs: [
          Tab(
            icon: Icon(Icons.computer),
            text: 'computer',
          ),
          Tab(
            icon: Icon(Icons.comment),
            text: 'comment',
          ),
        ]);
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text('Custom TabBar'),
            bottom: PreferredSize(
                preferredSize: Size.fromHeight(myTabbar.preferredSize.height),
                child: Container(
                  child: myTabbar,
                  color: Colors.amber,
                )),
          ),
          body: TabBarView(children: [
            Center(child: Text('tab 1')),
            Center(child: Text('tab 2'))
          ]),
        ),
      ),
    );
  }
}
