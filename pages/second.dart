import 'dart:js_util';

import 'package:flutter/material.dart';

class SecondTab extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.orange.shade300,
      body: new Container(
        child: new Center(
          child: Column(
            //center the children
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Icon(
                Icons.watch_later,
                size: 160.0,
                color: Colors.white,
              ),
              new Text(
                "Segundo Tab",
                style: new TextStyle(color: Colors.white),
              )
            ],
          ),
        ),
      ),
    );
  }
}
