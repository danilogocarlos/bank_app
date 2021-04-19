import 'package:bank_app/shared/colors.dart';
import 'package:bank_app/ui/home/widgets/header/menu_button.dart';
import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * .40,
      child: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: MediaQuery.of(context).size.height * .02),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'R\$ 2.324,00',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.white,
                        size: 20,
                      ),
                      SizedBox(width: 10),
                      Container(
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                        ),
                      )
                    ],
                  )
                ],
              ),
              Text('Saldo disponível',
                  style: TextStyle(color: azul3, fontSize: 14)),
              SizedBox(height: MediaQuery.of(context).size.height * .03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  MenuButton(
                    title: "Extratos",
                    image: "statement.svg",
                  ),
                  SizedBox(width: 10),
                  MenuButton(
                    title: "Transferências",
                    image: "send_money.svg",
                  ),
                  SizedBox(width: 10),
                  MenuButton(
                    title: "Pagamentos",
                    image: "payment.svg",
                  ),
                  SizedBox(width: 10),
                  MenuButton(
                    title: "Investimentos",
                    image: "invest.svg",
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
