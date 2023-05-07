import 'package:choice_list_tp/choice.dart';
import 'package:choice_list_tp/choice_item.dart';
import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  final Widget child;

  const Footer({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: Colors.white,
      child: child,
    );
  }
}
