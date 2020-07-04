import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/screens/page1.dart';

class FirstPageScreen extends StatelessWidget {
  final String text;
  FirstPageScreen({Key key, @required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second screen')),
      body: Center(
          child: Container(
        child: Column(
          children: <Widget>[
            myWidget(),
            Text('Data from P1 $text'),
            RaisedButton(
              child: Text(
                'Go back to first screen',
                style: TextStyle(fontSize: 24),
              ),
              onPressed: () {
                _goBackToFirstScreen(context);
              },
            )
          ],
        ),
      )),
    );
  }

  void _goBackToFirstScreen(BuildContext context) {
    Navigator.pop(context);
  }
}
