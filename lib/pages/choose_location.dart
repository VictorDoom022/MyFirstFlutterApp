import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  void getData() async {
    //simulate network request for a username
    String username = await Future.delayed(Duration(seconds: 3),(){
      return 'ZeName';
    });

    //simulate network request to get bio of username
    String bio = await Future.delayed(Duration(seconds: 2),(){
      return 'vegan';
    });
    print('$username - $bio');
    
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getData();
    print('hey there');
  }

  @override
  Widget build(BuildContext context) {
    print('build function ran...');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),

    );
  }
}
