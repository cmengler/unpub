// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UnpubVersion _$UnpubVersionFromJson(Map<String, dynamic> json) {
  return UnpubVersion(
      json['version'] as String,
      json['pubspec'] as Map<String, dynamic>,
      json['pubspecYaml'] as String,
      json['readme'] as String,
      json['changelog'] as String,
      json['uploader'] as String,
      json['createdAt'] == null
          ? null
          : identity(json['createdAt'] as DateTime));
}

Map<String, dynamic> _$UnpubVersionToJson(UnpubVersion instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('version', instance.version);
  writeNotNull('pubspec', instance.pubspec);
  writeNotNull('pubspecYaml', instance.pubspecYaml);
  writeNotNull('readme', instance.readme);
  writeNotNull('changelog', instance.changelog);
  writeNotNull('uploader', instance.uploader);
  writeNotNull('createdAt',
      instance.createdAt == null ? null : identity(instance.createdAt));
  return val;
}

UnpubPackage _$UnpubPackageFromJson(Map<String, dynamic> json) {
  return UnpubPackage(
      name: json['name'] as String,
      versions: (json['versions'] as List)
          ?.map((e) => e == null
              ? null
              : UnpubVersion.fromJson(e as Map<String, dynamic>))
          ?.toList(),
      uploaders:
          (json['uploaders'] as List)?.map((e) => e as String)?.toList());
}

Map<String, dynamic> _$UnpubPackageToJson(UnpubPackage instance) =>
    <String, dynamic>{
      'name': instance.name,
      'versions': instance.versions,
      'uploaders': instance.uploaders
    };