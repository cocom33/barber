// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class TimeWidget extends StatefulWidget {
  const TimeWidget({
    Key? key,
    required this.time,
    required this.tapHandler,
    required this.isSelected,
  }) : super(key: key);
  final String time;
  final void Function(String) tapHandler;
  final bool isSelected;

  @override
  State<TimeWidget> createState() => _TimeWidgetState();
}

class _TimeWidgetState extends State<TimeWidget> {
  Color switchTimeColor() {
    if (widget.isSelected) {
      return Colors.black.withOpacity(0.8);
    } else {
      return Colors.grey.withOpacity(0.2);
    }
  }

  Color switchContentTimeColor() {
    if (widget.isSelected) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeIn,
      decoration: BoxDecoration(
        color: switchTimeColor(),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 50,
      width: 85,
      margin: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
      child: InkWell(
        onTap: () {
          widget.tapHandler(widget.time);
        },
        child: Center(
          child: Text(
            widget.time,
            style: TextStyle(
              fontSize: 17.0,
              fontFamily: 'Nunito',
              fontWeight: FontWeight.bold,
              color: switchContentTimeColor(),
            ),
          ),
        ),
      ),
    );
  }
}
