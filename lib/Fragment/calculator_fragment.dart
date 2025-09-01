import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:latihan1/Contoller/Calculator_Controller.dart';
import 'package:latihan1/widget/widget_button.dart';
import 'package:latihan1/widget/widget_controller.dart';

class CalculatorFragment extends StatelessWidget {
CalculatorFragment({super.key});

final CalculatorController calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
        title: Text("Calculator"),
        backgroundColor: Colors.blue,
        automaticallyImplyLeading: false, 
      ),
    body: Container(
    child: Column(
    children: [
      MyTextField(textEditingController: calculatorController.txtAngka1, labelText: "Inputan Angka 1", IsPassword: false),
      MyTextField(textEditingController: calculatorController.txtAngka2, labelText: "Inputan Angka 2", IsPassword: false),

      Container(
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            CustomButton(text: "+", textColor: Colors.blue, onPressed: (){
            calculatorController.tambah();
            }),
            CustomButton(text: "-", textColor: Colors.red, onPressed: (){
            calculatorController.kurang();
            }),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            CustomButton(text: "x", textColor: Colors.yellow, onPressed: (){
            calculatorController.kali();
            }),
            CustomButton(text: "/", textColor: Colors.green, onPressed: (){
            calculatorController.bagi();
            }),
          ],
        ),
      ),
      Obx(() => Text("Hasil "+calculatorController.hasil.value)),
      CustomButton(
            text: "Reset",
            textColor: Colors.green,
            onPressed: () {
              calculatorController.clear();
            },
          ),       
        ],
      ),
    ),
  );
    
  }
}