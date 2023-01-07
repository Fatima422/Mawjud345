import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:problem/Absencesd.dart';
import 'package:problem/Dashbord.dart';
import 'package:problem/Login.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
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
            padding: EdgeInsetsDirectional.fromSTEB(10, 10, 10, 10),
            child: Text(
              'الملف الشخصي',
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
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(80, 18, 80, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(11),
                      child: Image.asset(
                        'assets/images/download.jfif',
                        width: MediaQuery.of(context).size.width * 0.53,
                        height: 197.5,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(35, 15, 35, 0),
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 337.5,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 6,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                    borderRadius: BorderRadius.circular(57),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                        child: Text(
                          '',
                          textAlign: TextAlign.justify,
                          style:
                          TextStyle(
                            fontFamily: 'Tajawal',
                            color: Color(0xFFB38E44),
                            fontSize: 19,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 11, 0, 0),
                        child: Text(
                          '',
                          textAlign: TextAlign.justify,
                          style:
                          TextStyle(
                            fontFamily: 'Tajawal',
                            color: Color(0xFFB38E44),
                            fontSize: 19,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 22, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 18, 10, 0),
                              child: Text(
                                '',
                                style: TextStyle(),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
                              child: Text(
                                'الكلية :',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  color: Color(0xFF004146),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 22, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 18, 10, 0),
                              child: Text(
                                '',
                                style: TextStyle(),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
                              child: Text(
                                'القسم :',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  color: Color(0xFF004146),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 22, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 18, 10, 0),
                              child: Text(
                                '',
                                style: TextStyle(),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
                              child: Text(
                                'المرحلة :',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  color: Color(0xFF004146),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 22, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 18, 10, 0),
                              child: Text(
                                '',
                                style: TextStyle(),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
                              child: Text(
                                'الجنسية :',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  color: Color(0xFF004146),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 22, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 18, 10, 0),
                              child: Text(
                                '',
                                style: TextStyle(),
                              ),
                            ),
                            Padding(
                              padding:
                              EdgeInsetsDirectional.fromSTEB(0, 18, 0, 0),
                              child: Text(
                                'رقم الهوية :',
                                style: TextStyle(
                                  fontFamily: 'Tajawal',
                                  color: Color(0xFF004146),
                                  fontSize: 18,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(35, 20, 35, 30),
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
                      Container(
                        width: 37,
                        height: 37,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [Color(0xFF3D9CA3), Color(0xFF004146)],
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
                            Icons.person_outline,
                            color: Color(0xFFFAFAFA),
                            size: 20,
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
                      IconButton(
                        hoverColor: Colors.transparent,
                        iconSize: 60,
                        icon: Icon(
                          Icons.rule,
                          color: Color(0xFF004146),
                          size: 25,
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
                      IconButton(
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
                      ),
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
  Future signOut() async{
    await FirebaseAuth.instance.signOut();
  }
}
