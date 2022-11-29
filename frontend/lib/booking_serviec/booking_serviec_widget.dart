import '../backend/api_requests/api_calls.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookingServiecWidget extends StatefulWidget {
  const BookingServiecWidget({Key? key}) : super(key: key);

  @override
  _BookingServiecWidgetState createState() => _BookingServiecWidgetState();
}

class _BookingServiecWidgetState extends State<BookingServiecWidget> {
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
          child: Container(
            width: 2000,
            height: 700,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 570, 0),
                  child: Text(
                    'Let’s Book The One ',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Ubuntu',
                          color: Color(0xFFFF6702),
                          fontSize: 40,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 0, 720, 20),
                  child: Text(
                    'that your want!',
                    style: FlutterFlowTheme.of(context).bodyText1.override(
                          fontFamily: 'Poppins',
                          fontSize: 30,
                          fontWeight: FontWeight.normal,
                        ),
                  ),
                ),
                ListView(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Container(
                              width: 286,
                              height: 475,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 19,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 13),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 100, 0, 0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: GetDetileBikeCall.call(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                            ),
                                          );
                                        }
                                        final textGetDetileBikeResponse =
                                            snapshot.data!;
                                        return Text(
                                          getJsonField(
                                            textGetDetileBikeResponse.jsonBody,
                                            r'''$[0].bikes[0].bikeName''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 20,
                                              ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30, 20, 30, 0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: GetDetileBikeCall.call(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                            ),
                                          );
                                        }
                                        final textGetDetileBikeResponse =
                                            snapshot.data!;
                                        return Text(
                                          getJsonField(
                                            textGetDetileBikeResponse.jsonBody,
                                            r'''$[0].bikes[0].desc''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFA3A3A3),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 30, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed('BookingFrom');
                                      },
                                      text: 'BOOK NOW',
                                      options: FFButtonOptions(
                                        width: 153,
                                        height: 41,
                                        color: Color(0xFFFFB977),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Ubuntu',
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(37, 0, 37, 0),
                              child: Container(
                                width: 286,
                                height: 475,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 19,
                                      color: Color(0x33000000),
                                      offset: Offset(0, 13),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(22),
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 100, 0, 0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: GetDetileBikeCall.call(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                ),
                                              ),
                                            );
                                          }
                                          final textGetDetileBikeResponse =
                                              snapshot.data!;
                                          return Text(
                                            getJsonField(
                                              textGetDetileBikeResponse
                                                  .jsonBody,
                                              r'''$[0].bikes[1].bikeName''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  fontSize: 20,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          30, 20, 30, 0),
                                      child: FutureBuilder<ApiCallResponse>(
                                        future: GetDetileBikeCall.call(),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return Center(
                                              child: SizedBox(
                                                width: 50,
                                                height: 50,
                                                child:
                                                    CircularProgressIndicator(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryColor,
                                                ),
                                              ),
                                            );
                                          }
                                          final textGetDetileBikeResponse =
                                              snapshot.data!;
                                          return Text(
                                            getJsonField(
                                              textGetDetileBikeResponse
                                                  .jsonBody,
                                              r'''$[0].bikes[1].desc''',
                                            ).toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyText1
                                                .override(
                                                  fontFamily: 'Poppins',
                                                  color: Color(0xFFA3A3A3),
                                                  fontSize: 12,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          );
                                        },
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0, 30, 0, 0),
                                      child: FFButtonWidget(
                                        onPressed: () async {
                                          context.pushNamed('BookingFrom');
                                        },
                                        text: 'BOOK NOW',
                                        options: FFButtonOptions(
                                          width: 153,
                                          height: 41,
                                          color: Color(0xFFFFB977),
                                          textStyle:
                                              FlutterFlowTheme.of(context)
                                                  .subtitle2
                                                  .override(
                                                    fontFamily: 'Ubuntu',
                                                    color: Colors.white,
                                                    fontSize: 12,
                                                    fontWeight:
                                                        FontWeight.normal,
                                                  ),
                                          borderSide: BorderSide(
                                            color: Colors.transparent,
                                            width: 1,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(30),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              width: 286,
                              height: 475,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 19,
                                    color: Color(0x33000000),
                                    offset: Offset(0, 13),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(22),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 100, 0, 0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: GetDetileBikeCall.call(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                            ),
                                          );
                                        }
                                        final textGetDetileBikeResponse =
                                            snapshot.data!;
                                        return Text(
                                          getJsonField(
                                            textGetDetileBikeResponse.jsonBody,
                                            r'''$[0].bikes[2].bikeName''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 20,
                                              ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        30, 20, 30, 0),
                                    child: FutureBuilder<ApiCallResponse>(
                                      future: GetDetileBikeCall.call(),
                                      builder: (context, snapshot) {
                                        // Customize what your widget looks like when it's loading.
                                        if (!snapshot.hasData) {
                                          return Center(
                                            child: SizedBox(
                                              width: 50,
                                              height: 50,
                                              child: CircularProgressIndicator(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryColor,
                                              ),
                                            ),
                                          );
                                        }
                                        final textGetDetileBikeResponse =
                                            snapshot.data!;
                                        return Text(
                                          getJsonField(
                                            textGetDetileBikeResponse.jsonBody,
                                            r'''$[0].bikes[2].desc''',
                                          ).toString(),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyText1
                                              .override(
                                                fontFamily: 'Poppins',
                                                color: Color(0xFFA3A3A3),
                                                fontSize: 12,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        );
                                      },
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        0, 30, 0, 0),
                                    child: FFButtonWidget(
                                      onPressed: () async {
                                        context.pushNamed('BookingFrom');
                                      },
                                      text: 'BOOK NOW',
                                      options: FFButtonOptions(
                                        width: 153,
                                        height: 41,
                                        color: Color(0xFFFFB977),
                                        textStyle: FlutterFlowTheme.of(context)
                                            .subtitle2
                                            .override(
                                              fontFamily: 'Ubuntu',
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                            ),
                                        borderSide: BorderSide(
                                          color: Colors.transparent,
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
