import 'package:flutter/material.dart';
import 'package:text_radio/theme/app_decoration.dart';
import 'package:text_radio/theme/app_style.dart';


// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  const HomeItemWidget({Key? key})
      : super(
    key: key,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillPink500.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtSFProDisplaySemibold10,
                ),
                // Image.asset("assets/images/background.png",height: 12,width: 14,alignment: Alignment.center,)
                // CustomImageView(
                //   svgPath: ImageConstant.imgLightbulb,
                //   height: getVerticalSize(
                //     12,
                //   ),
                //   width: getHorizontalSize(
                //     14,
                //   ),
                //   margin: getMargin(
                //     left: 62,
                //   ),
                // ),
              ],
            ),
            Container(
              height: 50,
              width: 71,
              margin: EdgeInsets.only(top: 9),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Text(
                      "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProDisplayBold30,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Text(
                      "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtSFProDisplayRegular15,
                    ),
                  ),
                ],
              ),
            ),
            Image.asset("assets/images/background.png",height: 22,width: 93,)
            // CustomImageView(
            //   svgPath: ImageConstant.imgGroup,
            //   height: getVerticalSize(
            //     22,
            //   ),
            //   width: getHorizontalSize(
            //     93,
            //   ),
            //   margin: getMargin(
            //     top: 11,
            //     bottom: 5,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
