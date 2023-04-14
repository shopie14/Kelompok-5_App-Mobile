import 'package:flutter/material.dart';
import 'package:pertemuan_v/models/user.dart';

class ProfileDetail extends StatefulWidget {
  const ProfileDetail({
    super.key,
    required this.user,
  });
  final User user;

  @override
  State<ProfileDetail> createState() => _ProfileDetailState();
}

class _ProfileDetailState extends State<ProfileDetail> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "profile detail screen",
        ),
      ),
    );
  }
}
