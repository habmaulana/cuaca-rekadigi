import 'package:cuacarekadigi/modul/controller/cuaca_controller.dart';
import 'package:cuacarekadigi/modul/view/list_item_jam_cuaca.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';

class CuacaMain extends GetView<CuacaController> {
  const CuacaMain({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xff6A59FC),
                      Color(0xff5C92F3),
                    ])),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        child: Text(
                      "Kota ",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    )),
                    Container(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                          Text(
                            "27 ",
                            style:
                                TextStyle(fontSize: 109, color: Colors.white),
                          ),
                          Text(
                            "o",
                            style: TextStyle(color: Colors.white),
                            textAlign: TextAlign.start,
                          )
                        ])),
                    Container(
                        child: Text(
                      "Jum;at, 29 Januari 2021 ",
                      style: TextStyle(color: Colors.white, fontSize: 13),
                    )),
                    Container(
                        child: Text(
                      "Cerah Berawan ",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )),
                    Container(
                      child: Image.network(
                          "https://ibnux.github.io/BMKG-importer/icon/3.png"),
                    ),
                  ],
                ),
              ),
              Flexible(
                child: DefaultTabController(
                  length: 2,
                  child: Scaffold(
                      appBar: AppBar(
                        backgroundColor: Colors.white,
                        // centerTitle: true,
                        bottom: PreferredSize(
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: TabBar(
                                  labelPadding:
                                      EdgeInsets.only(left: 10, right: 10),
                                  // mouseCursor: MouseCursor.uncontrolled,
                                  isScrollable: true,
                                  labelColor: Colors.black,
                                  unselectedLabelColor:
                                      Colors.black.withOpacity(0.5),
                                  indicatorColor: Colors.black,
                                  tabs: [
                                    Tab(
                                      child: Text('Hari Ini'),
                                    ),
                                    Tab(
                                      child: Text('Besok'),
                                    ),
                                  ]),
                            ),
                            preferredSize: Size.fromHeight(0.0)),
                      ),
                      body: TabBarView(
                        physics: NeverScrollableScrollPhysics(),
                        // physics: AlwaysScrollableScrollPhysics(),
                        children: <Widget>[],
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
