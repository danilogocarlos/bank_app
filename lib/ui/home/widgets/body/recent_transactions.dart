import 'package:bank_app/shared/colors.dart';
import 'package:bank_app/ui/home/widgets/body/card_transacoes.dart';
import 'package:flutter/material.dart';

class RecentTransations extends StatelessWidget {
  final GestureDragUpdateCallback onPanUpdate;
  final GestureDragEndCallback onPanCancel;
  final double size;
  final int direction;

  const RecentTransations({
    Key key,
    this.onPanUpdate,
    this.onPanCancel,
    this.size,
    this.direction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      curve: Curves.easeOut,
      duration: Duration(milliseconds: 200),
      height: size,
      decoration: BoxDecoration(
        color: brancoGelo,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onPanEnd: onPanCancel,
            onPanUpdate: onPanUpdate,
            behavior: HitTestBehavior.translucent,
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      height: 20,
                      padding: EdgeInsets.only(top: 10),
                      child: direction == 0
                          ? Icon(Icons.remove, size: 24, color: cinza)
                          : direction > 0
                              ? Icon(Icons.keyboard_arrow_up_outlined,
                                  size: 24, color: cinza)
                              : Icon(Icons.keyboard_arrow_down_outlined,
                                  size: 24, color: cinza),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
                    child: Text(
                      "Transações recentes",
                      style: TextStyle(
                        color: azulBB,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                SingleChildScrollView(
                  physics: BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      CardTransacoes(date: 'HOJE'),
                      CardTransacoes(date: 'ONTEM'),
                      CardTransacoes(date: '15 ABR'),
                      SizedBox(height: 20)
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 10,
                    decoration: BoxDecoration(
                      color: brancoGelo,
                      boxShadow: [
                        BoxShadow(
                          color: brancoGelo,
                          spreadRadius: 5,
                          blurRadius: 5,
                          offset: Offset(0, 5),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
