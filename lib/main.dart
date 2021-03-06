import 'package:e_commerce_app/app.dart';
import 'package:e_commerce_app/data/keys.dart';
import 'package:e_commerce_app/data/strings.dart';
import 'package:e_commerce_app/providers/category_state.dart';
import 'package:e_commerce_app/providers/color_state.dart';
import 'package:e_commerce_app/providers/favourite_state.dart';
import 'package:e_commerce_app/providers/cart_state.dart';
import 'package:e_commerce_app/providers/new_card_state.dart';
import 'package:e_commerce_app/providers/payment_state.dart';
import 'package:e_commerce_app/providers/size_state.dart'; 
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  await GetStorage.init(Keys.favouriteProducts);  
  await GetStorage.init(Keys.cart);   
  await GetStorage.init(Keys.payments);   
  
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => CategoryState()),
      ChangeNotifierProvider(create: (_) => SizeState()),
      ChangeNotifierProvider(create: (_) => ColorState()),
      ChangeNotifierProvider(create: (_) => FavouriteState()),
      ChangeNotifierProvider(create: (_) => CartState()),
      ChangeNotifierProvider(create: (_) => PaymentState()),
      ChangeNotifierProvider(create: (_) => NewCardState()),
    ],
    child: const MyApp()
    ,) 
  );
}

 