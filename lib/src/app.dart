import 'package:flutter/material.dart';
import 'package:flutter_widgets/src/screens/first_page_screen.dart';
import 'package:flutter_widgets/src/screens/second_page_screen.dart';
import 'package:flutter_widgets/src/screens/third_page_screen.dart';

// import 'package:flutter_widgets/src/screens/page1.dart';
// import 'package:flutter_widgets/src/screens/page2.dart';
//import 'package:flutter_widgets/src/screens/page3.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
            appBar: AppBar(
              title: Text('Material App Bar'),
            ),
//        body: myWidget(),
//        body: myLayoutWidget(),
//        body: MyWidget(),
            body: Builder(
              builder: (context) => Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      onPressed: () {
                        _navigateToFirstPageScreen(context, 1);
                      },
                      child: Text('Page 1'),
                      color: Colors.yellow,
                    ),
                    RaisedButton(
                      onPressed: () {
                        _navigateToFirstPageScreen(context, 2);
                      },
                      child: Text('Page 2'),
                      color: Colors.green,
                    ),
                    RaisedButton(
                      onPressed: () {
                        _navigateToFirstPageScreen(context, 3);
                      },
                      child: Text('Page 3'),
                      color: Colors.lightBlue,
                    ),
                  ],
                ),
              ),
            )));
  }

  void _navigateToFirstPageScreen(BuildContext context, int pageNumber) {
    Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            switch(pageNumber) {
              case 1: {
                return FirstPageScreen(text: 'Alex',);
              }
              break;

              case 2: {
                return SecondPageScreen();
              }
              break;

              case 3: {
                return ThirdPageScreen();
              }
              break;

              default: {
                return FirstPageScreen(text: 'Alex',);
              }
              break;
            }

          },
        ));
  }
}
