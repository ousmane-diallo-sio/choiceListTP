import 'package:choice_list_tp/choice.dart';
import 'package:choice_list_tp/choice_item.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  final Widget child;

  const Header({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: Colors.deepPurpleAccent,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Vos choix :",
              style: Theme.of(context).textTheme.titleLarge,
            ),
            child,
          ],
        ),
      ),
    );
  }
}
