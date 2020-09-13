import 'package:flutter/material.dart';

class Scroll extends StatefulWidget {
  @override
  _ScrollState createState() => _ScrollState();
}

class _ScrollState extends State<Scroll> {
  var mylist = List.generate(500, (i) => "Flutter  $i");
  var _controller = ScrollController();
  var _controller2 = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(onPressed: () {
        _controller.animateTo(0.0,
            duration: Duration(seconds: 1), curve: Curves.easeInOut);
        _controller2.animateTo(_controller.position.maxScrollExtent,
            duration: Duration(seconds: 1), curve: Curves.easeInOut);
      }),
      body: Row(
        children: <Widget>[
          Expanded(
            child: ListView(
              controller: _controller,
              children: mylist.map((item) {
                return ListTile(
                  leading: FlutterLogo(),
                  title: Text(item),
                );
              }).toList(),
            ),
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              reverse: true,
              controller: _controller2,
              children: mylist.map((item) {
                return ListTile(
                  leading: FlutterLogo(
                    colors: Colors.red,
                  ),
                  title: Text(item),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}
