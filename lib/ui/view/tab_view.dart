import 'package:flutter/material.dart';
import 'package:smarthome/ui/view/home/home_view.dart';
import 'package:smarthome/ui/view/report/report_view.dart';
import 'package:smarthome/ui/view/routines/routines_view.dart';
import 'package:smarthome/ui/widget/sized_widget.dart';

class LayoutView extends StatefulWidget {
  const LayoutView({super.key});

  final bodyWidgets = const [
    FullSizedBox(child: HomeView()),
    FullSizedBox(child: RoutinesView()),
    FullSizedBox(child: ReportView()),
  ];

  @override
  State<StatefulWidget> createState() => LayoutViewState();
}

class LayoutViewState extends State<LayoutView> {
  late final _pageController;
  late int _selectedIndex;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _selectedIndex = 0;
  }

  @override
  void dispose() {
    super.dispose();
    _pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actionsPadding: EdgeInsets.only(right: 10),
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
          onPressed: () {},
          icon: Icon(Icons.short_text, size: 40),
        ),
      ),
      /* body: Container(
        child: Column(
          children: [
            Column(
              children: [Text('Hi Heosu'), Text('Welcome to your smart Home')],
            ),
            Row(
              children: [
                SizedBox(width: 80, height: 80, child: Icon(Icons.chair)),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Icon(Icons.dining_outlined),
                ),
                SizedBox(width: 80, height: 80, child: Icon(Icons.bed)),
                SizedBox(
                  width: 80,
                  height: 80,
                  child: Icon(Icons.bathtub_outlined),
                ),
                SizedBox(width: 80, height: 80, child: Icon(Icons.chair)),
              ],
            ),
            Row(children: [Text('Devices'), Icon(Icons.chevron_right)]),
            Row(
              children: [
                Column(
                  children: [
                    Row(children: [SizedBox()]),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),*/
      body: PageView(
        controller: this._pageController,
        children: this.widget.bodyWidgets,
        onPageChanged: _updateTabIndex,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.sunny), label: 'Routines'),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_graph),
            label: 'Report',
          ),
        ],
        onTap: (selectedIndex) {
          this._updateTabIndex(
            selectedIndex,
            () => _pageController.animateToPage(
              _selectedIndex,
              duration: Duration(milliseconds: 250),
              curve: Curves.easeInOut,
            ),
          );
        },
      ),
    );
  }

  void _updateTabIndex(
    final int selectedIndex, [
    final VoidCallback? callback,
  ]) {
    setState(() {
      _selectedIndex = selectedIndex;
      callback?.call();
    });
  }
}
