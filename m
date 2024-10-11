Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2053899A3FC
	for <lists+intel-gfx@lfdr.de>; Fri, 11 Oct 2024 14:37:14 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 18B2310E00C;
	Fri, 11 Oct 2024 12:37:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IdfBT4qK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FFF310E00C
 for <intel-gfx@lists.freedesktop.org>; Fri, 11 Oct 2024 12:37:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728650231; x=1760186231;
 h=message-id:date:subject:from:to:cc:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=DrVaNyW4qboPht5wXkOItUtID2GFzoQAX4O0hPle5YM=;
 b=IdfBT4qKvtLtJ0Oo99SKFYZzHjWZgLivQrRr1Qujgb8E589gI3PwjLbI
 FixKPo94jEdFzE4dg83Ou6VXlNmQ8T4LknpZlU/M7QV8WRCN8zUNT5rCv
 eH5bu2W2Z6TdIdinK5xEUdjjET6w4zgYQ/is3gS8mGfIZw3WiT9JYYg9c
 VyAXXgvbjn2ItLKtcSc/XjeXAg1WFDPTD2XBVWnrAt8dsrBueocCmb7Hj
 EqnxfZsw6XGCCe/zRuLQau/v0BRDAQ/XVEYcoK8S23Fcerk1eI4WXxZ/8
 pH1F6E7LLg5C4/mUtlrqcryEldAu2NWf8UJq5TpYTzxXUdQa42NM4N1DI Q==;
X-CSE-ConnectionGUID: EN0zlvs4Tnmps0NqfISCoA==
X-CSE-MsgGUID: CNXQRPsMQ3aOgQObpD+5Mg==
X-IronPort-AV: E=McAfee;i="6700,10204,11221"; a="45523864"
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="45523864"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Oct 2024 05:37:03 -0700
X-CSE-ConnectionGUID: Nzrq1odpQLeFovziGjHEJA==
X-CSE-MsgGUID: KzyW6oaXS+qDdjhUJjWQRQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,195,1725346800"; d="scan'208";a="81515838"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa004.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Oct 2024 05:37:03 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 11 Oct 2024 05:37:02 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 11 Oct 2024 05:37:02 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.171)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 11 Oct 2024 05:37:02 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GxvWL/zeHrS+cu0nVusR7w6GC5DbTK5xC7XwTklAYOICKbGjATuzk4iIw7SVJtGAhaUHfGvZOR0yFPIq3Yz/F8NxJDa40KXFIY3umf53jvl347yXseKm3EBWzS/lP1kQrDUjtTHoMvjPVGsVYcEJtCFrdulsd57wDmr1ntRds37MfZVOHT3i4lJI68MZ72PqWLByl8cBmweUWWD1MVnLyzckkiC9y2GE1pxeRGPoAJJKktfglh2nfazIqaZWbsa6vWE6buf+ZUFW8EAq44Obt5549MVuYJeZPhF3WGF0Fb4LbvYrp3kxDAO3We8rMtzS4v37FfuBR8+Y07/KIWzNkw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=cFZoNgfleYv74tLRjrse7kknfD3TpYspzmYMPtS2cZ8=;
 b=WmP+FiXDk0TN1fyR8XLiVlSlieDkuhO1rvJ0NIURdHCqcdq9D7K5JmnCrmbeSzG6WRkv54X7hnpBPa3V63+CHG5Fdb0Rbm57hrRGugc1m6hKYB/KI0JygfupqYZ9/Nv8kW0sytZ15UKjVEPsE9AU/U/ZvOLMBtYxloaFDg98zwNqDXjtvVRkyVy4q+KtaUnRxteJTSGdiIwESEB4yhsQk8K6QHmvrRKN/ZgS9IKvPUey1sl+V2R4c36oJNK07eAqsux1a+dBmEckjPSJlpVZoO5Iirlad8voYsuC+eQz4M94/wk0Bbks/wuIB3H4Z/U3US6IT+IVfsPbckh7X43asA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB8252.namprd11.prod.outlook.com (2603:10b6:510:1aa::14)
 by IA0PR11MB7353.namprd11.prod.outlook.com (2603:10b6:208:435::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Fri, 11 Oct
 2024 12:36:54 +0000
Received: from PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad]) by PH7PR11MB8252.namprd11.prod.outlook.com
 ([fe80::625b:17f6:495f:7ad%6]) with mapi id 15.20.8048.017; Fri, 11 Oct 2024
 12:36:54 +0000
Message-ID: <1cc13eae-6494-4ebc-aa41-ceba3fd3f194@intel.com>
Date: Fri, 11 Oct 2024 18:06:24 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5] drm/i915/selftests: Implement frequency logging for
 energy reading validation
From: "Anirban, Sk" <sk.anirban@intel.com>
To: "Pottumuttu, Sai Teja" <sai.teja.pottumuttu@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <anshuman.gupta@intel.com>
CC: <badal.nilawar@intel.com>
References: <20241010173439.2006496-1-sk.anirban@intel.com>
 <af9a4f4a-9b8b-4164-a5d6-be58bcdc3e67@intel.com>
 <f3027ad6-436c-4c62-980c-c5533f1850a8@intel.com>
Content-Language: en-US
In-Reply-To: <f3027ad6-436c-4c62-980c-c5533f1850a8@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0088.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:ae::13) To PH7PR11MB8252.namprd11.prod.outlook.com
 (2603:10b6:510:1aa::14)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB8252:EE_|IA0PR11MB7353:EE_
X-MS-Office365-Filtering-Correlation-Id: c09201df-0fb2-4dbd-ca96-08dce9f157a5
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?OHdhUHZBdDF5cktTM2RQbEVhc2NMdWJ4ckphOFdqV0poM3QwYTVmaURoVlJm?=
 =?utf-8?B?eHAyUlQ0ZzluR09nbURvYlpvRXJlMmI0aXlFckpnTWUwcUZ1aUxYQnhvV0lt?=
 =?utf-8?B?UDZja0MvRk9mbHdwS0VpcU1xOWU4K0dnVC9hWkJiVmFSZmhOZ0xmNG9WOXZh?=
 =?utf-8?B?N2tUcjlGaWpncXMzSnk2UWRVQ0xWRlhIdW9xMnlQV25OSnc4TjNEc0pheWdU?=
 =?utf-8?B?b0NTTTNTMG1kaXpaYkNEYUorQ2VOM2ZZaFA3eTU4U1ZUMiszb0RJcnlXMkk1?=
 =?utf-8?B?NG1PMGhZMksrRHB0TXZRek1YRkhXNGUxbitFTVZHNHlOdWthR1I5VklUd2Yy?=
 =?utf-8?B?cmREbjJUS28yMWpESSttUDlFOWNjaTI0d29ONjVQNjA1ZUN2NTJqUzVqTC9M?=
 =?utf-8?B?UEc1SmgwSThkZktwOVRsbUVxTW5RQUdjSXZ5OS9XaEVURGVVVjk5NlFQM0pJ?=
 =?utf-8?B?QllQQlV1eDhwMU1pdzR4L01JTWdPLzdvdzNUS2hjT3VOdkxsTnltVFJUeGpH?=
 =?utf-8?B?b2gvQXVjVHBDWEx4cDhJVWkvbEJYRm5jcXZIQjBtR3JsNkx6czVRUG5BbzZP?=
 =?utf-8?B?UWNLaFFkcWgvMURjekI3YUdmWTJFQlREc1YvWmJZbjRmMVpxUnNUaDBrbmJC?=
 =?utf-8?B?NHF5bUk3andrQVNxZVlEczdYNU1RWWRMWTNtZExOelF2WjkydVdjY0pkNnBW?=
 =?utf-8?B?aTlyRld0bFBvbzg2QkkvRnhMVyt5RzZvdWpBYkhQeHVYakgwSEtpWDFpcmRV?=
 =?utf-8?B?Rm5IRGpSeVB0L3hSVko4aEw0YlVtaTFVZytlS0pGcnh3RXFtc3JkamlrdFA2?=
 =?utf-8?B?aUtJeXNsa25mdU5GVGlCRkl3RlJMVzFmaTRNRk0rbno1Ymg1a2kwa2EvY2JM?=
 =?utf-8?B?RmZ3RzNyd0N1ajhpQjlUcjJibVlsWjV2eWczd09EQVkvVHVxNzBIRDZOb1Bp?=
 =?utf-8?B?b2N5OEJKZ2FNcXY5MWZKeFBNUjdqVEQrdmN4T08wbElDNmRsRndLbXlxak45?=
 =?utf-8?B?VFRtc1JGOURleWpoa1ROVlZSSkh1S1JGQkVoaHdOcFZrdE9mNnN5eWZpMCtR?=
 =?utf-8?B?eWR6WnQrd3RaNndQMGJHaWdBMnJ3aFQwMU9oMDJUNXU3ek8xS25DL3lGZHJB?=
 =?utf-8?B?UGlxQzNTNU96MlhORXhzcUhiZ0FpTSt2UGJsbEFhMnFhNC95THdGOUpRYVll?=
 =?utf-8?B?K3N2QWlpWitFTGRWSUg5SmxobkJ3V2ttTUV0ME11SDUxQndFeDdycGR2SkI5?=
 =?utf-8?B?NmhabzN5QTZOQnZhaHdhUVVDNUhyVzZFOERtUlk4NHUxdTRJNW5vaEkzODVC?=
 =?utf-8?B?T3VnMkVXdWVub1BnUHdRQ1pPalJoajFKaElTVHVLVlNOZVJMRGhyYm5XTGhB?=
 =?utf-8?B?aldyR2RvSUtQMWxzN3ExVDgwWkNMZ3pTRHV6RFlTWFVtY2p0ZUxoMDA5Ym1F?=
 =?utf-8?B?K2tsZ1RyZ0RnbmJ6SzM0NDJ1VmJoV3NQVXpWMVBDZVBTSE1mUlMrOEhKbG84?=
 =?utf-8?B?Nk82UVNhZDF2WnhkUXNDQXZMS085NW1Mb3Bxa3RvTGRLbW9ucWhkdFpSQ0xH?=
 =?utf-8?B?NGNjclhGN1ZSdXJjbURHMlhtcUYvWWtGeitvT3VzWm5BMDk3VmhqY1ZFRCsz?=
 =?utf-8?B?S0xhMys3dlFjYjdZbWRaeXhuY0hTcVhvM1R1TUR0N2pwTjl4Z0hlSERNR1U4?=
 =?utf-8?B?TlBPZEQxQURNMDBBZXdGQ1BpM0hRVUJMQ2JKblNHUG5lOEorOVJRMTF3PT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB8252.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?NlJmS3dZd29sek9GTWFQeHRYTGVpNEJ2K0ZMK2wyZHI5NEtvSndEN2pBYTkw?=
 =?utf-8?B?aitBMkxkZmVGZjJiaTVwUWd1RjlmMnkxRjNsVk5ITkpVSU5KR2p3SmF2S0N1?=
 =?utf-8?B?a1pLVUQraFBhdDdSdFFPT3JJOE4ybm8rbEw1T2l6QUIvMmNMbmxYUWQvczBv?=
 =?utf-8?B?Y3lyM2VmSEYrd1ZCQ0JNajI3QjBBdTJ1SkJTVjR0bWdndFF6T2Fic0x4RWVm?=
 =?utf-8?B?UDNZR3A4SGxKeDFQamxBYnNTT2xZQjRpMWFoa3VxU1dsazlTSzNOc1BmQ2o1?=
 =?utf-8?B?ZmhxNFVDTkZ0Nm5mL2ZCTWMvNUQvQWJGVXZONGNKU2JJR3FYOU14WVFTOGdW?=
 =?utf-8?B?eUJyK2RlVVJlM1RyejBNcFc3aSs5NG9PNmk3RXRXWWlYMWRoYnAva3U0emto?=
 =?utf-8?B?MExuV0FOU1A4a3E1VEJla2VVblFrMTRDUEYyVnBremVzU0FLLzFmSlQycFZD?=
 =?utf-8?B?SEZ3RHVJMVA3TFFYanRWNjVIUzFmbFpHTW1RMC9ySElMTE1qU25lbFc3ZTNW?=
 =?utf-8?B?UVJPUms0RDB2djZoRTFzY2IvMTNUWG1xNXlRV1NhRnBaUmJUOEZ5cHYzL0tT?=
 =?utf-8?B?cmxLNnd3RHVMOUExZWU0K09NZ29KSWlUZEZ4SEh5UGMzUFJvUjhrUGhiY2tX?=
 =?utf-8?B?dzVsU1A0SGM5dzVjOUI3d0trWjRuUFRsTEJaaDJYM3c3T0RBUGtETmhoNFdl?=
 =?utf-8?B?SG5IWU93N2tBV29xekhoUGNRL243NkFPOWYybVJ2RHZZYWVBbHlpVXJKWU43?=
 =?utf-8?B?SnRweXNUZlZFc1FCamNzSnF4NGFXdlBpSVcxbjNzTWtOWGFKT3lRRW5vY25U?=
 =?utf-8?B?dkJwWmFhVk5tOWR0cGQzSTdLN2xqUVpyODFJbDFkN212RWF4RXd5VXROTC80?=
 =?utf-8?B?bkJOTUVNMU9FWmdEVyt2RjM1eXlRdHVQYy8ySXpleE82cFdiYlBSNFF5TjQ2?=
 =?utf-8?B?THlSZTZKblNRSDR4c2k1UE1QZnp5M2FFcXhwcXNDaEhGdXljNC9hZHMvdEtn?=
 =?utf-8?B?Sis4OXlIMU53U3RCNTlMajM5SG9lcnVEK2ZNeGlZU2I0empxZE81ZGR1by9B?=
 =?utf-8?B?aUIyNlBFdmwxUVRGYzZIcFFQK3gyZXd3OXRlcTgzSFI3bk1KUVB3elowSzdl?=
 =?utf-8?B?YUZaMnZ4bHBFSWZQenh5K2E4ekVaUG1jWGVLUTFFVkFrQ3pCdkRFQnBxUDZm?=
 =?utf-8?B?Yjl6V2NwWDRTNGpyQW5ydElZOE5yWGNlaWVMS1pjUzJkZGNUeDk4TWFxMlp4?=
 =?utf-8?B?SG84NTluTXBtOXhHVGUyRDJFQTJJc29zOEEvQThxU1VXRVNyVFYzRnA0SWs5?=
 =?utf-8?B?N0RPZS9MQ1U1NER0cys5N3NSbFBjSnQ1ZVJLcUxNT2ppSEZVR3dtQ3JlL2xp?=
 =?utf-8?B?NXE2S3lvSkozSURKYUJlaG1LZjJyUkR3T3JPRU5XU3RHV29IZ25Xd0tVUExq?=
 =?utf-8?B?ZXlFRkRtMVpqdnd4bUtWWTI5K3JzbldzZm9sNjNUM3FnN1hETFJ0WHFIOTJq?=
 =?utf-8?B?TjZzRXpRUGpTRThjeUxrL1lWdTNmVlcvMld4eXEyRUg1emh1aE9TVjgzZito?=
 =?utf-8?B?K0p4Z1oycWIvMTdnU3AyQmZhOFVvMTJyVzNzaUV0VWVpZy9IWGdjazNwcmhC?=
 =?utf-8?B?L1ZDVWFmS0Q2NjhGUUVwY2tTNm82eVZENytubCt0YTZiT0xWR1dsa3dQamlI?=
 =?utf-8?B?NmpVN2dsUjlvMTU3TUFwZzZ1QlJlL2Z1ZitxTHpKLzlWdklYOTdabStSbWZv?=
 =?utf-8?B?UVF0RllYTlFqVVFNV2J0VHRDZkFPWFMzMGMxOG9pUDdVVHNIMjJGdlZnZnBV?=
 =?utf-8?B?YmRGdnVUWCszSTNiUUF0a1VkYkNiNzRZMzFFWW9PU0RnNFNVOXNVM3FzK0VT?=
 =?utf-8?B?bUhjWHdtQVVJNGNEcmo0VnZGOFpibXhyTk1yTTdXNlB2QTlmWFlXZ3YwdFNP?=
 =?utf-8?B?R3V4dDh0SzBHbjFFWTVZSkV2T1R4enJ1VjdBaUxHWU5vN3lQYTFwVS80cHdl?=
 =?utf-8?B?b0dTek5YRDVURjlaY2NVRkwvcUk2cUZwcTM5VjVpTDZRaWpybWZrS1VWeFM4?=
 =?utf-8?B?YnRSOFZaaWc2WFhkU1Irak9BeCs1VEhhaUdtUWxaOW0xdVVJNEZmNXZYOVNs?=
 =?utf-8?Q?h3PiUpxdj2c9A+DQKrsJHbAyT?=
X-MS-Exchange-CrossTenant-Network-Message-Id: c09201df-0fb2-4dbd-ca96-08dce9f157a5
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB8252.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Oct 2024 12:36:54.6184 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: kXQHn9vPkmYFCY3z8++zvTX/xtbXKkQ8OXE7Mlll810072AUsX+//BeVVMYKflI6YUkVNbJMP3ZK04pnGDACYw==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7353
X-OriginatorOrg: intel.com
X-BeenThere: intel-gfx@lists.freedesktop.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: Intel graphics driver community testing & development
 <intel-gfx.lists.freedesktop.org>
List-Unsubscribe: <https://lists.freedesktop.org/mailman/options/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=unsubscribe>
List-Archive: <https://lists.freedesktop.org/archives/intel-gfx>
List-Post: <mailto:intel-gfx@lists.freedesktop.org>
List-Help: <mailto:intel-gfx-request@lists.freedesktop.org?subject=help>
List-Subscribe: <https://lists.freedesktop.org/mailman/listinfo/intel-gfx>,
 <mailto:intel-gfx-request@lists.freedesktop.org?subject=subscribe>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 11-10-2024 11:52, Anirban, Sk wrote:
>
>
> On 10-10-2024 23:45, Pottumuttu, Sai Teja wrote:
>>
>> On 10-10-2024 23:04, Sk Anirban wrote:
>>> Introduce RC6 & RC0 frequency logging mechanism to ensure accurate
>>> energy readings aimed at addressing GPU energy leaks and power
>>> measurement failures.
>>> This enhancement will help ensure the accuracy of energy readings.
>>>
>>> v2:
>>>    - Improved commit message.
>>> v3:
>>>    - Used pr_err log to display frequency (Anshuman)
>>>    - Sorted headers alphabetically (Sai Teja)
>>> v4:
>>>    - Improved commit message
>>>    - Fix pr_err log (Sai Teja)
>>> v5:
>>>    -Add error & debug logging for RC0 power and frequency checks 
>>> (Anshuman)
>>>
>>> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
>>> Reviewed-by: Sai Teja Pottumuttu <sai.teja.pottumuttu@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/gt/selftest_rc6.c | 20 ++++++++++++++++----
>>>   1 file changed, 16 insertions(+), 4 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/gt/selftest_rc6.c 
>>> b/drivers/gpu/drm/i915/gt/selftest_rc6.c
>>> index 1aa1446c8fb0..0cf86fed39ca 100644
>>> --- a/drivers/gpu/drm/i915/gt/selftest_rc6.c
>>> +++ b/drivers/gpu/drm/i915/gt/selftest_rc6.c
>>> @@ -8,6 +8,7 @@
>>>   #include "intel_gpu_commands.h"
>>>   #include "intel_gt_requests.h"
>>>   #include "intel_ring.h"
>>> +#include "intel_rps.h"
>>>   #include "selftest_rc6.h"
>>>     #include "selftests/i915_random.h"
>>> @@ -38,6 +39,9 @@ int live_rc6_manual(void *arg)
>>>       ktime_t dt;
>>>       u64 res[2];
>>>       int err = 0;
>>> +    u32 rc0_freq = 0;
>>> +    u32 rc6_freq = 0;
>>> +    struct intel_rps *rps = &gt->rps;
>>>         /*
>>>        * Our claim is that we can "encourage" the GPU to enter rc6 
>>> at will.
>>> @@ -66,6 +70,7 @@ int live_rc6_manual(void *arg)
>>>       rc0_power = librapl_energy_uJ() - rc0_power;
>>>       dt = ktime_sub(ktime_get(), dt);
>>>       res[1] = rc6_residency(rc6);
>>> +    rc0_freq = intel_rps_read_actual_frequency(rps);
>>>       if ((res[1] - res[0]) >> 10) {
>>>           pr_err("RC6 residency increased by %lldus while disabled 
>>> for 1000ms!\n",
>>>                  (res[1] - res[0]) >> 10);
>>> @@ -77,9 +82,14 @@ int live_rc6_manual(void *arg)
>>>           rc0_power = div64_u64(NSEC_PER_SEC * rc0_power,
>>>                         ktime_to_ns(dt));
>>>           if (!rc0_power) {
>>> -            pr_err("No power measured while in RC0\n");
>>> -            err = -EINVAL;
>>> -            goto out_unlock;
>>> +            if (rc0_freq)
>>> +                pr_debug("No power measured while in RC0! GPU Freq: 
>>> %u in RC0\n",
>>> +            rc0_freq);
>> This line is not indented properly.
will fix this issue.
>>> +            else {
>>> +                pr_err("No power and freq measured while in RC0\n");
>>> +                err = -EINVAL;
>>> +                goto out_unlock;
>> AFAIU we should have the EINVAL and goto out_unlock irrespective of 
>> rc0_freq. Reason being, if rc0_power is not measured then the 
>> comparison we are doing with rc6_power below becomes invalid so I 
>> think we shouldn't proceed if rc0_power is not measured and just goto 
>> out_unlock with EINVAL. Am I missing something?
the main purpose was to print the message as debug_log if there is any 
issue with the power measurement, although we may include a check 
whether rc_0 power is there or not before the final validation of "(2 * 
rc6_power > rc0_power)". @Anshuman, please provide your inputs here.
>>> +            }
>>>           }
>>>       }
>>>   @@ -91,6 +101,7 @@ int live_rc6_manual(void *arg)
>>>       dt = ktime_get();
>>>       rc6_power = librapl_energy_uJ();
>>>       msleep(100);
>>> +    rc6_freq = intel_rps_read_actual_frequency(rps);
>>>       rc6_power = librapl_energy_uJ() - rc6_power;
>>>       dt = ktime_sub(ktime_get(), dt);
>>>       res[1] = rc6_residency(rc6);
>>> @@ -108,7 +119,8 @@ int live_rc6_manual(void *arg)
>>>           pr_info("GPU consumed %llduW in RC0 and %llduW in RC6\n",
>>>               rc0_power, rc6_power);
>>>           if (2 * rc6_power > rc0_power) {
>>> -            pr_err("GPU leaked energy while in RC6!\n");
>>> +            pr_err("GPU leaked energy while in RC6! GPU Freq: %u in 
>>> RC6 and %u in RC0\n",
>>> +                   rc6_freq, rc0_freq);
>>>               err = -EINVAL;
>>>               goto out_unlock;
>>>           }
