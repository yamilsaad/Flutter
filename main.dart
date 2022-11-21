import 'package:flutter/material.dart';
import 'package:botton_navigation/pages/first.dart';
import 'package:botton_navigation/pages/second.dart';
import 'package:botton_navigation/pages/third.dart';

void main() {
  runApp(new MaterialApp(
    home: MyNavigator(),
  ));
}

class MyNavigator extends StatefulWidget {
  @override
  State<MyNavigator> createState() => _MyNavigatorState();
}

class _MyNavigatorState extends State<MyNavigator>
    with SingleTickerProviderStateMixin {
  late TabController controller;
//DEBEMOS DEFINIR A CONTINUACIÓN NUESTRO CONTROLADOR DE LOS TABS:
  @override
  void initState() {
    super.initState();
    //En el TabController "length" espara pasar la cantidad de pestañas, y "vsync" es el contexto que le entrega la animación a nustro controlador!!!
    controller = new TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Botton Navigator Tab"),
        backgroundColor: Colors.black87,
      ),
      body: new TabBarView(
        children: <Widget>[new FirstTab(), new SecondTab(), new ThirdTab()],
        controller: controller,
      ),
      //EL BOTTON NAVEGATIN BAR nos va acolocar las pestañas en el footer!!!
      bottomNavigationBar: new Material(
        color: Colors.black54,
        child: new TabBar(
          tabs: <Tab>[
            new Tab(
              icon: new Icon(Icons.alarm),
            ),
            new Tab(
              icon: new Icon(Icons.watch_later),
            ),
            new Tab(
              icon: new Icon(Icons.airplanemode_active),
            )
          ],
          controller: controller,
        ),
      ),
    );
  }
}
