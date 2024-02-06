// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class DateWidget extends StatefulWidget {
  const DateWidget({
    Key? key,
    required this.date,
    required this.day,
    required this.tapHandler,
    required this.isSelected,
  }) : super(key: key);
  final int date;
  final String day;
  final void Function(int) tapHandler;
  final bool isSelected;

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  Color switchColor() {
    if (widget.isSelected) {
      return Colors.black;
    } else {
      return Colors.grey.withOpacity(0.2);
    }
  }

  Color switchContentColor() {
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
        borderRadius: BorderRadius.circular(30),
        color: switchColor(),
      ),
      width: 60,
      height: 60,
      child: InkWell(
        onTap: () {
          widget.tapHandler(widget.date);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              widget.date.toString(),
              style: TextStyle(
                fontSize: 17.0,
                fontFamily: 'Nunito',
                fontWeight: FontWeight.bold,
                color: switchContentColor(),
              ),
            ),
            const SizedBox(
              height: 1.0,
            ),
            Text(
              widget.day,
              style: TextStyle(
                fontSize: 15,
                fontFamily: 'FiraSans',
                color: switchContentColor(),
              ),
            ),
          ],
        ),
      ),
    );
    // return Padding(
    //   padding: const EdgeInsets.symmetric(horizontal: 15),
    //   child: Container(
    //     height: 80,
    //     width: 80,
    //     decoration: const BoxDecoration(
    //       color: Colors.black,
    //       shape: BoxShape.circle,
    //     ),
    //     child: const Column(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       children: [
    //         Text(
    //           "18",
    //           textAlign: TextAlign.center,
    //           style: TextStyle(
    //               fontSize: 24.0,
    //               fontWeight: FontWeight.bold,
    //               fontFamily: 'FiraSans'),
    //         ),
    //         Text(
    //           "Tue",
    //           textAlign: TextAlign.center,
    //           style: TextStyle(
    //               fontSize: 18.0,
    //               fontWeight: FontWeight.w600,
    //               fontFamily: 'FiraSans'),
    //         ),
    //       ],
    //     ),
    //   ),
    // );
  }
}
