import 'package:calculator/controllers/ExpressionController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExpressionButton extends StatelessWidget {
  final String val;

  ExpressionButton(this.val);
  ExpressionController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      alignment: Alignment.center,
      width: Get.width * 0.20,
      height: Get.height * 0.20,
      child: TextButton(
        onPressed: () {
          // Binding the eval exp functionality
          controller.evalExp();
        },
        child: Text(
          this.val.toString(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
