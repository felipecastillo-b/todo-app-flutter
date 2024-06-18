import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorBackground,
      appBar: _buildAppBar(),
      body: Container(
        child: Text('This is home screen'),
      ),
      );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: colorBackground,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Icon(
          Icons.menu,
          color: colorBlack,
          size: 30,
          ),
          Container(
            height: 40,
            width: 40,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/avatar.jpeg'),
              ),
          )
      ]),
    );
  }
}