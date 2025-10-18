import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:statemanagementbase/view/common_widgets/regular_text_widget.dart';

import '../../constants/app_constants.dart';
import '../../constants/colour_constants.dart';
import '../../constants/image_constants.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget{
  VoidCallback? onAboutIconPressed;

  CustomAppBar({this.onAboutIconPressed});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RegularTextWidget(
                    textToDisplay: AppConstants.kAppName,
                    textColor: ColourConstants.KBlackColor,
                    fontSize: 16,
                  ),
                  RegularTextWidget(
                    textToDisplay: AppConstants.kTagLine,
                    textColor: ColourConstants.KBlackColor,
                    fontSize: 14,
                  ),
                ],
              ),
              GestureDetector(
                onTap: (){
                  onAboutIconPressed?.call();
                },
                child: Image.asset(
                  ImageConstants.kBoyImage,
                  width: 60,
                  height: 60,
                ),
              ),

            ],
          )

      ),
      backgroundColor: ColourConstants.KBlueColor,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

}
