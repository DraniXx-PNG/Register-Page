import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/Contoller/Football_Controller.dart';
import 'package:latihan1/routes/routes.dart';

class FootballPage extends StatelessWidget {
  FootballPage({super.key});
  final FootballController footballController = Get.put(FootballController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Football Players"),
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false, 
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Obx(() => ListView.builder(
              itemCount: footballController.players.length,
              itemBuilder: (context, index) {
                final player = footballController.players[index];
                return ListTile(
                  leading: CircleAvatar(
                    backgroundImage: NetworkImage(player.profileImage),
                  ),
                  onTap: () {
                Get.toNamed(AppRoutes.footballedit,
                  arguments: index ,
                   );
                 },
                  title: Text(player.nama),
                  subtitle:
                      Text("${player.position} • #${player.nomorPunggung}"),
                );
              },
            )),
      ),
    );
  }
}
