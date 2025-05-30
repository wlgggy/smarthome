import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key, required String title}) : this._title = title;

  final String _title;

  @override
  State<StatefulWidget> createState() => CardWidgetState();
}

class CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [Text(widget._title), Icon(Icons.arrow_forward_ios)],
      ),
    );
  }
}
