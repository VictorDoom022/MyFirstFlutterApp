import 'package:flutter/material.dart';
import 'notes.dart';

class noteCard extends StatelessWidget{

  final Notes notes;
  final Function delete;
  final Function add;
  noteCard({this.notes, this.delete, this.add});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            notes.note,
            style: TextStyle(
              fontSize: 20.0
            ),
          ),
          SizedBox(height: 5.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton.icon(
                onPressed: add,
                icon: Icon(Icons.add),
                label: Text('add'),
              ),
              FlatButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('delete'),
              )
            ],
          ),

        ],
      ),
    );
  }

}