// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:json_annotation/json_annotation.dart';
import 'package:orm/binary_engine.dart' as _i5;
import 'package:orm/engine_core.dart' as _i3;
import 'package:orm/graphql.dart' as _i2;
import 'package:orm/logger.dart' as _i4;
import 'package:orm/orm.dart' as _i1;
import 'package:orm/orm.dart' show DateTimeJsonConverter;

part 'prisma_client.g.dart';

enum CourseScalarFieldEnum implements _i1.PrismaEnum {
  id,
  name,
  createdAt;

  @override
  String? get originalName => null;
}

enum UserScalarFieldEnum implements _i1.PrismaEnum {
  id,
  username,
  password,
  name,
  createdAt;

  @override
  String? get originalName => null;
}

enum SortOrder implements _i1.PrismaEnum {
  asc,
  desc;

  @override
  String? get originalName => null;
}

@_i1.jsonSerializable
class CourseWhereInput implements _i1.JsonSerializable {
  const CourseWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.createdAt,
  });

  factory CourseWhereInput.fromJson(Map<String, dynamic> json) =>
      _$CourseWhereInputFromJson(json);

  final Iterable<CourseWhereInput>? AND;

  final Iterable<CourseWhereInput>? OR;

  final Iterable<CourseWhereInput>? NOT;

  final StringFilter? id;

  final StringFilter? name;

  final DateTimeFilter? createdAt;

  @override
  Map<String, dynamic> toJson() => _$CourseWhereInputToJson(this);
}

@_i1.jsonSerializable
class CourseOrderByWithRelationInput implements _i1.JsonSerializable {
  const CourseOrderByWithRelationInput({
    this.id,
    this.name,
    this.createdAt,
  });

  factory CourseOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$CourseOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => _$CourseOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class CourseWhereUniqueInput implements _i1.JsonSerializable {
  const CourseWhereUniqueInput({
    this.id,
    this.name,
  });

  factory CourseWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$CourseWhereUniqueInputFromJson(json);

  final String? id;

  final String? name;

  @override
  Map<String, dynamic> toJson() => _$CourseWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class CourseOrderByWithAggregationInput implements _i1.JsonSerializable {
  const CourseOrderByWithAggregationInput({
    this.id,
    this.name,
    this.createdAt,
    this.$count,
    this.$max,
    this.$min,
  });

  factory CourseOrderByWithAggregationInput.fromJson(
          Map<String, dynamic> json) =>
      _$CourseOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? createdAt;

  @JsonKey(name: r'_count')
  final CourseCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_max')
  final CourseMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final CourseMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() =>
      _$CourseOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class CourseScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const CourseScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.name,
    this.createdAt,
  });

  factory CourseScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$CourseScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<CourseScalarWhereWithAggregatesInput>? AND;

  final Iterable<CourseScalarWhereWithAggregatesInput>? OR;

  final Iterable<CourseScalarWhereWithAggregatesInput>? NOT;

  final StringWithAggregatesFilter? id;

  final StringWithAggregatesFilter? name;

  final DateTimeWithAggregatesFilter? createdAt;

  @override
  Map<String, dynamic> toJson() =>
      _$CourseScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class UserWhereInput implements _i1.JsonSerializable {
  const UserWhereInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.username,
    this.password,
    this.name,
    this.createdAt,
  });

  factory UserWhereInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereInputFromJson(json);

  final Iterable<UserWhereInput>? AND;

  final Iterable<UserWhereInput>? OR;

  final Iterable<UserWhereInput>? NOT;

  final StringFilter? id;

  final StringFilter? username;

  final StringFilter? password;

  final StringFilter? name;

  final DateTimeFilter? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserWhereInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithRelationInput implements _i1.JsonSerializable {
  const UserOrderByWithRelationInput({
    this.id,
    this.username,
    this.password,
    this.name,
    this.createdAt,
  });

  factory UserOrderByWithRelationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithRelationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? name;

  final SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserOrderByWithRelationInputToJson(this);
}

@_i1.jsonSerializable
class UserWhereUniqueInput implements _i1.JsonSerializable {
  const UserWhereUniqueInput({
    this.id,
    this.username,
  });

  factory UserWhereUniqueInput.fromJson(Map<String, dynamic> json) =>
      _$UserWhereUniqueInputFromJson(json);

  final String? id;

  final String? username;

  @override
  Map<String, dynamic> toJson() => _$UserWhereUniqueInputToJson(this);
}

@_i1.jsonSerializable
class UserOrderByWithAggregationInput implements _i1.JsonSerializable {
  const UserOrderByWithAggregationInput({
    this.id,
    this.username,
    this.password,
    this.name,
    this.createdAt,
    this.$count,
    this.$max,
    this.$min,
  });

  factory UserOrderByWithAggregationInput.fromJson(Map<String, dynamic> json) =>
      _$UserOrderByWithAggregationInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? name;

  final SortOrder? createdAt;

  @JsonKey(name: r'_count')
  final UserCountOrderByAggregateInput? $count;

  @JsonKey(name: r'_max')
  final UserMaxOrderByAggregateInput? $max;

  @JsonKey(name: r'_min')
  final UserMinOrderByAggregateInput? $min;

  @override
  Map<String, dynamic> toJson() =>
      _$UserOrderByWithAggregationInputToJson(this);
}

@_i1.jsonSerializable
class UserScalarWhereWithAggregatesInput implements _i1.JsonSerializable {
  const UserScalarWhereWithAggregatesInput({
    this.AND,
    this.OR,
    this.NOT,
    this.id,
    this.username,
    this.password,
    this.name,
    this.createdAt,
  });

  factory UserScalarWhereWithAggregatesInput.fromJson(
          Map<String, dynamic> json) =>
      _$UserScalarWhereWithAggregatesInputFromJson(json);

  final Iterable<UserScalarWhereWithAggregatesInput>? AND;

  final Iterable<UserScalarWhereWithAggregatesInput>? OR;

  final Iterable<UserScalarWhereWithAggregatesInput>? NOT;

  final StringWithAggregatesFilter? id;

  final StringWithAggregatesFilter? username;

  final StringWithAggregatesFilter? password;

  final StringWithAggregatesFilter? name;

  final DateTimeWithAggregatesFilter? createdAt;

  @override
  Map<String, dynamic> toJson() =>
      _$UserScalarWhereWithAggregatesInputToJson(this);
}

@_i1.jsonSerializable
class CourseCreateInput implements _i1.JsonSerializable {
  const CourseCreateInput({
    required this.id,
    required this.name,
    this.createdAt,
  });

  factory CourseCreateInput.fromJson(Map<String, dynamic> json) =>
      _$CourseCreateInputFromJson(json);

  final String id;

  final String name;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => _$CourseCreateInputToJson(this);
}

@_i1.jsonSerializable
class CourseUncheckedCreateInput implements _i1.JsonSerializable {
  const CourseUncheckedCreateInput({
    required this.id,
    required this.name,
    this.createdAt,
  });

  factory CourseUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$CourseUncheckedCreateInputFromJson(json);

  final String id;

  final String name;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => _$CourseUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class CourseUpdateInput implements _i1.JsonSerializable {
  const CourseUpdateInput({
    this.id,
    this.name,
    this.createdAt,
  });

  factory CourseUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$CourseUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() => _$CourseUpdateInputToJson(this);
}

@_i1.jsonSerializable
class CourseUncheckedUpdateInput implements _i1.JsonSerializable {
  const CourseUncheckedUpdateInput({
    this.id,
    this.name,
    this.createdAt,
  });

  factory CourseUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$CourseUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() => _$CourseUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class CourseCreateManyInput implements _i1.JsonSerializable {
  const CourseCreateManyInput({
    required this.id,
    required this.name,
    this.createdAt,
  });

  factory CourseCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$CourseCreateManyInputFromJson(json);

  final String id;

  final String name;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => _$CourseCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class CourseUpdateManyMutationInput implements _i1.JsonSerializable {
  const CourseUpdateManyMutationInput({
    this.id,
    this.name,
    this.createdAt,
  });

  factory CourseUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$CourseUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() => _$CourseUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class CourseUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const CourseUncheckedUpdateManyInput({
    this.id,
    this.name,
    this.createdAt,
  });

  factory CourseUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$CourseUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? name;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() => _$CourseUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateInput implements _i1.JsonSerializable {
  const UserCreateInput({
    required this.id,
    required this.username,
    required this.password,
    required this.name,
    this.createdAt,
  });

  factory UserCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateInputFromJson(json);

  final String id;

  final String username;

  final String password;

  final String name;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedCreateInput implements _i1.JsonSerializable {
  const UserUncheckedCreateInput({
    required this.id,
    required this.username,
    required this.password,
    required this.name,
    this.createdAt,
  });

  factory UserUncheckedCreateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedCreateInputFromJson(json);

  final String id;

  final String username;

  final String password;

  final String name;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedCreateInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateInput implements _i1.JsonSerializable {
  const UserUpdateInput({
    this.id,
    this.username,
    this.password,
    this.name,
    this.createdAt,
  });

  factory UserUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final StringFieldUpdateOperationsInput? name;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateInput({
    this.id,
    this.username,
    this.password,
    this.name,
    this.createdAt,
  });

  factory UserUncheckedUpdateInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final StringFieldUpdateOperationsInput? name;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateInputToJson(this);
}

@_i1.jsonSerializable
class UserCreateManyInput implements _i1.JsonSerializable {
  const UserCreateManyInput({
    required this.id,
    required this.username,
    required this.password,
    required this.name,
    this.createdAt,
  });

  factory UserCreateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserCreateManyInputFromJson(json);

  final String id;

  final String username;

  final String password;

  final String name;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserCreateManyInputToJson(this);
}

@_i1.jsonSerializable
class UserUpdateManyMutationInput implements _i1.JsonSerializable {
  const UserUpdateManyMutationInput({
    this.id,
    this.username,
    this.password,
    this.name,
    this.createdAt,
  });

  factory UserUpdateManyMutationInput.fromJson(Map<String, dynamic> json) =>
      _$UserUpdateManyMutationInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final StringFieldUpdateOperationsInput? name;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserUpdateManyMutationInputToJson(this);
}

@_i1.jsonSerializable
class UserUncheckedUpdateManyInput implements _i1.JsonSerializable {
  const UserUncheckedUpdateManyInput({
    this.id,
    this.username,
    this.password,
    this.name,
    this.createdAt,
  });

  factory UserUncheckedUpdateManyInput.fromJson(Map<String, dynamic> json) =>
      _$UserUncheckedUpdateManyInputFromJson(json);

  final StringFieldUpdateOperationsInput? id;

  final StringFieldUpdateOperationsInput? username;

  final StringFieldUpdateOperationsInput? password;

  final StringFieldUpdateOperationsInput? name;

  final DateTimeFieldUpdateOperationsInput? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserUncheckedUpdateManyInputToJson(this);
}

@_i1.jsonSerializable
class StringFilter implements _i1.JsonSerializable {
  const StringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory StringFilter.fromJson(Map<String, dynamic> json) =>
      _$StringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$StringFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeFilter implements _i1.JsonSerializable {
  const DateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory DateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$DateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class CourseCountOrderByAggregateInput implements _i1.JsonSerializable {
  const CourseCountOrderByAggregateInput({
    this.id,
    this.name,
    this.createdAt,
  });

  factory CourseCountOrderByAggregateInput.fromJson(
          Map<String, dynamic> json) =>
      _$CourseCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() =>
      _$CourseCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CourseMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const CourseMaxOrderByAggregateInput({
    this.id,
    this.name,
    this.createdAt,
  });

  factory CourseMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$CourseMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => _$CourseMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class CourseMinOrderByAggregateInput implements _i1.JsonSerializable {
  const CourseMinOrderByAggregateInput({
    this.id,
    this.name,
    this.createdAt,
  });

  factory CourseMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$CourseMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? name;

  final SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => _$CourseMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class StringWithAggregatesFilter implements _i1.JsonSerializable {
  const StringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory StringWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$StringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$StringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class DateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const DateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory DateTimeWithAggregatesFilter.fromJson(Map<String, dynamic> json) =>
      _$DateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() => _$DateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class UserCountOrderByAggregateInput implements _i1.JsonSerializable {
  const UserCountOrderByAggregateInput({
    this.id,
    this.username,
    this.password,
    this.name,
    this.createdAt,
  });

  factory UserCountOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserCountOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? name;

  final SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserCountOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMaxOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMaxOrderByAggregateInput({
    this.id,
    this.username,
    this.password,
    this.name,
    this.createdAt,
  });

  factory UserMaxOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMaxOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? name;

  final SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserMaxOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class UserMinOrderByAggregateInput implements _i1.JsonSerializable {
  const UserMinOrderByAggregateInput({
    this.id,
    this.username,
    this.password,
    this.name,
    this.createdAt,
  });

  factory UserMinOrderByAggregateInput.fromJson(Map<String, dynamic> json) =>
      _$UserMinOrderByAggregateInputFromJson(json);

  final SortOrder? id;

  final SortOrder? username;

  final SortOrder? password;

  final SortOrder? name;

  final SortOrder? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserMinOrderByAggregateInputToJson(this);
}

@_i1.jsonSerializable
class StringFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const StringFieldUpdateOperationsInput({this.set});

  factory StringFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$StringFieldUpdateOperationsInputFromJson(json);

  final String? set;

  @override
  Map<String, dynamic> toJson() =>
      _$StringFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class DateTimeFieldUpdateOperationsInput implements _i1.JsonSerializable {
  const DateTimeFieldUpdateOperationsInput({this.set});

  factory DateTimeFieldUpdateOperationsInput.fromJson(
          Map<String, dynamic> json) =>
      _$DateTimeFieldUpdateOperationsInputFromJson(json);

  final DateTime? set;

  @override
  Map<String, dynamic> toJson() =>
      _$DateTimeFieldUpdateOperationsInputToJson(this);
}

@_i1.jsonSerializable
class NestedStringFilter implements _i1.JsonSerializable {
  const NestedStringFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
  });

  factory NestedStringFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedStringFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedStringFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeFilter implements _i1.JsonSerializable {
  const NestedDateTimeFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedDateTimeFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedDateTimeFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedDateTimeFilterToJson(this);
}

@_i1.jsonSerializable
class NestedStringWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedStringWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.contains,
    this.startsWith,
    this.endsWith,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedStringWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedStringWithAggregatesFilterFromJson(json);

  final String? equals;

  @JsonKey(name: r'in')
  final Iterable<String>? $in;

  final Iterable<String>? notIn;

  final String? lt;

  final String? lte;

  final String? gt;

  final String? gte;

  final String? contains;

  final String? startsWith;

  final String? endsWith;

  final NestedStringWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedStringFilter? $min;

  @JsonKey(name: r'_max')
  final NestedStringFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedStringWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class NestedIntFilter implements _i1.JsonSerializable {
  const NestedIntFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
  });

  factory NestedIntFilter.fromJson(Map<String, dynamic> json) =>
      _$NestedIntFilterFromJson(json);

  final int? equals;

  @JsonKey(name: r'in')
  final Iterable<int>? $in;

  final Iterable<int>? notIn;

  final int? lt;

  final int? lte;

  final int? gt;

  final int? gte;

  final NestedIntFilter? not;

  @override
  Map<String, dynamic> toJson() => _$NestedIntFilterToJson(this);
}

@_i1.jsonSerializable
class NestedDateTimeWithAggregatesFilter implements _i1.JsonSerializable {
  const NestedDateTimeWithAggregatesFilter({
    this.equals,
    this.$in,
    this.notIn,
    this.lt,
    this.lte,
    this.gt,
    this.gte,
    this.not,
    this.$count,
    this.$min,
    this.$max,
  });

  factory NestedDateTimeWithAggregatesFilter.fromJson(
          Map<String, dynamic> json) =>
      _$NestedDateTimeWithAggregatesFilterFromJson(json);

  final DateTime? equals;

  @JsonKey(name: r'in')
  final Iterable<DateTime>? $in;

  final Iterable<DateTime>? notIn;

  final DateTime? lt;

  final DateTime? lte;

  final DateTime? gt;

  final DateTime? gte;

  final NestedDateTimeWithAggregatesFilter? not;

  @JsonKey(name: r'_count')
  final NestedIntFilter? $count;

  @JsonKey(name: r'_min')
  final NestedDateTimeFilter? $min;

  @JsonKey(name: r'_max')
  final NestedDateTimeFilter? $max;

  @override
  Map<String, dynamic> toJson() =>
      _$NestedDateTimeWithAggregatesFilterToJson(this);
}

@_i1.jsonSerializable
class Course implements _i1.JsonSerializable {
  const Course({
    required this.id,
    required this.name,
    required this.createdAt,
  });

  factory Course.fromJson(Map<String, dynamic> json) => _$CourseFromJson(json);

  final String id;

  final String name;

  final DateTime createdAt;

  @override
  Map<String, dynamic> toJson() => _$CourseToJson(this);
}

@_i1.jsonSerializable
class User implements _i1.JsonSerializable {
  const User({
    required this.id,
    required this.username,
    required this.password,
    required this.name,
    required this.createdAt,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  final String id;

  final String username;

  final String password;

  final String name;

  final DateTime createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserToJson(this);
}

class CourseFluent<T> extends _i1.PrismaFluent<T> {
  const CourseFluent(
    super.original,
    super.$query,
  );
}

class UserFluent<T> extends _i1.PrismaFluent<T> {
  const UserFluent(
    super.original,
    super.$query,
  );
}

extension CourseModelDelegateExtension on _i1.ModelDelegate<Course> {
  CourseFluent<Course?> findUnique({required CourseWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueCourse',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueCourse',
    );
    final future = query(CourseScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Course.fromJson(json.cast<String, dynamic>()) : null);
    return CourseFluent<Course?>(
      future,
      query,
    );
  }

  CourseFluent<Course> findUniqueOrThrow(
      {required CourseWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueCourseOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueCourseOrThrow',
    );
    final future = query(CourseScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Course.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Course)'));
    return CourseFluent<Course>(
      future,
      query,
    );
  }

  CourseFluent<Course?> findFirst({
    CourseWhereInput? where,
    Iterable<CourseOrderByWithRelationInput>? orderBy,
    CourseWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CourseScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstCourse',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstCourse',
    );
    final future = query(CourseScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Course.fromJson(json.cast<String, dynamic>()) : null);
    return CourseFluent<Course?>(
      future,
      query,
    );
  }

  CourseFluent<Course> findFirstOrThrow({
    CourseWhereInput? where,
    Iterable<CourseOrderByWithRelationInput>? orderBy,
    CourseWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CourseScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstCourseOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstCourseOrThrow',
    );
    final future = query(CourseScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Course.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Course)'));
    return CourseFluent<Course>(
      future,
      query,
    );
  }

  Future<Iterable<Course>> findMany({
    CourseWhereInput? where,
    Iterable<CourseOrderByWithRelationInput>? orderBy,
    CourseWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<CourseScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyCourse',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyCourse',
    );
    final fields = CourseScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyCourse) => findManyCourse
        .map((Map findManyCourse) => Course.fromJson(findManyCourse.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  CourseFluent<Course> create({required CourseCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneCourse',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneCourse',
    );
    final future = query(CourseScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Course.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Course)'));
    return CourseFluent<Course>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<CourseCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyCourse',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyCourse',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyCourse) =>
        AffectedRowsOutput.fromJson(createManyCourse.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  CourseFluent<Course?> update({
    required CourseUpdateInput data,
    required CourseWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneCourse',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneCourse',
    );
    final future = query(CourseScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Course.fromJson(json.cast<String, dynamic>()) : null);
    return CourseFluent<Course?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required CourseUpdateManyMutationInput data,
    CourseWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyCourse',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyCourse',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyCourse) =>
        AffectedRowsOutput.fromJson(updateManyCourse.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  CourseFluent<Course> upsert({
    required CourseWhereUniqueInput where,
    required CourseCreateInput create,
    required CourseUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneCourse',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneCourse',
    );
    final future = query(CourseScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? Course.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: Course)'));
    return CourseFluent<Course>(
      future,
      query,
    );
  }

  CourseFluent<Course?> delete({required CourseWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneCourse',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneCourse',
    );
    final future = query(CourseScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? Course.fromJson(json.cast<String, dynamic>()) : null);
    return CourseFluent<Course?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({CourseWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyCourse',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyCourse',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyCourse) =>
        AffectedRowsOutput.fromJson(deleteManyCourse.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateCourse aggregate({
    CourseWhereInput? where,
    Iterable<CourseOrderByWithRelationInput>? orderBy,
    CourseWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateCourse',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateCourse',
    );
    return AggregateCourse(query);
  }

  Future<Iterable<CourseGroupByOutputType>> groupBy({
    CourseWhereInput? where,
    Iterable<CourseOrderByWithAggregationInput>? orderBy,
    required Iterable<CourseScalarFieldEnum> by,
    CourseScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByCourse',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByCourse',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByCourse) =>
        groupByCourse.map((Map groupByCourse) =>
            CourseGroupByOutputType.fromJson(groupByCourse.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

extension UserModelDelegateExtension on _i1.ModelDelegate<User> {
  UserFluent<User?> findUnique({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findUniqueOrThrow({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findUniqueUserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findUniqueUserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> findFirst({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  UserFluent<User> findFirstOrThrow({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findFirstUserOrThrow',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findFirstUserOrThrow',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<Iterable<User>> findMany({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
    Iterable<UserScalarFieldEnum>? distinct,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
      _i2.GraphQLArg(
        r'distinct',
        distinct,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'findManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'findManyUser',
    );
    final fields = UserScalarFieldEnum.values.toGraphQLFields();
    compiler(Iterable<Map> findManyUser) => findManyUser
        .map((Map findManyUser) => User.fromJson(findManyUser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> create({required UserCreateInput data}) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> createMany({
    required Iterable<UserCreateManyInput> data,
    bool? skipDuplicates,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'skipDuplicates',
        skipDuplicates,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'createManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'createManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map createManyUser) =>
        AffectedRowsOutput.fromJson(createManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User?> update({
    required UserUpdateInput data,
    required UserWhereUniqueInput where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> updateMany({
    required UserUpdateManyMutationInput data,
    UserWhereInput? where,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'data',
        data,
      ),
      _i2.GraphQLArg(
        r'where',
        where,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'updateManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'updateManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map updateManyUser) =>
        AffectedRowsOutput.fromJson(updateManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  UserFluent<User> upsert({
    required UserWhereUniqueInput where,
    required UserCreateInput create,
    required UserUpdateInput update,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'create',
        create,
      ),
      _i2.GraphQLArg(
        r'update',
        update,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'upsertOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'upsertOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) => json is Map
            ? User.fromJson(json.cast<String, dynamic>())
            : throw Exception(
                'Not found OutputTypeRefType.string(value: User)'));
    return UserFluent<User>(
      future,
      query,
    );
  }

  UserFluent<User?> delete({required UserWhereUniqueInput where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteOneUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteOneUser',
    );
    final future = query(UserScalarFieldEnum.values.toGraphQLFields()).then(
        (json) =>
            json is Map ? User.fromJson(json.cast<String, dynamic>()) : null);
    return UserFluent<User?>(
      future,
      query,
    );
  }

  Future<AffectedRowsOutput> deleteMany({UserWhereInput? where}) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      )
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $mutation([
        _i2.GraphQLField(
          r'deleteManyUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'deleteManyUser',
    );
    final fields = const ['count'].map((e) => _i2.GraphQLField(e));
    compiler(Map deleteManyUser) =>
        AffectedRowsOutput.fromJson(deleteManyUser.cast());
    return query(fields).then((json) => json is Map
        ? compiler(json)
        : throw Exception('Unable to parse response'));
  }

  AggregateUser aggregate({
    UserWhereInput? where,
    Iterable<UserOrderByWithRelationInput>? orderBy,
    UserWhereUniqueInput? cursor,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'cursor',
        cursor,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'aggregateUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'aggregateUser',
    );
    return AggregateUser(query);
  }

  Future<Iterable<UserGroupByOutputType>> groupBy({
    UserWhereInput? where,
    Iterable<UserOrderByWithAggregationInput>? orderBy,
    required Iterable<UserScalarFieldEnum> by,
    UserScalarWhereWithAggregatesInput? having,
    int? take,
    int? skip,
  }) {
    final args = [
      _i2.GraphQLArg(
        r'where',
        where,
      ),
      _i2.GraphQLArg(
        r'orderBy',
        orderBy,
      ),
      _i2.GraphQLArg(
        r'by',
        by,
      ),
      _i2.GraphQLArg(
        r'having',
        having,
      ),
      _i2.GraphQLArg(
        r'take',
        take,
      ),
      _i2.GraphQLArg(
        r'skip',
        skip,
      ),
    ];
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'groupByUser',
          fields: fields,
          args: args,
        )
      ]),
      key: r'groupByUser',
    );
    final fields = by.map((e) => _i2.GraphQLField(e.originalName ?? e.name));
    compiler(Iterable<Map> groupByUser) => groupByUser.map((Map groupByUser) =>
        UserGroupByOutputType.fromJson(groupByUser.cast()));
    return query(fields).then((json) => json is Iterable
        ? compiler(json.cast())
        : throw Exception('Unable to parse response'));
  }
}

@_i1.jsonSerializable
class CourseGroupByOutputType implements _i1.JsonSerializable {
  const CourseGroupByOutputType({
    this.id,
    this.name,
    this.createdAt,
  });

  factory CourseGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$CourseGroupByOutputTypeFromJson(json);

  final String? id;

  final String? name;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => _$CourseGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class UserGroupByOutputType implements _i1.JsonSerializable {
  const UserGroupByOutputType({
    this.id,
    this.username,
    this.password,
    this.name,
    this.createdAt,
  });

  factory UserGroupByOutputType.fromJson(Map<String, dynamic> json) =>
      _$UserGroupByOutputTypeFromJson(json);

  final String? id;

  final String? username;

  final String? password;

  final String? name;

  final DateTime? createdAt;

  @override
  Map<String, dynamic> toJson() => _$UserGroupByOutputTypeToJson(this);
}

@_i1.jsonSerializable
class AffectedRowsOutput implements _i1.JsonSerializable {
  const AffectedRowsOutput({this.count});

  factory AffectedRowsOutput.fromJson(Map<String, dynamic> json) =>
      _$AffectedRowsOutputFromJson(json);

  final int? count;

  @override
  Map<String, dynamic> toJson() => _$AffectedRowsOutputToJson(this);
}

class AggregateCourse {
  const AggregateCourse(this.$query);

  final _i1.PrismaFluentQuery $query;

  CourseCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return CourseCountAggregateOutputType(query);
  }

  CourseMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return CourseMinAggregateOutputType(query);
  }

  CourseMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return CourseMaxAggregateOutputType(query);
  }
}

class AggregateUser {
  const AggregateUser(this.$query);

  final _i1.PrismaFluentQuery $query;

  UserCountAggregateOutputType $count() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_count',
          fields: fields,
        )
      ]),
      key: r'_count',
    );
    return UserCountAggregateOutputType(query);
  }

  UserMinAggregateOutputType $min() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_min',
          fields: fields,
        )
      ]),
      key: r'_min',
    );
    return UserMinAggregateOutputType(query);
  }

  UserMaxAggregateOutputType $max() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_max',
          fields: fields,
        )
      ]),
      key: r'_max',
    );
    return UserMaxAggregateOutputType(query);
  }
}

class CourseCountAggregateOutputType {
  const CourseCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'createdAt',
          fields: fields,
        )
      ]),
      key: r'createdAt',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class CourseMinAggregateOutputType {
  const CourseMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'createdAt',
          fields: fields,
        )
      ]),
      key: r'createdAt',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class CourseMaxAggregateOutputType {
  const CourseMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'createdAt',
          fields: fields,
        )
      ]),
      key: r'createdAt',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class UserCountAggregateOutputType {
  const UserCountAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<int> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'createdAt',
          fields: fields,
        )
      ]),
      key: r'createdAt',
    );
    return query(const []).then((value) => (value as int));
  }

  Future<int> $all() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'_all',
          fields: fields,
        )
      ]),
      key: r'_all',
    );
    return query(const []).then((value) => (value as int));
  }
}

class UserMinAggregateOutputType {
  const UserMinAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'createdAt',
          fields: fields,
        )
      ]),
      key: r'createdAt',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

class UserMaxAggregateOutputType {
  const UserMaxAggregateOutputType(this.$query);

  final _i1.PrismaFluentQuery $query;

  Future<String?> id() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'id',
          fields: fields,
        )
      ]),
      key: r'id',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> username() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'username',
          fields: fields,
        )
      ]),
      key: r'username',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> password() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'password',
          fields: fields,
        )
      ]),
      key: r'password',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<String?> name() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'name',
          fields: fields,
        )
      ]),
      key: r'name',
    );
    return query(const []).then((value) => (value as String?));
  }

  Future<DateTime?> createdAt() {
    final query = _i1.PrismaFluent.queryBuilder(
      query: (fields) => $query([
        _i2.GraphQLField(
          r'createdAt',
          fields: fields,
        )
      ]),
      key: r'createdAt',
    );
    return query(const [])
        .then((value) => value is String ? DateTime.parse(value) : null);
  }
}

@JsonSerializable(
  createFactory: false,
  createToJson: true,
  includeIfNull: false,
)
class Datasources implements _i1.JsonSerializable {
  const Datasources({this.db});

  final String? db;

  @override
  Map<String, dynamic> toJson() => _$DatasourcesToJson(this);
}

class PrismaClient extends _i1.BasePrismaClient<PrismaClient> {
  PrismaClient._internal(
    _i3.Engine engine, {
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  })  : _engine = engine,
        _headers = headers,
        _transaction = transaction,
        super(
          engine,
          headers: headers,
          transaction: transaction,
        );

  factory PrismaClient({
    Datasources? datasources,
    Iterable<_i4.Event>? stdout,
    Iterable<_i4.Event>? event,
  }) {
    final logger = _i4.Logger(
      stdout: stdout,
      event: event,
    );
    final engine = _i5.BinaryEngine(
      logger: logger,
      schema:
          r'Ly8gVGhpcyBpcyB5b3VyIFByaXNtYSBzY2hlbWEgZmlsZSwKLy8gbGVhcm4gbW9yZSBhYm91dCBpdCBpbiB0aGUgZG9jczogaHR0cHM6Ly9wcmlzLmx5L2QvcHJpc21hLXNjaGVtYQoKZ2VuZXJhdG9yIGNsaWVudCB7CiAgcHJvdmlkZXIgPSAiZGFydCBydW4gb3JtIgp9CgpkYXRhc291cmNlIGRiIHsKICBwcm92aWRlciA9ICJteXNxbCIKICB1cmwgICAgICA9IGVudigiREFUQUJBU0VfVVJMIikKfQoKbW9kZWwgQ291cnNlIHsKICBpZCAgICAgICAgU3RyaW5nICAgQGlkIEBtYXAoIl9pZCIpCiAgbmFtZSAgICAgIFN0cmluZyAgIEB1bmlxdWUKICBjcmVhdGVkQXQgRGF0ZVRpbWUgQGRlZmF1bHQobm93KCkpCn0KCm1vZGVsIFVzZXJ7CiAgaWQgU3RyaW5nIEBpZCBAbWFwKCJfaWQiKQogIHVzZXJuYW1lIFN0cmluZyBAdW5pcXVlCiAgcGFzc3dvcmQgU3RyaW5nCiAgbmFtZSBTdHJpbmcKICBjcmVhdGVkQXQgRGF0ZVRpbWUgQGRlZmF1bHQobm93KCkpCn0=',
      datasources: datasources?.toJson().cast() ?? const {},
      executable:
          r'/Users/mahdi/MyProjects/full_stack_dart/backend/node_modules/prisma/query-engine-darwin-arm64',
    );
    return PrismaClient._internal(engine);
  }

  final _i3.Engine _engine;

  final _i3.QueryEngineRequestHeaders? _headers;

  final _i3.TransactionInfo? _transaction;

  @override
  PrismaClient copyWith({
    _i3.QueryEngineRequestHeaders? headers,
    _i3.TransactionInfo? transaction,
  }) =>
      PrismaClient._internal(
        _engine,
        headers: headers ?? _headers,
        transaction: transaction ?? _transaction,
      );
  _i1.ModelDelegate<Course> get course => _i1.ModelDelegate<Course>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
  _i1.ModelDelegate<User> get user => _i1.ModelDelegate<User>(
        _engine,
        headers: _headers,
        transaction: _transaction,
      );
}
