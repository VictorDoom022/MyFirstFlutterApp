import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:worldtime/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void setupWorldTime() async{
    WorldTime instance = WorldTime(location: 'Kuala_Lumpur', flag: 'malaysia.png',url: 'Asia/Kuala_Lumpur');
    await instance.getTime();
    Navigator.pushReplacementNamed(context, '/home',arguments: {
      'location' :instance.location,
      'flag' : instance.flag,
      'time' : instance.time
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Center(
        child: SpinKitWave(
          color: Colors.white,
          size: 70.0,
        ),
      )
    );
  }
}
