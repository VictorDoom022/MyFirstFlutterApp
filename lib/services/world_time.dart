import 'package:http/http.dart';
import 'dart:convert';

class WorldTime {
  String location; //location name for UI
  String time; //time in that location
  String flag; //url to flag icon
  String url; //location url for api

  WorldTime({this.location, this.time, this.flag,
      this.url});



  Future <void> getTime() async {
    try{
      //make request
      Response response = await get('http://worldtimeapi.org/api/timezone/$url');
      Map data = jsonDecode(response.body);
      //print(data);

      //get property from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      //print(datetime);
      //print(offset);

      //create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      //set time property
      time = now.toString();
    }catch (e){
      print('Error caught! $e');
      time = 'could not retrive time data';
    }

  }

}

