import 'package:flutter/material.dart';

class CustomAppBarConstants {
  static const String kHomePageButton = "HOME_PAGE_BUTTON";
  static const String kActionsButton = "ACTION_PAGE_BUTTON";
  static const String kSubscribeButton = "SUBSCRIBE_PAGE_BUTTON";

  static const kHomePageButtonSize = 300.0;
  static const kSubscribeButtonSize = 200.0;
  static const kActionsButtonSize = 120.0;

  static const TextStyle kHomePageButtonStyle = TextStyle(
    color: Colors.deepPurple,
    fontSize: 30.0,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle kActionsPageButtonStyle = TextStyle(
    color: Colors.deepPurple,
    fontWeight: FontWeight.w500,
  );

  static const TextStyle kHomeButtonNotInitialsColor = TextStyle(
    color: Colors.deepPurple,
    fontWeight: FontWeight.w500,
  );

}