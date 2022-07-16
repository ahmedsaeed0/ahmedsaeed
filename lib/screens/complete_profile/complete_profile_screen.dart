import 'package:flutter/material.dart';

import 'components/body.dart';

class CompleteProfileScreen extends StatefulWidget {
  static String routeName = "/complete_profile";

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Body(),
    );
  }
}
