import 'package:flutter/material.dart';

class WatchTile extends StatelessWidget {
  const WatchTile({super.key, this.imageUrl});
  final imageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 40,right: 100,top: 8,bottom: 8),
      child: Image.asset(imageUrl),
    );
  }
}