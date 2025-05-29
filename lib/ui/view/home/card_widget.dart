import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({
    super.key,
    required IconData icon,
    required String name,
    required String battery,
  }) : this._icon = icon,
       this._name = name,
       this._battery = battery;

  final IconData _icon;
  final String _name;
  final String _battery;

  @override
  State<StatefulWidget> createState() => CardWidgetState();
}

class CardWidgetState extends State<CardWidget> {
  bool _isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      height: 160,
      decoration: BoxDecoration(
        color: _isSwitch ? Color.fromARGB(255, 4, 30, 58) : Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(15),
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            widget._icon,
            size: 36,
            color: _isSwitch ? Colors.white : Colors.black,
          ),
          Text(
            widget._name,
            style: TextStyle(
              fontSize: 16,
              color: _isSwitch ? Colors.white : Colors.black,
            ),
          ),
          Text(
            widget._battery,
            style: TextStyle(
              fontSize: 14,
              color:Color.fromARGB(255, 112, 112, 112)
            ),
          ),
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
