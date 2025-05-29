import 'package:flutter/material.dart';
import 'package:smarthome/ui/widget/sized_widget.dart';

import '../../widget/header_widget.dart';

class ReportView extends StatefulWidget {
  const ReportView({super.key});

  @override
  State<StatefulWidget> createState() => ReportViewState();
}

class ReportViewState extends State<ReportView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            Container(
              child: HeaderTitle(
                mainText: 'Report',
                subText: 'Analyze your daily usage',
              ),
            ),
            Container(
              width: 360,
              height: 160,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '이번달 전력 사용량은',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '평균보다 높아요😥',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                  Text(
                    '4인 가구의 10월 평균 전력 사용량은',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(112, 112, 112, 100),
                    ),
                  ),
                  Text(
                    '307.7kWh에요. 12.7%나 많이 썼어요',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromRGBO(112, 112, 112, 100),
                    ),
                  ),
                ],
              ),
            ),
            Container(

              width: 360,
              height: 140,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Text(
                        'Energy Usage',
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      Text('10 Oct, 2023'),
                    ],
                  ),
                  Row(
                    spacing: 20,
                    children: [
                      Row(
                        spacing: 20,
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 71, 194, 189),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Today',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(112, 112, 112, 100),
                                ),
                              ),
                              Text(
                                '26.8 kWh',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        spacing: 20,
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(255, 255, 104, 151),
                              shape: BoxShape.circle,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'This month',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromRGBO(112, 112, 112, 100),
                                ),
                              ),
                              Text(
                                '26.8 kWh',
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                            ],
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
