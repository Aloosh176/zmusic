import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({Key? key}) : super(key: key);

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  final bgColor = Color(0xFF03174C);
  final iconHoverColor = Color(0xFF065BC3);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Container(
        child: Center(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(""),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      bgColor.withOpacity(0.4),
                      bgColor,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 12.0),
                child: Column(
                  children: [
                    SizedBox(height: 52.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.1),
                            borderRadius: BorderRadius.circular(50.0),
                          ),
                          child: Icon(
                            Icons.arrow_drop_down,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          'PLAYLIST',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.playlist_add,
                          color: Colors.white,
                        ),
                      ],
                    ),
                    Spacer(),
                    Text(
                      "",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 32.0,
                      ),
                    ),
                    SizedBox(height: 6.0),
                    Text(
                      "",
                      style: TextStyle(
                        color: Colors.white.withOpacity(0.6),
                        fontSize: 18.0,
                      ),
                    ),
                    SizedBox(height: 16.0),
                  ],
                ),
              ),
              SizedBox(height: 42.0),
              Slider.adaptive(
                value: 1.0,
                min: 0.0,
                max: 1.0,
                onChanged: (value) {},
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.fast_rewind,
                    color: Colors.white54,
                    size: 42.0,
                  ),
                  SizedBox(width: 32.0),
                  Container(
                    decoration: BoxDecoration(
                      color: iconHoverColor,
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_circle_up),
                        iconSize: 42.0,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 32.0),
                  Icon(
                    Icons.fast_forward,
                    color: Colors.white54,
                    size: 42.0,
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    Icons.bookmark_border,
                    color: iconHoverColor,
                  ),
                  Icon(
                    Icons.shuffle,
                    color: iconHoverColor,
                  ),
                  Icon(
                    Icons.repeat,
                    color: iconHoverColor,
                  ),
                ],
              ),
              SizedBox(height: 58.0),
            ],
          ),
        ),
      ),
    );
  }
}
