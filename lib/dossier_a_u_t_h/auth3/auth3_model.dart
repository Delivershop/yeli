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
import 'auth3_widget.dart' show Auth3Widget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Auth3Model extends FlutterFlowModel<Auth3Widget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for nomTextField widget.
  FocusNode? nomTextFieldFocusNode;
  TextEditingController? nomTextFieldTextController;
  String? Function(BuildContext, String?)? nomTextFieldTextControllerValidator;
  // State field(s) for telephoneTextField widget.
  FocusNode? telephoneTextFieldFocusNode;
  TextEditingController? telephoneTextFieldTextController;
  String? Function(BuildContext, String?)?
      telephoneTextFieldTextControllerValidator;
  // State field(s) for emailTextField widget.
  FocusNode? emailTextFieldFocusNode1;
  TextEditingController? emailTextFieldTextController1;
  String? Function(BuildContext, String?)?
      emailTextFieldTextController1Validator;
  // State field(s) for passwordTextField widget.
  FocusNode? passwordTextFieldFocusNode1;
  TextEditingController? passwordTextFieldTextController1;
  late bool passwordTextFieldVisibility1;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextController1Validator;
  // State field(s) for confirmPasswordTextField widget.
  FocusNode? confirmPasswordTextFieldFocusNode;
  TextEditingController? confirmPasswordTextFieldTextController;
  late bool confirmPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextFieldTextControllerValidator;
  // State field(s) for emailTextField widget.
  FocusNode? emailTextFieldFocusNode2;
  TextEditingController? emailTextFieldTextController2;
  String? Function(BuildContext, String?)?
      emailTextFieldTextController2Validator;
  // State field(s) for passwordTextField widget.
  FocusNode? passwordTextFieldFocusNode2;
  TextEditingController? passwordTextFieldTextController2;
  late bool passwordTextFieldVisibility2;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextController2Validator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ProfilesRow>? role;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ProfilesRow>? client;

  @override
  void initState(BuildContext context) {
    passwordTextFieldVisibility1 = false;
    confirmPasswordTextFieldVisibility = false;
    passwordTextFieldVisibility2 = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    nomTextFieldFocusNode?.dispose();
    nomTextFieldTextController?.dispose();

    telephoneTextFieldFocusNode?.dispose();
    telephoneTextFieldTextController?.dispose();

    emailTextFieldFocusNode1?.dispose();
    emailTextFieldTextController1?.dispose();

    passwordTextFieldFocusNode1?.dispose();
    passwordTextFieldTextController1?.dispose();

    confirmPasswordTextFieldFocusNode?.dispose();
    confirmPasswordTextFieldTextController?.dispose();

    emailTextFieldFocusNode2?.dispose();
    emailTextFieldTextController2?.dispose();

    passwordTextFieldFocusNode2?.dispose();
    passwordTextFieldTextController2?.dispose();
  }
}
