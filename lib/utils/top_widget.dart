// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:elmtree/utils/env.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class topWidget extends StatefulWidget {
  final String currentSubject;
  final String currentClass;
  final String currentIntervalStart;
  final String currentIntervalEnd;

  const topWidget({
    Key? key,
    required this.currentSubject,
    required this.currentClass,
    required this.currentIntervalStart,
    required this.currentIntervalEnd,
  }) : super(key: key);

  @override
  State<topWidget> createState() => _topWidgetState();
}

class _topWidgetState extends State<topWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(19),
          bottomRight: Radius.circular(19),
        ),
        image: DecorationImage(
            image: NetworkImage(
              "https://i.imgur.com/Dt1bKPo.png",
            ),
            fit: BoxFit.cover),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  Icons.calendar_today_outlined,
                  color: Colors.white,
                ),
                Text(
                  'Elmtree',
                  style: TextStyle(
                    fontFamily: 'TimesNew',
                    fontSize: 36,
                    color: Colors.white,
                  ),
                ),
                Icon(
                  Icons.settings,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 40,
              left: 40,
              top: 10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ora curenta:',
                      style: TextStyle(
                        fontFamily: 'Nexa',
                        fontSize: 19,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      currentSubject,
                      style: TextStyle(
                        fontFamily: 'TimesNew',
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.location_on,
                          color: Colors.white,
                          size: 18,
                        ),
                        Text(
                          currentClass,
                          style: TextStyle(
                            fontFamily: 'Nexa',
                            fontSize: 19,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    Text(
                      '12:20 - 13:10',
                      style: TextStyle(
                        fontFamily: 'Nexa',
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: LinearPercentIndicator(
              backgroundColor: Colors.white,
              progressColor: accentGreen,
              percent: 0.4,
              lineHeight: 10,
              barRadius: Radius.circular(40),
            ),
          ),
        ],
      ),
    );
  }
}
