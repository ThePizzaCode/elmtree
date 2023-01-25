import 'package:elmtree/pages/mainscreen.dart';
import 'package:elmtree/utils/grade_card.dart';
import 'package:elmtree/utils/overview_card.dart';
import 'package:flutter/material.dart';
import 'package:elmtree/utils/env.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class subjectPage extends StatefulWidget {
  const subjectPage({super.key});

  @override
  State<subjectPage> createState() => _subjectPageState();
}

class _subjectPageState extends State<subjectPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        //Main column
        child: Column(children: [
          //Top Bar
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: Icon(Icons.arrow_back_ios_rounded),
                  onPressed: () {
                    Navigator.pop(
                      context,
                      MaterialPageRoute(builder: (context) => const Homepage()),
                    );
                  },
                ),
                Text(
                  'Informatică',
                  style: TextStyle(
                    fontFamily: 'TimesNew',
                    fontWeight: FontWeight.bold,
                    fontSize: 29,
                  ),
                ),
                Icon(Icons.info),
              ],
            ),
          ),
          // Overview Container
          overviewWidget(
            gradesNumberStat: 0.5,
            avgGradeStat: 0.9,
            attStat: 0.9,
          ),
          // Grades Containers
          Expanded(
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                  ),
                  child: Text(
                    'NOTE',
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      color: textAccentGrey,
                      fontSize: 13,
                    ),
                  ),
                ),
                gradeWidget(
                  grade: '9.43',
                  date: '14 septembrie 2023',
                ),
                gradeWidget(
                  grade: '9.43',
                  date: '14 septembrie 2023',
                ),
                gradeWidget(
                  grade: '9.43',
                  date: '14 septembrie 2023',
                ),
                gradeWidget(
                  grade: '9.43',
                  date: '14 septembrie 2023',
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 10,
                  ),
                  child: Text(
                    'ABSENȚE',
                    style: TextStyle(
                      color: textAccentGrey,
                      fontSize: 13,
                    ),
                  ),
                ),
                gradeWidget(
                  grade: '9.43',
                  date: 'motivata',
                ),
                gradeWidget(
                  grade: '9.43',
                  date: 'nemotivata',
                ),
              ],
            ),
          ),
          // Attendance Containers
        ]),
      ),
    );
  }
}
