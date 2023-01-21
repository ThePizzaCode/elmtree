import 'package:elmtree/utils/top_widget.dart';
import 'package:flutter/material.dart';
import 'package:elmtree/utils/env.dart';

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
            topWidget(),
          ]),
        ),
      ),
    );
  }
}
