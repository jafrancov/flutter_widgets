import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/screens/page2.dart';

class SecondPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second screen')),
      body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                myLayoutWidget(),
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
