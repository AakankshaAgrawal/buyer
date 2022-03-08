import 'package:flutter/material.dart';
import 'package:ff_navigation_bar/ff_navigation_bar.dart';

List<FFNavigationBarItem> items = [
  FFNavigationBarItem(
    iconData: Icons.shopping_bag,
    label: 'Shop',
    selectedBackgroundColor: Colors.green[700],
  ),
  FFNavigationBarItem(
    iconData: Icons.person,
    label: 'Profile',
    selectedBackgroundColor: Colors.green[700],
  ),
];



List Productlist;
String Phone_no;
String Name;
String Email;
String Password;
String ValidCredential;
String Buyer_id;
String ngrok='https://79d1-203-194-100-241.ngrok.io';