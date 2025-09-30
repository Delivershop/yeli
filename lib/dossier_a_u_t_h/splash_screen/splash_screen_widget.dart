import '/auth/base_auth_user_provider.dart';
import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'splash_screen_model.dart';
export 'splash_screen_model.dart';

/// Create a simple "SplashScreen" page that shows the text "Yeli Services"
/// with a loading animation.
///
/// After 2 seconds, automatically navigate to "choixdurole".
///
/// Style: Full screen, centered text and animation, light background. Smooth
/// transition.
class SplashScreenWidget extends StatefulWidget {
  const SplashScreenWidget({
    super.key,
    String? role,
  }) : this.role = role ?? '\"none\"';

  final String role;

  static String routeName = 'SplashScreen';
  static String routePath = '/splashScreen';

  @override
  State<SplashScreenWidget> createState() => _SplashScreenWidgetState();
}

class _SplashScreenWidgetState extends State<SplashScreenWidget> {
  late SplashScreenModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SplashScreenModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(
        Duration(
          milliseconds: 3000,
        ),
      );
      if (loggedIn) {
        _model.userProfile = await ProfilesTable().queryRows(
          queryFn: (q) => q.eqOrNull(
            'id',
            currentUserUid,
          ),
        );
        if (_model.userProfile?.firstOrNull?.role == 'client') {
          context.pushNamed(CustomerhomepageWidget.routeName);
        } else {
          if (_model.userProfile?.firstOrNull?.role == 'prestataire') {
            context.pushNamed(PrestataireHomePageWidget.routeName);
          } else {
            context.pushNamed(ChoixduroleWidget.routeName);
          }
        }
      } else {
        context.pushNamed(ChoixduroleWidget.routeName);
      }
    });
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
        backgroundColor: Colors.white,
        body: SafeArea(
          top: true,
          child: GestureDetector(
            onPanStart: (details) async {
              if (loggedIn) {
                _model.role = await ProfilesTable().queryRows(
                  queryFn: (q) => q.eqOrNull(
                    'id',
                    currentUserUid,
                  ),
                );
                if (_model.role?.firstOrNull?.role == 'Client') {
                  context.pushNamed(CustomerhomepageWidget.routeName);
                } else {
                  if (_model.role?.firstOrNull?.role == 'prestataire') {
                    context.pushNamed(PrestataireHomePageWidget.routeName);
                  } else {
                    context.pushNamed(ChoixduroleWidget.routeName);
                  }
                }
              } else {
                context.pushNamed(ChoixduroleWidget.routeName);
              }

              safeSetState(() {});
            },
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Yeli ',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).displayLarge.override(
                        font: GoogleFonts.sora(
                          fontWeight: FontWeight.bold,
                          fontStyle: FlutterFlowTheme.of(context)
                              .displayLarge
                              .fontStyle,
                        ),
                        color: Color(0xFFFF0327),
                        fontSize: 50.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                        fontStyle:
                            FlutterFlowTheme.of(context).displayLarge.fontStyle,
                      ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 32.0, 0.0, 0.0),
                  child: Lottie.asset(
                    'assets/jsons/Loading_screen.json',
                    width: 395.25,
                    height: 120.0,
                    fit: BoxFit.contain,
                    animate: true,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
