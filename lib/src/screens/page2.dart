import 'package:flutter/material.dart';

/*
Widget myLayoutWidget() {
  return Padding(
    padding: EdgeInsets.all(8.0),
    child: Text("Hello world!"),
  );
}
*/

/*
Widget myLayoutWidget() {
  return Center(
    child: Text(
      "Hello world!",
      style: TextStyle(fontSize: 30),
    ),
  );
}
*/

/*
Widget myLayoutWidget() {
  return Align(
    alignment: Alignment(-0.4, -0.5),
    child: Text(
      "Hello",
      style: TextStyle(fontSize: 30),
    ),
  );
}
*/

/*
Widget myLayoutWidget() {
  return Container(
    margin: EdgeInsets.all(100.0),
    padding: EdgeInsets.all(10.0),
    alignment: Alignment.topCenter,
    width: 150,
    height: 60,
    decoration: BoxDecoration(
      color: Colors.green,
      border: Border.all(),
    ),
    child: Text("Hello", style: TextStyle(fontSize: 30)),
  );
}
*/

/*
Widget myLayoutWidget() {
  return Stack(
    children: [
      Icon(Icons.home),
      Icon(Icons.home),
      Icon(Icons.home),
      Icon(Icons.home),
    ],
  );
}
*/

/*
Widget myLayoutWidget() {
  return Stack(

    // any unpositioned children (ie, our text) will be aligned at the bottom right
    alignment: Alignment.bottomRight,

    children: [

      // first child in the stack is on bottom
      Image.asset('images/im_father.jpg'), //            <--- image

      // second child in the stack
      Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(
          'I am your father!', //                              <--- text
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
      ),
    ],
  );
}
*/

Widget myLayoutWidget() {
  Widget secondRow() {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 16.0,
        horizontal: 0,
      ),
      child: Text(
        'Building complex layouts for MTWDM.',
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }

  Widget thirdRow = Row(
    children: [
      Text(
        'EXPLORE BEAMS',
        style: TextStyle(
          color: Colors.green,
        ),
      ),
      Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Icon(
          Icons.arrow_forward,
          color: Colors.green,
        ),
      ),
    ],
  );

  return Container(
    margin: EdgeInsets.all(16.0),
    padding: EdgeInsets.all(16.0),
    decoration: BoxDecoration(
      color: Colors.purple[900],
      border: Border.all(),
      borderRadius: BorderRadius.all(Radius.circular(3.0)),
    ),

// column of three rows
    child: Column(
// this makes the column height hug its content
      mainAxisSize: MainAxisSize.min,
      children: [
        FirstRow(),
        secondRow(),
        thirdRow,
      ],
    ),
  );
}

class FirstRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(right: 8.0),
          child: Icon(
            Icons.explore,
            color: Colors.green,
          ),
        ),
        Text(
          'Alex Franco',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
