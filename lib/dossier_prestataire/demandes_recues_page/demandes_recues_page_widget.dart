import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'demandes_recues_page_model.dart';
export 'demandes_recues_page_model.dart';

class DemandesRecuesPageWidget extends StatefulWidget {
  const DemandesRecuesPageWidget({super.key});

  static String routeName = 'DemandesRecuesPage';
  static String routePath = '/demandesRecuesPage';

  @override
  State<DemandesRecuesPageWidget> createState() =>
      _DemandesRecuesPageWidgetState();
}

class _DemandesRecuesPageWidgetState extends State<DemandesRecuesPageWidget> {
  late DemandesRecuesPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DemandesRecuesPageModel());
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFFF1F4F8),
        appBar: AppBar(
          backgroundColor: Color(0xFFF1F4F8),
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Color(0xFFE3E7ED),
            borderRadius: 20.0,
            borderWidth: 1.0,
            buttonSize: 40.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Color(0xFF14181B),
              size: 24.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Demandes reçues',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.sora(
                    fontWeight: FontWeight.w600,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Color(0xFF14181B),
                  fontSize: 24.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: FutureBuilder<List<RequestsRow>>(
                    future: RequestsTable().queryRows(
                      queryFn: (q) => q.eqOrNull('prestataire_id', currentUserUid),
                    ),
                    builder: (context, snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }

                      List<RequestsRow> requests = snapshot.data!;

                      if (requests.isEmpty) {
                        return Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.inbox_outlined,
                                size: 64.0,
                                color: Color(0xFF677681),
                              ),
                              SizedBox(height: 16.0),
                              Text(
                                'Aucune demande reçue',
                                style: FlutterFlowTheme.of(context)
                                    .headlineSmall
                                    .override(
                                      font: GoogleFonts.sora(
                                        fontWeight: FontWeight.w600,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .headlineSmall
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF677681),
                                      fontSize: 20.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .headlineSmall
                                          .fontStyle,
                                    ),
                              ),
                              SizedBox(height: 8.0),
                              Text(
                                'Les demandes de clients apparaîtront ici',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      font: GoogleFonts.inter(
                                        fontWeight: FontWeight.normal,
                                        fontStyle: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .fontStyle,
                                      ),
                                      color: Color(0xFF677681),
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.normal,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                              ),
                            ],
                          ),
                        );
                      }

                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        itemCount: requests.length,
                        itemBuilder: (context, index) {
                          final request = requests[index];
                          return Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 8.0,
                                    color: Color(0x1A000000),
                                    offset: Offset(0.0, 2.0),
                                  )
                                ],
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(16.0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Demande #${request.id.substring(0, 8)}',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium
                                              .override(
                                                font: GoogleFonts.sora(
                                                  fontWeight: FontWeight.w600,
                                                  fontStyle:
                                                      FlutterFlowTheme.of(context)
                                                          .titleMedium
                                                          .fontStyle,
                                                ),
                                                color: Color(0xFF14181B),
                                                fontSize: 18.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                                fontStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleMedium
                                                        .fontStyle,
                                              ),
                                        ),
                                        Container(
                                          decoration: BoxDecoration(
                                            color: _getStatusColor(request.status ?? 'pending'),
                                            borderRadius: BorderRadius.circular(8.0),
                                          ),
                                          child: Padding(
                                            padding: EdgeInsets.all(8.0),
                                            child: Text(
                                              _getStatusText(request.status ?? 'pending'),
                                              style: FlutterFlowTheme.of(context)
                                                  .bodySmall
                                                  .override(
                                                    font: GoogleFonts.inter(
                                                      fontWeight: FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(context)
                                                              .bodySmall
                                                              .fontStyle,
                                                    ),
                                                    color: _getStatusTextColor(request.status ?? 'pending'),
                                                    fontSize: 12.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w600,
                                                    fontStyle:
                                                        FlutterFlowTheme.of(context)
                                                            .bodySmall
                                                            .fontStyle,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(height: 12.0),
                                    Text(
                                      'Date: ${dateTimeFormat('dd/MM/yyyy', request.createdAt)}',
                                      style: FlutterFlowTheme.of(context)
                                          .bodySmall
                                          .override(
                                            font: GoogleFonts.inter(
                                              fontWeight: FontWeight.normal,
                                              fontStyle:
                                                  FlutterFlowTheme.of(context)
                                                      .bodySmall
                                                      .fontStyle,
                                            ),
                                            color: Color(0xFF677681),
                                            fontSize: 12.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            fontStyle:
                                                FlutterFlowTheme.of(context)
                                                    .bodySmall
                                                    .fontStyle,
                                          ),
                                    ),
                                    if (request.status == 'pending')
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Expanded(
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await RequestsTable().update(
                                                    data: {'status': 'accepted'},
                                                    matchingRows: (rows) => rows.eq('id', request.id),
                                                  );
                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                    SnackBar(content: Text('Demande acceptée')),
                                                  );
                                                  setState(() {});
                                                },
                                                text: 'Accepter',
                                                options: FFButtonOptions(
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional.fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                      0.0, 0.0, 0.0, 0.0),
                                                  color: Color(0xFF39D2C0),
                                                  textStyle: FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight: FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: Colors.white,
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight: FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                  elevation: 0.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                  ),
                                                  borderRadius: BorderRadius.circular(8.0),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 12.0),
                                            Expanded(
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  await RequestsTable().update(
                                                    data: {'status': 'rejected'},
                                                    matchingRows: (rows) => rows.eq('id', request.id),
                                                  );
                                                  ScaffoldMessenger.of(context).showSnackBar(
                                                    SnackBar(content: Text('Demande refusée')),
                                                  );
                                                  setState(() {});
                                                },
                                                text: 'Refuser',
                                                options: FFButtonOptions(
                                                  height: 40.0,
                                                  padding: EdgeInsetsDirectional.fromSTEB(
                                                      16.0, 0.0, 16.0, 0.0),
                                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                      0.0, 0.0, 0.0, 0.0),
                                                  color: Colors.white,
                                                  textStyle: FlutterFlowTheme.of(context)
                                                      .titleSmall
                                                      .override(
                                                        font: GoogleFonts.inter(
                                                          fontWeight: FontWeight.w600,
                                                          fontStyle:
                                                              FlutterFlowTheme.of(context)
                                                                  .titleSmall
                                                                  .fontStyle,
                                                        ),
                                                        color: Color(0xFFFF5963),
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight: FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                  elevation: 0.0,
                                                  borderSide: BorderSide(
                                                    color: Color(0xFFFF5963),
                                                    width: 2.0,
                                                  ),
                                                  borderRadius: BorderRadius.circular(8.0),
                                                ),
                                              ),
                                            ),
                                            SizedBox(width: 12.0),
                                            FFButtonWidget(
                                              onPressed: () async {
                                                context.pushNamed(
                                                  ContactClientPageWidget.routeName,
                                                );
                                              },
                                              text: 'Contact',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: EdgeInsetsDirectional.fromSTEB(
                                                    16.0, 0.0, 16.0, 0.0),
                                                iconPadding: EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                                color: Color(0xFFF83B46),
                                                textStyle: FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      font: GoogleFonts.inter(
                                                        fontWeight: FontWeight.w600,
                                                        fontStyle:
                                                            FlutterFlowTheme.of(context)
                                                                .titleSmall
                                                                .fontStyle,
                                                      ),
                                                      color: Colors.white,
                                                      fontSize: 14.0,
                                                      letterSpacing: 0.0,
                                                      fontWeight: FontWeight.w600,
                                                      fontStyle:
                                                          FlutterFlowTheme.of(context)
                                                              .titleSmall
                                                              .fontStyle,
                                                    ),
                                                elevation: 0.0,
                                                borderSide: BorderSide(
                                                  color: Colors.transparent,
                                                ),
                                                borderRadius: BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                  ],
                                ),
                              ),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'accepted':
        return Color(0x4C39D2C0);
      case 'pending':
        return Color(0x4CF9CF58);
      case 'rejected':
        return Color(0x4CFF5963);
      case 'completed':
        return Color(0x4C39D2C0);
      default:
        return Color(0x4CF9CF58);
    }
  }

  Color _getStatusTextColor(String status) {
    switch (status) {
      case 'accepted':
        return Color(0xFF39D2C0);
      case 'pending':
        return Color(0xFFF9CF58);
      case 'rejected':
        return Color(0xFFFF5963);
      case 'completed':
        return Color(0xFF39D2C0);
      default:
        return Color(0xFFF9CF58);
    }
  }

  String _getStatusText(String status) {
    switch (status) {
      case 'accepted':
        return 'Acceptée';
      case 'pending':
        return 'Nouvelle';
      case 'rejected':
        return 'Refusée';
      case 'completed':
        return 'Terminée';
      default:
        return 'Nouvelle';
    }
  }
}