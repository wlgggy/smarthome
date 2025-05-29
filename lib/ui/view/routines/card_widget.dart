import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({
    super.key,
    required String title,
    required String day,
    required String time,
  }) : this._title = title,
       this._day = day,
       this._time = time;

  final String _title;
  final String _day;
  final String _time;

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
      padding: EdgeInsets.only(left :10),
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 5,
        children: [
          Padding(padding: EdgeInsets.only(top: 5)),
          Text(
            widget._title,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: _isSwitch ? Colors.white : Colors.black),
          ),
          Container(
            child: Row(
              spacing: 5,
              children: [
                Icon(
                  Icons.calendar_month_outlined,
                  color: Color.fromARGB(255, 112, 112, 112),
                ),
                Text(
                  widget._day,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 112, 112, 112),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              spacing: 5,
              children: [
                Icon(
                  Icons.timer_outlined,
                  color: Color.fromARGB(255, 112, 112, 112),
                ),
                Text(
                  widget._time,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color.fromARGB(255, 112, 112, 112),
                  ),
                ),
              ],
            ),
          ),
          Switch(value: _isSwitch, onChanged: (isChecked) {
            setState(() {
              _isSwitch = isChecked;

            });
          }),
        ],
      ),
    );
  }
}
