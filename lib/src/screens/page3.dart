import 'dart:math';

import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

/*
class _MyWidgetState extends State<MyWidget> {

  String _textString = 'Hello world';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _textString,
          style: TextStyle(fontSize: 30),
        ),
        RaisedButton(
          child: Text('Button'),
          onPressed: () {
            _doSomething();
          },
        ),
      ],
    );
  }

  void _doSomething() {
    setState(() {
      _textString = 'Hello Flutter';
    });
  }
}
*/

/*
class _MyWidgetState extends State<MyWidget> {
  String _textString = 'Hello world';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _textString,
          style: TextStyle(fontSize: 30),
        ),
        TextField(
          onChanged: (text) {
            _doSomething(text);
          },
        )
      ],
    );
  }

  void _doSomething(String text) {
    setState(() {
      _textString = text;
    });
  }
}
*/

/*
class _MyWidgetState extends State<MyWidget> {
  bool _checkedValue = false;
  String _lblCheckBox = 'this is my title';

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      title: Text(_lblCheckBox),
      value: _checkedValue,
      onChanged: (newValue) {
        _doSomething(newValue);
      },
      // setting the controlAffinity to leading makes the checkbox come
      // before the title instead of after it
      controlAffinity: ListTileControlAffinity.leading,
    );
  }

  void _doSomething(bool isChecked) {
    setState(() {
      _checkedValue = isChecked;
      if (_checkedValue) {
        _lblCheckBox = 'this is my title (checked)';
      } else {
        _lblCheckBox = 'this is my title';
      }
    });
  }
}
*/

/*
class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Button'),
      onPressed: () {
        _showAlertDialog();
      },
    );
  }

  void _showAlertDialog() {
    // construye el botón para cerrar o regresar a la vista inmediata anterior
    Widget okButton = FlatButton(
      child: Text("OK"),
      onPressed: () {
        // This closes the dialog. `context` means the BuildContext, which is
        // available by default inside of a State object. If you are working
        // with an AlertDialog in a StatelessWidget, then you would need to
        // pass a reference to the BuildContext.
        Navigator.pop(context);
      },
    );

    // configura la alerta con mensaje y acciones (botón)
    AlertDialog alert = AlertDialog(
      title: Text("Dialog title"),
      content: Text("This is a Flutter AlertDialog."),
      actions: [
        okButton,
      ],
    );

    // Acción que muestra el diálogo, no es una declaración de función,
    // sino parte del código a ejecturar con esa función show Dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
*/

class _MyWidgetState extends State<MyWidget> {

  Color textColor = Colors.black;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(  //                  <--- GestureDetector
      child: Text(
        'Double tap me',
        style: TextStyle(
          fontSize: 30,
          color: textColor,
        ),
      ),
      onDoubleTap: () {  //                            <--- onTap
        _doSomething();
      },
    );
  }

  void _doSomething() {
    setState(() {
      // have to import 'dart:math' in order to use Random()
      int randomHexColor = Random().nextInt(0xFFFFFF);
      int opaqueColor = 0xFF000000 + randomHexColor;
      textColor = Color(opaqueColor);
    });
  }
}