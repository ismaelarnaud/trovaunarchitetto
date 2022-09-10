import 'package:flutter/material.dart';
import 'package:trovaunarchitetto/components/hoverable_button.dart';

import '../utilities/SearchBarConstants.dart';
import 'hoverable_search_item_icon.dart';



class SearchBar extends StatelessWidget {
  final bool completeSearchBar;
  const SearchBar({
    Key? key, required this.completeSearchBar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      width: 800.0,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(35.0),
          border: Border.all(
              color: Colors.blueGrey.withOpacity(.1)
          )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Visibility(
            visible: completeSearchBar,
            child: const Expanded(
              child: HoverableSearchItemIcon(text: 'Di cosa hai bisogno?', icon: Icon(Icons.search,color: Colors.deepPurple,),),
            ),
          ),
          Visibility(
            visible: completeSearchBar,
            child: Container(
              height: 30.0,
              width: .5,
              color: Colors.grey,
            ),
          ),
          const Expanded(
            child: HoverableSearchItemIcon(text: 'Dove ti serve?', icon: Icon(Icons.location_on,color: Colors.deepPurple,),),
          ),
          const HoverableButton(buttonText: "Cerca", style: SearchBarConstants.kSearchButtonStyle, buttonSize: 120.0, buttonType: SearchBarConstants.kSeachButton),
          const SizedBox(
            width: 5.0,
          )
        ],
      ),
    );
  }
}
