import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/custom_listview.dart';
import '../models/song.dart';
import 'details_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF03174C),
        appBar: AppBar(
          backgroundColor: Color(0xFF03174C),
          title: Text(
            "My Playlist",
            style: TextStyle(
              color: Colors.white70,
              fontStyle: FontStyle.italic,
              fontSize: 20.0,
            ),
          ),
        ),
        body: Stack(
          children: [
            SvgPicture.asset(
              'bg_home_border.svg',
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              alignment: AlignmentDirectional.topStart,
            ),
            Column(
              children: [
                Expanded(
                  child: ListView.builder(itemBuilder: (context, index) {
                    return CustomListTile(
                      song: Song(title: '', singer: '', image: '', url: ''),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DetailsPage(),
                          ),
                        );
                      },
                    );
                  }),
                ),
              ],
            ),
          ],
        ));
  }
}
