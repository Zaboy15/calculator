import 'package:get/get.dart';
import 'package:math_expressions/math_expressions.dart';

class ExpressionController extends GetxController {
  String exp = "";
  String expVal = "";
  bool isStart = true;

  void changeExp(String s) {
    if (isStart == true) {
      exp == "";
      update();
      changeIsStart(false);
    }
    exp += s;
    update();
  }

  void changeIsStart(bool val) {
    isStart = val;
  }

  // hapus semua state data
  void resetExp() {
    exp = "";
    expVal = "";
    update();
  }

  // fungsi untuk hapus karakter
  void eraseCharacter() {
    if (exp != null && exp.length > 0) {
      exp = exp.substring(0, exp.length - 1);
      update();
      changeIsStart(false);
    }
  }

  // fungsi untuk menghitung
  void evalExp() {
    Parser p = Parser();
    Expression expV = p.parse(exp);
    ContextModel cm = ContextModel();
    expVal = expV.evaluate(EvaluationType.REAL, cm).toString();
    update();
    changeIsStart(true);
  }
}
