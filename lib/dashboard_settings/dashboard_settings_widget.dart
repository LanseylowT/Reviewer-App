import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardSettingsWidget extends StatefulWidget {
  const DashboardSettingsWidget({
    Key? key,
    this.registrationRef,
  }) : super(key: key);

  final DocumentReference? registrationRef;

  @override
  _DashboardSettingsWidgetState createState() =>
      _DashboardSettingsWidgetState();
}

class _DashboardSettingsWidgetState extends State<DashboardSettingsWidget> {
  TextEditingController? textController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController = TextEditingController();
  }

  @override
  void dispose() {
    textController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF2D3142),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-1.16, -1.02),
                child: Image.asset(
                  'assets/images/Ellipses.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.cover,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0x00101213),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(-0.75, -0.05),
                        child: SelectionArea(
                            child: Text(
                          '9:40',
                          textAlign: TextAlign.center,
                          style: FlutterFlowTheme.of(context)
                              .bodyText1
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).primaryText,
                              ),
                        )),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: 100,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color(0x00FFFFFF),
                      ),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 15, 0),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.signal_cellular_alt,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24,
                            ),
                            Icon(
                              Icons.wifi_rounded,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 24,
                            ),
                            FaIcon(
                              FontAwesomeIcons.batteryHalf,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 24,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: AlignmentDirectional(0, 1),
                child: Container(
                  width: 335,
                  height: 59,
                  decoration: BoxDecoration(
                    color: Color(0xFF373D55),
                    borderRadius: BorderRadius.circular(69.52),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                            ),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Home',
                              icon: Icon(
                                Icons.home_rounded,
                                size: 20,
                              ),
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color: Color(0x004B39EF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          Container(
                            width: 100,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                            ),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Update',
                              icon: Icon(
                                Icons.update_rounded,
                                size: 20,
                              ),
                              options: FFButtonOptions(
                                width: 130,
                                height: 40,
                                color: Color(0x004B39EF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 10,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                          Container(
                            width: 105,
                            height: 100,
                            decoration: BoxDecoration(
                              color: Color(0x00FFFFFF),
                            ),
                            child: FFButtonWidget(
                              onPressed: () {
                                print('Button pressed ...');
                              },
                              text: 'Settings',
                              icon: Icon(
                                Icons.settings,
                                size: 20,
                              ),
                              options: FFButtonOptions(
                                width: 135,
                                height: 40,
                                color: Color(0x004B39EF),
                                textStyle: FlutterFlowTheme.of(context)
                                    .subtitle2
                                    .override(
                                      fontFamily: 'Poppins',
                                      color: Colors.white,
                                      fontSize: 8,
                                    ),
                                borderSide: BorderSide(
                                  color: Colors.transparent,
                                  width: 1,
                                ),
                                borderRadius: BorderRadius.circular(8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.7),
                child: Container(
                  width: 303.38,
                  height: 39,
                  decoration: BoxDecoration(
                    color: Color(0xFF41436A),
                    borderRadius: BorderRadius.circular(21.94),
                  ),
                  child: TextFormField(
                    controller: textController,
                    onChanged: (_) => EasyDebounce.debounce(
                      'textController',
                      Duration(milliseconds: 2000),
                      () => setState(() {}),
                    ),
                    obscureText: false,
                    decoration: InputDecoration(
                      hintText: 'Search',
                      hintStyle: FlutterFlowTheme.of(context).bodyText2,
                      enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      errorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      focusedErrorBorder: UnderlineInputBorder(
                        borderSide: BorderSide(
                          color: Color(0x00000000),
                          width: 1,
                        ),
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(4.0),
                          topRight: Radius.circular(4.0),
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.search_rounded,
                        color: Color(0xFF6E7695),
                      ),
                      suffixIcon: textController!.text.isNotEmpty
                          ? InkWell(
                              onTap: () async {
                                textController?.clear();
                                setState(() {});
                              },
                              child: Icon(
                                Icons.clear,
                                color: Color(0xFF757575),
                                size: 22,
                              ),
                            )
                          : null,
                    ),
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          color: Color(0xFF6E7695),
                          lineHeight: 1,
                        ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.45),
                child: Container(
                  width: 288,
                  height: 506,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: ListView(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    children: [
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: ListTile(
                          leading: Icon(
                            Icons.check,
                            color: Color(0xFF499D2F),
                          ),
                          title: Text(
                            'General Settings',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Manrope',
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF6E7695),
                            size: 20,
                          ),
                          tileColor: Color(0x00F5F5F5),
                          dense: false,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: ListTile(
                          leading: Icon(
                            Icons.account_circle,
                            color: Color(0xFF499D2F),
                          ),
                          title: Text(
                            'Account',
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Manrope',
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF6E7695),
                            size: 20,
                          ),
                          tileColor: Color(0x00F5F5F5),
                          dense: false,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: ListTile(
                          leading: Icon(
                            Icons.notifications_active,
                            color: Color(0xFF499D2F),
                          ),
                          title: Text(
                            'Notifications',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Manrope',
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF6E7695),
                            size: 20,
                          ),
                          tileColor: Color(0x00F5F5F5),
                          dense: false,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: ListTile(
                          leading: Icon(
                            Icons.app_registration,
                            color: Color(0xFF499D2F),
                          ),
                          title: Text(
                            'Appearance',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Manrope',
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF6E7695),
                            size: 20,
                          ),
                          tileColor: Color(0x00F5F5F5),
                          dense: false,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: ListTile(
                          leading: Icon(
                            Icons.security_sharp,
                            color: Color(0xFF499D2F),
                          ),
                          title: Text(
                            'Privacy & Security',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Manrope',
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF6E7695),
                            size: 20,
                          ),
                          tileColor: Color(0x00F5F5F5),
                          dense: false,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: ListTile(
                          leading: Icon(
                            Icons.healing,
                            color: Color(0xFF499D2F),
                          ),
                          title: Text(
                            'Help & Support',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Manrope',
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF6E7695),
                            size: 20,
                          ),
                          tileColor: Color(0x00F5F5F5),
                          dense: false,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 20),
                        child: ListTile(
                          leading: Icon(
                            Icons.bookmark,
                            color: Color(0xFF499D2F),
                          ),
                          title: Text(
                            'About',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Manrope',
                                  color: Colors.white,
                                  fontSize: 15,
                                ),
                          ),
                          trailing: Icon(
                            Icons.arrow_forward_ios,
                            color: Color(0xFF6E7695),
                            size: 20,
                          ),
                          tileColor: Color(0x00F5F5F5),
                          dense: false,
                        ),
                      ),
                    ],
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
