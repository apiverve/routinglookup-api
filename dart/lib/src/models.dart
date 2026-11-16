/// Response models for the Routing Number Lookup API.

/// API Response wrapper.
class RoutinglookupResponse {
  final String status;
  final dynamic error;
  final RoutinglookupData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  RoutinglookupResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory RoutinglookupResponse.fromJson(Map<String, dynamic> json) => RoutinglookupResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? RoutinglookupData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Routing Number Lookup API.

class RoutinglookupData {
  String? routingNumber;
  String? officeCode;
  String? recordTypeCode;
  String? newRoutingNumber;
  String? bank;
  String? address;
  String? city;
  String? state;
  String? zip;
  String? zipExtension;
  String? country;
  String? federalReserveDistrict;
  num? federalReserveDistrictNumber;
  List<String>? federalReserveStates;
  bool? addressInDistrict;
  List<String>? statesServed;
  num? latitude;
  num? longitude;
  String? timezone;
  String? routingType;
  bool? isValidChecksum;
  RoutinglookupDataRoutingAnalysis? routingAnalysis;

  RoutinglookupData({
    this.routingNumber,
    this.officeCode,
    this.recordTypeCode,
    this.newRoutingNumber,
    this.bank,
    this.address,
    this.city,
    this.state,
    this.zip,
    this.zipExtension,
    this.country,
    this.federalReserveDistrict,
    this.federalReserveDistrictNumber,
    this.federalReserveStates,
    this.addressInDistrict,
    this.statesServed,
    this.latitude,
    this.longitude,
    this.timezone,
    this.routingType,
    this.isValidChecksum,
    this.routingAnalysis,
  });

  factory RoutinglookupData.fromJson(Map<String, dynamic> json) => RoutinglookupData(
      routingNumber: json['routing_number'],
      officeCode: json['office_code'],
      recordTypeCode: json['record_type_code'],
      newRoutingNumber: json['new_routing_number'],
      bank: json['bank'],
      address: json['address'],
      city: json['city'],
      state: json['state'],
      zip: json['zip'],
      zipExtension: json['zip_extension'],
      country: json['country'],
      federalReserveDistrict: json['federal_reserve_district'],
      federalReserveDistrictNumber: json['federal_reserve_district_number'],
      federalReserveStates: (json['federal_reserve_states'] as List?)?.cast<String>(),
      addressInDistrict: json['address_in_district'],
      statesServed: (json['states_served'] as List?)?.cast<String>(),
      latitude: json['latitude'],
      longitude: json['longitude'],
      timezone: json['timezone'],
      routingType: json['routing_type'],
      isValidChecksum: json['is_valid_checksum'],
      routingAnalysis: json['routing_analysis'] != null ? RoutinglookupDataRoutingAnalysis.fromJson(json['routing_analysis']) : null,
    );
}

class RoutinglookupDataRoutingAnalysis {
  bool? isHeadOffice;
  bool? isBranch;
  bool? isFederalReserveBank;
  bool? isActive;
  dynamic replacedBy;

  RoutinglookupDataRoutingAnalysis({
    this.isHeadOffice,
    this.isBranch,
    this.isFederalReserveBank,
    this.isActive,
    this.replacedBy,
  });

  factory RoutinglookupDataRoutingAnalysis.fromJson(Map<String, dynamic> json) => RoutinglookupDataRoutingAnalysis(
      isHeadOffice: json['is_head_office'],
      isBranch: json['is_branch'],
      isFederalReserveBank: json['is_federal_reserve_bank'],
      isActive: json['is_active'],
      replacedBy: json['replaced_by'],
    );
}

class RoutinglookupRequest {
  String routing;

  RoutinglookupRequest({
    required this.routing,
  });

  Map<String, dynamic> toJson() => {
      'routing': routing,
    };
}
