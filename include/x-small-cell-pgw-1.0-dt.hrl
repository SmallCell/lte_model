%% Generated by the reporter.pl from TR*.xml
%%
%% model: PGWService:1.0
%% hrl_guard: PGWService

-ifndef(_PGWService_HRL_).
-define(_PGWService_HRL_, true).

-include("x-small-cell-types-1-0.hrl").

%% @doc: PGWService.
-record('PGWService',{ 
  'Capabilities'	      :: 'Capabilities'(),
  'BM'	      :: 'BM'()
}).
-type 'PGWService'() :: #'PGWService'{}. 

%% @doc: PGWService.Capabilities.
-record('Capabilities',{ 

}).
-type 'Capabilities'() :: #'Capabilities'{}. 

%% @doc: PGWService.BM.
-record('BM',{ 
  'BearerContextList'	 = [] :: 'BearerContextList'(),
  'BearerContextListNumberOfEntries' :: unsignedInt()
}).
-type 'BM'() :: #'BM'{}. 

%% @doc: PGWService.BM.BearerContextList.{i}.
-record('BearerContextList',{ 
  'APNList'	 = [] :: 'APNList'(),
  'IMSI' :: string(),
  'MSISDN' :: string(),
  'RatType' :: string(),
  'APNListNumberOfEntries' :: unsignedInt()
}).
-type 'BearerContextList'() :: #'BearerContextList'{}. 

%% @doc: PGWService.BM.BearerContextList.{i}.APNList.{i}.
-record('APNList',{ 
  'PDNConnectionList'	 = [] :: 'PDNConnectionList'(),
  'ApnInUse' :: string(),
  'ApnAmbr' :: unsignedInt(),
  'PDNConnectionListNumberOfEntries' :: unsignedInt()
}).
-type 'APNList'() :: #'APNList'{}. 

%% @doc: PGWService.BM.BearerContextList.{i}.APNList.{i}.PDNConnectionList.{i}.
-record('PDNConnectionList',{ 
  'EPSBearerList'	 = [] :: 'EPSBearerList'(),
  'IPAddress' :: 'IPAddress'(),
  'PdnType' :: string(),
  'SGwAddressInUse' :: 'IPAddress'(),
  'SGwTeidForS5S8' :: TEID(),
  'PGwIpAddressForS5S8' :: 'IPAddress'(),
  'PGwTeidForS5S8' :: TEID(),
  'BCM' :: string(),
  'DefaultBearer' :: string(),
  'EPSBearerListNumberOfEntries' :: unsignedInt()
}).
-type 'PDNConnectionList'() :: #'PDNConnectionList'{}. 

%% @doc: PGWService.BM.BearerContextList.{i}.APNList.{i}.PDNConnectionList.{i}.EPSBearerList.{i}.
-record('EPSBearerList',{ 
  'EPSBearerId' :: unsignedInt(),
  'TFT' :: string(),
  'SGwAddressInUse' :: 'IPAddress'(),
  'SGwTeidForS5S8' :: TEID(),
  'PGwIpAddressForS5S8' :: 'IPAddress'(),
  'PGwTeidForS5S8' :: TEID(),
  'EPSBearerQoS' :: string()
}).
-type 'EPSBearerList'() :: #'EPSBearerList'{}. 

-endif. % _PGWService_HRL_
