import 'package:flutter/material.dart';

class addNote extends StatefulWidget {
  @override
  _addNoteState createState() => _addNoteState();
}

class _addNoteState extends State<addNote> {

  final _formKey = GlobalKey<FormState>();
  String noteText ="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add note'),
      ),
      body:
          Center(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  TextFormField(
                    validator: (value){
                      if(value.isEmpty){
                        return 'Please enter some text';
                      }else{
                        noteText = value;
                      }
                      return null;
                    },
                  ),
                  RaisedButton(onPressed: (){
                    if(_formKey.currentState.validate()){
                      print('$noteText');
                    }
                  },
                  child: Text('Add')
                  ),
                ],
              ),
            )
          ),


    );
  }
}
