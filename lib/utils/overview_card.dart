import 'package:flutter/material.dart';
import 'package:elmtree/utils/env.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class overviewWidget extends StatelessWidget {
  final double gradesNumberStat;
  final double avgGradeStat;
  final double attStat;

  const overviewWidget({
    required this.gradesNumberStat,
    required this.avgGradeStat,
    required this.attStat,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: bsBlur,
              spreadRadius: bsSpread,
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Note obținute',
                  style: TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '3/6 Note',
                  style: TextStyle(
                    color: textAccentGrey,
                    fontSize: 13,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 3,
                bottom: 14,
              ),
              child: LinearPercentIndicator(
                progressColor: accentGreen,
                backgroundColor: bgColor,
                fillColor: bgColor,
                percent: gradesNumberStat,
                barRadius: Radius.circular(40),
                padding: const EdgeInsets.all(0),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Medie',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                        bottom: 3,
                      ),
                      child: LinearPercentIndicator(
                        backgroundColor: bgColor,
                        progressColor: accentGreen,
                        percent: avgGradeStat,
                        width: 160,
                        barRadius: Radius.circular(40),
                        padding: const EdgeInsets.only(left: 0, right: 0),
                      ),
                    ),
                    Text(
                      '9.85 / 10',
                      style: TextStyle(
                        color: textAccentGrey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Absențe',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 3,
                        bottom: 3,
                      ),
                      child: LinearPercentIndicator(
                        backgroundColor: bgColor,
                        progressColor: Colors.orange[700],
                        percent: attStat,
                        width: 160,
                        barRadius: Radius.circular(40),
                        padding: const EdgeInsets.all(0),
                      ),
                    ),
                    Text(
                      '13/15',
                      style: TextStyle(
                        color: textAccentGrey,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
              ],
            )
          ]),
        ),
      ),
    );
  }
}
