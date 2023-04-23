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
            color: global_data.appBarBackground,
            child:  Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: Padding(padding: EdgeInsets.symmetric(vertical: 10),)),
                Expanded(
                  flex: 15,
                  child:
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToWhatsUpRec[tabs_data.Index.first.index],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToWhatsUpRec[tabs_data.Index.second.index],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToWhatsUpRec[tabs_data.Index.third.index],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToWhatsUpRec[tabs_data.Index.fourth.index],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToWhatsUpRec[tabs_data.Index.fifth.index],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToWhatsUpRec[tabs_data.Index.sixth.index],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToWhatsUpRec[tabs_data.Index.seventh.index],
                            fit: BoxFit.fitWidth,
                          ),
                        )
                      ],

                    )
                ),
                Expanded(
                  flex: 1,
                    child: Padding(padding: EdgeInsets.symmetric(vertical: 10),)),
                Expanded(
                  flex: 15,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.0,
                        child: Image.asset(
                          tabs_data.pathToFacebookRec[tabs_data.Index.first.index],
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.0,
                        child: Image.asset(
                          tabs_data.pathToFacebookRec[tabs_data.Index.second.index],
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.0,
                        child: Image.asset(
                          tabs_data.pathToFacebookRec[tabs_data.Index.third.index],
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.0,
                        child: Image.asset(
                          tabs_data.pathToFacebookRec[tabs_data.Index.fourth.index],
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.0,
                        child: Image.asset(
                          tabs_data.pathToFacebookRec[tabs_data.Index.fifth.index],
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 3.0,
                        child: Image.asset(
                          tabs_data.pathToFacebookRec[tabs_data.Index.sixth.index],
                          fit: BoxFit.fitWidth,
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Padding(padding: EdgeInsets.symmetric(vertical: 10),)),
                Expanded(
                  flex: 15,
                  child:
                    Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToFacebookRec[tabs_data.Index.seventh.index],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToFacebookRec[tabs_data.Index.eighth.index],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToFacebookRec[tabs_data.Index.ninth.index],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToFacebookRec[tabs_data.Index.tenth.index],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToFacebookRec[tabs_data.Index.eleventh.index],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToUndefined[tabs_data.Index.first.index],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 3.0,
                          child: Image.asset(
                            tabs_data.pathToUndefined[tabs_data.Index.second.index],
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                      ],
                    )
                ),
                Expanded(
                    flex: 1,
                    child: Padding(padding: EdgeInsets.symmetric(vertical: 10),)),
              ],
            ),
          )
      );
    },
  );
}

