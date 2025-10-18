import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../constants/app_constants.dart';
import '../../constants/colour_constants.dart';
import '../../constants/image_constants.dart';
import '../common_widgets/custom_app_bar.dart';
import '../common_widgets/regular_text_widget.dart';

class AboutScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, right: 16),
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Image.asset(
                    ImageConstants.kLogo,
                    height: 200,
                    width: 250,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RegularTextWidget(
                    textToDisplay: AppConstants.kAboutLine1,
                    textAlign: TextAlign.center,
                    fontSize: 18,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RegularTextWidget(
                    textToDisplay: AppConstants.kAboutLine2,
                    textAlign: TextAlign.center,
                    fontSize: 18,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RegularTextWidget(
                    textToDisplay: AppConstants.kAboutLine3,
                    textAlign: TextAlign.center,
                    fontSize: 18,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  RegularTextWidget(
                    textToDisplay: AppConstants.kAboutLine4,
                    textAlign: TextAlign.center,
                    fontSize: 18,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}