import 'package:flutter/material.dart';

import '../components/horizontal_divider.dart';
import '../components/hoverable_button.dart';
import '../components/search_bar.dart';
import '../utilities/CustomAppBarConstants.dart';

class NarrowLayout extends StatelessWidget {
  const NarrowLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

          ],
        ),
      ),
    );
  }
}