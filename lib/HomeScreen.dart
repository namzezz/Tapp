import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Color _borderColor = Colors.black;
  Color _borderColortwo = Colors.black;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(15, 45, 20, 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 20,
                        height: 20,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 7),
                      Text(
                        'Hello, Vineetha',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 15,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      Spacer(),
                      SvgPicture.asset(
                        'assets/lamp.svg',
                        alignment: Alignment.centerRight,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.030 * MediaQuery.of(context).size.height,
                  ),
                  Row(
                    children: [
                      Text(
                        'Where do you ',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'want to explore today?',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w800,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.040 * MediaQuery.of(context).size.height,
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(13),
                    ),
                    child: TextField(
                      decoration: InputDecoration(

                        hintText: '   Search',

                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 0.030 * MediaQuery.of(context).size.height,
                  ),
                  Row(
                    children: [
                      Text(
                        '  Choose Category',
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(width: 0.48 * MediaQuery.of(context).size.width),
                      InkWell(
                        onTap: () {
                          // Perform an action when the InkWell is tapped.
                        },
                        child:
                          Text(
                            'See All',
                            style: TextStyle(
                              fontFamily: 'Inter',
                              fontSize: 12,
                              color: Colors.grey,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                      ),
                    ],
                  ),

                  SizedBox(
                    height: 0.020 * MediaQuery.of(context).size.height,
                  ),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {
                          // Perform an action when the first tile is tapped.
                        },
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: _borderColor,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.all(Radius.circular(10.0)),
                          ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _borderColor = Colors.green;
                              });// handle tap event
                            },
                            child: Container(
                              padding: EdgeInsets.all(8.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    child: Image.asset("assets/BEACH.png"),
                                  ),

                                  Text(
                                    'Beach',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 14,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 12),
                      InkWell(
                        onTap: () {
                          // Perform an action when the second tile is tapped.
                        },
                        child: Container(
                          width: 100,
                          height: 50,
                          decoration: BoxDecoration(
                          border: Border.all(
                            color: _borderColortwo,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.all(Radius.circular(10.0)),
                        ),
                          child: InkWell(
                            onTap: () {
                              setState(() {
                                _borderColor = Colors.green;
                              });// handle tap event
                            },
                            child: Container(
                              padding: EdgeInsets.all(0.0),
                              child: Row(
                                children: [
                                  Container(
                                    width: 40,
                                    height: 40,
                                    child: Image.asset("assets/mountain.png"),
                                  ),

                                  Text(
                                    'Mountain',
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 12,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 0.020 * MediaQuery.of(context).size.height,
                  ),


                ],
              ),

            ),

            Padding(padding: EdgeInsets.fromLTRB(15,0,10,300),
           /* child:  ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                5,
                    (index) => Container(
                  height: 100,
                  width:50,

                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('asset/beach.png'),
                        fit: BoxFit.cover
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: Alignment.topRight,
                        child: Icon(
                          Icons.favorite,
                          color: Colors.white,
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.black38,
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0),
                            ),
                          ),
                          child: Text(
                            "Tile $index",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )*/

            ),
          ],
        ),
      ),
    );
  }
}
