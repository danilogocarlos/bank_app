import 'package:bank_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MyBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: cinza.withOpacity(.3),
            spreadRadius: 0,
            blurRadius: 5,
            offset: Offset(0, -2),
          )
        ],
      ),
      child: BottomAppBar(
        color: brancoGelo,
        elevation: 0,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * 0.06,
                height: MediaQuery.of(context).size.width * 0.06,
                child: SvgPicture.asset(
                  'lib/assets/images/pix.svg',
                  color: azulBB,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.06,
                height: MediaQuery.of(context).size.width * 0.06,
                child: SvgPicture.asset(
                  'lib/assets/images/historic.svg',
                  color: azulBB,
                ),
              ),
              SizedBox(width: MediaQuery.of(context).size.width * 0.1),
              Container(
                width: MediaQuery.of(context).size.width * 0.06,
                height: MediaQuery.of(context).size.width * 0.06,
                child: SvgPicture.asset(
                  'lib/assets/images/cards.svg',
                  color: azulBB,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.06,
                height: MediaQuery.of(context).size.width * 0.06,
                child: SvgPicture.asset(
                  'lib/assets/images/timeline.svg',
                  color: azulBB,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
