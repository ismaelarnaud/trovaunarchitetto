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
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(30.0),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.withOpacity(0.2)
                )
              )
            ),
            height: 500.0,
            child: Column(
              children: [
                const CustomNavBar(),
                const SizedBox(
                  height: 200.0,
                ),
                const Text("Trova subito il tuo architetto ",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      letterSpacing: .7,
                      fontSize: 35.0
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const SearchBar(completeSearchBar: true),
                /*const SizedBox(
                  height: 100,
                ),*/
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(50.0),
            height: 1000.0,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 205.0),
                  child: Row(
                    children: [
                      Text("Un esperto per ogni esigenza",
                        style: const TextStyle(
                            fontSize: 28.0,
                            fontWeight: FontWeight.w500
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: kProfessionCards,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 1000.0,
            child: Placeholder(),
          ),
          Container(
            height: 500.0,
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}





