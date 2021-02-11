import 'package:flutter/material.dart';
import 'package:programacion_esp/widgets/CustomCard.dart';
import 'package:programacion_esp/widgets/CustomText.dart';
import 'package:programacion_esp/models/Tools.dart';

class ToolsList extends StatefulWidget {
  @override
  _ToolsListState createState() => _ToolsListState();
}

class _ToolsListState extends State<ToolsList> {
  List<Tools> tools = [Tools(name: 'NodeJS'), Tools(name: 'Angular'), Tools(name: 'React'), Tools(name: 'Flutter')];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: tools.map((item) {
        return CustomCard(
            tool: item,
            delete: () {
              setState(() {
                tools.remove(item);
              });
            });
      }).toList(),
    );
  }
}
