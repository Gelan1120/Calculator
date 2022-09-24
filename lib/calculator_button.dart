import 'package:flutter/material.dart';
class CalculatorButton extends StatelessWidget {
  const CalculatorButton({
    Key? key,
    required this.label,
    required this.onTap,
    required this.size,
    this.icon,
    this.backgroundColor = Colors.black,
    this.foregroundColor = Colors.white,

    this.labelColor = Colors.black,
    this.borderColor =  Colors.white,

  }) : super(key: key);

  final String label;
  final Icon? icon;
  final VoidCallback onTap;
  final double size;
  final Color backgroundColor;
  final Color foregroundColor;

  final Color borderColor;
  final Color labelColor;

  @override
  Widget build(BuildContext context) {
    if(icon == null){
      return TextButton(
          child: Text(
              label.toUpperCase(),
              style: TextStyle(fontSize: size)
          ),
          style: ButtonStyle(
              padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(size/2)),
              backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
              foregroundColor: MaterialStateProperty.all<Color>(foregroundColor),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      side: BorderSide(color: borderColor)
                  )
              )
          ),
          onPressed: onTap
      );
    } else {
      return ElevatedButton(
        style: ButtonStyle(
            padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(size/2)),
            backgroundColor: MaterialStateProperty.all<Color>(backgroundColor),
            foregroundColor: MaterialStateProperty.all<Color>(foregroundColor),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                    side: BorderSide(color: borderColor)
                )
            )
        ),
        onPressed: onTap,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon?? Container(),
          ],
        ),
      );
    }
  }
}