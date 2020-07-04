import 'package:flutter/material.dart';

/*Widget myWidget() {
  return Center(
      child: Container(
          color: Colors.red,
          child: Text(
            "Hello, World!",
            style: TextStyle(fontSize: 30.0),
          )));
}*/

/*  Widget myWidget() {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.fromLTRB(26.0, 10.0, 20.0, 40.0),
          child: Text(
            "Hello, Flutter!",
          ),
        ),
        Padding(
          padding: EdgeInsets.fromLTRB(26.0, 10.0, 20.0, 40.0),
          child: Text(
            "Hello, Flutter!",
          ),
        )
      ],
    );
  }*/
/*
  Widget myWidget() {
    return Column(
      children: <Widget>[
        RaisedButton(
          child: const Text('Button'),
          color: Colors.lime,
          elevation: 4.0,
          splashColor: Colors.orange,
          onPressed: () {
            // do something
          },
        ),
        MaterialButton(
          child: Text('Material Button'),
          color: Colors.lime,
          elevation: 4.0,
          splashColor: Colors.orange,
          onPressed: () {},
        )
      ],
    );
  }*/

Widget myWidget() {
  return Column(
    children: <Widget>[
      TextField(
        decoration: InputDecoration(
//          border: InputBorder.none,
            hintText: 'Your name',
            labelText: 'Write your name'),
      ),
      TextField(
        decoration: InputDecoration(
//          border: InputBorder.none,
            hintText: 'Your name',
            labelText: 'Write your name'),
      ),
    ],
  );
}

/*  Widget myWidget() {
    return ListView.builder(
      padding: EdgeInsets.all(16.0),
      // spacing of the rows
      itemExtent: 30.0,
      // provides an infinite list
      itemBuilder: (BuildContext context, int index) {
        return Text('Row $index');
      },
    );
  }*/

/*
Widget myWidget() {
  return ListView.builder(
    itemBuilder: (BuildContext context, int index) {
      return ListTile(
        title: Text('Row $index'),
        onTap: () {
          // do something
        },
      );
    },
  );
}
*/
