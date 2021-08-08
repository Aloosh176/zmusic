import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../models/song.dart';

class CustomListTile extends StatelessWidget {
  CustomListTile({required this.song, required this.onTap});

  final Song song;
  final onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  height: 80.0,
                  width: 80.0,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      song.image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  height: 80.0,
                  width: 80.0,
                  child: Icon(
                    Icons.play_circle_fill,
                    color: Colors.white.withOpacity(0.7),
                    size: 42,
                  ),
                ),
              ],
            ),
            SizedBox(width: 16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  song.title,
                  style: TextStyle(
                    color: Colors.white60,
                    fontWeight: FontWeight.normal,
                    fontSize: 20.0,
                  ),
                ),
                SizedBox(height: 8.0),
                Text(
                  song.singer,
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.5),
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Spacer(),
            Icon(
              Icons.more_horiz,
              color: Colors.white.withOpacity(0.6),
              size: 32.0,
            ),
          ],
        ),
      ),
    );
  }
}
