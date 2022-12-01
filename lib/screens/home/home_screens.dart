import 'package:flutter/material.dart';

import 'package:tugas_besar/config/colors.dart';

import 'package:tugas_besar/screens/home/singal_product.dart';
import 'package:tugas_besar/screens/product_overview/product_overview.dart';
import 'package:tugas_besar/screens/search/search.dart';

import 'drawer_side.dart';

class HomeScreen extends StatelessWidget {
  Widget _buildHerbsProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Herbs Seasonings'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productName: "Herbs",
                        productImage:
                            'https://sarasa.id/image/produk/gallery-snack/arem-ayam.png',
                      ),
                    ),
                  );
                },
                productImage:
                    'https://sarasa.id/image/produk/gallery-snack/arem-ayam.png',
                productName: 'Herbs',
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productName: "Herbs1",
                        productImage:
                            'https://sarasa.id/image/produk/gallery-snack/arem-ayam.png',
                      ),
                    ),
                  );
                },
                productImage:
                    ('https://sarasa.id/image/produk/gallery-snack/arem-ayam.png'),
                productName: 'Herbs1',
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productName: "Herbs2",
                        productImage:
                            'https://sarasa.id/image/produk/gallery-snack/arem-ayam.png',
                      ),
                    ),
                  );
                },
                productImage:
                    ('https://sarasa.id/image/produk/gallery-snack/arem-ayam.png'),
                productName: 'Herbs2',
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productName: "Herbs3",
                        productImage:
                            'https://sarasa.id/image/produk/gallery-snack/arem-ayam.png',
                      ),
                    ),
                  );
                },
                productImage:
                    ('https://sarasa.id/image/produk/gallery-snack/arem-ayam.png'),
                productName: 'Herbs3',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildFreshProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Herbs Seasonings'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productName: "Herbs",
                        productImage:
                            'https://sarasa.id/image/produk/gallery-snack/arem-ayam.png',
                      ),
                    ),
                  );
                },
                productImage:
                    ('https://sarasa.id/image/produk/gallery-snack/arem-ayam.png'),
                productName: 'Herbs',
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productName: "Herbs1",
                        productImage:
                            'https://sarasa.id/image/produk/gallery-snack/arem-ayam.png',
                      ),
                    ),
                  );
                },
                productImage:
                    ('https://sarasa.id/image/produk/gallery-snack/arem-ayam.png'),
                productName: 'Herbs1',
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productName: "Herbs2",
                        productImage:
                            'https://sarasa.id/image/produk/gallery-snack/arem-ayam.png',
                      ),
                    ),
                  );
                },
                productImage:
                    ('https://sarasa.id/image/produk/gallery-snack/arem-ayam.png'),
                productName: 'Herbs2',
              ),
              SingalProduct(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => ProductOverview(
                        productName: "Herbs3",
                        productImage:
                            'https://sarasa.id/image/produk/gallery-snack/arem-ayam.png',
                      ),
                    ),
                  );
                },
                productImage:
                    ('https://sarasa.id/image/produk/gallery-snack/arem-ayam.png'),
                productName: 'Herbs3',
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildRootProduct(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Herbs Seasonings'),
              Text(
                'view all',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              // SingalProduct(

              //

              //   productImage:

              //       ('https://cdn.britannica.com/17/196817-050-6A15DAC3/vegetables.jpg'),

              //   productName: 'Herbs', onTap: () {

              //   Navigator.of(context).push(MaterialPageRoute(

              //       builder: (context) =>  ProductOverview()));

              // },

              // ),

              //

              SingalProduct(
                  productImage:
                      ('https://sarasa.id/image/produk/gallery-snack/arem-ayam.png'),
                  productName: 'Herbs',
                  onTap: () {}),

              SingalProduct(
                  productImage:
                      ('https://sarasa.id/image/produk/gallery-snack/arem-ayam.png'),
                  productName: 'Herbs',
                  onTap: () {}),

              SingalProduct(
                  productImage:
                      ('https://sarasa.id/image/produk/gallery-snack/arem-ayam.png'),
                  productName: 'Herbs',
                  onTap: () {}),
            ],
          ),
        ),
      ],
    );
  }

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawerside(),
      appBar: AppBar(
        backgroundColor: primaryColor,
        iconTheme: IconThemeData(color: textColor),
        title: Text(
          'Home',
          style: TextStyle(color: textColor, fontSize: 17),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: primaryColor,
            radius: 15,
            child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => Search(),
                    ),
                  );
                },
                icon: Icon(
                  Icons.search,
                  size: 25,
                  color: textColor,
                )),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: CircleAvatar(
              backgroundColor: primaryColor,
              radius: 12,
              child: Icon(
                Icons.shop,
                size: 25,
                color: textColor,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  opacity: 80,
                  image: NetworkImage(
                      'https://cdn0-production-images-kly.akamaized.net/pJP9an-tb2Mb8xvP39P-VGy9JPk=/469x260/smart/filters:quality(75):strip_icc():format(webp)/kly-media-production/medias/3168274/original/097466500_1593673392-fried-spring-rolls-cutting-board_1150-17010.jpg'),
                ),
                color: Colors.black,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Padding(
                          padding:
                              const EdgeInsets.only(right: 130, bottom: 10),
                          child: Container(
                            height: 50,
                            width: 100,
                            decoration: const BoxDecoration(
                              color: Color(0xffd1ad17),
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(50),
                                bottomLeft: Radius.circular(50),
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'Enak',
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  shadows: [
                                    BoxShadow(
                                        color: Colors.black,
                                        blurRadius: 10,
                                        offset: Offset(3, 3))
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Text(
                          'Danusanku',
                          style: TextStyle(
                              shadows: [
                                BoxShadow(
                                    color: Colors.black,
                                    blurRadius: 10,
                                    offset: Offset(3, 3))
                              ],
                              fontSize: 40,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        const Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Jajanan Enak dan Bergizi',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(),
                  ),
                ],
              ),
            ),
            _buildHerbsProduct(context),
            _buildFreshProduct(context),
            _buildRootProduct(context),
          ],
        ),
      ),
    );
  }
}
