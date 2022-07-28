import 'package:http/http.dart';
import 'dart:convert';


class WorldTime {

  late String anthoLocation; // Location name for the UI
  late String anthoTime; // the time in that location
  late String anthoFlag; // Url for an flag icon
  late String anthoUrl; // Location url for API

  WorldTime({ required this.anthoLocation, required this.anthoFlag, required this.anthoUrl});

  // void en temps normal, Future<void> ici car cela nous permettra d'utiliser le keyword "await"
  // dans les autres fichiers dans lesquelles cette class est appelée (voir loading.dart)
  Future<void> getTime() async {

    try{
      Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezones/$anthoUrl'));
      Map data = jsonDecode(response.body);
      // print(data);

      // Get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1,3);
      // print(datetime);
      // print(offset);

      // Create dateTime Object
      DateTime now = DateTime.parse(datetime);
      now.add(Duration(hours: int.parse(offset)));

      // Set the anthoTime property
      anthoTime = now.toString();
    }
    catch (e){
      print('caught error: $e');
    }
  }
}