import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tugas_besar/config/colors.dart';
import 'package:tugas_besar/screens/my_profile/my_profile.dart';
import 'package:tugas_besar/screens/review_cart/review_car.dart';

class Drawerside extends StatelessWidget {
  Widget listTile(
      {required String title,
      required IconData iconData,
      final void Function()? onTap}) {
    return ListTile(
      onTap: onTap,
      leading: Icon(
        iconData,
        size: 32,
      ),
      title: Text(
        title,
        style: TextStyle(color: textColor),
      ),
    );
  }

  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xffd1ad17),
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.white54,
                    radius: 43,
                    child: CircleAvatar(
                      backgroundColor: Colors.yellow,
                      backgroundImage: NetworkImage(
                          "https://img2.pngdownload.id/20180716/lra/kisspng-logo-person-user-person-icon-5b4d2bd2236ca6.6010202115317841461451.jpg"),
                      radius: 40,
                    ),
                  ),
                  SizedBox(
                    width: 17,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Halo sobat, Berjumpa lagi"),
                      SizedBox(
                        height: 7,
                      ),
                      Container(
                        height: 30,
                        child: OutlinedButton(
                          onPressed: () {},
                          child: Text("Login"),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                                side: BorderSide(width: 2)),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            listTile(
              iconData: Icons.home_outlined,
              title: "Home",
            ),
            listTile(
                iconData: Icons.shop_outlined,
                title: "Keranjang",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ReviewCart(),
                    ),
                  );
                }),
            listTile(
                iconData: Icons.person_outlined,
                title: "Profil Saya",
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => MyProfile(),
                    ),
                  );
                }),
            listTile(
                iconData: Icons.notifications_outlined, title: "Notifikasi"),
            listTile(iconData: Icons.star_outlined, title: "Rating & Review"),
            listTile(iconData: Icons.favorite_outlined, title: "Wishlist"),
            listTile(
                iconData: Icons.copy_outlined, title: "Pengajuan Komplain"),
            listTile(iconData: Icons.format_quote_outlined, title: "FAQ"),
            Container(
              height: 350,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Contact Support"),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Text("Call us"),
                      SizedBox(
                        width: 10,
                      ),
                      Text("+62895383852401"),
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Text("E-Mail us"),
                        SizedBox(
                          width: 10,
                        ),
                        Text("afifinihza@gmail.com"),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
