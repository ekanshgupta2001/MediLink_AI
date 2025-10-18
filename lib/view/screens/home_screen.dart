import 'package:flutter/material.dart';

import '../common_widgets/custom_app_bar.dart';

class AssignmentHomeScreen extends StatefulWidget {
  @override
  State<AssignmentHomeScreen> createState() => _AssignmentHomeScreenState();
}

class _AssignmentHomeScreenState extends State<AssignmentHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        onAboutIconPressed: (){

        },
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

          ],
        ),
      ),
    );
  }
}
