import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tugas_besar/config/colors.dart';
import 'package:tugas_besar/widgets/single_item.dart';

class Search extends StatelessWidget {
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryColor,
        title: Text("Search"),
        actions: [
          Padding(
              padding: const EdgeInsets.all(8), child: Icon(Icons.menu_rounded))
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("Items"),
          ),
          Container(
            height: 55,
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: BorderSide.none),
                fillColor: Color(0xffc2c2c2),
                filled: true,
                hintText: "Cari barang di Toko",
                suffixIcon: Icon(Icons.search),
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SingleItem(isBool: false),
          SingleItem(isBool: false),
          SingleItem(isBool: false),
          SingleItem(isBool: false),
          SingleItem(isBool: false),
          SingleItem(isBool: false),
          SingleItem(isBool: false),
          SingleItem(isBool: false),
        ],
      ),
    );
  }
}
