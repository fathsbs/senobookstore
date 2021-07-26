import 'package:flutter/material.dart';
import 'package:senobookstore/theme.dart';

class AboutPage extends StatelessWidget {
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
          'About',
        ),
      );
    }

    

    Widget content() {
      return Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 500,
              margin: EdgeInsets.only(
                top: defaultMargin,
              ),
              child: Center(
                child: Column(
                  children: [
                    Image.asset('assets/logo.png',height: 160,),
                    SizedBox(height: 20),
                    Text('Seno Book Store',style: primaryTextStyle,),
                    SizedBox(height: 5),
                    Text('Ver 1.00',style: primaryTextStyle,),
                    
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
