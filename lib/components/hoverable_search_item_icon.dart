import 'package:flutter/material.dart';

class HoverableSearchItemIcon extends StatefulWidget {
  final String text;
  final Widget icon;
  const HoverableSearchItemIcon({
    Key? key, required this.text, required this.icon,
  }) : super(key: key);

  @override
  State<HoverableSearchItemIcon> createState() => _HoverableSearchItemIconState();
}

class _HoverableSearchItemIconState extends State<HoverableSearchItemIcon> {
  bool _hovering = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (hoverEvent) => setState (() => _hovering = true),
      onExit: (exitEvent) => setState(() => _hovering = false),
      child: Container(
        margin: const EdgeInsets.all(4.0),
        padding: const EdgeInsets.only(left: 30.0),
        decoration: BoxDecoration(
            color: _hovering ? Colors.grey.withOpacity(.05) : Colors.white,
            borderRadius: BorderRadius.circular(20.0)

        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            widget.icon,
            Expanded(
              child: Column(
                children: [
                  SizedBox(height: 12.0,),
                  Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: widget.text,
                            hintStyle: const TextStyle(
                                color: Colors.black
                            ),
                            hoverColor: Colors.white.withOpacity(.1),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide.none,
                            )
                        ),
                      )
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}