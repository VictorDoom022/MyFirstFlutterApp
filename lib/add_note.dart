import 'package:flutter/material.dart';

class addNote extends StatefulWidget {
  @override
  _addNoteState createState() => _addNoteState();
}

class _addNoteState extends State<addNote> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add note'),
      ),
      body: Column(
        children: <Widget>[
          TextField(
            decoration: InputDecoration(
              labelText: 'Enter your note'
            ),
          ),
          Center(
            child: FlatButton.icon(
                onPressed: null,
                icon: Icon(
                  Icons.add,
                ),
                label: Text(
                  'Add',
                )),
          ),
        ],
      ),
    );
  }
}

