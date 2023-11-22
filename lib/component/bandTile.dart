import 'package:flutter/material.dart';

class BandTile extends StatelessWidget {
  const BandTile({super.key, this.bandImageUrl});
  final bandImageUrl;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 100,right: 130),
      child: Image.asset(
      
        bandImageUrl,
        
       
        ),
    );
  }
}