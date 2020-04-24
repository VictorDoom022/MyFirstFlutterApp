import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:noteapp/add_note.dart';
import 'package:noteapp/home.dart';
import 'package:noteapp/note_card.dart';
import 'package:noteapp/notes.dart';

void main() => runApp(MaterialApp(
  initialRoute: '/',
  routes: {
    '/': (context) => Home(),
    '/addNote': (context) => addNote()
  },
));


