import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/screens/page3.dart';

class ThirdPageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second screen')),
      body: Center(
          child: Container(
            child: Column(
              children: <Widget>[
                MyWidget(),
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
