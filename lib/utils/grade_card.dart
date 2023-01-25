import 'package:flutter/material.dart';
import 'package:elmtree/utils/env.dart';

class gradeWidget extends StatelessWidget {
  final String grade;
  final String date;
  const gradeWidget({
    required this.grade,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 5,
        left: 10,
        right: 10,
      ),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: bsBlur,
              spreadRadius: bsSpread,
            ),
          ],
          borderRadius: BorderRadius.circular(ctRadius),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                grade,
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Text(
                date,
                style: TextStyle(
                  fontSize: 11,
                  color: textAccentGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
