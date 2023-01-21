import 'package:flutter/material.dart';
import 'package:elmtree/utils/env.dart';

class upcomingCard extends StatelessWidget {
  const upcomingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
        left: 20,
      ),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding:
              const EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Ora urmatoare:',
                    style: TextStyle(
                      fontFamily: 'Nexa',
                      fontSize: 19,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    'Romană',
                    style: TextStyle(
                      fontFamily: 'TimesNew',
                      fontSize: 30,
                      color: Colors.black,
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
                        color: Colors.black,
                        size: 18,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        'P - S8',
                        style: TextStyle(
                          fontFamily: 'Nexa',
                          fontSize: 19,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                  Text(
                    '13:20 - 14:10',
                    style: TextStyle(
                      fontFamily: 'Nexa',
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
