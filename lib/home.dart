import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/note_card.dart';
import 'package:noteapp/notes.dart';
import 'main.dart';

class Home extends StatefulWidget{
  _Home createState() => _Home();
}

class _Home extends State<Home>{

  List<Notes> notesList= [
    Notes(note: 'test'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note Taking App'),
        centerTitle: false,
      ),
      body: Column(
        children: notesList.map((note) => noteCard(
          notes: note,
          delete: (){
            setState(() {
              notesList.remove(note);
            });
          },
          add: (){
            Navigator.pushNamed(context, '/addNote');
          },
        )).toList(),
      ),
    );
  }
}