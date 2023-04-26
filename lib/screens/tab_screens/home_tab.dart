import 'package:flutter/material.dart';
import 'dart:io';
import 'package:google_fonts/google_fonts.dart';

import '../../data/main_screen_data.dart' as main_screen_data;
import '../../data/global_data.dart' as g_d;
import '../../data/tabs_data/home_tab_data.dart' as h_t_d;


Widget homeTabBuilder() {
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      return SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding:EdgeInsets.symmetric(vertical: 100),
                child: Row(
                  children: [
                    Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Text(h_t_d.textAboutAcupuncture,
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
                            Text(h_t_d.textAboveProfilePic,
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
                                h_t_d.pathToProfilePic1,
                              ),
                            )
                          ],
                        )
                    )
                  ],
                ),
              )
            ],
          )
      );
    },
  );
}