import 'package:cuacarekadigi/modul/controller/cuaca_controller.dart';
import 'package:get/get.dart';

class CuacaBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(CuacaController());
  }
}
