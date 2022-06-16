
import 'package:geolocator/geolocator.dart';

class LocationHelper {

 static Future<Position> getCurrentLocation ()async {
    bool isServicedEnable = await Geolocator.isLocationServiceEnabled();
    if(!isServicedEnable){
      await Geolocator.requestPermission();
    }
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

}
