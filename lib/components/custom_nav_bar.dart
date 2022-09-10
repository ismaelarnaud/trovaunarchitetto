import 'package:flutter/material.dart';

import '../utilities/CustomAppBarConstants.dart';
import 'hoverable_button.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      textBaseline: TextBaseline.alphabetic,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          style: TextButton.styleFrom(
              primary: Colors.white.withOpacity(0.1)
          ),
          onPressed: (){},
          child: const Text("TrovaUnArchitetto",style: CustomAppBarConstants.kHomePageButtonStyle,),
        ),
        Row(
          children: const [
            HoverableButton(buttonText: "Come funziona",style: CustomAppBarConstants.kActionsPageButtonStyle, buttonSize: CustomAppBarConstants.kActionsButtonSize, buttonType: CustomAppBarConstants.kActionsButton,),
            SizedBox(width: 20.0,),
            HoverableButton(buttonText: "Chi siamo",style: CustomAppBarConstants.kActionsPageButtonStyle, buttonSize: CustomAppBarConstants.kActionsButtonSize, buttonType: CustomAppBarConstants.kActionsButton,),
            SizedBox(width: 20.0,),
            HoverableButton(buttonText: "Aziende",style: CustomAppBarConstants.kActionsPageButtonStyle, buttonSize: CustomAppBarConstants.kActionsButtonSize, buttonType: CustomAppBarConstants.kActionsButton,),
            SizedBox(width: 10.0,),
            HoverableButton(buttonText: "Accedi",style: CustomAppBarConstants.kActionsPageButtonStyle, buttonSize: CustomAppBarConstants.kActionsButtonSize, buttonType: CustomAppBarConstants.kActionsButton,),
            SizedBox(width: 40.0,),
            HoverableButton(buttonText: "Lavora con noi - Iscriviti qui",style: CustomAppBarConstants.kActionsPageButtonStyle, buttonSize: CustomAppBarConstants.kSubscribeButtonSize, buttonType: CustomAppBarConstants.kSubscribeButton,)

          ],
        ),
      ],
    );
  }
}