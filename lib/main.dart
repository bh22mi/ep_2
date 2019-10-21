import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FlutterAhm"),
      ),
      body: Row(
        children: <Widget>[
          Expanded(child: ColorBox(Colors.blue)),
          SizedBox(
            width: 100,
            child: ColorBox(Colors.lime),
          ),
          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: ColorBox(Colors.cyan),
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 2,
            child: ColorBox(Colors.purpleAccent),
          ),
          ColorBox(Colors.red),
        ],
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  Color color;

  ColorBox(this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: color,
        border: Border.all(),
      ),
    );
  }
}
