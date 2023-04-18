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
          child: Container(
            color: global_data.secondColor,
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 50),
              child: Column(
                children: [
                  Container(
                    color: global_data.appBarBackground,
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                        Expanded(
                            flex: 4,
                            child: Image.asset(
                              tabs_data.pathToRec2,
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30)
                        ),
                        Expanded(
                            flex: 3,
                            child: Image.asset(
                              tabs_data.pathToRec1,
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30)
                        ),
                        Expanded(
                            flex: 4,
                            child: Image.asset(
                                tabs_data.pathToRec3
                            )
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Container(
                    color: global_data.appBarBackground,
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                        Expanded(
                            flex: 4,
                            child: Image.asset(
                              tabs_data.pathToRec4,
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30)
                        ),
                        Expanded(
                            flex: 3,
                            child: Image.asset(
                              tabs_data.pathToRec5,
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30)
                        ),
                        Expanded(
                            flex: 4,
                            child: Image.asset(
                                tabs_data.pathToRec6
                            )
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Container(
                    color: global_data.appBarBackground,
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                        Expanded(
                            flex: 4,
                            child: Image.asset(
                              tabs_data.pathToRec7,
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30)
                        ),
                        Expanded(
                            flex: 3,
                            child: Image.asset(
                              tabs_data.pathToRec8,
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30)
                        ),
                        Expanded(
                            flex: 4,
                            child: Image.asset(
                                tabs_data.pathToRec9
                            )
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Container(
                    color: global_data.appBarBackground,
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                        Expanded(
                            flex: 4,
                            child: Image.asset(
                              tabs_data.pathToRec10,
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30)
                        ),
                        Expanded(
                            flex: 3,
                            child: Image.asset(
                              tabs_data.pathToRec11,
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30)
                        ),
                        Expanded(
                            flex: 4,
                            child: Image.asset(
                                tabs_data.pathToRec12
                            )
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Container(
                    color: global_data.appBarBackground,
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                        Expanded(
                            flex: 4,
                            child: Image.asset(
                              tabs_data.pathToRec13,
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30)
                        ),
                        Expanded(
                            flex: 3,
                            child: Image.asset(
                              tabs_data.pathToRec14,
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30)
                        ),
                        Expanded(
                            flex: 4,
                            child: Image.asset(
                                tabs_data.pathToRec15
                            )
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Container(
                    color: global_data.appBarBackground,
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                        Expanded(
                            flex: 4,
                            child: Image.asset(
                              tabs_data.pathToRec16,
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30)
                        ),
                        Expanded(
                            flex: 3,
                            child: Image.asset(
                              tabs_data.pathToRec17,
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30)
                        ),
                        Expanded(
                            flex: 4,
                            child: Image.asset(
                                tabs_data.pathToRec18
                            )
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                      ],
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(top: 50)),
                  Container(
                    color: global_data.appBarBackground,
                    child: Row(
                      children: [
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                        Expanded(
                            flex: 3,
                            child: Image.asset(
                              tabs_data.pathToRec19,
                            )
                        ),
                        Padding(
                            padding: EdgeInsets.symmetric(horizontal: 30)
                        ),
                        Expanded(
                            flex: 4,
                            child: Image.asset(
                              tabs_data.pathToRec20,
                            )
                        ),
                        Padding(padding: EdgeInsets.symmetric(horizontal: 30)),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
      );
    },
  );
}