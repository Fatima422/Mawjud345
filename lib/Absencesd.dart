import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:problem/Dashbord.dart';
import 'package:problem/Login.dart';
import 'package:problem/Profile.dart';

class AbsencesdWidget extends StatefulWidget {
  const AbsencesdWidget({Key? key}) : super(key: key);

  @override
  _AbsencesdWidgetState createState() => _AbsencesdWidgetState();
}

class _AbsencesdWidgetState extends State<AbsencesdWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFFAFAFA),
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          title: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(11, 11, 11, 11),
            child: Text(
              'الغيابات  و التأخيرات',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Tajawal',
                color: Color(0xFF004146),
                fontSize: 20,
              ),
            ),
          ),
          actions: [],
          flexibleSpace: FlexibleSpaceBar(
            background: Image.network(
              '',
              fit: BoxFit.cover,
            ),
          ),
          centerTitle: true,
          toolbarHeight: 70,
          elevation: 5,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(15, 50, 15, 90),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.95,
                          height: 258,
                          decoration: BoxDecoration(
                            color: Color(0xffFAFAFA),
                            boxShadow: [
                              BoxShadow(
                                blurRadius: 6,
                                color: Color(0x33000000),
                                offset: Offset(0, 3),
                              )
                            ],
                            borderRadius: BorderRadius.circular(57),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: AlignmentDirectional(0.1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 25, 0, 0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      color: Color(0xFFC6AA72),
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Text(
                                      'محاضرات الإثنين',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontFamily: 'Tajawal',
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.w500,
                                        height: 2,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.65, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 40, 0, 0),
                                  child: Text(
                                    'اسم المادة :',
                                    style: TextStyle(
                                      fontFamily: 'Tajawal',
                                      color: Color(0xFF3F4343),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    height: 1,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF707070),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.65, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Text(
                                    'التأخيرات:',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      fontFamily: 'Tajawal',
                                      color: Color(0xFF3F4343),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    height: 1,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF707070),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.65, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 8, 0, 0),
                                  child: Text(
                                    ':الغيابات ',
                                    style: TextStyle(
                                      fontFamily: 'Tajawal',
                                      color: Color(0xFF3F4343),
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: AlignmentDirectional(0.1, 0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 10, 0, 0),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.75,
                                    height: 1,
                                    decoration: BoxDecoration(
                                      color: Color(0xFF707070),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding:
                EdgeInsetsDirectional.fromSTEB(35, 190, 35, 30),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 52,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(49),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        hoverColor: Colors.transparent,
                        iconSize: 60,
                        icon: Icon(
                          Icons.home_outlined,
                          color: Color(0xFF004146),
                          size: 30,
                        ),
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DashbordWidget(),
                            ),
                          );
                        },
                      ),
                      Padding(
                        padding:
                        EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                        child: IconButton(
                          hoverColor: Colors.transparent,
                          iconSize: 60,
                          icon: Icon(
                            Icons.person_outline,
                            color: Color(0xFF004146),
                            size: 30,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfileWidget(),
                              ),
                            );
                          },
                        ),
                      ),
                      Container(
                        width: 37,
                        height: 37,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color(0xFF3D9CA3),
                              Color(0xFF004146)
                            ],
                            stops: [0, 1],
                            begin: AlignmentDirectional(0, -1),
                            end: AlignmentDirectional(0, 1),
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: IconButton(
                          hoverColor: Colors.transparent,
                          iconSize: 60,
                          icon: Icon(
                            Icons.rule,
                            color: Color(0xFFFAFAFA),
                            size: 22,
                          ),
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => AbsencesdWidget(),
                              ),
                            );
                          },
                        ),
                      ),
                      IconButton(
                        hoverColor: Colors.transparent,
                        iconSize: 60,
                        icon: Icon(
                          Icons.calendar_today,
                          color: Color(0xFF004146),
                          size: 25,
                        ),
                        onPressed: () async {
                          await Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => DashbordWidget(),
                            ),
                          );
                        },
                      ),
                      /*IconButton(
                        hoverColor: Colors.transparent,
                        iconSize: 60,
                        icon: Icon(
                          Icons.logout,
                          color: Color(0xFF004146),
                          size: 25,
                        ),
                        onPressed: () async {
                          await signOut();
                          await Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginWidget(),
                            ),
                                (r) => false,
                          );
                        },
                      ),*/
                    ],
                  ),
                ),
              ),

              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 27, 0, 0),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 0.099,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF3D9CA3),
                        Color(0xFF004146),
                        Color(0xFF0E676E)
                      ],
                      stops: [0, 1, 1],
                      begin: AlignmentDirectional(0, -1),
                      end: AlignmentDirectional(0, 1),
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, -1.6),
                    child: Container(
                      width: double.infinity,
                      height: 30,
                      decoration: BoxDecoration(
                        color: Color(0xFF3D9CA3),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          ),
      ),
    );
  }

}
