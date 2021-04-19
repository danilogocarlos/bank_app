import 'package:bank_app/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MenuButton extends StatelessWidget {
  final String title;
  final String image;

  const MenuButton({Key key, this.title, this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.12,
          height: MediaQuery.of(context).size.width * 0.12,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: brancoGelo,
            borderRadius: BorderRadius.circular(14),
          ),
          child: SvgPicture.asset(
            'lib/assets/images/$image',
            color: azulBB,
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            color: brancoGelo,
            fontSize: 11,
          ),
        )
      ],
    );
  }
}
