import 'package:flutter/material.dart';

import '../components/custom_nav_bar.dart';
import '../components/horizontal_divider.dart';
import '../components/hoverable_button.dart';
import '../components/profession_card.dart';
import '../components/search_bar.dart';
import '../utilities/CustomAppBarConstants.dart';

const kProfessionCardHeight = 280.0;
const kProfessionCardWidth = 250.0;
const kProfessionCardRightMargin = 40.0;
const kServiceCardHeight = 140.0;
const kServiceCardWidth = 125.0;
const kServiceCardRightMargin = 30.0;

 List<ProfessionCard> kProfessionCards = [
   ProfessionCard(image: 'images/interior_design.jpg', profession: "Interior designer", cardHeight: kProfessionCardHeight, cardWidth: kProfessionCardWidth, cardRightMargin: kProfessionCardRightMargin,),
   ProfessionCard(image: 'images/industrial_design.jpg', profession: "Industrial designer", cardHeight: kProfessionCardHeight, cardWidth: kProfessionCardWidth, cardRightMargin: kProfessionCardRightMargin,),
   ProfessionCard(image: 'images/restorer.jpg', profession: "Restauratore", cardHeight: kProfessionCardHeight, cardWidth: kProfessionCardWidth, cardRightMargin: kProfessionCardRightMargin,),
   ProfessionCard(image: 'images/graphic_design.jpg', profession: "Graphic designer", cardHeight: kProfessionCardHeight, cardWidth: kProfessionCardWidth, cardRightMargin: kProfessionCardRightMargin,),
   ProfessionCard(image: 'images/paesagista.jpg', profession: "Paesaggista", cardHeight: kProfessionCardHeight, cardWidth: kProfessionCardWidth, cardRightMargin: kProfessionCardRightMargin,),
];

List<ProfessionCard> kServiceCards = [
  ProfessionCard(image: 'images/interior_design.jpg', profession: "Interior designer", cardHeight: kServiceCardHeight, cardWidth: kServiceCardWidth, cardRightMargin: kServiceCardRightMargin,),
  ProfessionCard(image: 'images/industrial_design.jpg', profession: "Industrial designer", cardHeight: kServiceCardHeight, cardWidth: kServiceCardWidth, cardRightMargin: kServiceCardRightMargin,),
  ProfessionCard(image: 'images/restorer.jpg', profession: "Restauratore", cardHeight: kServiceCardHeight, cardWidth: kServiceCardWidth, cardRightMargin: kServiceCardRightMargin,),
  ProfessionCard(image: 'images/graphic_design.jpg', profession: "Graphic designer", cardHeight: kServiceCardHeight, cardWidth: kServiceCardWidth, cardRightMargin: kServiceCardRightMargin,),
  ProfessionCard(image: 'images/paesagista.jpg', profession: "Paesaggista", cardHeight: kServiceCardHeight, cardWidth: kServiceCardWidth, cardRightMargin: kServiceCardRightMargin,),
  ProfessionCard(image: 'images/interior_design.jpg', profession: "Interior designer", cardHeight: kServiceCardHeight, cardWidth: kServiceCardWidth, cardRightMargin: kServiceCardRightMargin,),
  ProfessionCard(image: 'images/industrial_design.jpg', profession: "Industrial designer", cardHeight: kServiceCardHeight, cardWidth: kServiceCardWidth, cardRightMargin: kServiceCardRightMargin,),
  ProfessionCard(image: 'images/restorer.jpg', profession: "Restauratore", cardHeight: kServiceCardHeight, cardWidth: kServiceCardWidth, cardRightMargin: kServiceCardRightMargin,),
  ProfessionCard(image: 'images/graphic_design.jpg', profession: "Graphic designer", cardHeight: kServiceCardHeight, cardWidth: kServiceCardWidth, cardRightMargin: kServiceCardRightMargin,),
];

class WideLayout extends StatelessWidget {
  const WideLayout({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

      ],
    );
  }
}





