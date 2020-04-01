import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

//Stateless Widget - the state of the widget cannot change over time (Hot-reload)
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      body: Row(
        // -> -> -> (This direction)
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        // down direction
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Text('hello world'),
          FlatButton(
            onPressed: (){},
            color: Colors.amber,
            child: Text('Click me'),
          ),
          Container(
            color: Colors.cyan,
            padding: EdgeInsets.all(30.0),
            child: Text('inside container'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Text('click'),
        backgroundColor: Colors.red[600],
      ),
    );
  }
}
