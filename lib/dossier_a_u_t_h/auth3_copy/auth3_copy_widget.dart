import '/auth/supabase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'auth3_copy_model.dart';
export 'auth3_copy_model.dart';

class Auth3CopyWidget extends StatefulWidget {
  const Auth3CopyWidget({
    super.key,
    String? role,
  }) : this.role = role ?? 'prestataire';

  final String role;

  static String routeName = 'Auth3Copy';
  static String routePath = '/auth3Copy';

  @override
  State<Auth3CopyWidget> createState() => _Auth3CopyWidgetState();
}

class _Auth3CopyWidgetState extends State<Auth3CopyWidget>
    with TickerProviderStateMixin {
  late Auth3CopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Auth3CopyModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => safeSetState(() {}));

    _model.nomTextFieldTextController ??= TextEditingController();
    _model.nomTextFieldFocusNode ??= FocusNode();

    _model.telephoneTextFieldTextController ??= TextEditingController();
    _model.telephoneTextFieldFocusNode ??= FocusNode();

    _model.villeTextFieldTextController ??= TextEditingController();
    _model.villeTextFieldFocusNode ??= FocusNode();

    _model.emailTextFieldTextController ??= TextEditingController();
    _model.emailTextFieldFocusNode ??= FocusNode();

    _model.passwordTextFieldTextController ??= TextEditingController();
    _model.passwordTextFieldFocusNode ??= FocusNode();

    _model.confirmPasswordTextFieldTextController ??= TextEditingController();
    _model.confirmPasswordTextFieldFocusNode ??= FocusNode();

    _model.emailAddressTextController ??= TextEditingController();
    _model.emailAddressFocusNode ??= FocusNode();

    _model.motdepassefieldTextController ??= TextEditingController();
    _model.motdepassefieldFocusNode ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          VisibilityEffect(duration: 1.ms),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.0, 140.0),
            end: Offset(0.0, 0.0),
          ),
          ScaleEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(0.9, 0.9),
            end: Offset(1.0, 1.0),
          ),
          TiltEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 300.0.ms,
            begin: Offset(-0.349, 0),
            end: Offset(0, 0),
          ),
        ],
      ),
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: AlignmentDirectional(0.0, -1.0),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              constraints: BoxConstraints(
                maxWidth: 430.0,
              ),
              decoration: BoxDecoration(),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 44.0),
                      child: Container(
                        width: 100.0,
                        height: 70.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        alignment: AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'YELI',
                          style: FlutterFlowTheme.of(context).displaySmall.override(
                                fontFamily: 'Inter Tight',
                                color: FlutterFlowTheme.of(context).primary,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 400.0,
                        decoration: BoxDecoration(
                          color: FlutterFlowTheme.of(context).secondaryBackground,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(0.0),
                            bottomRight: Radius.circular(0.0),
                            topLeft: Radius.circular(16.0),
                            topRight: Radius.circular(16.0),
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 0.0, 0.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment(0.0, 0),
                                child: FlutterFlowButtonTabBar(
                                  useToggleButtonStyle: false,
                                  labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                        fontFamily: 'Inter Tight',
                                        letterSpacing: 0.0,
                                      ),
                                  unselectedLabelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                                        fontFamily: 'Inter Tight',
                                        letterSpacing: 0.0,
                                      ),
                                  labelColor: FlutterFlowTheme.of(context).primaryText,
                                  unselectedLabelColor: FlutterFlowTheme.of(context).secondaryText,
                                  backgroundColor: FlutterFlowTheme.of(context).accent1,
                                  unselectedBackgroundColor: FlutterFlowTheme.of(context).alternate,
                                  borderColor: FlutterFlowTheme.of(context).primary,
                                  unselectedBorderColor: FlutterFlowTheme.of(context).alternate,
                                  borderWidth: 2.0,
                                  borderRadius: 8.0,
                                  elevation: 0.0,
                                  buttonMargin: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                                  padding: EdgeInsets.all(4.0),
                                  tabs: [
                                    Tab(
                                      text: 'Créer un compte',
                                    ),
                                    Tab(
                                      text: 'Se connecter',
                                    ),
                                  ],
                                  controller: _model.tabBarController,
                                  onTap: (i) async {
                                    [() async {}, () async {}][i]();
                                  },
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: _model.tabBarController,
                                  children: [
                                    // Sign Up Tab for Prestataire
                                    Align(
                                      alignment: AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Créer votre compte prestataire',
                                                textAlign: TextAlign.start,
                                                style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                      fontFamily: 'Inter Tight',
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 24.0),
                                                child: Text(
                                                  'Remplissez les informations ci-dessous pour créer votre compte prestataire.',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(context).labelMedium.override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model.nomTextFieldTextController,
                                                    focusNode: _model.nomTextFieldFocusNode,
                                                    autofocus: true,
                                                    autofillHints: [AutofillHints.name],
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Nom complet',
                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                      enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      errorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      focusedErrorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                    ),
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    keyboardType: TextInputType.name,
                                                    validator: _model.nomTextFieldTextControllerValidator.asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model.telephoneTextFieldTextController,
                                                    focusNode: _model.telephoneTextFieldFocusNode,
                                                    autofocus: false,
                                                    autofillHints: [AutofillHints.telephoneNumber],
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Téléphone',
                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                      enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      errorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      focusedErrorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                    ),
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    keyboardType: TextInputType.phone,
                                                    validator: _model.telephoneTextFieldTextControllerValidator.asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model.villeTextFieldTextController,
                                                    focusNode: _model.villeTextFieldFocusNode,
                                                    autofocus: false,
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Ville',
                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                      enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      errorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      focusedErrorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                    ),
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    validator: _model.villeTextFieldTextControllerValidator.asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model.emailTextFieldTextController,
                                                    focusNode: _model.emailTextFieldFocusNode,
                                                    autofocus: false,
                                                    autofillHints: [AutofillHints.email],
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Email',
                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                      enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      errorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      focusedErrorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                    ),
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    keyboardType: TextInputType.emailAddress,
                                                    validator: _model.emailTextFieldTextControllerValidator.asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model.passwordTextFieldTextController,
                                                    focusNode: _model.passwordTextFieldFocusNode,
                                                    autofocus: false,
                                                    autofillHints: [AutofillHints.password],
                                                    obscureText: !_model.passwordTextFieldVisibility,
                                                    decoration: InputDecoration(
                                                      labelText: 'Mot de passe',
                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                      enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      errorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      focusedErrorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                      suffixIcon: InkWell(
                                                        onTap: () => safeSetState(
                                                          () => _model.passwordTextFieldVisibility = !_model.passwordTextFieldVisibility,
                                                        ),
                                                        focusNode: FocusNode(skipTraversal: true),
                                                        child: Icon(
                                                          _model.passwordTextFieldVisibility
                                                              ? Icons.visibility_outlined
                                                              : Icons.visibility_off_outlined,
                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    validator: _model.passwordTextFieldTextControllerValidator.asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model.confirmPasswordTextFieldTextController,
                                                    focusNode: _model.confirmPasswordTextFieldFocusNode,
                                                    autofocus: false,
                                                    autofillHints: [AutofillHints.password],
                                                    obscureText: !_model.confirmPasswordTextFieldVisibility,
                                                    decoration: InputDecoration(
                                                      labelText: 'Confirmer le mot de passe',
                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                      enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      errorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      focusedErrorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                      suffixIcon: InkWell(
                                                        onTap: () => safeSetState(
                                                          () => _model.confirmPasswordTextFieldVisibility = !_model.confirmPasswordTextFieldVisibility,
                                                        ),
                                                        focusNode: FocusNode(skipTraversal: true),
                                                        child: Icon(
                                                          _model.confirmPasswordTextFieldVisibility
                                                              ? Icons.visibility_outlined
                                                              : Icons.visibility_off_outlined,
                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    validator: _model.confirmPasswordTextFieldTextControllerValidator.asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    if (_model.passwordTextFieldTextController.text !=
                                                        _model.confirmPasswordTextFieldTextController.text) {
                                                      ScaffoldMessenger.of(context).showSnackBar(
                                                        SnackBar(
                                                          content: Text('Les mots de passe ne correspondent pas'),
                                                        ),
                                                      );
                                                      return;
                                                    }

                                                    final user = await authManager.createAccountWithEmail(
                                                      context,
                                                      _model.emailTextFieldTextController.text,
                                                      _model.passwordTextFieldTextController.text,
                                                    );
                                                    if (user == null) {
                                                      return;
                                                    }

                                                    await ProfilesTable().insert({
                                                      'id': currentUserUid,
                                                      'full_name': _model.nomTextFieldTextController.text,
                                                      'email': _model.emailTextFieldTextController.text,
                                                      'phone': _model.telephoneTextFieldTextController.text,
                                                      'role': widget.role,
                                                      'is_active': true,
                                                    });

                                                    context.pushNamedAuth(
                                                      PrestataireHomePageWidget.routeName,
                                                      context.mounted,
                                                    );
                                                  },
                                                  text: 'Créer un compte',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 44.0,
                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                    color: FlutterFlowTheme.of(context).primary,
                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                          fontFamily: 'Inter Tight',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius: BorderRadius.circular(12.0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    // Sign In Tab
                                    Align(
                                      alignment: AlignmentDirectional(0.0, -1.0),
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(24.0, 16.0, 24.0, 0.0),
                                        child: SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Se connecter',
                                                textAlign: TextAlign.start,
                                                style: FlutterFlowTheme.of(context).headlineMedium.override(
                                                      fontFamily: 'Inter Tight',
                                                      letterSpacing: 0.0,
                                                    ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 24.0),
                                                child: Text(
                                                  'Connectez-vous à votre compte prestataire.',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(context).labelMedium.override(
                                                        fontFamily: 'Inter',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model.emailAddressTextController,
                                                    focusNode: _model.emailAddressFocusNode,
                                                    autofocus: true,
                                                    autofillHints: [AutofillHints.email],
                                                    obscureText: false,
                                                    decoration: InputDecoration(
                                                      labelText: 'Email',
                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                      enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      errorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      focusedErrorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                    ),
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    keyboardType: TextInputType.emailAddress,
                                                    validator: _model.emailAddressTextControllerValidator.asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                child: Container(
                                                  width: double.infinity,
                                                  child: TextFormField(
                                                    controller: _model.motdepassefieldTextController,
                                                    focusNode: _model.motdepassefieldFocusNode,
                                                    autofocus: false,
                                                    autofillHints: [AutofillHints.password],
                                                    obscureText: !_model.motdepassefieldVisibility,
                                                    decoration: InputDecoration(
                                                      labelText: 'Mot de passe',
                                                      labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                            fontFamily: 'Inter',
                                                            letterSpacing: 0.0,
                                                          ),
                                                      enabledBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).alternate,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      focusedBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).primary,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      errorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      focusedErrorBorder: OutlineInputBorder(
                                                        borderSide: BorderSide(
                                                          color: FlutterFlowTheme.of(context).error,
                                                          width: 2.0,
                                                        ),
                                                        borderRadius: BorderRadius.circular(12.0),
                                                      ),
                                                      filled: true,
                                                      fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                                                      suffixIcon: InkWell(
                                                        onTap: () => safeSetState(
                                                          () => _model.motdepassefieldVisibility = !_model.motdepassefieldVisibility,
                                                        ),
                                                        focusNode: FocusNode(skipTraversal: true),
                                                        child: Icon(
                                                          _model.motdepassefieldVisibility
                                                              ? Icons.visibility_outlined
                                                              : Icons.visibility_off_outlined,
                                                          color: FlutterFlowTheme.of(context).secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      ),
                                                    ),
                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                          fontFamily: 'Inter',
                                                          letterSpacing: 0.0,
                                                        ),
                                                    validator: _model.motdepassefieldTextControllerValidator.asValidator(context),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 16.0),
                                                child: FFButtonWidget(
                                                  onPressed: () async {
                                                    final user = await authManager.signInWithEmail(
                                                      context,
                                                      _model.emailAddressTextController.text,
                                                      _model.motdepassefieldTextController.text,
                                                    );
                                                    if (user == null) {
                                                      return;
                                                    }

                                                    _model.prestataire = await ProfilesTable().queryRows(
                                                      queryFn: (q) => q.eqOrNull('id', currentUserUid),
                                                    );

                                                    if (_model.prestataire?.firstOrNull?.role == 'prestataire') {
                                                      context.pushNamedAuth(
                                                        PrestataireHomePageWidget.routeName,
                                                        context.mounted,
                                                      );
                                                    } else {
                                                      context.pushNamedAuth(
                                                        CustomerhomepageWidget.routeName,
                                                        context.mounted,
                                                      );
                                                    }
                                                  },
                                                  text: 'Se connecter',
                                                  options: FFButtonOptions(
                                                    width: double.infinity,
                                                    height: 44.0,
                                                    padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                    iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                                                    color: FlutterFlowTheme.of(context).primary,
                                                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                                                          fontFamily: 'Inter Tight',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                    elevation: 3.0,
                                                    borderSide: BorderSide(
                                                      color: Colors.transparent,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius: BorderRadius.circular(12.0),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ).animateOnPageLoad(animationsMap['containerOnPageLoadAnimation']!),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}