import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';
import 'package:surfersheaven/models/instructor.dart';

class InstructorDetail extends StatefulWidget {
  final Instructor selectedInstructor;
  InstructorDetail({this.selectedInstructor});
  @override
  _InstructorDetailState createState() => _InstructorDetailState();
}

class _InstructorDetailState extends State<InstructorDetail> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: screenHeight,
            width: screenWidth,
            color: Colors.transparent,
          ),
          Container(
            height: screenHeight - screenHeight / 3,
            width: screenWidth,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/surfing.jpg'),
                    fit: BoxFit.fitWidth)),
          ),
          Positioned(
            top: screenHeight - screenHeight / 3 - 25,
            child: Container(
              padding: EdgeInsets.only(left: 20),
              height: screenHeight / 3 + 25,
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    widget.selectedInstructor.instructorName,
                    style: GoogleFonts.tinos(
                        fontSize: 25, fontWeight: FontWeight.w500),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Santa Monica, CA",
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff5e5b54)),
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Row(
                    children: <Widget>[
                      SmoothStarRating(
                        allowHalfRating: false,
                        starCount: 5,
                        rating: 4,
                        size: 15,
                        color: Color(0xfff36f32),
                        borderColor: Color(0xfff36f32),
                        spacing: 0,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "4.7",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffD58743)),
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "(200 reviews)",
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 14,
                            fontWeight: FontWeight.w400,
                            color: Color(0xffc2c0b6)),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Hello, my name is ${widget.selectedInstructor.instructorName}! I am an American professional surfer, author, actor, model, businessman, and innovator, best known for his unprecedented 11 world surfing championships",
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff201f1c)),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Read More",
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Color(0xfff36f32)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: 150,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "200",
                              style: GoogleFonts.sourceSansPro(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Reviews",
                              style: GoogleFonts.sourceSansPro(
                                  color: Color(0xff5e5b54),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              "4",
                              style: GoogleFonts.sourceSansPro(
                                  fontSize: 24, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              "Programs",
                              style: GoogleFonts.sourceSansPro(
                                  color: Color(0xff5e5b54),
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(
                  color: Color(0xffFAF6ED),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25))),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              height: 75,
              width: 100,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      ">",
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xfffff2d5)),
                    ),
                    Text(
                      "Availability",
                      style: GoogleFonts.sourceSansPro(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color(0xfffff2d5)),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  color: Color(0xfffe6D2e),
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(30))),
            ),
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 30),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffa4b2ae)),
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      size: 20,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 30),
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffa4b2ae)),
                child: Center(
                  child: IconButton(
                    icon: Icon(
                      Icons.favorite_border,
                      size: 20,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            top: (screenHeight - screenHeight / 3) / 2,
            left: (screenWidth / 2) - 75,
            child: Container(
              height: 40,
              width: 150,
              decoration: BoxDecoration(
                  color: Color(0xffa4b2ae),
                  borderRadius: BorderRadius.circular(20)),
              child: Center(
                child: Text(
                  "Explore programs",
                  style: GoogleFonts.sourceSansPro(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ),
          Positioned(
            top: screenHeight - screenHeight / 3 - 45,
            right: 25,
            child: Hero(
              tag: widget.selectedInstructor.instructorPic,
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            widget.selectedInstructor.instructorPic))),
              ),
            ),
          )
        ],
      ),
    );
  }
}
