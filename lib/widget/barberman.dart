// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Barberman extends StatefulWidget {
  const Barberman({
    Key? key,
    required this.imgPath,
    required this.name,
    required this.isSelected,
    required this.tapHandler,
  }) : super(key: key);

  final String imgPath;
  final String name;
  final bool isSelected;
  final void Function(String) tapHandler;

  @override
  State<Barberman> createState() => _BarbermanState();
}

class _BarbermanState extends State<Barberman> {
  Color getSelectedBarber() {
    if (widget.isSelected) {
      return Colors.amber.withOpacity(0.8);
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
                  image: AssetImage(
                    widget.imgPath,
                  ),
                  fit: BoxFit.cover,
                ),
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
                  borderRadius: BorderRadius.circular(10),
                  color: getSelectedBarber(),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 7.0,
        ),
        Text(
          widget.name,
          style: TextStyle(
            fontFamily: "FiraSans",
            fontSize: 15.0,
          ),
        ),
      ],
    );
  }
}
