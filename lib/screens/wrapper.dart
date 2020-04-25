import 'package:brewcrew/models/user.dart';
import 'package:brewcrew/screens/authenticate/authernticate.dart';
import 'package:brewcrew/screens/home/home.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);
    print(user);

    //return either Home or authenticate widget
    return Authenticate();
  }
}
