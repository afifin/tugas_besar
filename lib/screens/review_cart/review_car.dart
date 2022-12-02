import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tugas_besar/config/colors.dart';
import 'package:tugas_besar/widgets/single_item.dart';

class ReviewCart extends StatelessWidget {
  const ReviewCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ListTile(
        title: Text("Total Belanja"),
        subtitle: Text(
          "Rp 120.000",
          style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
        ),
        trailing: Container(
          width: 160,
          child: MaterialButton(
              child: Text("Submit"),
              color: primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              onPressed: () {}),
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Keranjang",
          style: TextStyle(
            color: textColor,
            fontSize: 18,
          ),
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          SingleItem(isBool: true),
          SingleItem(isBool: true),
          SingleItem(isBool: true),
          SingleItem(isBool: true),
          SingleItem(isBool: true),
          SingleItem(isBool: true),
          SingleItem(isBool: true),
          SingleItem(isBool: true),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
