import 'package:flutter/material.dart';
import 'package:smarthome/ui/widget/sized_widget.dart';

import '../../widget/header_widget.dart';
import '../routines/card_widget.dart';

class RoutinesView extends StatefulWidget {
  const RoutinesView({super.key});

  @override
  State<StatefulWidget> createState() => RoutinesViewState();
}

class RoutinesViewState extends State<RoutinesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        // height: 300,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: HeaderTitle(
                mainText: 'Routines',
                subText: 'Set a routine and live a smart life',
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                children: [
                  CardWidget(
                    title: 'Good Morning',
                    day: 'Every day',
                    time: 'AM 6:00',
                  ),
                  CardWidget(
                    title: 'Good Morning',
                    day: 'Every day',
                    time: 'AM 6:00',
                  ),
                  CardWidget(
                    title: 'Good Morning',
                    day: 'Every day',
                    time: 'AM 6:00',
                  ),
                  CardWidget(
                    title: 'Good Morning',
                    day: 'Every day',
                    time: 'AM 6:00',
                  ),
                  CardWidget(
                    title: 'Good Morning',
                    day: 'Every day',
                    time: 'AM 6:00',
                  ),
                  CardWidget(
                    title: 'Good Morning',
                    day: 'Every day',
                    time: 'AM 6:00',
                  ),
                  CardWidget(
                    title: 'Good Morning',
                    day: 'Every day',
                    time: 'AM 6:00',
                  ),
                  CardWidget(
                    title: 'Good Morning',
                    day: 'Every day',
                    time: 'AM 6:00',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
