import 'package:calculator/controllers/ExpressionController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

// This button represents the different buttons that are required in the calculator app
class ValueButton extends StatelessWidget {
  final String val;

  ValueButton(this.val);
  ExpressionController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Get.width * 0.25,
      height: Get.height * 0.10,
      child: TextButton(
        onPressed: () {
          controller.changeExp(val.toString());
        },
        child: Text(
          this.val.toString(),
          style: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
