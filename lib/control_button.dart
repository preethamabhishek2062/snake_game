import 'package:flutter/material.dart';

class ControlButton extends StatelessWidget {
  final Function onPressed;
  final Icon icon;

  const ControlButton({Key key, this.onPressed, this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 1,
      child: Container(
        width: 80.0,
        height: 80.0,
        child: FittedBox(
          child: FloatingActionButton(
            backgroundColor: Colors.black12,
            elevation: 0.0,
            child: this.icon,
            onPressed: this.onPressed,
          ),
        ),
      ),
    );
  }
}
