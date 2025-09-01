import 'package:get/get.dart';
import 'package:latihan1/Fragment/calculator_fragment.dart';
import 'package:latihan1/Fragment/football_edit_fragment.dart';
import 'package:latihan1/Fragment/football_fragment.dart';
import 'package:latihan1/Fragment/home_fragment.dart';
import 'package:latihan1/Fragment/profile_fragment.dart';
import 'package:latihan1/Pages/home_page.dart';
import 'package:latihan1/routes/routes.dart';

class AppPages{
  static final pages = [
    GetPage(name: AppRoutes.calculator, page: () => CalculatorFragment()),
    GetPage(name: AppRoutes.footballplayer, page: () => FootballFragment()),
    GetPage(name: AppRoutes.footballedit, page: () => FootballEditFragment()),
    GetPage(name: AppRoutes.profile, page: () => ProfileFragment()),
    GetPage(name: AppRoutes.home, page: () => HomeFragment()),
    GetPage(name: AppRoutes.main, page: () => HomePage())
  ];

}