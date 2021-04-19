import 'package:bank_app/shared/colors.dart';
import 'package:flutter/material.dart';

class CardTransacoes extends StatelessWidget {
  final String date;

  const CardTransacoes({Key key, this.date}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            date,
            style: TextStyle(
              fontSize: 12,
              color: azul3,
              fontWeight: FontWeight.w700,
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: double.infinity,
            height: 150,
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 0,
                  blurRadius: 15,
                  offset: Offset(5, 5),
                ),
              ],
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
