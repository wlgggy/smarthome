import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smarthome/ui/widget/sized_widget.dart';

class SplashScreen extends StatefulWidget {
  final _backgroundColor = const Color.fromRGBO(18, 40, 61, 100);

  const SplashScreen({super.key});

  @override
  State<StatefulWidget> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  bool _isFaded = false;

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      setState(() {
        _isFaded = true;
      });
    });
    return Material(
      child: FullSizedBox(
        child: ColoredBox(
          color: widget._backgroundColor,
          child: Center(
            child: AnimatedOpacity(
              opacity: _isFaded ? 1 : 0,
              duration: const Duration(milliseconds: 500),
              child: Text(
                'Smart Home',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
