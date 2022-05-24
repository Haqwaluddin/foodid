import 'package:food_id/home/model/home_model.dart';
import 'package:food_id/service/home_service.dart';
import 'package:get/get.dart';


class HomeController extends GetxController{

  late final datab = List<Data>.empty().obs;
  var isloading = true.obs;

  @override
  void onInit() {
    databanner();
    super.onInit();
  }

  void databanner() async {
    final response = await HomeService().fetchbanner();
    var dataa = response?.data;
    datab.value = dataa!;
    isloading(false);
  }


}