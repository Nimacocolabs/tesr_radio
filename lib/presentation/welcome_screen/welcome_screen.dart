import 'package:flutter/material.dart';
import 'package:text_radio/core/utils/color_constant.dart';
import 'package:text_radio/core/utils/size_utils.dart';
import 'package:text_radio/presentation/home_screen/home_screen.dart';
import 'package:text_radio/theme/app_style.dart';
import 'package:text_radio/widgets/custom_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.black900,
        body: SizedBox(
          height: size.height,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/images/happy-dj-woman.png",
                alignment: Alignment.bottomCenter,
                height: 805,
                width: 414,
              ),
              Align(
                alignment: Alignment.center,
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: size.height,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: size.height,
                            width: double.maxFinite,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Image.asset(
                                  "assets/images/background.png",
                                  alignment: Alignment.center,
                                  height: 896,
                                  width: 414,
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      left: 52,
                                      right: 52,
                                    ),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 241,
                                            margin: getMargin(
                                              top: 30,
                                              right: 69,
                                            ),
                                            child: Text(
                                              "TUNE \nIN \nHEART",
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtSFProDisplayBold60,
                                            ),
                                          ),
                                          Container(
                                            width: 187,
                                            margin: getMargin(
                                              top: 20,
                                            ),
                                            child: Text(
                                              "Enjoy the best radio stations from your home, don't miss out on anything",
                                              maxLines: null,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtSFProDisplayRegular16,
                                            ),
                                          ),
                                          CustomButton(
                                            height: 45,
                                            text: "Get Started",
                                            margin: getMargin(
                                              top: 360,
                                            ),
                                            onTap: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                    builder: (context) =>
                                                         HomeScreen()),
                                              );
                                            },
                                          ),
                                          SizedBox(height: 30,)
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
//   Scaffold(
//   backgroundColor: ColorConstant.black900,
//   body: SizedBox(
//     height: screenHeight,
//     width: screenWidth,
//     child: Stack(
//       alignment: Alignment.center,
//       children: [
//         Image.asset("assets/images/happy-dj-woman.png",alignment:Alignment.bottomCenter,
//           height:
//             805,
//           width:
//             414,
//         ),
//         Align(
//           alignment: Alignment.center,
//           child: SingleChildScrollView(
//             child: SizedBox(
//               height: screenHeight,
//               width:  double.maxFinite,
//               child: Stack(
//                 alignment: Alignment.center,
//                 children: [
//                   // CustomImageView(
//                   //   svgPath: ImageConstant.imgVector,
//                   //   height: getVerticalSize(
//                   //     12,
//                   //   ),
//                   //   width: getHorizontalSize(
//                   //     327,
//                   //   ),
//                   //   alignment: Alignment.topCenter,
//                   //   margin: getMargin(
//                   //     top: 28,
//                   //   ),
//                   // ),
//                   // CustomImageView(
//                   //   imagePath: ImageConstant.imgVector1,
//                   //   height: getVerticalSize(
//                   //     896,
//                   //   ),
//                   //   width: getHorizontalSize(
//                   //     414,
//                   //   ),
//                   //   alignment: Alignment.center,
//                   // ),
//                   Align(
//                     alignment: Alignment.center,
//                     child: SizedBox(
//                       height:screenHeight,
//                       width: double.maxFinite,
//                       child: Stack(
//                         alignment: Alignment.center,
//                         children: [
//                           Image.asset("assets/images/background.png",
//                             alignment: Alignment.center,
//                               height:
//                                 896,
//                               width:
//                                 414,
//                           ),
//                           Align(
//                             alignment: Alignment.center,
//                             child: Padding(
//                               padding: const EdgeInsets.only( left: 52,
//                                 right: 52),
//                               child: Column(
//                                   mainAxisSize: MainAxisSize.min,
//                                   crossAxisAlignment:
//                                   CrossAxisAlignment.start,
//                                   mainAxisAlignment:
//                                   MainAxisAlignment.start,
//                                   children: [
//                                     Container(
//                                       alignment: Alignment.center,
//                                       height: 43,
//                                       width: 126,
//                                       child: Text("TUNE IN APP", style:
//                                       AppStyle.txtSFProDisplayMedium,
//                                       ),
//                                     ),
//                                     Container(
//                                       width: 241,
//                                       margin:  const EdgeInsets.only(  top: 70,
//                                         right: 69,),
//                                       child: Text(
//                                         "Let’s Get\nStarted",
//                                         maxLines: null,
//                                         textAlign: TextAlign.left,
//                                         style:
//                                         AppStyle.txtSFProDisplayBold60,
//                                       ),
//                                     ),
//                                     Container(
//                                       width: 187,
//                                       margin:  const EdgeInsets.only(  top: 25,),
//                                       child: Text(
//                                         "Enjoy the best radio stations from your home, don't miss out on anything",
//                                         maxLines: null,
//                                         textAlign: TextAlign.left,
//                                         style: AppStyle
//                                             .txtSFProDisplayRegular16,
//                                       ),
//                                     ),
//                                     // Center(
//                                     //   child: SizedBox(
//                                     //     height: 58,
//                                     //     child: ElevatedButton(
//                                     //       onPressed: () {
//                                     //         Navigator.push(
//                                     //           context,
//                                     //           MaterialPageRoute(builder: (context) => const HomeScreen()),);
//                                     //       },
//                                     //       style: ElevatedButton.styleFrom(
//                                     //         primary:ColorConstant.pink500,
//                                     //         padding: const EdgeInsets.all(17),
//                                     //         shape: RoundedRectangleBorder(
//                                     //             borderRadius: BorderRadius.circular(10.0)
//                                     //         ),
//                                     //       ),
//                                     //       child: Text("Get Started",style: TextStyle(
//                                     //         color: ColorConstant.whiteA700,
//                                     //         fontSize: 20,
//                                     //         fontFamily: 'SF Pro Display',
//                                     //         fontWeight: FontWeight.w500,
//                                     //       ),),
//                                     //     ),
//                                     //   ),
//                                     // ),
//                                     CustomButton(
//                                       height:
//                                         58,
//                                       onTap:(){
//                                         Navigator.push(
//                                           context,
//                                           MaterialPageRoute(builder: (context) => const HomeScreen()),
//                                         );
//                                        },
//                                       text: "Get Started",
//                                     ),
//                                   ],
//                                 ),
//                             ),
//                             ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ],
//     ),
//   ),
// );
