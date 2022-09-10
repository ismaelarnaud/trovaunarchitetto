import 'package:flutter/material.dart';

class ProfessionCard extends StatelessWidget {
  final String image;
  final String profession;
  final double cardHeight;
  final double cardWidth;
  final double cardRightMargin;
  const ProfessionCard({
    Key? key, required this.image, required this.profession, required this.cardHeight, required this.cardWidth, required this.cardRightMargin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: cardHeight,
          width: cardWidth,
          margin: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
              color: Colors.purpleAccent,
              borderRadius: BorderRadius.circular(10.0),
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(image)
              )
          ),
        ),
        const SizedBox(height: 10.0,),
        Container(
          margin: EdgeInsets.only(left: 20.0),
          child: Text(profession,
            style: const TextStyle(
                fontSize: 15.0,
                fontWeight: FontWeight.w600
            ),
          ),
        )
      ],
    );
  }
}