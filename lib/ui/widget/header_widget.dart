import 'package:flutter/cupertino.dart';

class HeaderTitle extends StatelessWidget {
  const HeaderTitle({
    super.key,
    required String mainText,
    required String subText,
  }) : this._mainText = mainText,
       this._subText = subText;

  final String _mainText;
  final String _subText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(_mainText, style: TextStyle(fontSize: 32, fontWeight: FontWeight.w700)),
        Text(_subText, style: TextStyle(fontSize: 20)),
        Padding(padding: EdgeInsets.only(bottom: 10))
      ],
    );
  }
}
