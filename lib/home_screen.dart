import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:trovaunarchitetto/components/hoverable_button.dart';
import 'package:trovaunarchitetto/utilities/CustomAppBarConstants.dart';

import 'components/horizontal_divider.dart';
import 'components/search_bar.dart';
import 'layouts/mobile_layout.dart';
import 'layouts/narrow_layout.dart';
import 'layouts/wide_layout.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Color(0x00f3e5f5),
                    Color(0x00e1bee7),
                    Color(0x00ce93d8),
                    Color(0x00ba68c8),
                  ]
              )
          ),
        child: SafeArea(
            child: LayoutBuilder(
              builder: (context,constraints) {
                if(constraints.maxWidth > 1080){
                    print('MaxWidth = ${constraints.maxWidth}');
                  return const WideLayout();
                }else if (constraints.maxWidth < 300){
                  return const MobileLayout();
                }
                return const NarrowLayout();
              }
            )
        ),
      ),
    );
  }
}










