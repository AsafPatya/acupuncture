import 'package:flutter/material.dart';
import 'dart:io';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../../data/main_screen_data.dart' as main_screen_data;
import '../../data/global_data.dart' as global_data;
import '../../data/tabs_data.dart' as tabs_data;

Widget recommendationsTabBuilder(){
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      return SingleChildScrollView(
          child: Container(
            color: global_data.secondColor,
            child:  Row(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: [
                Expanded(
                  child:
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToRec1,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToRec2,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToRec3,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToRec4,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToRec5,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToRec6,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToRec7,
                            fit: BoxFit.fitWidth,
                          ),
                        )
                      ],

                    )
                ),
                Expanded(
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.0,
                        child: Image.asset(
                          tabs_data.pathToRec8,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.0,
                        child: Image.asset(
                          tabs_data.pathToRec9,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.0,
                        child: Image.asset(
                          tabs_data.pathToRec10,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.0,
                        child: Image.asset(
                          tabs_data.pathToRec11,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.0,
                        child: Image.asset(
                          tabs_data.pathToRec12,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.0,
                        child: Image.asset(
                          tabs_data.pathToRec13,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.0,
                        child: Image.asset(
                          tabs_data.pathToRec14,
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child:
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToRec15,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToRec16,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToRec17,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToRec18,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToRec19,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToRec20,
                            fit: BoxFit.fitWidth,
                          ),
                        )
                      ],
                    )
                ),
              ],
            ),
          )
      );
    },
  );
}

