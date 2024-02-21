import 'dart:async';
import 'dart:io';

import 'package:final_project_flutter/app_text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:final_project_flutter/apps_colors.dart';

class HomePage extends StatefulWidget {
  HomePage();

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: bottomNavigationBar(),
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
        title: Text(
          'NEWSPAPER',
          style: AppTextStyles.headline,
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.account_circle),
            iconSize: 30,
            onPressed: () {},
          ),
        ],
      ),
      drawer: Drawer(),
      body: Container(
          color: AppColors.primary,
          height: double.infinity,
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: SingleChildScrollView(
                        physics: BouncingScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        child: Column(
                          children: [
                            Padding(
                                padding: EdgeInsets.fromLTRB(20, 20, 20, 0),
                                child: topSection())
                          ],
                        ))),
                // bottomSection()
              ])),
    );
  }

  Widget bottomSection() {
    return Padding(
        padding: EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // buttonHomePage(),
            // SizedBox(height: 14),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "need_help",
                  ),
                  SizedBox(width: 6),
                  GestureDetector(
                    onTap: () async {
                      print("Test Tap Here");
                    },
                    child: Text("tap_here"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
          ],
        ));
  }

  Widget topSection() {
    return Column(
      children: [
        searchBox(),
        SizedBox(
          height: 20,
        ),
        newscard(),
        SizedBox(
          height: 20,
        ),
        scrollableTabs(),
        SizedBox(
          height: 20,
        ),
        newsItem(),
        // tabCategoryNews(),
      ],
    );
  }

  Widget searchBox() {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: AppColors.primary,
        // borderRadius:
        //     BorderRadius.circular(30),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
      ),
      child: TextField(
        decoration: InputDecoration(
          icon: Icon(Icons.search),
          hintText: 'Explore news',
          border: InputBorder.none,
        ),
      ),
    );
  }

  Widget newscard() {
    return Container(
      height: 280,
      width: double.infinity,
      // padding: EdgeInsets.symmetric(horizontal: 8),
      padding: EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: AppColors.primary,
        // borderRadius:
        //     BorderRadius.circular(30),
        border: Border.all(
          color: Colors.black, // Warna border kotak pencarian
          width: 2, // Ketebalan border
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            width: double.infinity,
            height: 150, // Atur tinggi sesuai kebutuhan
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/kick-off-quantum-alliance-1.jpg'), // Ganti dengan path gambar Anda
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Teenage are looking for new \ntypes of vintage fashions',
                style: AppTextStyles.subHeadline,
              ),
              Icon(
                Icons.bookmark,
                size: 28,
              ),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Row(
            children: [
              Text(
                "Read more",
                style: AppTextStyles.body_highliht,
              ),
              SizedBox(
                width: 4,
              ),
              Icon(Icons.arrow_forward),
            ],
          ),
        ],
      ),
    );
  }

  Widget scrollableTabs() {
    // Style untuk tab yang tidak terpilih
    var unselectedTabStyle = TextStyle(color: Colors.black);
    // Style untuk tab yang terpilih
    var selectedTabStyle = TextStyle(color: Colors.white);

    return Container(
      height: 40,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Science', style: selectedTabStyle),
            decoration: BoxDecoration(
              color: Colors.red,
              border: Border.all(color: Colors.black, width: 2),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Business', style: unselectedTabStyle),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.black, width: 2),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Technology', style: unselectedTabStyle),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.black, width: 2),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Sport', style: unselectedTabStyle),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.black, width: 2),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Health', style: unselectedTabStyle),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.black, width: 2),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('General', style: unselectedTabStyle),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.black, width: 2),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Container(
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text('Entertainment', style: unselectedTabStyle),
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.black, width: 2),
            ),
          ),
        ],
      ),
    );
  }

  Widget newsItem() {
    return Column(
      children: [
        Container(
          width: double.infinity,
          // padding: EdgeInsets.all(4.0),
          // decoration: BoxDecoration(
          //   // color: Colors.brown[200],
          //   color: AppColors.primary,
          //   border: Border.all(
          //     color: Colors.black,
          //     width: 2.0,
          //   ),
          // ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Voluptat sit neque faucius \niaculis duis nec non',
                    style: AppTextStyles.subHeadline_highlith,
                  ),
                  Text(
                      'Iaculis turpis ultrices at partu is \nrient vel, pellentesque ultr icies',
                      style: AppTextStyles.body),
                ],
              ),
              SizedBox(width: 10),
              Image.asset(
                'assets/images/quantum technology.jpg',
                width: 110,
                height: 85,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Divider(color: Colors.black),
        SizedBox(
          height: 8,
        ),
        Container(
          width: double.infinity,
          // padding: EdgeInsets.all(4.0),
          // decoration: BoxDecoration(
          //   // color: Colors.brown[200],
          //   color: AppColors.primary,
          //   border: Border.all(
          //     color: Colors.black,
          //     width: 2.0,
          //   ),
          // ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Voluptat sit neque faucius \niaculis duis nec non',
                    style: AppTextStyles.subHeadline_highlith,
                  ),
                  Text(
                      'Iaculis turpis ultrices at partu is \nrient vel, pellentesque ultr icies',
                      style: AppTextStyles.body),
                ],
              ),
              SizedBox(width: 10),
              Image.asset(
                'assets/images/quantum technology.jpg',
                width: 110,
                height: 85,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Divider(color: Colors.black),
        SizedBox(
          height: 8,
        ),
        Container(
          width: double.infinity,
          // padding: EdgeInsets.all(4.0),
          // decoration: BoxDecoration(
          //   // color: Colors.brown[200],
          //   color: AppColors.primary,
          //   border: Border.all(
          //     color: Colors.black,
          //     width: 2.0,
          //   ),
          // ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Voluptat sit neque faucius \niaculis duis nec non',
                    style: AppTextStyles.subHeadline_highlith,
                  ),
                  Text(
                      'Iaculis turpis ultrices at partu is \nrient vel, pellentesque ultr icies',
                      style: AppTextStyles.body),
                ],
              ),
              SizedBox(width: 10),
              Image.asset(
                'assets/images/quantum technology.jpg',
                width: 110,
                height: 85,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Divider(color: Colors.black),
        SizedBox(
          height: 8,
        ),
        Container(
          width: double.infinity,
          // padding: EdgeInsets.all(4.0),
          // decoration: BoxDecoration(
          //   // color: Colors.brown[200],
          //   color: AppColors.primary,
          //   border: Border.all(
          //     color: Colors.black,
          //     width: 2.0,
          //   ),
          // ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Voluptat sit neque faucius \niaculis duis nec non',
                    style: AppTextStyles.subHeadline_highlith,
                  ),
                  Text(
                      'Iaculis turpis ultrices at partu is \nrient vel, pellentesque ultr icies',
                      style: AppTextStyles.body),
                ],
              ),
              SizedBox(width: 10),
              Image.asset(
                'assets/images/quantum technology.jpg',
                width: 110,
                height: 85,
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget bottomNavigationBar() {
    return BottomAppBar(
      height: 60,
      color: AppColors.button,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          // Home Button
          IconButton(
            icon: Icon(Icons.home, color: Colors.red),
            onPressed: () {},
          ),
          // Message Button
          IconButton(
            icon: Icon(Icons.message, color: Colors.white),
            onPressed: () {},
          ),
          // Favorite Button
          IconButton(
            icon: Icon(Icons.favorite_border, color: Colors.white),
            onPressed: () {},
          ),
          // Profile Button
          IconButton(
            icon: Icon(Icons.person_outline, color: Colors.white),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
