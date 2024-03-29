import 'package:flutter/material.dart';
import 'package:suraj_portfolio_profile/res/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';


class GlassButton extends StatefulWidget {
  final String text;
  final double height;
  final double width;
  double textSize;

  GlassButton({
    required this.text,
    required this.textSize,
    required this.height,
    required this.width,
  });

  @override
  _GlassButtonState createState() => _GlassButtonState();
}

class _GlassButtonState extends State<GlassButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        launchUrlString(
            'https://drive.google.com/drive/folders/1qcbEPBBYTjWA11i5ragRB_rMR5gkRrI3');
      },
      onHover: (hover) {
        setState(() {
          _isHovered = hover;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        height: widget.height,
        width: widget.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.height * 0.5),
          gradient: _isHovered == false
              ? LinearGradient(colors: [
                  Colors.white70.withOpacity(0.2),
                  buttonColor.withOpacity(0.2)
                ], begin: Alignment.topLeft, end: Alignment.bottomRight)
              : LinearGradient(colors: [
                  buttonColor.withOpacity(0.3),
                  buttonColor.withOpacity(0.3)
                ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          border: Border.all(
            color: _isHovered ? buttonColor : Colors.white70.withOpacity(0.2),
            width: _isHovered ? 3 : 2,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(widget.height * 0.15),
            child: FittedBox(
                child: Text(widget.text, style: normalText(widget.textSize))),
          ),
        ),
      ),
    );
  }
}
