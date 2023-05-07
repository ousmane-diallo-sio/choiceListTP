import 'package:choice_list_tp/choice.dart';
import 'package:flutter/material.dart';

class ChoiceItem extends StatelessWidget {
  final bool isClickable;
  final Choice choice;
  final VoidCallback? onTap;
  final Color? color;

  const ChoiceItem({
    Key? key,
    required this.choice,
    this.isClickable = false,
    this.onTap,
    this.color,
  }) : super(key: key);

  void _onTap() {
    if (isClickable && onTap != null) {
      onTap!();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(
            Radius.circular(15),
          ),
          color: color ?? Colors.grey.shade200,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Text(choice.text, style: Theme.of(context).textTheme.labelLarge,),
        ),
      ),
    );
  }
}
