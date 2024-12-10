// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';

import '/flutter_flow/flutter_flow_util.dart';

class RegalosStruct extends FFFirebaseStruct {
  RegalosStruct({
    String? nombreRegalo,
    String? linkRegalo,
    String? solicitanteRegalo,
    bool? yaComprado,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _nombreRegalo = nombreRegalo,
        _linkRegalo = linkRegalo,
        _solicitanteRegalo = solicitanteRegalo,
        _yaComprado = yaComprado,
        super(firestoreUtilData);

  // "nombreRegalo" field.
  String? _nombreRegalo;
  String get nombreRegalo => _nombreRegalo ?? '';
  set nombreRegalo(String? val) => _nombreRegalo = val;

  bool hasNombreRegalo() => _nombreRegalo != null;

  // "LinkRegalo" field.
  String? _linkRegalo;
  String get linkRegalo => _linkRegalo ?? '';
  set linkRegalo(String? val) => _linkRegalo = val;

  bool hasLinkRegalo() => _linkRegalo != null;

  // "solicitanteRegalo" field.
  String? _solicitanteRegalo;
  String get solicitanteRegalo => _solicitanteRegalo ?? '';
  set solicitanteRegalo(String? val) => _solicitanteRegalo = val;

  bool hasSolicitanteRegalo() => _solicitanteRegalo != null;

  // "yaComprado" field.
  bool? _yaComprado;
  bool get yaComprado => _yaComprado ?? false;
  set yaComprado(bool? val) => _yaComprado = val;

  bool hasYaComprado() => _yaComprado != null;

  static RegalosStruct fromMap(Map<String, dynamic> data) => RegalosStruct(
        nombreRegalo: data['nombreRegalo'] as String?,
        linkRegalo: data['LinkRegalo'] as String?,
        solicitanteRegalo: data['solicitanteRegalo'] as String?,
        yaComprado: data['yaComprado'] as bool?,
      );

  static RegalosStruct? maybeFromMap(dynamic data) =>
      data is Map ? RegalosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'nombreRegalo': _nombreRegalo,
        'LinkRegalo': _linkRegalo,
        'solicitanteRegalo': _solicitanteRegalo,
        'yaComprado': _yaComprado,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'nombreRegalo': serializeParam(
          _nombreRegalo,
          ParamType.String,
        ),
        'LinkRegalo': serializeParam(
          _linkRegalo,
          ParamType.String,
        ),
        'solicitanteRegalo': serializeParam(
          _solicitanteRegalo,
          ParamType.String,
        ),
        'yaComprado': serializeParam(
          _yaComprado,
          ParamType.bool,
        ),
      }.withoutNulls;

  static RegalosStruct fromSerializableMap(Map<String, dynamic> data) =>
      RegalosStruct(
        nombreRegalo: deserializeParam(
          data['nombreRegalo'],
          ParamType.String,
          false,
        ),
        linkRegalo: deserializeParam(
          data['LinkRegalo'],
          ParamType.String,
          false,
        ),
        solicitanteRegalo: deserializeParam(
          data['solicitanteRegalo'],
          ParamType.String,
          false,
        ),
        yaComprado: deserializeParam(
          data['yaComprado'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'RegalosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RegalosStruct &&
        nombreRegalo == other.nombreRegalo &&
        linkRegalo == other.linkRegalo &&
        solicitanteRegalo == other.solicitanteRegalo &&
        yaComprado == other.yaComprado;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([nombreRegalo, linkRegalo, solicitanteRegalo, yaComprado]);
}

RegalosStruct createRegalosStruct({
  String? nombreRegalo,
  String? linkRegalo,
  String? solicitanteRegalo,
  bool? yaComprado,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    RegalosStruct(
      nombreRegalo: nombreRegalo,
      linkRegalo: linkRegalo,
      solicitanteRegalo: solicitanteRegalo,
      yaComprado: yaComprado,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

RegalosStruct? updateRegalosStruct(
  RegalosStruct? regalos, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    regalos
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addRegalosStructData(
  Map<String, dynamic> firestoreData,
  RegalosStruct? regalos,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (regalos == null) {
    return;
  }
  if (regalos.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && regalos.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final regalosData = getRegalosFirestoreData(regalos, forFieldValue);
  final nestedData = regalosData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = regalos.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getRegalosFirestoreData(
  RegalosStruct? regalos, [
  bool forFieldValue = false,
]) {
  if (regalos == null) {
    return {};
  }
  final firestoreData = mapToFirestore(regalos.toMap());

  // Add any Firestore field values
  regalos.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getRegalosListFirestoreData(
  List<RegalosStruct>? regaloss,
) =>
    regaloss?.map((e) => getRegalosFirestoreData(e, true)).toList() ?? [];
