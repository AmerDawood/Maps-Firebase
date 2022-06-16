import 'package:firebase_maps/data/models/place_suggestion.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class PlacesItem extends StatelessWidget {
  final PlaceSuggestion placeSuggestion;

  const PlacesItem({Key? key, required this.placeSuggestion}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var subTitle = placeSuggestion.description
        .replaceAll(placeSuggestion.description.split(',')[0], '');
    return Container(
      width: double.infinity,
      margin: EdgeInsetsDirectional.all(8),
      padding: EdgeInsetsDirectional.all(4),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(8)),
      child: Column(
        children: [
          ListTile(
            leading: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: MyColor.lightBlue),
              child: Icon(
                Icons.place,
                color: MyColor.blue,
              ),
            ),
            title: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${placeSuggestion.description.split(',')[0]}\n',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: subTitle.substring(2),
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
