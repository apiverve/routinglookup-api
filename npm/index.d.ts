declare module '@apiverve/routinglookup' {
  export interface routinglookupOptions {
    api_key: string;
    secure?: boolean;
  }

  /**
   * Describes fields the current plan does not unlock. Locked fields arrive as null
   * in `data`; `locked_fields` names them, using dot paths for nested fields.
   * Absent when the plan unlocks everything.
   */
  export interface PremiumInfo {
    message: string;
    upgrade_url: string;
    locked_fields: string[];
  }

  export interface routinglookupResponse {
    status: string;
    error: string | null;
    data: RoutingNumberLookupData;
    code?: number;
    premium?: PremiumInfo;
  }


  interface RoutingNumberLookupData {
      routingNumber:          null | string;
      officeCode:             null | string;
      recordTypeCode:         null | string;
      newRoutingNumber:       null | string;
      bank:                   null | string;
      address:                null | string;
      city:                   null | string;
      state:                  null | string;
      zip:                    null | string;
      zipExtension:           null | string;
      country:                null | string;
      federalReserveDistrict: null | string;
      routingType:            null | string;
      isValidChecksum:        boolean | null;
      routingAnalysis:        RoutingAnalysis;
  }
  
  interface RoutingAnalysis {
      isHeadOffice:         boolean | null;
      isBranch:             boolean | null;
      isFederalReserveBank: boolean | null;
      isActive:             boolean | null;
      replacedBy:           null;
  }

  export default class routinglookupWrapper {
    constructor(options: routinglookupOptions);

    execute(callback: (error: any, data: routinglookupResponse | null) => void): Promise<routinglookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: routinglookupResponse | null) => void): Promise<routinglookupResponse>;
    execute(query?: Record<string, any>): Promise<routinglookupResponse>;
  }
}
