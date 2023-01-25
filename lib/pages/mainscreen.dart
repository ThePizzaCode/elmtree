// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:elmtree/pages/subjects_page.dart';
import 'package:elmtree/utils/subject_card.dart';
import 'package:elmtree/utils/top_widget.dart';
import 'package:elmtree/utils/upcoming_card.dart';
import 'package:flutter/material.dart';
import 'package:elmtree/utils/env.dart';
import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: bgColor, // background color defined in env
          child: Column(children: [
            ColumnSuper(
              innerDistance: -45,
              children: [
                topWidget(
                  currentClass: 'Etaj 1 - S6',
                  currentSubject: 'Informatica',
                  currentIntervalStart: '12:20',
                  currentIntervalEnd: '13:10',
                ),
                upcomingCard(),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)),
                  height: 440,
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: ListView(
                      addAutomaticKeepAlives: false,
                      children: [
                        GestureDetector(
                          child: subjectCard(),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const subjectPage()),
                            );
                          },
                        ),
                        subjectCard(),
                        subjectCard(),
                        subjectCard(),
                        subjectCard(),
                        subjectCard(),
                        subjectCard(),
                        subjectCard(),
                        subjectCard(),
                      ],
                    ),
                  )),
            )
          ]),
        ),
      ),
    );
  }
}
