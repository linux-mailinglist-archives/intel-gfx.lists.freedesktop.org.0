Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7088AF0A0D
	for <lists+intel-gfx@lfdr.de>; Wed,  2 Jul 2025 06:53:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B34810E674;
	Wed,  2 Jul 2025 04:53:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Ao3gr+Hb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 812BC10E67B;
 Wed,  2 Jul 2025 04:53:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1751432008; x=1782968008;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=mnNeFuxOgCmMsmaCGDGscTY6eGWYw2SFGZgVWdX/JS8=;
 b=Ao3gr+Hbh6hQne9pvrU/o5zL29r8RVe62K6uDWAnRp0HFmf7E0JQxFt4
 BE8VVRmniPRIuyanII5rolsnfits/7x4MITXPNXy4mkqOEA4olGqqXZwJ
 jk9U1CKJfDNVTjjVpaHbpd1AAjtwoxRyygtyJNfz6VzIebQW87IU6O3Kq
 t2+JxaHfXAb7Rq2nSvcZ3E4g3XqwEEkblivcK1FnDTrdCxEtxW/ntkM3Y
 /zeCNmQUDXAIza/su7ifqq13TeiStM69ZmPsdW9R6UPgwvg9CeREB5Zs6
 IR0JK5oPpM9q31lwNIBH51vi3QD6RIqdBeiIOkENXt4324gwiDXzVxza3 g==;
X-CSE-ConnectionGUID: ljzq9SnVTjeQbLzQkf43kQ==
X-CSE-MsgGUID: 0FIfHygIRimIGYRezYvoAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11481"; a="53856231"
X-IronPort-AV: E=Sophos;i="6.16,280,1744095600"; d="scan'208";a="53856231"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 21:53:28 -0700
X-CSE-ConnectionGUID: OrqvfNX/Tx6RYNPUjXD7RQ==
X-CSE-MsgGUID: PnybMJ+7Qt6kCb5l2wE4fw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,280,1744095600"; d="scan'208";a="159670955"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jul 2025 21:53:28 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 21:53:27 -0700
Received: from ORSEDG902.ED.cps.intel.com (10.7.248.12) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Tue, 1 Jul 2025 21:53:27 -0700
Received: from NAM10-DM6-obe.outbound.protection.outlook.com (40.107.93.71) by
 edgegateway.intel.com (134.134.137.112) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Tue, 1 Jul 2025 21:53:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=FoB1JYr62gjwMvwpuiog3SQXzR6KM07qzKXE/2LjTC2w1iMNujcQbLLH7zCiHoqZ+rE99E8UxRZYgGXhqdC4NtNWwyneOR1/jK3SC68EMeYl6jKGNdbf4J9HAZ9So4oNBtl+7pXN8kn4pTAp3+ZZovo2jN3M8x+RjcV1CCmuXYMLEbVLX5hyorMLuAToaPGJqEAjRewkJzPv+aAglTQNQeR2fiKdZAq7BX932Zlgpb1/kyZ9Lb9+uj1VldBtUV5VTK9H7YVLf6IM/xw+43eiWsDO/rBcZoEDPpHVsGULNxPNIMFY3S5BL126Hlm42U26v+OMi59zAxS16fJ8k/6blg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mnNeFuxOgCmMsmaCGDGscTY6eGWYw2SFGZgVWdX/JS8=;
 b=GwbUhSobP/XNoIOpVB6SyfywL73LmQSg35vwLfOceS9/u6yhEdFwdDhFIHM1k5gPvuWxEvKxqnbUIPgmDZVtQYD/hkrUGrNr6c9kK/iaNS3+Gh+uqk7bCIgqQ5xkPBBepzLPZFI0FHKl9ey1tY8q2yDJCXPwD7bND1qJZSYvB7GLSaRP6I2w+yEY5MtW6rdjFDTue+23kH4OdY6B7HB+yJ4LsVBttTn66ciOodFD8AGX/egGy9umXpD00UU8o9uDwyZGvlyjaKE6Mf2Z4UbSXzLOp16kK7t1Ei5r00PVIZ4PKcg/3kUPG7RFZPgVG1qYXgD1ygvnRse6nyKsYKlWLQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5368.namprd11.prod.outlook.com (2603:10b6:208:311::17)
 by SA1PR11MB8278.namprd11.prod.outlook.com (2603:10b6:806:25b::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.37; Wed, 2 Jul
 2025 04:53:24 +0000
Received: from BL1PR11MB5368.namprd11.prod.outlook.com
 ([fe80::49e7:97ee:b593:9856]) by BL1PR11MB5368.namprd11.prod.outlook.com
 ([fe80::49e7:97ee:b593:9856%4]) with mapi id 15.20.8880.030; Wed, 2 Jul 2025
 04:53:22 +0000
From: "Almahallawy, Khaled" <khaled.almahallawy@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Cavitt, 
 Jonathan" <jonathan.cavitt@intel.com>
CC: "Shankar, Uma" <uma.shankar@intel.com>, "Nikula, Jani"
 <jani.nikula@intel.com>
Subject: Re: [PATCH] drm/i915/display: Read DP_ADAPTER_CAP to pass LinkLayer
 DPCD&EDID tests
Thread-Topic: [PATCH] drm/i915/display: Read DP_ADAPTER_CAP to pass LinkLayer
 DPCD&EDID tests
Thread-Index: AQHb6r4TuKy7sdHFlkWWChACPQ11+LQdzvEAgAB2BAA=
Date: Wed, 2 Jul 2025 04:53:22 +0000
Message-ID: <6e084fa193864dec9237bdbd7f7978f15d8da0e9.camel@intel.com>
References: <20250701192631.3750408-1-khaled.almahallawy@intel.com>
 <CH0PR11MB54442C75AC8F390EA7B8AAD8E541A@CH0PR11MB5444.namprd11.prod.outlook.com>
In-Reply-To: <CH0PR11MB54442C75AC8F390EA7B8AAD8E541A@CH0PR11MB5444.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5368:EE_|SA1PR11MB8278:EE_
x-ms-office365-filtering-correlation-id: 772303a6-d8e6-47a9-9b6c-08ddb9245f89
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|1800799024|366016|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?YjY1VHZtL1I0ZnJXOHN0TElkVFR1MERjWnh0b0VUem8yUXZSalJ6ZzlDTGRt?=
 =?utf-8?B?R0dBbDgvSFB5MWc3dFh1dFdTZ3hIUlhxZ3RNWTNSejhhN0dXbTQ2VjJyUjY5?=
 =?utf-8?B?b0JKcGNqSElyY0ZDMmZrZTZDUHlWeGZVTEp4Si81dDFCaUZsUmRWd1ZyTU5a?=
 =?utf-8?B?QWlCQzNJSTA0dWlONzMrUXFNVmphaVF2aytzbVdLZmVnUDhpQU5pREI3TDI2?=
 =?utf-8?B?VlN0bEZSb091QldqYTZDSDhpamdvdFp3QVE3MGRNMWIyUk1TZzhPUHZ2TU81?=
 =?utf-8?B?MDJBckJTS1pLV2V1Z2Nhdng4eWJGMjVGYzh2ZVRUeUFJaDZQZzFwWlJLQVVx?=
 =?utf-8?B?dkY1b2NqbzI4elF3V1NpKzBXeU5kRlVwSWZyTUhzUlFOdWN1QnVrTE5HUkhV?=
 =?utf-8?B?TUNxQm5hZUllR0NlbFA0VGFYUFNEbFFuTVJTT203YnpUSFRMNGd5OTB5ZVBR?=
 =?utf-8?B?VVNISDlTYjk4aEZrcVVsdEtxZllUWHNWajVHTHpXb0l4M01LMXJOUTArZXpB?=
 =?utf-8?B?Ni92VWNiL2hPdHI3NTZ5a3BmWENvemhwUW9Mb2VHa2ZVWUxXOWdRNUt6ZG9W?=
 =?utf-8?B?OFoxTFFLL0M3V2NwQ1oyMzBnMG94YjNIZnJDLzFPK0hnVzMrQ21JRk4yWVdY?=
 =?utf-8?B?MlNWMVE4ZFdLcXRXRHdSUDRiY2xDRjhqTCtiVXVFNVUwcm5raEFzbjVlTGM0?=
 =?utf-8?B?aXYvclB4dEJnTjlhWDJSa0gzdzFMRVN0ZnhoZU8xMVBlSVpCL09YdjJ4Rk92?=
 =?utf-8?B?TDBERFFzZEZjRXFUZDh0QVBGY2MvVjBTbnYwUnNBQWtwc205MGYvekt6elRS?=
 =?utf-8?B?MTIydVgwaWRJMTZOeFpJQi80S3FEZ2xrb1RzVVdNanA3SmtYTWFqQzdDbndu?=
 =?utf-8?B?ZGFWQ1ZPQ2Q0RWY5TVQxQ1Y4bUhuSTRlY25xRksxeGcvbDE5SXVYK3E3eU00?=
 =?utf-8?B?V1B0MHF5WWxhdXVBd3hSWjJkYjJXMTMwcm9HZGM1WmRUTlo2SEtGTzBkYWJG?=
 =?utf-8?B?M21VaFFhZHRtdTlyN3c3VVRSN3E5UHk2Z0pVdmM3YmZ6WFVOY3FIYUpKNnBX?=
 =?utf-8?B?RkFOZWlaU1liYXU5cnRlc3RmZU1hWVBZbmZNNFJ1aE9UWEE0WHZwb2NZR05p?=
 =?utf-8?B?dHZGUkFSdkdjVWJ2VHZCVytSOWhsdTlPNldQRzRDaW1neWI1R2JKeWc0SXpz?=
 =?utf-8?B?ayt0aE8wVWYyR25aTlBwMm9RVDRIUGkrbG1iWW1ZTTgrVkIvN2pPdzJwcXdH?=
 =?utf-8?B?WUVza0Zpa0hlR0txNUlQVWZqODZyTHp3WUQ4RDJrSHFUSXlDNWo1UjJ4Vkhx?=
 =?utf-8?B?Rzg5bHhHQkNQU281eXZWeTA1cC9lb3dwZHc2VjBYMnVycDRRTmZ3a3lWOEx5?=
 =?utf-8?B?MGduZHVzdmV5M0p0NUtHLzZGV0l4d0VmaXQwbUh4eVRBWDFoaEpnd1BMcmpk?=
 =?utf-8?B?aUNhZ3N0OW40WlZTWlRQd2xYSDZUN3VQaU5IcjA4Q29tWlczWnBoVGxUa2JJ?=
 =?utf-8?B?Z0xRaWU2dzBJTnppenlJbXB5Q0haVVY5VnoyUUlUMW04MnJRcjd3NytVT2ho?=
 =?utf-8?B?ZVE5QUdWVTVENTFNeDFRQkRLWW56bnBRRGVpdnRieWF1K2lHaWQ0YWNxT040?=
 =?utf-8?B?Sk5yQTNFaFllL1JlN3ZiNlZrQ3ZoTk82NE9COTBmcFVPVHlBeVN0ZklpeE5v?=
 =?utf-8?B?cXB1NmF6OGZYU2JZTGlaZUVXL2JyblBTcVFIYmFobEJuVTdzcWRvRFQ2Z0E4?=
 =?utf-8?B?N2RUSjVkdzQrQjIyUjVhN2psQXc0TVB5ZGl1V3U3OGN2R0RLQW4rdlBLSm9O?=
 =?utf-8?B?V2g1Y2t3WUNZeHBMZVlBSUlGRnpnV2lac0RrNkg4QnhMOU12aHRvYUVYZjk3?=
 =?utf-8?B?b3hGWVp5Y2lFS0twZ0d6clRTNk4yYU9zbk51Y0k1V0R5c1M2SE5xOWE1RUU3?=
 =?utf-8?B?b2pyN1UrMms4Z2JFWVdjZnpLakgwcGhxUnlodkFHcTJHMS9sM2xYcVNUa1pu?=
 =?utf-8?Q?EXBFb//Xo3AEm6xBKL0wWvVM+ZBMsA=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5368.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(1800799024)(366016)(376014)(7053199007)(38070700018);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OFpGNXJqd3hnU3BwRFVObEVEODRpZVNHblFucTRvaHZSRU5Cd09UN3BUNXBC?=
 =?utf-8?B?Y3BBWURBeWJwZUVONU5CYXltL3UrYmtPVXNaczNZVk0xNGZ6SlpVWEVDZGVQ?=
 =?utf-8?B?ZGhqMzh6SWlLaTQwVUowT1JzWTgrMTdHTXBjaUtYRVgxUVVGKzlqTysyK2Vo?=
 =?utf-8?B?TTZ3elp0V1U1MFRmc0cwK3Vwb0tXVU5OckJpNFk5eENBUWFqVGs5ckFVeWM4?=
 =?utf-8?B?ZDVNdE45RGpWdnVzTnVNSTdQSzl2cUY3RXlmRG9Id21zK1J3QllsTGhGeHdD?=
 =?utf-8?B?NVR2Y3Z2d1FNc2dLVXAvVEZIZVVicjhwckNjQitKbm40cmdRaXZCVlY2WHpD?=
 =?utf-8?B?b3JrNGtQbmZqbjUrbkY3YkU5OC8yUWNVWGNNb3dUM3lod00rbmVzY3puanVw?=
 =?utf-8?B?OUZxdVNMNXdTeFlTT0czOFdTUGtDaEhna01WZFllTVdjVXFnUmdFbGh4aHY3?=
 =?utf-8?B?QVdycEx5c3JPenYxWS9pbm9sWTUyQTNoZS91VDI2RElaQjBSV0JuU2JqK1dK?=
 =?utf-8?B?UldxbmlVem54RE50WHd3MGl6bjFWWEJlN1NMVHhXaENpNUFsZm5xQmtSZDkw?=
 =?utf-8?B?WmV2dk4wMUtUNXRucGdndHl4Wk5LZkNLTEVCcUtYM0dPVmprM21vbmxQdDQr?=
 =?utf-8?B?RllPazgvdEhFWk5uNGtiR2tnZjdqc2NUWGRlLzlUWHVGOWcwNDhLZTlDV003?=
 =?utf-8?B?b0dPblljS1FRcnB0K2FGaVhFTjRLemdxSXVaWFd3Y3hDOGtUOHZVOE1VWjBF?=
 =?utf-8?B?OG42UHVFbXJzNUFaZWZ5VldGeStBQm1rZzRTem8wMU5vek9ZU01mVjgyd2c3?=
 =?utf-8?B?eThpck9OU3YrZGNYL210Z3JVNHAzZGI0cG13ZTh6V2ZuM3JMWWhvSjVnYVdJ?=
 =?utf-8?B?ZW1JYlNzNm5JVnBaeGpuckVYbnlRV3lSakxCSDZxT1pyZUVHU0xQMWhMR2lr?=
 =?utf-8?B?dllLcmJGVDhsQk9JZjRQbnVveUJIZXdnODN6S1ZMTngreU5KQVQvTzZ4UVBU?=
 =?utf-8?B?ZVNreEtZaEN0eUc4QkxtcjhHQzJOMC9wemV4THFVT0xaeGV6QkN3MTVHSTFY?=
 =?utf-8?B?RURGMkZwQnhtWXhJWEZTWE1rbDBXby80d3RSZjgweGwyY2Znc3ZNbTZtV1N2?=
 =?utf-8?B?a0dkY1R6c0JpdmtMdkpYZVYxWHl2S3JZTGtvbW9ZUlBuU0JNSHM2TkRxTGdB?=
 =?utf-8?B?RkNoVVlseHg4bW5VRVZLOWdXenVjeTlLa053RDVDd1o5QjNCdXBiTnhZSGNv?=
 =?utf-8?B?M21BM1hGYkFCS0tkcm1yelRpVEx6UVFYYVVsa1JiNWo2UjZjUW1Pdzl3UjMx?=
 =?utf-8?B?Nlk1L0s5Z3gwbjFBZnphOFhEaTMyVFJMZjZ4OFV2cXI1KzhzZjg5bEt5aWVF?=
 =?utf-8?B?L0JDbEl6MWgzTkM0VkhSaDdYcWhmYUlwd1BXQ3JUUGI0dDFISnUzeENPMStL?=
 =?utf-8?B?eGJJMXVHT0FlTFRZZ0FDWXBObW1KMUtMNE1QUGo5YW9nYjZBUzhyYy9UbThX?=
 =?utf-8?B?YzFRaUdsK2VVTVY2R1VUZitTOEJJWndpVlVlcUZZd0lBYnN0bnJmeng3WmZ5?=
 =?utf-8?B?cG1pZkR5VlFXZDVMNE9EQlBXWVljSmlGb01ZRnZnNTRlbVNNNTRqbTFJdXAx?=
 =?utf-8?B?ODBzSW9STFk4ZDVoZ3ZJbW5GMjV1WGhlL2lTWnVDOThrQjIzcXlPOFhKN1p1?=
 =?utf-8?B?ZU40MURpMXZUeUtyWUM2akh6cHpDUHFOOFdsZkl5eHh2TGMrdHRwZHFtRml4?=
 =?utf-8?B?VFFvSTVwUlZ3YW1jRWFFRjBlZ1I0cjZjQmlsZk9TVWVGNExBeGRNUUN0bmVz?=
 =?utf-8?B?WGhSbWRyL2xMWHRkTXFubWlOTHlRdDhyRDlPQytFaVpSbUpSUlluUE5mNll6?=
 =?utf-8?B?Z2x3US82K1N0a2dEbUwya2lzTGZHSjdjSzdmdzdFVDhBVnc3TnNsSVcvVlNC?=
 =?utf-8?B?VHgxMW5FdEN3WUROQWhHZnNDQnZ5MGIvMk9OdUJHaklYVFRCV0hva1R4LzA0?=
 =?utf-8?B?MnlmZnE3bFNLVUUvRjFrcGNPN2xrUTlieStyd24vTWlNa0JyM3pHMnBIT0pw?=
 =?utf-8?B?U09BOTlQdGdrbGVLeUFCaTE3R0J2WVVQczFURVgzYVo5ajBncmc5NktralRJ?=
 =?utf-8?B?OFVCK3pDZlNpb3BRdkUwRitjTXR6ak1OZGt4aXpLOE9YdldTQW9VaDBiZ0Nk?=
 =?utf-8?B?OXJvTTUzZkdiRDd2TWppYndaejlBUC82bDNmd2lYQ3F1NUJaT2ZvNnVlUmJk?=
 =?utf-8?Q?uhqS4f8i6lmZYIm8dzOTeip+cM0lupUD7yTZREk9VQ=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <D7F317442C5A7244B186554EDC0FFA17@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5368.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 772303a6-d8e6-47a9-9b6c-08ddb9245f89
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Jul 2025 04:53:22.9217 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: vwpO9HxzlJ3/iArGM9hUtDT0+RTnVvCILqkDe8IkoYuo9GWrNvwTNHMi6bCX8SUqfSDVuda3nSCtCpMAMFXZ2P6LNT2VwR3jSMje/TVPe98=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB8278
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

T24gVHVlLCAyMDI1LTA3LTAxIGF0IDIxOjUwICswMDAwLCBDYXZpdHQsIEpvbmF0aGFuIHdyb3Rl
Og0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBJbnRlbC1nZnggPGludGVs
LWdmeC1ib3VuY2VzQGxpc3RzLmZyZWVkZXNrdG9wLm9yZz4gT24gQmVoYWxmDQo+IE9mIEtoYWxl
ZCBBbG1haGFsbGF3eQ0KPiBTZW50OiBUdWVzZGF5LCBKdWx5IDEsIDIwMjUgMTI6MjcgUE0NCj4g
VG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLXhlQGxpc3RzLmZyZWVk
ZXNrdG9wLm9yZw0KPiBDYzogQWxtYWhhbGxhd3ksIEtoYWxlZCA8a2hhbGVkLmFsbWFoYWxsYXd5
QGludGVsLmNvbT47IFNoYW5rYXIsIFVtYQ0KPiA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsgTmlr
dWxhLCBKYW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSF0gZHJt
L2k5MTUvZGlzcGxheTogUmVhZCBEUF9BREFQVEVSX0NBUCB0byBwYXNzDQo+IExpbmtMYXllciBE
UENEJkVESUQgdGVzdHMNCj4gPiANCj4gPiA0LjIuMi4xIExpbmtMYXllciB0ZXN0IHN0YXRlczoN
Cj4gPiAiVmVyaWZ5IHRoYXQgU291cmNlIERVVCBkb2VzIHRoZSBmb2xsb3dpbmcgd2l0aGluIDUg
c2Vjb25kcyBhZnRlcg0KPiA+IEhQRA0KPiA+IGJlaW5nIGFzc2VydGVkOg0KPiA+IFJlYWRzIHRo
ZSBEUENEIFJlY2VpdmVyIENhcGFiaWxpdHkgZmllbGQgKERQQ0Q6IDAwMDAwaDowMDAwRmgpIg0K
PiA+IC4uLg0KPiA+IA0KPiA+IEZhaWwxOg0KPiA+IFNvdXJjZSBEVVQgZmFpbGVkIHRvIHJlYWQg
dGhlIERQQ0QgUmVjZWl2ZXIgQ2FwYWJpbGl0eSBmaWVsZCAoRFBDRDoNCj4gPiAwMDAwMGg6MDAw
MEZoKSB0aHJvdWdoIEFVWF9DSCBiZWZvcmUgbGluayB0cmFpbmluZy4iDQo+ID4gDQo+ID4gRml4
IHRoaXMgYnkgcmVhZGluZyBEUF9BREFQVEVSX0NBUCgweDAwMEYgJiAweDIyMEYpDQo+ID4gDQo+
ID4gQ2M6IFVtYSBTaGFua2FyIDx1bWEuc2hhbmthckBpbnRlbC5jb20+DQo+ID4gQ2M6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogS2hhbGVk
IEFsbWFoYWxsYXd5IDxraGFsZWQuYWxtYWhhbGxhd3lAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+
IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9saW5rX3RyYWluaW5nLmMg
fCA3ICsrKysrKysNCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA3IGluc2VydGlvbnMoKykNCj4gPiAN
Cj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9s
aW5rX3RyYWluaW5nLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHBfbGlua190cmFpbmluZy5jDQo+ID4gaW5kZXggYTQ3OWI2MzExMmVhLi43NjJkYzA3M2I4MjQg
MTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcF9s
aW5rX3RyYWluaW5nLmMNCj4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2lu
dGVsX2RwX2xpbmtfdHJhaW5pbmcuYw0KPiA+IEBAIC0yNTIsNiArMjUyLDcgQEAgaW50IGludGVs
X2RwX2luaXRfbHR0cHJfYW5kX2RwcnhfY2FwcyhzdHJ1Y3QNCj4gPiBpbnRlbF9kcCAqaW50ZWxf
ZHApDQo+ID4gwqB7DQo+ID4gwqAJc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPQ0KPiA+
IHRvX2ludGVsX2Rpc3BsYXkoaW50ZWxfZHApOw0KPiA+IMKgCWludCBsdHRwcl9jb3VudCA9IDA7
DQo+ID4gKwl1OCBhZGFwdGVyX2NhcCA9IDA7DQo+ID4gwqANCj4gPiDCoAkvKg0KPiA+IMKgCSAq
IERldGVjdGluZyBMVFRQUnMgbXVzdCBiZSBhdm9pZGVkIG9uIHBsYXRmb3JtcyB3aXRoIGFuDQo+
ID4gQVVYIHRpbWVvdXQNCj4gPiBAQCAtMjc3LDYgKzI3OCwxMiBAQCBpbnQgaW50ZWxfZHBfaW5p
dF9sdHRwcl9hbmRfZHByeF9jYXBzKHN0cnVjdA0KPiA+IGludGVsX2RwICppbnRlbF9kcCkNCj4g
PiDCoAkJcmV0dXJuIC1FSU87DQo+ID4gwqAJfQ0KPiA+IMKgDQo+ID4gKwkvKiBSZWFkIERQX0FE
QVBURVRfQ0FQIHRvIHBhc3MgTGlua0xheWVyIENUUyAqLw0KPiA+ICsJZHJtX2RwX2RwY2RfcmVh
ZGIoJmludGVsX2RwLT5hdXgsIERQX0FEQVBURVJfQ0FQLA0KPiA+ICsJCQkJwqDCoCAmYWRhcHRl
cl9jYXApOw0KPiANCj4gSSdtIHdvcmtpbmcgdW5kZXIgdGhlIGFzc3VtcHRpb24gdGhhdCB3ZSdy
ZSByZWFkaW5nIHRoZXNlIHJlZ2lzdGVycw0KPiBub3QgdG8gYWN0dWFsbHkgdXNlDQo+IHRoZSB2
YWx1ZXMgdGhleSBob2xkIGJ1dCBiZWNhdXNlIHJlYWRpbmcgdGhlbSBoYXMgc29tZSBvdGhlciBl
ZmZlY3QNCj4gZHVyaW5nIHJ1bnRpbWUuDQo+IA0KPiBEb2VzIHJlYWRpbmcgdGhhdCBsb2NhdGlv
biBjbGVhciB0aGUgcmVnaXN0ZXIgZmllbGQ/wqAgT3IgZG9lcyBpdA0KPiBzaWduYWwgdG8gdGhl
IHN5c3RlbSB0bw0KPiBwZXJmb3JtIHNvbWUgb3RoZXIgcHJvY2Vzcz8NCg0KV2UgcmVhZCB0aGVz
ZSB0d28gYnl0ZXMgZm9yIHRoZSBzb2xlIHB1cnBvc2Ugb2YgcGFzc2luZyB0aGUgdGVzdC4gSWYg
d2UNCmRvbid0IHJlYWQgdGhlc2UgdHdvIGFkZHJlc3NlcywgdGhlIHRlc3QgZXF1aXBtZW50IHdp
bGwgZmFpbCB0aGUgdGVzdC4NClVuZm9ydHVuYXRlbHksIHRoaXMgaXNzdWUgYWZmZWN0cyBuZWFy
bHkgYWxsIERQQ0QvRURJRCBMTCB0ZXN0cy4gSXQNCnNlZW1zIHRoYXQgcmVhZGluZyB0aGVzZSB0
d28gYnl0ZXMgaGFzIG5vIHNpZGUgZWZmZWN0IGF0IGFsbCwgYXMgaXQNCmFwcGVhcnMgdGhhdCBu
byBvbmUgaXMgdXNpbmcgRFBfQURBUFRFUl9DQVAgYXQgYWxsLg0KDQo+IA0KPiA+ICsJZHJtX2Rw
X2RwY2RfcmVhZGIoJmludGVsX2RwLT5hdXgsIDB4MjIwZiwNCj4gPiArCQkJCcKgwqAgJmFkYXB0
ZXJfY2FwKTsNCj4gDQo+IDB4MjIwZiBzaG91bGQgcHJvYmFibHkgaGF2ZSBhICNkZWZpbmUgbWFj
cm8gYXNzb2NpYXRlZCB3aXRoIGl0LsKgDQo+IENvdWxkIHlvdSBwbGVhc2UgY3JlYXRlIG9uZT8N
Cj4gTWF5YmUgaXQgbmVlZHMgdG8gYmUgYWRkZWQgdG8gZHJtX2RwLmguwqAgT3IgaXMgdGhlcmUg
YSBiZXR0ZXINCj4gbG9jYXRpb24gZm9yIGl0Pw0KDQpzdXJlLCBJIGNhbiBkbyB0aGF0Lg0KDQpB
bm90aGVyIGFwcHJvYWNoIEkgY29uc2lkZXJlZCBpcyB0byBpbmNyZWFzZSBEUF9SRUNFSVZFUl9D
QVBfU0laRSBmcm9tDQoweGYgdG8gMHgxMCwgaW4gbGluZSB3aXRoIERQMi4xIHNlY3Rpb24gNS4x
LjQgIklmIHRoZSBsaW5rIGlzIHVuc3RhYmxlDQpvciBsb3N0LCB0aGUgU291cmNlIGRldmljZSB0
aGVuIHJlYWRzIHRoZSBEUENEIFJlY2VpdmVyIENhcGFiaWxpdGllcw0KcmVnaXN0ZXJzIGF0IERQ
Q0QgMDAwMDBoIHRocm91Z2ggMDAwMEZoIHRvIGRldGVybWluZSB0aGUgYXBwcm9wcmlhdGUNCmlu
Zm9ybWF0aW9uIG5lZWRlZCB0byB0cmFpbiB0aGUgbGluay4iLsKgDQoNClRoaXMgYWRqdXN0bWVu
dCBtaWdodCBhbHNvIGVuc3VyZSB0aGUgdGVzdCBzdWNjZWVkcyB3aXRoIG90aGVyIGRyaXZlcnMh
DQoNClRoYW5rIFlvdSBmb3IgeW91ciByZXZpZXcNCg0KS2hhbGVkDQoNCj4gLUpvbmF0aGFuIENh
dml0dA0KPiANCj4gPiArDQo+ID4gwqAJcmV0dXJuIGx0dHByX2NvdW50Ow0KPiA+IMKgfQ0KPiA+
IMKgDQo+ID4gLS0gDQo+ID4gMi40My4wDQo+ID4gDQo+ID4gDQoNCg==
