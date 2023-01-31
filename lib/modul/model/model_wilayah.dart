// To parse this JSON data, do
//
//     final masterWilayah = masterWilayahFromJson(jsonString);

import 'dart:convert';

List<MasterWilayah> masterWilayahFromJson(String str) => List<MasterWilayah>.from(json.decode(str).map((x) => MasterWilayah.fromJson(x)));

String masterWilayahToJson(List<MasterWilayah> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class MasterWilayah {
    MasterWilayah({
        this.id,
        this.propinsi,
        this.kota,
        this.kecamatan,
        this.lat,
        this.lon,
    });

    String? id;
    String? propinsi;
    String? kota;
    String? kecamatan;
    String? lat;
    String? lon;

    factory MasterWilayah.fromJson(Map<String, dynamic> json) => MasterWilayah(
        id: json["id"],
        propinsi: json["propinsi"],
        kota: json["kota"],
        kecamatan: json["kecamatan"],
        lat: json["lat"],
        lon: json["lon"],
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "propinsi": propinsi,
        "kota": kota,
        "kecamatan": kecamatan,
        "lat": lat,
        "lon": lon,
    };
}
