import 'package:flutter/material.dart';

class AccountDetailsItems extends StatelessWidget {
  final String title;
  final String subtitle;

  AccountDetailsItems(this.title, this.subtitle);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 15),
      margin: EdgeInsets.only(top: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(title , style: TextStyle(color: Color(0xFF616161)),),
          Text(subtitle),
        ],
      ),
    );
  }
}
