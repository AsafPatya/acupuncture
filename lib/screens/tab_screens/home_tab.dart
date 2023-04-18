import 'package:flutter/material.dart';
import 'dart:io';
import 'package:google_fonts/google_fonts.dart';

import '../../data/main_screen_data.dart' as main_screen_data;
import '../../data/global_data.dart' as global_data;
import '../../data/tabs_data.dart' as tabs_data;


Widget homeTabBuilder() {
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      return SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  height: 810,
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: ClipRect(
                      clipBehavior: Clip.antiAlias,
                      child: Image.asset(
                        tabs_data.pathToFirstPic,
                        width: constraints.maxWidth,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: tabs_data.textOnPicPaddingTop),
                    child: Text(tabs_data.textOnPic,
                      style: TextStyle(
                        color: global_data.secondColor,
                        fontSize: tabs_data.texOnPicFontSize,
                        fontWeight: tabs_data.textOnPicFontWeight,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Container(
              color: Colors.white,
              child:Padding(
                padding:EdgeInsets.symmetric(vertical: 100),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Text(tabs_data.textAboutAcupuncture,
                              textDirection: TextDirection.rtl,
                              style: TextStyle(fontSize: 20),
                            )
                          ],
                        )
                    ),
                    Expanded(
                        flex: 2,
                        child: Column(
                          children: [
                            Text(tabs_data.textAboveProfilePic,
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                              style: TextStyle(fontSize: 20),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: 30),
                            ),
                            CircleAvatar(
                              radius: 200,
                              backgroundImage: AssetImage(
                                tabs_data.pathToProfilePic1,
                              ),
                            )
                          ],
                        )
                    )
                  ],
                ),
              ),
            ),
          ],
        )
      );
    },
  );
}