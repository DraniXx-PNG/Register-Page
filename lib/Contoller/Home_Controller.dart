import 'package:get/get.dart';

class HomeController extends GetxController{
  var tabindex = 0;

  void changeTabIndex(int index){
    tabindex = index;
    update();
  }
}