%% Generated by the reporter.pl from TR*.xml
%%
%% model: MMEService:1.0
%% hrl_guard: MMEService

-ifndef(_MMEService_HRL_).
-define(_MMEService_HRL_, true).

-include("x-small-cell-types-1-0.hrl").

%% @doc: MMEService.
-record('MMEService',{ 
  'Capabilities'	      :: 'Capabilities'(),
  'MobilityManagement'	      :: 'MobilityManagement'(),
  'MMEGI' :: unsignedInt(),
  'MMEC' :: unsignedInt()
}).
-type 'MMEService'() :: #'MMEService'{}. 

%% @doc: MMEService.Capabilities.
-record('Capabilities',{ 

}).
-type 'Capabilities'() :: #'Capabilities'{}. 

%% @doc: MMEService.MobilityManagement.
-record('MobilityManagement',{ 
  'UEList'	 = [] :: 'UEList'(),
  'UEListNumberOfEntries' :: unsignedInt()
}).
-type 'MobilityManagement'() :: #'MobilityManagement'{}. 

%% @doc: MMEService.MobilityManagement.UEList.{i}.
-record('UEList',{ 
  'PDNConnectionList'	 = [] :: 'PDNConnectionList'(),
  'IMSI' :: string(),
  'MSISDN' :: string(),
  'MMState' :: string(),
  'GUTI' :: string(),
  'MMEI' :: string(),
  'TAIList' :: string(),
  'ECGI' :: string(),
  'ECGIAge' :: string(),
  'AV' :: string(),
  'UENetworkCapability' :: string(),
  'UESpecificDRXParameters' :: string(),
  'SelectedNASAlgorithm' :: string(),
  'SelectedASAlgorithm' :: string(),
  'KSI_ASME' :: string(),
  'K_ASME' :: string(),
  'NasKeysAndCount' :: string(),
  'KeySetFlag' :: string(),
  'Recovery' :: string(),
  'MmeIpAddressForS11' :: 'IPAddress'(),
  'MmeTeidForS11' :: TEID(),
  'SGwIpAddressForS11S4' :: 'IPAddress'(),
  'SGwTeidForS11S4' :: TEID(),
  'ENodeBAddressInUse' :: 'IPAddress'(),
  'EnbUeS1apId' :: unsignedInt(),
  'MmeUeS1apId' :: unsignedInt(),
  'SubscribedUeAmbr' :: unsignedInt(),
  'UeAmbr' :: unsignedInt(),
  'RfspIndexInUse' :: string(),
  'URRP-MME' :: boolean(),
  'PDNConnectionListNumberOfEntries' :: unsignedInt()
}).
-type 'UEList'() :: #'UEList'{}. 

%% @doc: MMEService.MobilityManagement.UEList.{i}.PDNConnectionList.{i}.
-record('PDNConnectionList',{ 
  'BearerList'	 = [] :: 'BearerList'(),
  'ApnInUse' :: string(),
  'ApnSubscribed' :: string(),
  'ApnRestriction' :: string(),
  'PdnType' :: string(),
  'IPAddress' :: 'IPAddress'(),
  'PdnGwAddressInUse' :: 'IPAddress'(),
  'PdnGwTeidForS5S8' :: TEID(),
  'MsInfoChangeReportingAction' :: string(),
  'EpsSubscribedQoSProfile' :: string(),
  'SubscribedApnAmbr' :: unsignedInt(),
  'ApnAmbr' :: unsignedInt(),
  'PdnGwGreKeyForUplinkTraffic' :: unsignedInt(),
  'DefaultBearer' :: unsignedInt(),
  'BearerListNumberOfEntries' :: unsignedInt()
}).
-type 'PDNConnectionList'() :: #'PDNConnectionList'{}. 

%% @doc: MMEService.MobilityManagement.UEList.{i}.PDNConnectionList.{i}.BearerList.{i}.
-record('BearerList',{ 
  'EpsBearerId' :: unsignedInt(),
  'TI' :: unsignedInt(),
  'IpAddressForS1u' :: 'IPAddress'(),
  'TeidForS1u' :: TEID(),
  'PdnGwTeidForS5S8' :: TEID(),
  'PdnGwIpAddressForS5S8' :: 'IPAddress'(),
  'EpsBearerQoS' :: string(),
  'TFT' :: string()
}).
-type 'BearerList'() :: #'BearerList'{}. 

-endif. % _MMEService_HRL_
