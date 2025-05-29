import 'package:flutter/material.dart';
import 'package:smarthome/ui/widget/sized_widget.dart';

import '../../widget/header_widget.dart';
import 'card_widget.dart';
import 'icon_widget.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<StatefulWidget> createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 10,
          children: [
            Container(child: HeaderTitle(mainText: 'Hi Heosu', subText: 'Welcome to your sweet Home')),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                spacing: 15,
                children: [
                  IconWidget(
                    icon: Icons.weekend_outlined,
                    name: 'Living Room',
                  ),
                  IconWidget(
                    icon: Icons.dining_outlined,
                    name: 'Dining Room',
                  ),
                  IconWidget(
                    icon: Icons.bed_outlined,
                    name: 'Bed Room',
                  ),
                  IconWidget(
                    icon: Icons.bathtub_outlined,
                    name: 'Bath Room',
                  ),
                  IconWidget(
                    icon: Icons.weekend,
                    name: 'Living Room',
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(5),
              child: Row(
                children: [
                  Text('Devices', style: TextStyle(fontSize: 20)),
                  Icon(Icons.chevron_right),
                ],
              ),
            ),
            SingleChildScrollView(
              child: Row(
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          CardWidget(
                            icon: Icons.mic,
                            name: 'Smart Mic',
                            battery: '10%',
                          ),
                          CardWidget(
                            icon: Icons.speaker_outlined,
                            name: 'Smart Speaker',
                            battery: '40%',
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          CardWidget(
                            icon: Icons.light_outlined,
                            name: 'Smart Lamp',
                            battery: '4 Red light',
                          ),
                          CardWidget(
                            icon: Icons.router_outlined,
                            name: 'Smart Router',
                            battery: '100 Mbps',
                          ),
                        ],
                      ),
                    ],
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
