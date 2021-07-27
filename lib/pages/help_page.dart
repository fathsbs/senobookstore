import 'package:flutter/material.dart';
import 'package:senobookstore/theme.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    PreferredSizeWidget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.close),
        ),
        elevation: 0,
        centerTitle: true,
        title: Text(
          'Help',
        ),
      );
    }

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 500,
              padding: EdgeInsets.symmetric(horizontal: defaultMargin),
              margin: EdgeInsets.only(
                top: 50,
              ),
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Seno Book Store',
                      style: primaryTextStyle.copyWith(
                          fontSize: 20, fontWeight: bold),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Penggunaan :',
                      style: secondaryTextStyle.copyWith(
                          fontSize: 18, fontWeight: semiBold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1.  Memilih produk yang diinginkan',
                            style: primaryTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: light,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 4),
                          Text(
                            '2. Menambahkan produk yang diinginkan ke dalam cart',
                            style: primaryTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: light,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 4),
                          Text(
                            '3. Melakukan checkout produk',
                            style: primaryTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: light,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 4),
                          Text(
                            '4. Proses pembelian berhasil',
                            style: primaryTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: light,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                          SizedBox(height: 4),
                          Text(
                            '5. Selamat Belanja',
                            style: primaryTextStyle.copyWith(
                              fontSize: 15,
                              fontWeight: light,
                            ),
                            textAlign: TextAlign.justify,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: content(),
      resizeToAvoidBottomInset: false,
    );
  }
}
