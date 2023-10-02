import 'package:flutter/material.dart';

class DetailPertemuanView extends StatelessWidget {
  DetailPertemuanView({
    super.key,
  });

  static const routeName = '/detail_pertemuan';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 86,
        title: Text(
          'Absen App',
          style: TextStyle(
            fontFamily: 'cursive',
            fontSize: 40,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
        ],
        backgroundColor: const Color(0xFF0D47A1),
      ),
      body: Center(
        child: Text("KAMU CANTIK"),
      ),
    );
  }
}
