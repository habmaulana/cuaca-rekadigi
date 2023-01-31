import 'package:cuacarekadigi/modul/model/model_wilayah.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CuacaService extends GetConnect {
  Future<List<MasterWilayah>> getWilayah() async {
    String jsonString =
        await rootBundle.loadString("assets/master_data/data_wilayah.json");
    return masterWilayahFromJson(jsonString);
  }
}
