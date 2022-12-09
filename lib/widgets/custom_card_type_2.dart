import 'package:iseneca/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? name;

  const CustomCardType2({
    super.key,
    required this.imageUrl, 
    this.name,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      elevation: 10,
      shadowColor: AppTheme.primary,
      child: Column(children: [
        FadeInImage(
          image: NetworkImage(imageUrl),
          placeholder: const AssetImage('assets/progress.gif'),
          width: double.infinity,
          height: 260,
          fit: BoxFit.cover,
          fadeInDuration: const Duration(milliseconds: 300),
        ),
        
        Container(
          padding: const EdgeInsets.only(),
          child: Text(name ?? ''),
        )
      ]),
    );
  }
}
