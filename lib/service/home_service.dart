import 'package:food_id/home/model/home_model.dart';
import 'package:get/get.dart';

class HomeService extends GetConnect{

  Future<Example?> fetchbanner() async {

    var response = await get("http://food.mockable.io/v1/banner");
    // print(response.body);
    if (response.status.hasError) {
      return null;
    } else {
      if (response.statusCode! >= 200 && response.statusCode! < 400) {
        return Example.fromJson(response.body);
      } else {
        return null;
      }
    }
  }


}