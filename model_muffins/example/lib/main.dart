import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:example/models/http_model.dart';
import 'package:example/models/method_model.dart';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Future<void> _callHTTP() async {

    try {
      var response = await DefaultAssetBundle.of(context).loadString('example.json');

      List<HTTPModel>listModel = jsonDecode(response);

      var model = HTTPModel.fromJson(response);
      print('model : ${model.foo}');
      var toPush = model.toJson();

      HTTPModel.fromJson(toPush);
    } on Exception catch (e) {
      print(e);
    }

    setState(() {
      
    });
  }

  void _callMethod() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            /// This is the code for the HTTP caller row
            Row(
              children: [
                Text(
                  'Data from HTTP:',
                ),
                Text(
                  '',
                  style: Theme.of(context).textTheme.headline4,
                ),
                FloatingActionButton(
                  onPressed: _callHTTP,
                  tooltip: 'HTTP',
                  child: Icon(Icons.add),
                ),
              ],
            ),

            /// This is the code for the method caller row
            Row(
              children: [
                Text(
                  'Data from Method:',
                ),
                Text(
                  '',
                  style: Theme.of(context).textTheme.headline4,
                ),
                FloatingActionButton(
                  onPressed: _callMethod,
                  tooltip: 'Method',
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
