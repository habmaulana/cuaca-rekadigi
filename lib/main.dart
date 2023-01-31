import 'package:cuacarekadigi/modul/binding/cuaca_binding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'modul/view/cuaca_main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cuaca REKADIGI',
      getPages: [
        GetPage(
          name: '/main',
          page: () => const CuacaMain(),
          binding: CuacaBinding()
        )
      ],
      initialRoute: '/main',
    );
  }
}
