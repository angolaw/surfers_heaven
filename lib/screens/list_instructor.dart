import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:surfersheaven/models/instructor.dart';
import 'package:surfersheaven/screens/instructor_detail.dart';

class ListInstructor extends StatefulWidget {
  @override
  _ListInstructorState createState() => _ListInstructorState();
}

class _ListInstructorState extends State<ListInstructor> {
  final instructors = allInstructors;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFAF6ED),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.arrow_back),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.menu),
              )
            ],
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Row(
//              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Santa Monica, CA",
                  style: GoogleFonts.tinos(
                      fontSize: 25, fontWeight: FontWeight.w500),
                ),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  onPressed: null,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: Text(
              "Best Surfing instructors in Santa Monica, California!",
              style: GoogleFonts.sourceSansPro(
                  color: Color(0xff5e5b54),
                  fontSize: 15,
                  fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15),
            child: TextField(
              decoration: InputDecoration(
                prefixIcon: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: null,
                ),
                hintText: 'Search',
                hintStyle: GoogleFonts.sourceSansPro(
                    color: Color(0xff5e5b54),
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
                suffixIcon: IconButton(
                  icon: Icon(Icons.filter_list),
                  onPressed: null,
                ),
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200,
            child: GridView.count(
              crossAxisCount: 3,
              crossAxisSpacing: 1,
              mainAxisSpacing: 1,
              primary: false,
              childAspectRatio: 0.67,
              children: <Widget>[
                ...instructors.map((e) {
                  return buildInstructorGrid(e);
                }).toList()
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildInstructorGrid(Instructor instructor) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => InstructorDetail(
                  selectedInstructor: instructor,
                )));
      },
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Stack(
          children: <Widget>[
            Container(
              height: 150,
              width: 100,
              color: Colors.transparent,
            ),
            Positioned(
              left: 30,
              top: 65,
              child: Container(
                height: 30,
                width: 40,
                decoration: BoxDecoration(boxShadow: [
                  BoxShadow(
                      blurRadius: 7,
                      color: Colors.grey.withOpacity(0.75),
                      offset: Offset(5, 25),
                      spreadRadius: 12)
                ]),
              ),
            ),
            Positioned(
              left: 12,
              top: 15,
              child: Hero(
                tag: instructor.instructorPic,
                child: Container(
                  height: 110,
                  width: 85,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(7),
                      image: DecorationImage(
                          image: AssetImage(instructor.instructorPic),
                          fit: BoxFit.cover)),
                ),
              ),
            ),
            Positioned(
              left: 22,
              top: 138,
              child: Column(
                children: <Widget>[
                  Text(
                    instructor.instructorName,
                    style: GoogleFonts.sourceSansPro(fontSize: 12),
                  ),
                  Row(
                    children: <Widget>[
                      Icon(
                        Icons.star,
                        color: Colors.grey.withOpacity(0.5),
                        size: 15,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        instructor.rating,
                        style: GoogleFonts.sourceSansPro(fontSize: 11),
                      ),
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
