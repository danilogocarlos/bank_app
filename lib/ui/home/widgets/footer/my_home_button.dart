import 'package:bank_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyHomeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.all(5),
      width: MediaQuery.of(context).size.width * 0.12,
      height: MediaQuery.of(context).size.width * 0.12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: azulBB,
        boxShadow: [
          BoxShadow(
            color: azulBB.withOpacity(.25),
            spreadRadius: 0,
            blurRadius: 5,
            offset: Offset(0, 10),
          )
        ],
      ),
      child: SvgPicture.asset(
        'lib/assets/images/menu.svg',
        color: brancoGelo,
      ),
    );
  }
}
