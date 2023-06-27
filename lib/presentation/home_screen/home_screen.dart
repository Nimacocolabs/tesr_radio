import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:perfect_volume_control/perfect_volume_control.dart';
import 'package:radio_player/radio_player.dart';
import 'package:text_radio/core/utils/app_export.dart';
import 'package:text_radio/core/utils/color_constant.dart';
import 'package:text_radio/theme/app_style.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final RadioPlayer radioPlayer = RadioPlayer();
  bool isPlaying = false;
  double currentvol = 0.5;

  @override
  void initState() {
    PerfectVolumeControl.hideUI = false; //set if system UI is hided or not on volume up/down
    Future.delayed(Duration.zero,() async {
      currentvol = await PerfectVolumeControl.getVolume();
      setState(() {
        //refresh UI
      });
    });

    PerfectVolumeControl.stream.listen((volume) {
      setState(() {
        currentvol = volume;
      });
    });
    super.initState();
  }
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
                "assets/images/Frame.png",
                alignment: Alignment.center,
                height: 800,
                width: 400,
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
                              alignment: Alignment.topCenter,
                              children: [
                                Image.asset(
                                  "assets/images/background.png",
                                  alignment: Alignment.center,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top:80),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                    CrossAxisAlignment.center,
                                    mainAxisAlignment:
                                    MainAxisAlignment.start,
                                    children: [
                                      // Align(
                                      //   alignment: Alignment.topLeft,
                                      //   child: Container(
                                      //     width: 100,
                                      //     height: 80,
                                      //     transform: Matrix4.skewX(0.6),
                                      //     decoration: BoxDecoration(
                                      //       border: Border.all(
                                      //         color: Colors.black,
                                      //       ),
                                      //       color: Colors.amber,
                                      //     ),
                                      //   ),
                                      // ),
                                      Text(
                                        "Playing  Now",
                                        maxLines: null,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtSFProDisplayBold30,
                                      ),
                                      Container(
                                        width: 200,
                                        margin: getMargin(
                                          top: 20,
                                        ),
                                        child: Text(
                                          "Enjoy the best top musics",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtSFProDisplayRegular16,
                                        ),
                                      ),
                                  SizedBox(height: 10,),
                                  // Align(
                                  //   alignment: Alignment.topLeft,
                                  //   child: Column(
                                  //     mainAxisAlignment: MainAxisAlignment.center,
                                  //     children: [
                                  //       Icon(Icons.volume_down,color: ColorConstant.whiteA700,),
                                  //       Container(
                                  //         height: 250,
                                  //         child: new Transform(
                                  //           alignment: FractionalOffset.center,
                                  //           // Rotate sliders by 90 degrees
                                  //           transform: new Matrix4.identity()..rotateZ(90 * 3.1415927 / 180),
                                  //           child: new Column(
                                  //             mainAxisAlignment: MainAxisAlignment.center,
                                  //             children: [
                                  //               Container(
                                  //                 width: 250,
                                  //                 child:Slider(
                                  //                   activeColor: Colors.pink,
                                  //                   value: currentvol,
                                  //                   onChanged: (newvol){
                                  //                     currentvol = newvol;
                                  //                     PerfectVolumeControl.setVolume(newvol); //set new volume
                                  //                     setState(() {
                                  //                     });
                                  //                   },
                                  //                   min: 0, //
                                  //                   max:  3,
                                  //                   divisions:100,
                                  //                 ),
                                  //               )
                                  //             ],
                                  //           ),
                                  //         ),
                                  //       ),
                                  //       Icon(Icons.volume_up,color: ColorConstant.whiteA700),
                                  //     ],
                                  //   ),
                                  // ),
                                      SizedBox(height:400,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          ElevatedButton(
                                              onPressed: (){},
                                              style: ElevatedButton.styleFrom(
                                                  shape: const CircleBorder(),
                                                  primary: ColorConstant.black900,
                                                  fixedSize: const Size(50,50)
                                              ),
                                              child:  Icon(CupertinoIcons.backward_end,color: ColorConstant.whiteA700,size: 30,)
                                          ),
                                          SizedBox(width: 15,),
                                          ElevatedButton(
                                              onPressed: (){},
                                              style: ElevatedButton.styleFrom(
                                                  shape: const CircleBorder(),
                                                  primary: ColorConstant.pink500, //button's fill color
                                                  elevation: 4.0,
                                                  fixedSize: const Size(60,60)
                                              ),
                                              child:  Icon(Icons.play_arrow,color: ColorConstant.whiteA700,size: 30,)
                                          ),
                                          SizedBox(width: 20,),
                                          ElevatedButton(
                                              onPressed: (){},
                                              style: ElevatedButton.styleFrom(
                                                  shape: const CircleBorder(),
                                                  primary: ColorConstant.black900,
                                                  fixedSize: const Size(50,50)
                                              ),
                                              child:  Icon(CupertinoIcons.forward_end,color: ColorConstant.whiteA700,size: 30,)
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Icon(Icons.volume_down,color: ColorConstant.whiteA700,),
                                          Slider(
                                            activeColor: Colors.pink,
                                            value: currentvol,
                                            onChanged: (newvol){
                                              currentvol = newvol;
                                              PerfectVolumeControl.setVolume(newvol); //set new volume
                                              setState(() {
                                              });
                                            },
                                            min: 0, //
                                            max:  3,
                                            divisions:400,
                                          ),
                                          Icon(Icons.volume_up,color: ColorConstant.whiteA700),
                                        ],
                                      ),
                                      SizedBox(height: 40,)
                                    ],
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

