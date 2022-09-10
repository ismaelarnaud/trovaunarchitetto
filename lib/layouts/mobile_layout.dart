import 'package:flutter/material.dart';

import '../components/horizontal_divider.dart';
import '../components/hoverable_button.dart';
import '../components/search_bar.dart';
import '../utilities/CustomAppBarConstants.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({
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
            Row(
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                      primary: Colors.white.withOpacity(0.1)
                  ),
                  onPressed: (){},
                  child: Text("Tua",
                    style: CustomAppBarConstants.kHomePageButtonStyle,
                  ),
                ),
                Row(
                  children: [
                    SizedBox(width: 20.0,),
                    HoverableButton(buttonText: "Lavora con noi - Iscriviti qui",style: CustomAppBarConstants.kActionsPageButtonStyle, buttonSize: CustomAppBarConstants.kSubscribeButtonSize, buttonType: CustomAppBarConstants.kSubscribeButton,)

                  ],
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            Text("Trova subito il tuo "
                "\n        architetto ",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  letterSpacing: .7,
                  fontSize: 25.0
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SearchBar(completeSearchBar: false),
            SizedBox(
              height: 80,
            ),
            HorizontalDivider(),
            SizedBox(
              height: 400,
            ),

          ],
        ),
      ),
    );
  }
}