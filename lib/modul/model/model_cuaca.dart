// To parse this JSON data, do
//
//     final masterCuaca = masterCuacaFromJson(jsonString);

import 'dart:convert';

List<MasterCuaca> masterCuacaFromJson(String str) => List<MasterCuaca>.from(
    json.decode(str).map((x) => MasterCuaca.fromJson(x)));

String masterCuacaToJson(List<MasterCuaca> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MasterCuaca {
  MasterCuaca({
    this.jamCuaca,
    this.kodeCuaca,
    this.cuaca,
    this.humidity,
    this.tempC,
    this.tempF,
  });

  DateTime? jamCuaca;
  String? kodeCuaca;
  String? cuaca;
  String? humidity;
  String? tempC;
  String? tempF;

  factory MasterCuaca.fromJson(Map<String, dynamic> json) => MasterCuaca(
        jamCuaca:
            json["jamCuaca"] == null ? null : DateTime.parse(json["jamCuaca"]),
        kodeCuaca: json["kodeCuaca"],
        cuaca: json["cuaca"],
        humidity: json["humidity"],
        tempC: json["tempC"],
        tempF: json["tempF"],
      );

  Map<String, dynamic> toJson() => {
        "jamCuaca": jamCuaca?.toIso8601String(),
        "kodeCuaca": kodeCuaca,
        "cuaca": cuaca,
        "humidity": humidity,
        "tempC": tempC,
        "tempF": tempF,
      };
}
