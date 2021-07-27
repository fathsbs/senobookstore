import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:senobookstore/pages/about_page.dart';
import 'package:senobookstore/pages/cart_page.dart';
import 'package:senobookstore/pages/checkout_page.dart';
import 'package:senobookstore/pages/checkout_succes_page.dart';
import 'package:senobookstore/pages/edit_profile_page.dart';
import 'package:senobookstore/pages/help_page.dart';

import 'package:senobookstore/pages/sign_in_page.dart';
import 'package:senobookstore/pages/sign_up_page.dart';
import 'package:senobookstore/pages/splash_page.dart';
import 'package:senobookstore/pages/home/main_page.dart';
import 'package:senobookstore/providers/auth_provider.dart';
import 'package:senobookstore/providers/cart_provider.dart';
import 'package:senobookstore/providers/page_provider.dart';
import 'package:senobookstore/providers/product_provider.dart';
import 'package:senobookstore/providers/transaction_provider.dart';
import 'package:senobookstore/providers/wishlist_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => CartProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => TransactionProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => PageProvider(),
        ),
        
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          
          '/edit-profile': (context) => EditProfilePage(),
          '/about': (context) => AboutPage(),
          '/help': (context) => HelpPage(),
          
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
