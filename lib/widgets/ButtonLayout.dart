import 'package:calculator/controllers/ExpressionController.dart';
import 'package:calculator/widgets/ExpressionButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'ValueButton.dart';

class ButtonLayout extends StatelessWidget {
  ExpressionController expController = Get.find();
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.grey[200],
        child: Row(
          children: [
            Column(
              children: [
                Container(
                  width: Get.width * 0.25,
                  height: Get.height * 0.10,
                  child: IconButton(
                    onPressed: () {
                      expController.eraseCharacter();
                    },
                    icon: Icon(
                      Icons.backspace,
                      color: Colors.black,
                      size: 30.0,
                    ),
                  ),
                ),
                ValueButton("7"),
                ValueButton("4"),
                ValueButton("1"),
                ValueButton("."),
              ],
            ),
            Column(
              children: [
                Container(
                  width: Get.width * 0.25,
                  height: Get.height * 0.10,
                  child: TextButton(
                    onPressed: () {
                      expController.resetExp();
                    },
                    child: Text(
                      "AC",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                ValueButton("8"),
                ValueButton("5"),
                ValueButton("2"),
                ValueButton("0"),
              ],
            ),
            Column(
              children: [
                ValueButton("/"),
                ValueButton("9"),
                ValueButton("6"),
                ValueButton("3"),
                ValueButton(""),
              ],
            ),
            Column(
              children: [
                ValueButton("*"),
                ValueButton("+"),
                ValueButton("-"),
                ExpressionButton("="),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
