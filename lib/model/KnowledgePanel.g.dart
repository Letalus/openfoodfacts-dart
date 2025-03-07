// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'KnowledgePanel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

KnowledgePanel _$KnowledgePanelFromJson(Map<String, dynamic> json) =>
    KnowledgePanel(
      titleElement: json['title_element'] == null
          ? null
          : TitleElement.fromJson(
              json['title_element'] as Map<String, dynamic>),
      level: _$enumDecodeNullable(_$LevelEnumMap, json['level'],
          unknownValue: Level.UNKNOWN),
      expanded: json['expanded'] as bool?,
      elements: (json['elements'] as List<dynamic>?)
          ?.map(
              (e) => KnowledgePanelElement.fromJson(e as Map<String, dynamic>))
          .toList(),
      topics:
          (json['topics'] as List<dynamic>?)?.map((e) => e as String).toList(),
      evaluation: _$enumDecodeNullable(_$EvaluationEnumMap, json['evaluation'],
          unknownValue: Evaluation.UNKNOWN),
    );

Map<String, dynamic> _$KnowledgePanelToJson(KnowledgePanel instance) =>
    <String, dynamic>{
      'title_element': instance.titleElement,
      'level': _$LevelEnumMap[instance.level],
      'expanded': instance.expanded,
      'elements': instance.elements,
      'topics': instance.topics,
      'evaluation': _$EvaluationEnumMap[instance.evaluation],
    };

K _$enumDecode<K, V>(
  Map<K, V> enumValues,
  Object? source, {
  K? unknownValue,
}) {
  if (source == null) {
    throw ArgumentError(
      'A value must be provided. Supported values: '
      '${enumValues.values.join(', ')}',
    );
  }

  return enumValues.entries.singleWhere(
    (e) => e.value == source,
    orElse: () {
      if (unknownValue == null) {
        throw ArgumentError(
          '`$source` is not one of the supported values: '
          '${enumValues.values.join(', ')}',
        );
      }
      return MapEntry(unknownValue, enumValues.values.first);
    },
  ).key;
}

K? _$enumDecodeNullable<K, V>(
  Map<K, V> enumValues,
  dynamic source, {
  K? unknownValue,
}) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<K, V>(enumValues, source, unknownValue: unknownValue);
}

const _$LevelEnumMap = {
  Level.TRIVIA: 'trivia',
  Level.INFO: 'info',
  Level.HELPFUL: 'helpful',
  Level.WARNING: 'warning',
  Level.ALERT: 'alert',
  Level.UNKNOWN: 'UNKNOWN',
};

const _$EvaluationEnumMap = {
  Evaluation.GOOD: 'good',
  Evaluation.NEUTRAL: 'neutral',
  Evaluation.AVERAGE: 'average',
  Evaluation.BAD: 'bad',
  Evaluation.UNKNOWN: 'UNKNOWN',
};

TitleElement _$TitleElementFromJson(Map<String, dynamic> json) => TitleElement(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String?,
      grade: _$enumDecodeNullable(_$GradeEnumMap, json['grade'],
          unknownValue: Grade.UNKNOWN),
      type: _$enumDecodeNullable(_$TitleElementTypeEnumMap, json['type'],
          unknownValue: TitleElementType.UNKNOWN),
      iconUrl: json['icon_url'] as String?,
      iconColorFromEvaluation:
          json['icon_color_from_evaluation'] as bool? ?? false,
    );

Map<String, dynamic> _$TitleElementToJson(TitleElement instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'grade': _$GradeEnumMap[instance.grade],
      'type': _$TitleElementTypeEnumMap[instance.type],
      'icon_url': instance.iconUrl,
      'icon_color_from_evaluation': instance.iconColorFromEvaluation,
    };

const _$GradeEnumMap = {
  Grade.A: 'A',
  Grade.B: 'B',
  Grade.C: 'C',
  Grade.D: 'D',
  Grade.E: 'E',
  Grade.UNKNOWN: 'UNKNOWN',
};

const _$TitleElementTypeEnumMap = {
  TitleElementType.GRADE: 'grade',
  TitleElementType.UNKNOWN: 'UNKNOWN',
};
