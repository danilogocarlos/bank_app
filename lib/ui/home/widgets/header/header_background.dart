import 'package:bank_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HeaderBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * .45,
      color: azul2,
      child: SvgPicture.asset(
        'lib/assets/images/logo-bg.svg',
        fit: BoxFit.cover,
        color: preto,
      ),
    );
  }
}
