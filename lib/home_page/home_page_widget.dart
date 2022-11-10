import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
                        color: Color(0x00FFFFFF),
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(-0.75, -0.05),
                        child: SelectionArea(
                            child: Text(
                          '9:40',
                          textAlign: TextAlign.center,
                          style:
                              FlutterFlowTheme.of(context).bodyText1.override(
                                    fontFamily: 'Poppins',
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
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
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
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
                alignment: AlignmentDirectional(0, -0.35),
                child: Container(
                  width: 250,
                  height: 250,
                  constraints: BoxConstraints(
                    maxWidth: 170,
                    maxHeight: 170,
                  ),
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Image.asset(
                    'assets/images/Person_with_Phone.png',
                    width: 170,
                    height: 160,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.15, 0.4),
                child: Container(
                  width: double.infinity,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Color(0x00FFFFFF),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        'Get things done with REVIEWZ',
                        textAlign: TextAlign.center,
                        style: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Poppins',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                      ),
                      Align(
                        alignment: AlignmentDirectional(0, 0.1),
                        child: Padding(
                          padding:
                              EdgeInsetsDirectional.fromSTEB(10, 20, 10, 0),
                          child: Text(
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt facilisis congue turpis porta arcu nascetur ut porttitor. Diam sed gravida ultrices donec. Diam sed nunc ipsum, nisi. Sodales sed aliquam habitant pellentesque leo euismod sed viverra diam.',
                            textAlign: TextAlign.center,
                            style:
                                FlutterFlowTheme.of(context).bodyText1.override(
                                      fontFamily: 'Acid Grotesk',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 18,
                                      useGoogleFonts: false,
                                    ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.8),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: Container(
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                      color: Color(0x00FFFFFF),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: FFButtonWidget(
                      onPressed: () {
                        print('Button pressed ...');
                      },
                      text: 'Get Started!',
                      options: FFButtonOptions(
                        width: 130,
                        height: 40,
                        color: Color(0xFF499D2F),
                        textStyle: FlutterFlowTheme.of(context).title3.override(
                              fontFamily: 'Poppins',
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                            ),
                        borderSide: BorderSide(
                          color: Colors.transparent,
                          width: 1,
                        ),
                        borderRadius: BorderRadius.circular(30),
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
