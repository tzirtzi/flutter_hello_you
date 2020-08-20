import 'package:flutter/material.dart';

class HelloYou extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HelloYouState();
}

class _HelloYouState extends State<HelloYou> {
  String titleName = '... (waiting input submission)';
  String name = '';

  void setName(String newName) {
    setState(() {
      name = newName;
    });
  }

  void setTitleName(String newName) {
    setState(() {
      titleName = newName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello " + titleName),
        backgroundColor: Theme.of(context).accentColor,
      ),
      body: Container(
        padding: EdgeInsets.all(25.5),
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                "Enter your name below",
                style: Theme.of(context).textTheme.headline6,
              ),
              alignment: Alignment.centerLeft,
            ),
            TextField(
              onChanged: (String newName) {
                setName(newName);
              },
              onSubmitted: (String newName) {
                setTitleName(newName);
              },
            ),
            Container(
                padding: EdgeInsets.only(top: 20.0),
                child: Column(children: <Widget>[
                  Text(
                    "Hello",
                    style: Theme.of(context).textTheme.headline4,
                  ),
                  Text(
                    ((name != "") ? 'my dear ' + name + '!' : ""),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                ]))
          ],
        ),
      ),
    );
  }
}
