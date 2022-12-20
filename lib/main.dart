import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tugas_besar/auth/sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:tugas_besar/config/colors.dart';
import 'package:tugas_besar/providers/product_provider.dart';
import 'package:tugas_besar/providers/review_cart_provider.dart';
import 'package:tugas_besar/providers/user_provider.dart';
import 'package:tugas_besar/screens/home/home_screens.dart';
import 'package:tugas_besar/screens/product_overview/product_overview.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductProvider>(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider<UserProvider>(
          create: (context) => UserProvider(),
        ),
        ChangeNotifierProvider<ReviewCartProvider>(
          create: (context) => ReviewCartProvider(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData(
            primaryColor: primaryColor,
            scaffoldBackgroundColor: scaffoldBackgroundColor),
        debugShowCheckedModeBanner: false,
        home: SignIn(),
      ),
    );
  }
}
