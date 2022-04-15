import 'package:flutter/material.dart';

import 'package:flutter_auth/size_config.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
// import 'special_offers.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key); // sonradan eklendi

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            const DiscountBanner(), // aramızda konuşuruz
            Categories(),
            //SpecialOffers(), //delete
            SizedBox(height: getProportionateScreenWidth(30)),
            const PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}