import 'package:calculator/controllers/ExpressionController.dart';
import 'package:calculator/widgets/ButtonLayout.dart';
import 'package:calculator/widgets/ExpressionContainer.dart';
import 'package:calculator/widgets/ExpressionValue.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  // memanggil controller
  final expressionController = Get.put(ExpressionController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: Get.height,
        width: Get.width,
        child: Column(
          children: [
            // Container untuk Nilai Perhitungan
            ExpressionContainer(),
            // Container untuk Nilai Hasil Perhitungan
            ExpressionValue(),
            // Layout untuk tombol angka
            ButtonLayout(),
          ],
        ),
      ),
    );
  }
}
