// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ServeceWidget extends StatefulWidget {
  const ServeceWidget({
    Key? key,
    required this.name,
    required this.price,
    required this.tapHandler,
    required this.isSelected,
  }) : super(key: key);
  final String name;
  final String price;
  final void Function(String) tapHandler;
  final bool isSelected;

  @override
  State<ServeceWidget> createState() => _ServeceWidgetState();
}

class _ServeceWidgetState extends State<ServeceWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.tapHandler(widget.name),
      child: Chip(
          backgroundColor: widget.isSelected
              ? Colors.black.withOpacity(0.8)
              : Colors.grey.withOpacity(0.2),
          label: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.name,
                style: TextStyle(
                  fontSize: 15.0,
                  fontFamily: 'Nunito',
                  color: widget.isSelected ? Colors.white : Colors.black,
                ),
              ),
              const SizedBox(
                width: 5.0,
              ),
              Text(
                'Rp ${widget.price}',
                style: TextStyle(
                  fontSize: 13.0,
                  fontFamily: 'Nunito',
                  color: widget.isSelected ? Colors.white : Colors.black,
                ),
              ),
            ],
          )),
    );
  }
}
