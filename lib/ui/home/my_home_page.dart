import 'package:bank_app/shared/colors.dart';
import 'package:bank_app/ui/home/widgets/footer/bottom_app_bar.dart';
import 'package:bank_app/ui/home/widgets/footer/my_home_button.dart';
import 'package:bank_app/ui/home/widgets/header/header_background.dart';
import 'package:bank_app/ui/home/widgets/header/my_app_bar.dart';
import 'package:bank_app/ui/home/widgets/main_content/recent_transactions.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  double _contentScreenSize;
  double _yPosition;
  int _direction;

  @override
  void initState() {
    _contentScreenSize = 0;
    _yPosition = 0;
    _direction = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeight = MediaQuery.of(context).size.height;
    if (_contentScreenSize == 0) _contentScreenSize = _screenHeight * .60;
    if (_yPosition == 0) _yPosition = _screenHeight - _contentScreenSize - 63;

    return Scaffold(
      backgroundColor: azul2,
      body: Stack(
        children: [
          Align(alignment: Alignment.topCenter, child: HeaderBackground()),
          Align(alignment: Alignment.topCenter, child: MyAppBar()),
          Align(
            alignment: Alignment.bottomCenter,
            child: RecentTransations(
              size: _contentScreenSize,
              direction: _direction,
              onPanUpdate: (details) {
                double _initialPosition =
                    _screenHeight - (_screenHeight * .60) - 63;
                setState(() {
                  _direction =
                      details.delta.dy >= -2.1 && details.delta.dy <= 2.1
                          ? 0
                          : details.delta.dy < -2.1
                              ? 1
                              : -1;

                  _yPosition += details.delta.dy;
                  if (_yPosition < _initialPosition) {
                    _contentScreenSize -= details.delta.dy;
                  }
                });
              },
              onPanCancel: (details) {
                double _initialPosition =
                    _screenHeight - (_screenHeight * .60) - 63;
                double middlePosition = (_screenHeight -
                        (_screenHeight - (_screenHeight * .40) + 63)) /
                    2.0;
                setState(() {
                  if (_yPosition >= middlePosition) {
                    _yPosition = _initialPosition;
                    _contentScreenSize = _screenHeight * .60;
                    _direction = 0;
                  } else {
                    _yPosition = 17;
                    _contentScreenSize = _screenHeight - 80;
                    _direction = 0;
                  }
                });
              },
            ),
          ),
          // Positioned(
          //   top:
          //       (_screenHeight - (_screenHeight - (_screenHeight * .40) + 63)) /
          //           2.0,
          //   left: 0,
          //   right: 0,
          //   child: Divider(
          //     color: verde,
          //   ),
          // ),
          // Positioned(
          //   top: _screenHeight - (_screenHeight * .60) - 63,
          //   left: 0,
          //   right: 0,
          //   child: Divider(
          //     color: Colors.red,
          //   ),
          // ),
          // Positioned(
          //   top: _yPosition,
          //   left: 0,
          //   right: 0,
          //   child: Divider(
          //     color: Colors.yellow,
          //   ),
          // ),
        ],
      ),
      floatingActionButton: MyHomeButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyBottomAppBar(),
    );
  }
}
