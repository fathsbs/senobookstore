import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:senobookstore/models/user_model.dart';
import 'package:senobookstore/providers/auth_provider.dart';
import 'package:senobookstore/providers/product_provider.dart';
import 'package:senobookstore/theme.dart';
import 'package:senobookstore/widgets/product_card.dart';
import 'package:senobookstore/widgets/product_tile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AuthProvider authProvider = Provider.of<AuthProvider>(context);
    UserModel user = authProvider.user;
    ProductProvider productProvider = Provider.of<ProductProvider>(context);

    Widget header() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hallo, ${user.name}',
                    style: primaryTextStyle.copyWith(
                      fontSize: 24,
                      fontWeight: semiBold,
                    ),
                  ),
                  Text(
                    '@${user.username}',
                    style: subtitleTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: regular,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 54,
              height: 54,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: user.profilePhotoUrl != null
                    ? DecorationImage(
                        image: NetworkImage('${user.profilePhotoUrl}'))
                    : DecorationImage(
                        image: AssetImage('assets/image_profile.png')),
              ),
            ),
          ],
        ),
      );
    }

    Widget categories() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 10,
                ),
                margin: EdgeInsets.only(
                  right: 16,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: primaryColor,
                ),
                child: Text(
                  'All Books',
                  style: primaryTextStyle.copyWith(
                    fontWeight: medium,
                    fontSize: 13,
                  ),
                ),
              ),
              // Container(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 12,
              //     vertical: 10,
              //   ),
              //   margin: EdgeInsets.only(
              //     right: 16,
              //   ),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12),
              //     border: Border.all(
              //       color: subtitleColor,
              //     ),
              //     color: transparentColor,
              //   ),
              //   child: Text(
              //     'Adventure',
              //     style: subtitleTextStyle.copyWith(
              //       fontWeight: medium,
              //       fontSize: 13,
              //     ),
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 12,
              //     vertical: 10,
              //   ),
              //   margin: EdgeInsets.only(
              //     right: 16,
              //   ),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12),
              //     border: Border.all(
              //       color: subtitleColor,
              //     ),
              //     color: transparentColor,
              //   ),
              //   child: Text(
              //     'Fantasy',
              //     style: subtitleTextStyle.copyWith(
              //       fontWeight: medium,
              //       fontSize: 13,
              //     ),
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 12,
              //     vertical: 10,
              //   ),
              //   margin: EdgeInsets.only(
              //     right: 16,
              //   ),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12),
              //     border: Border.all(
              //       color: subtitleColor,
              //     ),
              //     color: transparentColor,
              //   ),
              //   child: Text(
              //     'Self-Help',
              //     style: subtitleTextStyle.copyWith(
              //       fontWeight: medium,
              //       fontSize: 13,
              //     ),
              //   ),
              // ),
              // Container(
              //   padding: EdgeInsets.symmetric(
              //     horizontal: 12,
              //     vertical: 10,
              //   ),
              //   margin: EdgeInsets.only(
              //     right: 16,
              //   ),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(12),
              //     border: Border.all(
              //       color: subtitleColor,
              //     ),
              //     color: transparentColor,
              //   ),
              //   child: Text(
              //     'Religion',
              //     style: subtitleTextStyle.copyWith(
              //       fontWeight: medium,
              //       fontSize: 13,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      );
    }

    Widget popularProductsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'Popular Books',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget popularProducts() {
      return Container(
        margin: EdgeInsets.only(top: 14),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SizedBox(
                width: defaultMargin,
              ),
              Row(
                children: productProvider.products
                    .map(
                      (product) => ProductCard(product),
                    )
                    .toList(),
              ),
            ],
          ),
        ),
      );
    }

    Widget newArrivalsTitle() {
      return Container(
        margin: EdgeInsets.only(
          top: defaultMargin,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Text(
          'New Arrivals',
          style: primaryTextStyle.copyWith(
            fontSize: 22,
            fontWeight: semiBold,
          ),
        ),
      );
    }

    Widget newArrivals() {
      return Container(
        margin: EdgeInsets.only(
          top: 14,
        ),
        child: Column(
          children: productProvider.products
              .map(
                (product) => ProductTile(product),
              )
              .toList(),
        ),
      );
    }

    return ListView(
      children: [
        header(),
        categories(),
        popularProductsTitle(),
        popularProducts(),
        newArrivalsTitle(),
        newArrivals(),
      ],
    );
  }
}
