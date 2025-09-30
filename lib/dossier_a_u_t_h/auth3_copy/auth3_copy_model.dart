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
import 'auth3_copy_widget.dart' show Auth3CopyWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class Auth3CopyModel extends FlutterFlowModel<Auth3CopyWidget> {
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
  // State field(s) for villeTextField widget.
  FocusNode? villeTextFieldFocusNode;
  TextEditingController? villeTextFieldTextController;
  String? Function(BuildContext, String?)?
      villeTextFieldTextControllerValidator;
  // State field(s) for emailTextField widget.
  FocusNode? emailTextFieldFocusNode;
  TextEditingController? emailTextFieldTextController;
  String? Function(BuildContext, String?)?
      emailTextFieldTextControllerValidator;
  // State field(s) for passwordTextField widget.
  FocusNode? passwordTextFieldFocusNode;
  TextEditingController? passwordTextFieldTextController;
  late bool passwordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      passwordTextFieldTextControllerValidator;
  // State field(s) for confirmPasswordTextField widget.
  FocusNode? confirmPasswordTextFieldFocusNode;
  TextEditingController? confirmPasswordTextFieldTextController;
  late bool confirmPasswordTextFieldVisibility;
  String? Function(BuildContext, String?)?
      confirmPasswordTextFieldTextControllerValidator;
  // State field(s) for emailAddress widget.
  FocusNode? emailAddressFocusNode;
  TextEditingController? emailAddressTextController;
  String? Function(BuildContext, String?)? emailAddressTextControllerValidator;
  // State field(s) for motdepassefield widget.
  FocusNode? motdepassefieldFocusNode;
  TextEditingController? motdepassefieldTextController;
  late bool motdepassefieldVisibility;
  String? Function(BuildContext, String?)?
      motdepassefieldTextControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ProfilesRow>? ro;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<ProfilesRow>? prestataire;

  @override
  void initState(BuildContext context) {
    passwordTextFieldVisibility = false;
    confirmPasswordTextFieldVisibility = false;
    motdepassefieldVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    nomTextFieldFocusNode?.dispose();
    nomTextFieldTextController?.dispose();

    telephoneTextFieldFocusNode?.dispose();
    telephoneTextFieldTextController?.dispose();

    villeTextFieldFocusNode?.dispose();
    villeTextFieldTextController?.dispose();

    emailTextFieldFocusNode?.dispose();
    emailTextFieldTextController?.dispose();

    passwordTextFieldFocusNode?.dispose();
    passwordTextFieldTextController?.dispose();

    confirmPasswordTextFieldFocusNode?.dispose();
    confirmPasswordTextFieldTextController?.dispose();

    emailAddressFocusNode?.dispose();
    emailAddressTextController?.dispose();

    motdepassefieldFocusNode?.dispose();
    motdepassefieldTextController?.dispose();
  }
}
