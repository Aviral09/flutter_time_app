import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime{
  String time="";
  String location="";
  String flag="";
  String url="";
  bool isDayTime=true;

  WorldTime({required this.location, required this.flag, required this.url});
  Future<void> getTime() async {

    try {
      Response response = await get(Uri.parse('http://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      String datetime = data['datetime'].substring(0,25);
      DateTime now = DateTime.parse(datetime);

      isDayTime = now.hour > 6 && now.hour<20 ? true : false;
      time = DateFormat.jm().format(now);
    }

    catch(e) {
      print('Caught error: $e');
      time = 'Could not get time data';
    }
  }
}