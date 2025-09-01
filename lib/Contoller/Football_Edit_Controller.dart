import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:latihan1/Contoller/Football_Controller.dart';
import 'package:latihan1/models/player.dart';

class FootballEditController extends GetxController {
  final footballController = Get.find<FootballController>();

  late TextEditingController namaController;
  late TextEditingController positionController;
  late TextEditingController nomorController;
  late TextEditingController imageController;

  late int playerIndex;

  @override
  void onInit() {
    super.onInit();

    
    playerIndex = (Get.arguments ?? 0) as int;

   
    final Player player = footballController.players[playerIndex];

  
    namaController = TextEditingController(text: player.nama);
    positionController = TextEditingController(text: player.position);
    nomorController =
        TextEditingController(text: player.nomorPunggung.toString());
    imageController = TextEditingController(text: player.profileImage);
  }

  void savePlayer() {
    final updatedPlayer = Player(
      profileImage: imageController.text,
      nama: namaController.text,
      position: positionController.text,
      nomorPunggung: int.tryParse(nomorController.text) ?? 0,
    );

    // update data player di controller utama
    footballController.players[playerIndex] = updatedPlayer;
    footballController.players.refresh();

    // kembali ke halaman sebelumnya
    Get.back();
  }

  @override
  void onClose() {
    namaController.dispose();
    positionController.dispose();
    nomorController.dispose();
    imageController.dispose();
    super.onClose();
  }
}
