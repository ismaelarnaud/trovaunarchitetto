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
      child: SizedBox(
      height: 1400.0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 120.0),
          //padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 3,
                          child: Container(
                            padding: EdgeInsets.only(left: 100.0),
                            decoration: const BoxDecoration(
                                color: Color(0xffE2C5DE),
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(12.0),
                                    bottomLeft: Radius.circular(12.0)
                                )
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Professionisti",
                                  style: TextStyle(
                                    fontSize: 35.0
                                  ),
                                ),
                                Text("Con TrovaUnArchitetto trovi i migliori architetti"
                                    "\nnella tua città, per tutte le tue esigenze",
                                  style: TextStyle(
                                      fontSize: 20.0
                                  ),
                                ),
                                Text("Il servizio è gratuito e senza impegni",
                                  style: TextStyle(
                                      fontSize: 20.0
                                  ),
                                ),
                                ElevatedButton(
                                  style: ElevatedButton.styleFrom(

                                  ),
                                    onPressed: () {

                                    },
                                    child: Text("Cerca un professionista")
                                )
                              ],
                            ),
                          )
                      ),
                      Expanded(
                        flex: 5,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.purpleAccent,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0)),
                              image: DecorationImage(
                                fit: BoxFit.fitWidth,
                                  image: AssetImage('images/graphic_design.jpg')
                              ),
                            ),
                          )
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.only(left: 100.0),
                            decoration: const BoxDecoration(
                                color: Color(0xffE2C5DE),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), bottomLeft: Radius.circular(12.0))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Progetti",
                                  style: TextStyle(
                                      fontSize: 35.0
                                  ),
                                ),
                                Text("Con TrovaUnArchitetto trovi i migliori architetti"
                                    "\nnella tua città, per tutte le tue esigenze"),
                                Text("Il servizio è gratuito e senza impegni"),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(

                                    ),
                                    onPressed: () {

                                    },
                                    child: Text("Scopri i nostri progetti")
                                )
                              ],
                            ),
                          )
                      ),
                      Expanded(
                          flex: 5,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.purpleAccent,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0))
                            ),
                            child: Placeholder(),
                          )
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Expanded(
                          flex: 3,
                          child: Container(
                            padding: EdgeInsets.only(left: 100.0),
                            decoration: const BoxDecoration(
                                color: Color(0xffE2C5DE),
                                borderRadius: BorderRadius.only(topLeft: Radius.circular(12.0), bottomLeft: Radius.circular(12.0))
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text("Chi siamo",
                                  style: TextStyle(
                                      fontSize: 35.0
                                  ),
                                ),
                                Text("Con TrovaUnArchitetto trovi i migliori architetti"
                                    "\nnella tua città, per tutte le tue esigenze"),
                                Text("Il servizio è gratuito e senza impegni"),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(

                                    ),
                                    onPressed: () {

                                    },
                                    child: Text("Scopri il team")
                                )
                              ],
                            ),
                          )
                      ),
                      Expanded(
                          flex: 5,
                          child: Container(
                            decoration: const BoxDecoration(
                                color: Colors.purpleAccent,
                                borderRadius: BorderRadius.only(topRight: Radius.circular(12.0), bottomRight: Radius.circular(12.0))
                            ),
                            child: Placeholder(),
                          )
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      )
    );
  }
}





