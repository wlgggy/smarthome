import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget({super.key, required String title}) : this._title = title;

  final String _title;

  @override
  State<StatefulWidget> createState() => SwitchWidgetState();
}

class SwitchWidgetState extends State<SwitchWidget> {
  bool _isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(widget._title),
          Switch(
            value: _isSwitch,
            onChanged: (isChecked) {
              setState(() {
                _isSwitch = isChecked;
              });
            },
          ),
        ],
      ),
    );
  }
}
