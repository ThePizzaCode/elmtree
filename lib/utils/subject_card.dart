import 'package:flutter/material.dart';
import 'package:elmtree/utils/env.dart';

class subjectCard extends StatelessWidget {
  const subjectCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              const EdgeInsets.only(top: 10.0, bottom: 10, left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Matematica',
                style: TextStyle(
                  fontFamily: 'Nexa',
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.black,
                size: 20,
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: Divider(
            color: bgColor,
            thickness: 2,
          ),
        ),
      ],
    );
  }
}
