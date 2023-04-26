import 'package:flutter/material.dart';
import 'dart:io';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:email_validator/email_validator.dart';

import '../../data/main_screen_data.dart' as main_screen_data;
import '../../data/global_data.dart' as global_data;
import '../../data/tabs_data/recommendations_tab_data.dart' as r_t_d;

Widget newRec(String pathToRecPic,BuildContext context){
  return SizedBox(
      width: MediaQuery.of(context).size.width / 3.0,
      child: Image.asset(
        pathToRecPic,
        fit: BoxFit.fitWidth,
      ),
    );
}

Widget recommendationsTabBuilder(){
  return LayoutBuilder(
    builder: (BuildContext context, BoxConstraints constraints) {
      return SingleChildScrollView(
          child: Row(
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
                      newRec(r_t_d.pathToWhatsUpRec[r_t_d.Index.first.index], context),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      newRec(r_t_d.pathToWhatsUpRec[r_t_d.Index.second.index], context),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      newRec(r_t_d.pathToWhatsUpRec[r_t_d.Index.third.index], context),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      newRec(r_t_d.pathToWhatsUpRec[r_t_d.Index.fourth.index], context),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      newRec(r_t_d.pathToWhatsUpRec[r_t_d.Index.fifth.index], context),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      newRec(r_t_d.pathToWhatsUpRec[r_t_d.Index.sixth.index], context),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      newRec(r_t_d.pathToWhatsUpRec[r_t_d.Index.seventh.index], context),
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
                    newRec(r_t_d.pathToFacebookRec[r_t_d.Index.first.index], context),
                    Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                    newRec(r_t_d.pathToFacebookRec[r_t_d.Index.second.index], context),
                    Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                    newRec(r_t_d.pathToFacebookRec[r_t_d.Index.third.index], context),
                    Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                    newRec(r_t_d.pathToFacebookRec[r_t_d.Index.fourth.index], context),
                    Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                    newRec(r_t_d.pathToFacebookRec[r_t_d.Index.fifth.index], context),
                    Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                    newRec(r_t_d.pathToFacebookRec[r_t_d.Index.sixth.index], context),
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
                      newRec(r_t_d.pathToFacebookRec[r_t_d.Index.seventh.index], context),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      newRec(r_t_d.pathToFacebookRec[r_t_d.Index.eighth.index], context),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      newRec(r_t_d.pathToFacebookRec[r_t_d.Index.ninth.index], context),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      newRec(r_t_d.pathToFacebookRec[r_t_d.Index.tenth.index], context),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      newRec(r_t_d.pathToFacebookRec[r_t_d.Index.eleventh.index], context),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      newRec(r_t_d.pathToUndefined[r_t_d.Index.first.index], context),
                      Padding(padding: EdgeInsets.symmetric(vertical: 20)),
                      newRec(r_t_d.pathToUndefined[r_t_d.Index.second.index], context),
                    ],
                  )
              ),
              Expanded(
                  flex: 1,
                  child: Padding(padding: EdgeInsets.symmetric(vertical: 10),)),
            ],
          )
      );
    },
  );
}

