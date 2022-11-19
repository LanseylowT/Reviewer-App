import '../flutter_flow/flutter_flow_drop_down.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Dashboard1Widget extends StatefulWidget {
  const Dashboard1Widget({
    Key? key,
    this.registrationRef,
  }) : super(key: key);

  final DocumentReference? registrationRef;

  @override
  _Dashboard1WidgetState createState() => _Dashboard1WidgetState();
}

class _Dashboard1WidgetState extends State<Dashboard1Widget> {
  String? dropDownValue;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF2D3142),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Stack(
          children: [
            Image.asset(
              'assets/images/Ellipses.png',
              width: 200,
              height: 200,
              fit: BoxFit.cover,
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
                        style: FlutterFlowTheme.of(context).bodyText1.override(
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
                            color: FlutterFlowTheme.of(context).primaryBtnText,
                            size: 24,
                          ),
                          FaIcon(
                            FontAwesomeIcons.batteryHalf,
                            color: FlutterFlowTheme.of(context).primaryBtnText,
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
              alignment: AlignmentDirectional(0, -0.5),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 30, 0),
                child: Container(
                  width: double.infinity,
                  height: 90,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -1.48),
                        child: FlutterFlowDropDown<String>(
                          options: ['Quiz Review'],
                          onChanged: (val) =>
                              setState(() => dropDownValue = val),
                          width: double.infinity,
                          height: 60,
                          textStyle:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: Colors.white,
                                  ),
                          hintText: 'Lance Limbaro',
                          fillColor: Color(0xFF434A67),
                          elevation: 2,
                          borderColor: Colors.transparent,
                          borderWidth: 0,
                          borderRadius: 16,
                          margin: EdgeInsetsDirectional.fromSTEB(12, 4, 12, 4),
                          hidesUnderline: true,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(-0.91, -1),
                        child: SelectionArea(
                            child: Text(
                          'Hello',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Manrope',
                                    color: Color(0xFF969ABA),
                                  ),
                        )),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0, -0.05),
              child: Container(
                width: 350,
                height: 400,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                  shape: BoxShape.rectangle,
                ),
                child: Container(
                  height: 500,
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, 1),
                        child: CircularPercentIndicator(
                          percent: 0.4,
                          radius: 165,
                          lineWidth: 16,
                          animation: true,
                          progressColor: Color(0xFF40DF9F),
                          backgroundColor: Color(0x00F1F4F8),
                          center: Text(
                            '7.5',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Poppins',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 48,
                                    ),
                          ),
                          startAngle: 270,
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.45),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RatingBarIndicator(
                              itemBuilder: (context, index) => Icon(
                                Icons.star_rounded,
                                color: Color(0xFFFFD029),
                              ),
                              direction: Axis.horizontal,
                              rating: 3,
                              unratedColor: Color(0xFF9E9E9E),
                              itemCount: 5,
                              itemSize: 30,
                            ),
                          ],
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.65),
                        child: Text(
                          'Good Job!',
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Manrope',
                                    color: Color(0xFF499D2F),
                                    fontSize: 18,
                                  ),
                        ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.95),
                        child: Image.asset(
                          'assets/images/Round_Circle_Outline.png',
                          width: 270,
                          height: 280,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.1, 0.85),
              child: Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                  color: Color(0x00FFFFFF),
                ),
                child: Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Container(
                        width: 327,
                        height: 140,
                        decoration: BoxDecoration(
                          color: Color(0xFF373D55),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Stack(
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Align(
                                  alignment: AlignmentDirectional(0, 0.65),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'CCE109:',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: Color(0xFF2F9D96),
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 10, 0),
                                        child: LinearPercentIndicator(
                                          percent: 1,
                                          width: 120,
                                          lineHeight: 12,
                                          animation: true,
                                          progressColor: Color(0xFF0077B6),
                                          backgroundColor: Color(0xFFADE8F4),
                                          padding: EdgeInsets.zero,
                                        ),
                                      ),
                                      Text(
                                        '100/100',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              fontSize: 10,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0.65),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'GE2:',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: Color(0xFF2F9D96),
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 0),
                                        child: LinearPercentIndicator(
                                          percent: 0.2,
                                          width: 120,
                                          lineHeight: 12,
                                          animation: true,
                                          progressColor: Color(0xFF0077B6),
                                          backgroundColor: Color(0xFFADE8F4),
                                          padding: EdgeInsets.zero,
                                        ),
                                      ),
                                      Text(
                                        '20/100',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              fontSize: 10,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Align(
                                  alignment: AlignmentDirectional(0, 0.65),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'GE4:',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Manrope',
                                              color: Color(0xFF2F9D96),
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 0, 15, 0),
                                        child: LinearPercentIndicator(
                                          percent: 1,
                                          width: 120,
                                          lineHeight: 12,
                                          animation: true,
                                          progressColor: Color(0xFF0077B6),
                                          backgroundColor: Color(0xFFADE8F4),
                                          padding: EdgeInsets.zero,
                                        ),
                                      ),
                                      Text(
                                        '100/100',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyText1
                                            .override(
                                              fontFamily: 'Poppins',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .lineColor,
                                              fontSize: 10,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, -0.85),
                      child: Container(
                        width: 159,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Color(0xFF434A67),
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(0, 5, 0, 5),
                              child: Text(
                                'Pending:',
                                style: FlutterFlowTheme.of(context)
                                    .bodyText1
                                    .override(
                                      fontFamily: 'Manrope',
                                      color: Colors.white,
                                    ),
                              ),
                            ),
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Color(0xFFEB4E4E),
                                  size: 24,
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 10, 0),
                                  child: Text(
                                    '1 Subject/s',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyText1
                                        .override(
                                          fontFamily: 'Poppins',
                                          color: Color(0xFFEB4E4E),
                                        ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
