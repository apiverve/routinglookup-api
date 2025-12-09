declare module '@apiverve/routinglookup' {
  export interface routinglookupOptions {
    api_key: string;
    secure?: boolean;
  }

  export interface routinglookupResponse {
    status: string;
    error: string | null;
    data: RoutingNumberLookupData;
    code?: number;
  }


  interface RoutingNumberLookupData {
      routingNumber:    string;
      officeCode:       string;
      recordTypeCode:   string;
      newRoutingNumber: string;
      bank:             string;
      address:          string;
      city:             string;
      state:            string;
      zip:              string;
      zipExtension:     string;
      country:          string;
  }

  export default class routinglookupWrapper {
    constructor(options: routinglookupOptions);

    execute(callback: (error: any, data: routinglookupResponse | null) => void): Promise<routinglookupResponse>;
    execute(query: Record<string, any>, callback: (error: any, data: routinglookupResponse | null) => void): Promise<routinglookupResponse>;
    execute(query?: Record<string, any>): Promise<routinglookupResponse>;
  }
}
