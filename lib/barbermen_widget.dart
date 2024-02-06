// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class BarbermenWidget extends StatefulWidget {
  const BarbermenWidget({
    Key? key,
    required this.imgPath,
    required this.name,
    required this.tapHandler,
    required this.isSelected,
  }) : super(key: key);
  final String imgPath;
  final String name;
  final void Function(String) tapHandler;
  final bool isSelected;

  @override
  State<BarbermenWidget> createState() => _BarbermenWidgetState();
}

class _BarbermenWidgetState extends State<BarbermenWidget> {
  Color getSelectedBarbermen() {
    if (widget.isSelected) {
      return Colors.green.withOpacity(0.3);
    } else {
      return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                image: DecorationImage(
                    image: AssetImage(widget.imgPath), fit: BoxFit.cover),
              ),
            ),
            InkWell(
              onTap: () {
                widget.tapHandler(widget.name);
              },
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  color: getSelectedBarbermen(),
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 7.0,
        ),
        Text(
          widget.name,
          style: const TextStyle(
            fontSize: 15.0,
            fontFamily: 'FiraSans',
          ),
        ),
      ],
    );
  }
}
