import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/Contoller/Home_Controller.dart';
import 'package:latihan1/Pages/calculator_page.dart';
import 'package:latihan1/Pages/football_pages.dart';
import 'package:latihan1/Pages/profile_page.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final HomeController homeController = Get.put(HomeController());


  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        return Scaffold(
          body: IndexedStack(
            index: controller.tabindex,
            children:[
              Center(child: Text("Selamat Datang", style: TextStyle(fontSize: 24))),
              CalculatorPage(),
              FootballPage(),
              ProfilePage(),
            ],
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.tabindex,
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.blueAccent,
            onTap: controller.changeTabIndex,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.home), label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.plus), label: 'Calculator'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.sportscourt), label: 'Football'),
              BottomNavigationBarItem(
                  icon: Icon(CupertinoIcons.person), label: 'Profile'),
            ],
          ),
        );
      },
    );
  }
}
