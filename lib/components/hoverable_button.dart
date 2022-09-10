import 'package:flutter/material.dart';
import 'package:trovaunarchitetto/utilities/CustomAppBarConstants.dart';
import 'package:trovaunarchitetto/utilities/SearchBarConstants.dart';

class HoverableButton extends StatefulWidget {
  final String buttonText;
  final TextStyle style;
  final double buttonSize;
  final String buttonType;
  const HoverableButton({Key? key, required this.buttonText, required this.style, required this.buttonSize, required this.buttonType}) : super(key: key);

  @override
  State<HoverableButton> createState() => _HoverableButtonState();
}

class _HoverableButtonState extends State<HoverableButton> {
  bool _hovering = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (hoverEvent) => setState (() => _hovering = true),
      onExit: (exitEvent) => setState(() => _hovering = false),
      child: Container(
        width: widget.buttonSize,
        height: 40,
        decoration: BoxDecoration(
          color: buttonBackgroundColor(),
          borderRadius: BorderRadius.circular(20.0)
        ),
        child: getButtonType()
      ),
    );
  }

  Color? buttonBackgroundColor () {
    if(widget.buttonType == CustomAppBarConstants.kSubscribeButton && !_hovering){
      return Colors.purpleAccent.withOpacity(.1);
    } else if (widget.buttonType == CustomAppBarConstants.kSubscribeButton && _hovering) {
      return Colors.purpleAccent.withOpacity(.3);
    } else if (widget.buttonType == SearchBarConstants.kSeachButton && !_hovering){
      return Colors.purpleAccent.withOpacity(.9);
    } else if (widget.buttonType == SearchBarConstants.kSeachButton && _hovering){
      return Colors.purple.withOpacity(.9);
    } else if (!(widget.buttonType == CustomAppBarConstants.kSubscribeButton) && !_hovering){
      return Colors.white;
    }
    return Colors.purpleAccent.withOpacity(.1);
  }

  Widget getButtonType () {
    if(!(widget.buttonType == SearchBarConstants.kSeachButton)) {
      return TextButton(
        style: TextButton.styleFrom(
          primary: Colors.white.withOpacity(0.1),

        ),
        onPressed: () {

        },
        child: Text(widget.buttonText,
          style: widget.style,
        ),
      );
    }
    return TextButton.icon(
      style: TextButton.styleFrom(
        primary: Colors.white.withOpacity(0.1),

      ),
      onPressed: () {

      },
      label: Text(widget.buttonText,
        style: widget.style,
      ),
      icon: Icon(Icons.search, color: Colors.white),

    );
  }


  /*!(widget.buttonType == CustomAppBarConstants.kSubscribeButton) ? _hovering ? Colors.purpleAccent.withOpacity(.1)  : Colors.white.withOpacity(0.1)
      : Colors.white.withOpacity(0.1),*/
}
