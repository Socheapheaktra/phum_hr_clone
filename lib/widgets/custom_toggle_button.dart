import 'package:flutter/material.dart';

class CustomToggleButton extends StatefulWidget {
  CustomToggleButton({
    Key? key,
    required this.children,
  }) : super(key: key);

  List<String> children = List.filled(2, [], growable: false);

  @override
  State<CustomToggleButton> createState() => _CustomToggleButtonState();
}

class _CustomToggleButtonState extends State<CustomToggleButton> {
  late int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: widget.children.map((String value) {
          return Container(
            padding: const EdgeInsets.symmetric(
              vertical: 5,
              horizontal: 15,
            ),
            decoration: BoxDecoration(
              color: widget.children. ? Colors.blue.shade800 : Colors.grey.shade200,
              borderRadius: BorderRadius.circular(10),
            ),
            height: 35,
            child: Center(
              child: Text(
                widget.children[0],
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(color: isActive ? Colors.white : Colors.black),
              ),
            ),
          ),
        }).toList(),
      ),
    );
  }
}
