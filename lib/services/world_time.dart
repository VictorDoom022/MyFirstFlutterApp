import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location; //location name for UI
  String time; //time in that location
  String flag; //url to flag icon
  String url; //location url for api
  bool isDaytime; // if day or night
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
      isDaytime = now.hour > 6 && now.hour < 15 ? true : false;
      time = DateFormat.jm().format(now);
    }catch (e){
      print('Error caught! $e');
      time = 'could not retrive time data';
    }

  }

}

