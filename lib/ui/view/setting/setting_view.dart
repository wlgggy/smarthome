import 'package:flutter/material.dart';
import 'package:smarthome/ui/view/home/home_view.dart';
import 'package:smarthome/ui/view/setting/card_widget.dart';
import 'package:smarthome/ui/view/setting/switch_widget.dart';
import 'package:smarthome/ui/widget/sized_widget.dart';

import '../../widget/header_widget.dart';

class SettingView extends StatefulWidget {
  const SettingView({super.key});

  final List<Widget> _settingWidgets = const [
    CardWidget(title: '언어'),
    SwitchWidget(title: '다크모드'),
    CardWidget(title: '현재 버전 3.5.0'),
    CardWidget(title: '개인정보 처리방침')
  ];
  final List<Widget> _settingWidgets2 = const [
    CardWidget(title: '일반'),
    SwitchWidget(title: '알림'),
    CardWidget(title: '앱 설정'),
    CardWidget(title: '이 앱 공유'),
    CardWidget(title: '도움말'),
  ];

  @override
  State<StatefulWidget> createState() => SettingViewState();
}

class SettingViewState extends State<SettingView> {
  @override
  Widget build(BuildContext context) {
    final settingWidgets = widget._settingWidgets;
    final settingWidgets2 = widget._settingWidgets2;
    final boxRadius = BorderRadius.circular(10);

    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 24),
        actions: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage('assets/images/heosu.jpeg'),
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
        ],
        leading: IconButton(
          padding: EdgeInsets.only(left: 15),
          onPressed: (){
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.short_text, size: 40),
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: HeaderTitle(
                mainText: 'Settings',
                subText: 'Try changing various options',
              ),
            ),
            DecoratedSliver(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: boxRadius
              ),
              sliver: SliverList.separated(
                  itemBuilder: (context, index) => settingWidgets[index],
                  itemCount: settingWidgets.length,
                  separatorBuilder: (BuildContext context, int index) => const Divider()
              )
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 24,
                width: double.infinity
              )
            ),
            DecoratedSliver(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: boxRadius
                ),
                sliver: SliverList.separated(
                    itemBuilder: (context, index) => settingWidgets2[index],
                    itemCount: settingWidgets2.length,
                    separatorBuilder: (BuildContext context, int index) => const Divider()
                )
            ),
          ]
        ),
      ),
    );
  }
}
