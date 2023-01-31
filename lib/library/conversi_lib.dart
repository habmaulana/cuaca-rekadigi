import 'dart:convert';
import 'dart:typed_data';

import 'package:intl/intl.dart';

class ConversiLib {
  String conversiPeriode(String periode) {
    String tahun = periode.substring(0, 4);
    String bulan = periode.substring(4);
    // print(bulan);
    String month = "";
    switch (bulan) {
      case "01":
        month = "Januari";
        break;
      case "02":
        month = "Februari";
        break;
      case "03":
        month = "Maret";
        break;
      case "04":
        month = "April";
        break;
      case "05":
        month = "Mei";
        break;
      case "06":
        month = "Juni";
        break;
      case "07":
        month = "Juli";
        break;
      case "08":
        month = "Agustus";
        break;
      case "09":
        month = "September";
        break;
      case "10":
        month = "Oktober";
        break;
      case "11":
        month = "November";
        break;
      case "12":
        month = "Desember";
        break;
    }
    return "$month $tahun";
  }

  String bulanIndo(String bulan) {
    String month = "";
    switch (bulan) {
      case "01":
        month = "Januari";
        break;
      case "02":
        month = "Februari";
        break;
      case "03":
        month = "Maret";
        break;
      case "04":
        month = "April";
        break;
      case "05":
        month = "Mei";
        break;
      case "06":
        month = "Juni";
        break;
      case "07":
        month = "Juli";
        break;
      case "08":
        month = "Agustus";
        break;
      case "09":
        month = "September";
        break;
      case "10":
        month = "Oktober";
        break;
      case "11":
        month = "November";
        break;
      case "12":
        month = "Desember";
        break;
    }

    return month;
  }

  String datebenar(DateTime tm) {
    String month = "";
    switch (tm.month) {
      case 1:
        month = "Januari";
        break;
      case 2:
        month = "Februari";
        break;
      case 3:
        month = "Maret";
        break;
      case 4:
        month = "April";
        break;
      case 5:
        month = "Mei";
        break;
      case 6:
        month = "Juni";
        break;
      case 7:
        month = "Juli";
        break;
      case 8:
        month = "Agustus";
        break;
      case 9:
        month = "September";
        break;
      case 10:
        month = "Oktober";
        break;
      case 11:
        month = "November";
        break;
      case 12:
        month = "Desember";
        break;
    }
    String jam = tm.hour.toString();
    if (jam.length == 1) {
      jam = "0$jam";
    }
    String menit = tm.minute.toString();
    if (menit.length == 1) {
      menit = "0$menit";
    }
    String detik = tm.second.toString();
    if (detik.length == 1) {
      detik = "0$detik";
    }
    // return '${tm.day} $month ${tm.year} - $jam : $menit : $detik';

    return '${tm.day} $month ${tm.year}';
  }

  String covertDateString(String data) {
    var split = data.split('-');
    var hasil = "";
    if (split.length > 2) {
      hasil = "${split[2]} ${ConversiLib().bulanIndo(split[1])} ${split[0]}";
    }
    return hasil;
  }

  String covertDateTimeString(String data) {
    var splitdatetime = data.split(" ");

    var split = splitdatetime[0].split('-');
    var hasil = "";
    if (split.length > 2) {
      hasil = "${split[2]} ${ConversiLib().bulanIndo(split[1])} ${split[0]}";
      if (splitdatetime.length > 1) {
        hasil = "${split[2]} ${ConversiLib().bulanIndo(split[1])} ${split[0]} ${splitdatetime[1]}";
      }
    }
    return hasil;
  }

  String currency(number) {
    final num = NumberFormat.currency(locale: "ID", symbol: "", decimalDigits: 0);
    String fix = num.format(number);
    return fix;
  }

  String base64String(Uint8List data) {
    return base64Encode(data);
  }

  String removeAllHtmlTags(String htmlText) {
    RegExp exp = RegExp(r"<[^>]*>", multiLine: true, caseSensitive: true);

    return htmlText.replaceAll(exp, '');
  }
}
