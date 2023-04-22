import 'package:flutter/material.dart';
import 'dart:io';

import '../data/main_screen_data.dart' as main_screen_data;
import '../data/global_data.dart' as global_data;
import 'tab_screens/home_tab.dart'as home_tab;
import 'tab_screens/recommendations_tab.dart' as recommendations_tab;
import 'tab_screens/contact_tab.dart' as contact_tab;

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: main_screen_data.numberOfTabs, vsync: this);
    _tabController.index = main_screen_data.homeTabIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: main_screen_data.appBarBackground,
        title:
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
                child: TabBar(
                  controller: _tabController,
                  indicator: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(color: global_data.noAffectColor)
                    ),
                  ),
                  tabs: [
                    Tab(
                      child: Text(
                        main_screen_data.contactTitleTab,
                        style: TextStyle(
                          fontSize: main_screen_data.appTitleFontSize,
                          color: _tabController.index == main_screen_data.contactTabIndex ? global_data.primaryColor : main_screen_data.notSelectedTab
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        main_screen_data.recommendationsTitleTab,
                        style: TextStyle(
                          fontSize: main_screen_data.appTitleFontSize,
                          color: _tabController.index == main_screen_data.recommendationsTabIndex ? global_data.primaryColor : main_screen_data.notSelectedTab,
                        ),
                      ),
                    ),
                    Tab(
                      child: Text(
                        main_screen_data.homeTitleTab,
                        style: TextStyle(
                          fontSize: main_screen_data.appTitleFontSize,
                          color: _tabController.index == main_screen_data.homeTabIndex ? global_data.primaryColor : main_screen_data.notSelectedTab,
                        ),
                      ),
                    ),
                  ],
                  onTap: (index) {
                    setState(() {
                      _tabController.index = index;
                    });
                  },
                )
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(main_screen_data.appTitle,
                  style: TextStyle(fontSize: main_screen_data.appTitleFontSize,
                    color: global_data.primaryColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(main_screen_data.acupuncture,
                  style: TextStyle(fontSize: main_screen_data.acupunctureFontSize,
                    color: global_data.primaryColor,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      backgroundColor: main_screen_data.appBarBackground,
      body: IndexedStack(
        index: _tabController.index,
        children: [
          // Contact Screen
          contact_tab.homeTabBuilder(),

          // Recommendations Screen
          recommendations_tab.recommendationsTabBuilder(),

          // Home Screen
          home_tab.homeTabBuilder(),
      ]
      )
    );
  }
}
