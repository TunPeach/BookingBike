import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StoreWidget extends StatefulWidget {
  const StoreWidget({Key? key}) : super(key: key);

  @override
  _StoreWidgetState createState() => _StoreWidgetState();
}

class _StoreWidgetState extends State<StoreWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(120),
        child: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          actions: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                FFButtonWidget(
                  onPressed: () async {
                    context.pushNamed('HomePage');
                  },
                  text: 'HOME',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryBtnText,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                          fontFamily: 'Poppins',
                          color: Colors.black,
                        ),
                    borderSide: BorderSide(
                      color: Colors.transparent,
                      width: 1,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('Store');
                    },
                    text: 'SERVICE',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Colors.white,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 20, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      context.pushNamed('SignIn');
                    },
                    text: 'LOGOUT',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Colors.white,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.black,
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
          centerTitle: false,
          toolbarHeight: 100,
          elevation: 0,
        ),
      ),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: GridView(
            padding: EdgeInsets.zero,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 1,
            ),
            scrollDirection: Axis.vertical,
            children: [
              InkWell(
                onTap: () async {
                  context.pushNamed('BookingServiec');
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      '{Name Store}',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                          ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  context.pushNamed('BookingServiec');
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      '{Name Store}',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                          ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  context.pushNamed('BookingServiec');
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      '{Name Store}',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                          ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  context.pushNamed('BookingServiec');
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      '{Name Store}',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                          ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  context.pushNamed('BookingServiec');
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      '{Name Store}',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 30,
                          ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: () async {
                  context.pushNamed('BookingServiec');
                },
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 4,
                        color: Color(0x33000000),
                        offset: Offset(0, 2),
                      )
                    ],
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Text(
                      '{Name Store}',
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 30,
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
