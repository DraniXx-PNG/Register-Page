// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:latihan1/Contoller/Home_Controller.dart';
// import 'package:latihan1/Pages/calculator_page.dart';
// import 'package:latihan1/Pages/football_pages.dart';
// import 'package:latihan1/Pages/profile_page.dart';

// class HomePage extends StatelessWidget {
//   HomePage({super.key});
//   final HomeController homeController = Get.put(HomeController());


//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<HomeController>(
//       builder: (controller) {
//         return Scaffold(
//           body: IndexedStack(
//             index: controller.tabindex,
//             children:[
//               Center(child: Text("Selamat Datang", style: TextStyle(fontSize: 24))),
//               CalculatorPage(),
//               FootballPage(),
//               ProfilePage(),
//             ],
//           ),
//           bottomNavigationBar: BottomNavigationBar(
//             currentIndex: controller.tabindex,
//             unselectedItemColor: Colors.black,
//             selectedItemColor: Colors.blueAccent,
//             onTap: controller.changeTabIndex,
//             showSelectedLabels: false,
//             showUnselectedLabels: false,
//             items: const [
//               BottomNavigationBarItem(
//                   icon: Icon(CupertinoIcons.home), label: 'Home'),
//               BottomNavigationBarItem(
//                   icon: Icon(CupertinoIcons.plus), label: 'Calculator'),
//               BottomNavigationBarItem(
//                   icon: Icon(CupertinoIcons.sportscourt), label: 'Football'),
//               BottomNavigationBarItem(
//                   icon: Icon(CupertinoIcons.person), label: 'Profile'),
//             ],
//           ),
//         );
//       },
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/Contoller/Main_Controller.dart';

// Import fragment
import 'package:latihan1/Fragment/home_fragment.dart';
import 'package:latihan1/Fragment/calculator_fragment.dart';
import 'package:latihan1/Fragment/football_fragment.dart';
import 'package:latihan1/Fragment/football_edit_fragment.dart';
import 'package:latihan1/Fragment/profile_fragment.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final MainController  mainController = Get.put(MainController());

  final List<Widget> pages = [
    HomeFragment(),
    CalculatorFragment(),
    FootballFragment(),
    FootballEditFragment(),
    ProfileFragment(),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 68, 149, 216),
            foregroundColor: Colors.white,
            title: Text(
              _getTitle(mainController.selectedIndex.value),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            elevation: 0,
          ),
          drawer: Drawer(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                UserAccountsDrawerHeader(
                  decoration: const BoxDecoration(
                    color: Color.fromARGB(255, 68, 149, 216),
                  ),
                  currentAccountPicture: const CircleAvatar(
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage("aset/image/sae.jpg"),
                    ),
                  ),
                  accountName: const Text(
                    "Rajendra Ghasia Demarco",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  accountEmail: const Text("dranix@example.com"),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("Home"),
                  onTap: () {
                    mainController.changePage(0);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.calculate),
                  title: const Text("Calculator"),
                  onTap: () {
                     mainController.changePage(1);
                    Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.sports_soccer),
                  title: const Text("Football"),
                  onTap: () {
                     mainController.changePage(2);
                    Navigator.pop(context);
                  },
                ),
      
                ListTile(
                  leading: const Icon(Icons.person),
                  title: const Text("Profile"),
                  onTap: () {
                    mainController.changePage(4);
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: Container(
            color: Colors.white,
            child: pages[mainController.selectedIndex.value],
          ),
        ));
  }

  String _getTitle(int index) {
    switch (index) {
      case 0:
        return "Home";
      case 1:
        return "Calculator";
      case 2:
        return "Football";
      case 3:
        return "Football Edit";
      case 4:
        return "Profile";
      default:
        return "";
    }
  }
}
