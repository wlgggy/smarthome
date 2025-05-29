import 'package:flutter/material.dart';

class FullSizedBox extends SizedBox {
  const FullSizedBox({super.key, super.child})
    : super(height: double.infinity, width: double.infinity);
}

class FullHeight extends SizedBox {
  const FullHeight({super.key, super.child, super.width})
    : super(height: double.infinity);
}

class FullWidthBox extends SizedBox {
  const FullWidthBox({super.key, super.child, super.height})
    : super(width: double.infinity);
}

/*class FullWidthBox extends StatelessWidget {
  final Widget? child;
  final double? height;

  const FullWidthBox({super.key, this.child, this.height});

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: double.infinity);
  }
}*/
