import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:problem/Absencesd.dart';
import 'package:problem/Login.dart';
import 'package:problem/Profile.dart';

class DashbordWidget extends StatefulWidget {
  const DashbordWidget({Key? key}) : super(key: key);

  @override
  _DashbordWidgetState createState() => _DashbordWidgetState();
}

class _DashbordWidgetState extends State<DashbordWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
            padding: EdgeInsetsDirectional.fromSTEB(120, 120, 120, 120),
            child: Text(
              'الرئيسية',
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
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 45, 0, 0),
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  color: Color(0xFF3F4343),
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
              child: Text(
                '',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Tajawal',
                  color: Color(0xFF3F4343),
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(36, 40, 35, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                height: 344,
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
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(210, 19, 0, 0),
                      child: Text(
                        'التالي',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          color: Color(0xFFB38E44),
                          fontSize: 20,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 120, 0, 0),
                      child: Text(
                        '.لا توجد فعاليات قادمة',
                        style: TextStyle(
                          fontFamily: 'Tajawal',
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(35, 85, 35, 30),
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
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(28, 0, 0, 0),
                      child: Container(
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
                            Icons.home_outlined,
                            color: Color(0xFFFAFAFA),
                            size: 20,
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
                      ),
                    ),
                    IconButton(
                      hoverColor: Colors.transparent,
                      iconSize: 60,
                      icon: Icon(
                        Icons.person_outline,
                        color: Color(0xFF004146),
                        size: 25,
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
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.105,
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
                    width: MediaQuery.of(context).size.width,
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
    );
  }
  Future signOut() async{
    await FirebaseAuth.instance.signOut();
  }
}
