import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconWidget extends StatefulWidget {
  const IconWidget({super.key, required IconData icon, required String name})
    : this._icon = icon,
      this._name = name;

  final IconData _icon;
  final String _name;

  @override
  State<StatefulWidget> createState() => IconWidgetState();
}

class IconWidgetState extends State<IconWidget> {
  bool _isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 75,
      height: 100,
      child: Column(
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _isSwitch = !_isSwitch;
              });
            },
            child: Container(
              width: 75,
              height: 75,
              decoration: BoxDecoration(
                color: _isSwitch ? Color.fromARGB(255, 4, 30, 58) : Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Icon(
                widget._icon,
                size: 55,
                color: _isSwitch ? Colors.white : Colors.black,
              ),
            ),
          ),
          Text(
            widget._name,
            style: TextStyle(
              fontSize: 12,
              fontWeight: _isSwitch ? FontWeight.w600 : FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
