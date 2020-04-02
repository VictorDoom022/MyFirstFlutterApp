import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {

    data = ModalRoute.of(context).settings.arguments;
    print(data);

    //set background
    String bgImage = data['isDaytime'] ? 'day.jpg' : 'night.jfif';
    Color bgColor = data['isDaytime'] ? Colors.blue : Colors.indigo[700];
    Color bgColorText = data ['isDaytime'] ? Colors.black : Colors.white;

    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/$bgImage'),
                fit: BoxFit.cover,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
              child: Column(
                children: <Widget>[
                  FlatButton.icon(
                      onPressed: (){
                        Navigator.pushNamed(context, '/location');
                      },
                      icon: Icon(
                          Icons.edit_location,
                          color: bgColorText,
                      ),
                      label: Text(
                          'Change Location',
                            style: TextStyle(
                              color: bgColorText,
                            ),
                      ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        data['location'],
                        style: TextStyle(
                          fontSize: 28.0,
                          letterSpacing: 2.0,
                          color: bgColorText
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 20),
                  Text(
                    data['time'],
                    style: TextStyle(
                      fontSize: 66.0,
                      color: bgColorText,
                    ),
                  ),
                ],
              ),
            ),
          )
      ),
    );
  }
}
