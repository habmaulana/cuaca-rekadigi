import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ListItemJamCuaca extends StatelessWidget {
  const ListItemJamCuaca({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Container(
            child: Text("00"),
          ),
          Container(
            child: Image.network(""),
          ),
          Container(
            child: Row(children: [Text("25"), Text("o")]),
          )
        ],
      ),
    );
  }
}
