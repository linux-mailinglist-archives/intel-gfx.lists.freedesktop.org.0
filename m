Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id tx1kAPaas2lCYwAAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 06:04:54 +0100
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B866427D543
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Mar 2026 06:04:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D9B3710E00C;
	Fri, 13 Mar 2026 05:04:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DxgfCJ74";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D34F010E00C;
 Fri, 13 Mar 2026 05:04:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773378290; x=1804914290;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=e7Hm/m+06gO6yGO+4FSlfdJcJZPN4tncrmdi/5lKmVc=;
 b=DxgfCJ745NW6a8DkkENhtNVDOUVx314+FZ2axUErHvt9dJhvigE1SAOb
 mU1CDyXO65tOTiZbc2nzKNLQRLBNOJ2w4PUubHhKvcaNKDegV1GtvPSMC
 Fd2wMD60PQPmypfAsj4ktEX9s0HuC+OJR22krAT2/VnRTgeqa/o6kty9g
 0Ma+RhtJe25SirNgNp195RKFdtHYaOi4WaWF+LTjbN/gjX5KF0bt3F2G+
 TudrKcVy3BjmkrRDAAJmzAUPdgc1ZOIAR2SnDuYmrp0ZPYyMmtzBWCdnI
 BShHwtAlbWE9hejXyshadjC5TJ/i9nMPEnEuZv4FeNOjgAD1Yq24/XYGM A==;
X-CSE-ConnectionGUID: QLDs6Ej6Q8yH86oSztVf0w==
X-CSE-MsgGUID: kvLCOiGIR9GB+2LZoMxMkQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11727"; a="85182669"
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="85182669"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 22:04:49 -0700
X-CSE-ConnectionGUID: 4hOVQFy6QhG2FrVPIU1PXg==
X-CSE-MsgGUID: aV+Gqt4oRgO2HzFxFCZhMA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,117,1770624000"; d="scan'208";a="221247927"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Mar 2026 22:04:48 -0700
Received: from ORSMSX903.amr.corp.intel.com (10.22.229.25) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 22:04:48 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Thu, 12 Mar 2026 22:04:48 -0700
Received: from MW6PR02CU001.outbound.protection.outlook.com (52.101.48.66) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Thu, 12 Mar 2026 22:04:48 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=shN0w9iXpdWoImHkV0K5n9ZGxHBserQIb5XFq+VVLFe/9Q+oDwnKN1+nGTohLpRIStJl/5M6/BcX59UQHiRVTyo5KQ1zgYE/Aq5jED7MUsYj6BJE865AFf1euWniiLryFbHHG+opus1LRA+JMIk1xHgU9uEOiJ+Pg1NQ3rCgm3DaWHCOiq21Ag+C2XEwtNEZ+z0XPk+bCn9l8omT5Iv36fyi2PbHEfAKZiMsMNvH8aXdG2ezb2rIu0ws7MCKwaG7D2crJsjKLgJAFdf9Rc1tzewUt1A1BW3r/yf1H7JsImTBtEpYv50dmTop/IjhbdOOozHPDFU3BPUVlEwODy0/rw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=e7Hm/m+06gO6yGO+4FSlfdJcJZPN4tncrmdi/5lKmVc=;
 b=P3Nbv7BUrkwmLLi2I3OxZub8O/ccp5IS36+1d1mbw1z9ikvxGVUf4VKmRZxqtkKfXZuzoRaTmeSGhTgMPM12cufu8uazbqzMkUh8pEG0ieC8lmf/OTs0cquTCxGQMn+mOhbumalKbxFeyKJhhf2hYtDYxT8Ox+9UoI59zZuoqAbby55twdAQkTj0o0m5tlwG8RwOLFjQaMGwTUvQn5Mgf+ylt5ZwPZa2h195N82gC7QeuOms31co12CREJnGK7i3gHjiSWbMqqH7H5aIGv6q33+O9H57esbKN4OvOfVP4EQwet0LDcz5aCHl7QXnoDERq8PoNw60wrufKngDj5MEmw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 (2603:10b6:f:fc00::f13) by SJ2PR11MB7476.namprd11.prod.outlook.com
 (2603:10b6:a03:4c4::16) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9700.9; Fri, 13 Mar
 2026 05:04:46 +0000
Received: from DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa]) by DM3PPF208195D8D.namprd11.prod.outlook.com
 ([fe80::21ae:7048:11eb:3faa%6]) with mapi id 15.20.9678.017; Fri, 13 Mar 2026
 05:04:46 +0000
From: "Kandpal, Suraj" <suraj.kandpal@intel.com>
To: Dibin Moolakadan Subrahmanian <dibin.moolakadan.subrahmanian@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>, "Sharma, Swati2" <swati2.sharma@intel.com>, 
 "Nikula, Jani" <jani.nikula@intel.com>
Subject: RE: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Thread-Topic: [PATCH 2/2] drm/i915/dmc: Enable PIPEDMC_ERROR interrupt
Thread-Index: AQHcsSHWLW1MaEEmHE6nBRY4po2yObWqOcBggACbloCAAPkh0IAAEhaAgAAA0SA=
Date: Fri, 13 Mar 2026 05:04:46 +0000
Message-ID: <DM3PPF208195D8D6302B536CF802D111F55E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
References: <20260311063259.2608206-1-dibin.moolakadan.subrahmanian@intel.com>
 <20260311063259.2608206-3-dibin.moolakadan.subrahmanian@intel.com>
 <DM3PPF208195D8D8D1894ECDE4A41681332E344A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <dcba6eaf-1f57-4094-be69-0c8d116f92a7@intel.com>
 <DM3PPF208195D8D96EA050D075A0AF09F07E345A@DM3PPF208195D8D.namprd11.prod.outlook.com>
 <7b072000-0b8d-4910-ae05-0eaac6d9e94a@intel.com>
In-Reply-To: <7b072000-0b8d-4910-ae05-0eaac6d9e94a@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM3PPF208195D8D:EE_|SJ2PR11MB7476:EE_
x-ms-office365-filtering-correlation-id: cc0b01af-ee21-497c-9b64-08de80be0bb5
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|1800799024|366016|38070700021|7053199007|56012099003|18002099003|22082099003;
x-microsoft-antispam-message-info: uOmD2yQ5qNWPQWN+s7+utS5yGSy0S2MUGqgNow63Ud8YCejug5JJ5L4a+rv/GgtoJSzEQ6O2ogZnbTpl8mReBwTIfCGIpUsnrvK4SXVJ4zanWW8FerEaVIWkBAwkIp9qgSebD+UzOjN5s0NoDTXwxIzF9+ISI81RoZOYHqNomqxY1zrVjrceIb/NhryRKExpyj26XQgVEhx8F4L8WPd1lfnZWt7DGv1c31kUy1HRP/q1+ujhaJLtSPDbuK3E2wePQAnvFOnT7iYftSco9AhbWnztvEcU0Y5M7AtzHq8E6qCZblN2YDeyyjg5OC0U+9iRE251Bncxpv3Vd3sXY/qZiAb6JI0pJZf9dx0Vv7R91BHow0prZNrxakmq2gD5qWsRNLaOIg9RhzSxJUSLSZiCjgi7oWBFOziUTfmycX6nknXPjN6XfqvTkPxAf1DA+m1M3Rkyf1Ku8lmoEOeeBhKe0wdgUlZ7CMAOnSoaS5lFl+9wolPnPLYbglYPm9TARoqJeNpqX8gU0bAG8sHrdANDcUXOAmpcEdF9JZscvRUvB3MUDYchEJxiCoRxLnHGiGau+yfVhODtzyPnhQvp2vnjV+1gg4kEYNISL/DkAkSsntgI1WC5U8nmQw59ABqcXw70ACzY3F8JUf+Sk+yZbScFbir/rM1SCSe8jCxu0XOdvuVkAkBm2RzZzPB3T3RUiEm2BiJU/D4btem+UikOddoI2QeUagfq8ArGyIM2qRrKWm/WMMFh+ayVUA5IW4B7qo4kAbWAO3G48uR3eqR2vezEdnXEFOCThbb0HdtNKOEnbJY=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM3PPF208195D8D.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(38070700021)(7053199007)(56012099003)(18002099003)(22082099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?KzJSRUpTbWhOUTZSYWJMeGZzUHdiWE93TW5NSjF2RzJEbUprUE96N043a0Z0?=
 =?utf-8?B?Uk5XUnMraXp5eHZVbWhrclJXdW9qUUxRWXhqSDdBaE9lOUNZWk1CLytHL2Zu?=
 =?utf-8?B?V0xqai9nbitjSysyRkJCVVE5ZnZOZWxTcjVnY3BzV1FMendDbmttcWNIT3Qw?=
 =?utf-8?B?RXZ4dmVvWFZ5RTdpRkh1Vlc3SmpCZjhLSjlSUHRmb1BzTncrUHo2VXZWcVFV?=
 =?utf-8?B?cW8rOEUyeWhVRzZvUnhBbHV0T2dMT3pJZmlUTk1LUm9CZERkU3VIc1lIU09m?=
 =?utf-8?B?NlY1YTlVbG5LZURvT3FZcU01MHJDMnMrMTh4eGZldWs4MTUraEtzbjJUUENa?=
 =?utf-8?B?NWRzUmphZmJwR2s1cUN5Y1NWNzFuMkVMUnN3OHFscklMQW9WbDBOMVVYQUxv?=
 =?utf-8?B?YUYxZjYwNmVnRlBnSk1MVHF0Rkp1MjY2K0NiZVY1WTQ3cUFZOXpRRk8wV3NN?=
 =?utf-8?B?UVhsR2dOM0toVzFtTjhibG05eXNnU0JKWEMzWmJhV1ZIN2IvRmczMzREbjFC?=
 =?utf-8?B?a3lTS3VlOUc0T3UzWStZKzUwMXM3SFU2UUd0OW5ZWlpkbkVuSU9YcGZ2aWJ3?=
 =?utf-8?B?QlNkTk95a3ovSnNFR1JiUzhUSVVNbHZSaU9EcXp1SmNtUkZaeURLZWFQK2d4?=
 =?utf-8?B?VTU2VHdHQzVtdE9KVGhtRXlYNVF6dnAvT0VHZm1wODB3bVRDYkk4Y2x0WkpN?=
 =?utf-8?B?WlAyRVYxbGNkRkloNWx2VGNuRHNXTXNrdUo3WjRUZWwxYTUrazIvMWF5YkhF?=
 =?utf-8?B?NCtiMDJwdk1qZU5oZHFCelpuVGJwVDN6L1F1UnllUzE3anMrcWVFaTMrUHRL?=
 =?utf-8?B?MnVnZUhobHVSd3BUUzFwMWkvM1pwTGV2VFRNVDUzSWk4VW9BYmxvMHUwOGhw?=
 =?utf-8?B?TGRwdHBXSlpSRUZmOFZxRUEwNmJKRUlXb0JxbzN0UHlZREc4YnIrNGdKU1Iy?=
 =?utf-8?B?Y2tYVythUmxNMW9nMkY2SFJCSDZWK1Qwa0NDd0JzZTdGT0RwMmRlZHNCTW9J?=
 =?utf-8?B?N0dibTRLUUZEZUhLWlBKRHFzK1NuRWNHVTBwN1pBWkFtcXNJb1V2aHZyWHZp?=
 =?utf-8?B?Q09TL24vVGEvUDJSZERpOVg5SDJnT2lEcW9MNDdXbzFzQk5VMEJWc0JlRExq?=
 =?utf-8?B?SGVtcmdxQW1RZU1UcEV2bk5HeWtVNlF3ckZORGE1eUJWQW42bUlkRDBVY29Q?=
 =?utf-8?B?NjVMemlnbmpzUmtETHcxOXh3bnpQRE1aRUUwclN5dXFZR3pLdmNJUlV3MzU0?=
 =?utf-8?B?cWhTeVpTVnNIVGd0V3dieVBTeThPL3hRMnovUWhPVU1OWFRnTGZCQWFZVjFp?=
 =?utf-8?B?dWg5SE5nTlZLdXZiWnpXb3FFYVZTa1dUNWxlK3pzVWl6RUJHZzBVeWZ5cFhl?=
 =?utf-8?B?c2lzWmtOR1NDOXJmd0VZMDBCVU1pd09mZEF0c21NNHBHZk0zUVVQQjNVOVc5?=
 =?utf-8?B?Y1RuRlAwOFA1aEsyOXN2TmtBZWNoVDFRN1k2WEY5QVorbTVMSW9zL0NSVDg2?=
 =?utf-8?B?TlJpeFp0ek9HbElqL3ZKMlNRM0t5QXpEY0p2em55eERhRStyd1BmdGc2VVow?=
 =?utf-8?B?b0svcUlKZ3JqQm1vSHd2MnhYbUNiUzlHMHp6VzJRTjJFdEJmMVI3OFFjU3lv?=
 =?utf-8?B?SjVTd21hN25jcEZvNXNsZUxrYVZDK1c5UTVlYnc4VW9OV1lja2F3c1B3LzJQ?=
 =?utf-8?B?ZXhOUzJjN0xXa2JtWDFaSG9GS1FNYWc2YjZROElPSDFDdGtjZStYMUVxVjRT?=
 =?utf-8?B?V2F1YVo3THEzenZiRUVVczBDZldpUmFPcmFUREtGbnpod2EwKytBazUvdlZa?=
 =?utf-8?B?SXQ5bWNhTWRUM3VlRXJJaERoSUE3QnJNT2pLSFBYVUNHdW80bWxlTVoxYVVR?=
 =?utf-8?B?TnkwOVBzMWVORlN6d3NaUkR0MkpYcEJhRXMrTE55OUt2OTA3WjA5NXVoaWJL?=
 =?utf-8?B?akVsb3c0SXIwYVNkbGVTT2ZVQ0pSWWZoY0tpOUV3OVZERTJTUW4vTFZyekxZ?=
 =?utf-8?B?RVpKek42dXNRbG4rNkFXYUhuVlVmZHUwZ3pMRHJJZFIzdEt0RDZDRUowU2R2?=
 =?utf-8?B?RFFLTXlGdVBXN01KSjkyOHBPWmRuLy9VRzhCZXYwMlloR1FuSjJLMkpxQmJr?=
 =?utf-8?B?UzJ6SjhEek85blBNR085Tkk3T3R6dVZKSk01S1M3SUxIN3VHS01WZTAzWnBK?=
 =?utf-8?B?Sk5NY3Q2Wk55aDRCSjNNWU93Y3NWMllxVUkrWDg3TUJ0UXQ1Ung2ajE2UlRQ?=
 =?utf-8?B?SzFoTDFaZzR0cXptZzZEQkJQcVU5NlVPWW1OaHNCUHpMZmpaY01uc3B5bWh1?=
 =?utf-8?B?NTR2NUFQMGozMWtiaFlmTVB5TVkzZW1QS2RTQS8vZ1BCeUQ1R2Z1dz09?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: pL+0Vb6/8SDKEZ/yDZmANbzS/bw2CXX7bCnQ5e8nSjyxDgwBzC2KFOHacDrnoRuMmbpZ7CwFFlov9BVQxPPNf01SymhcxBEKML5/9FB9dnMCGImGlBiUe6vp35OKTTnHPWzoNH11ZOJwi0neTeTLe+VyhDTbGcRbj6OZk7gKRLaCL3Dm93ZKFscYEq7YBfGJYm7iLY6EUL9zM2s/pSesOrU10zhhN3KSZMVs0FQawzg/b15vpYVYhMt4oSHPS00vR2czEV5voIV5x2hmgKxg43Y3petpZ2cLzCNkGpe0JdkTQFWg6gpoLl0+dikEjYwFRLmvo7vR2IGWgOjkUAFDPw==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM3PPF208195D8D.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: cc0b01af-ee21-497c-9b64-08de80be0bb5
X-MS-Exchange-CrossTenant-originalarrivaltime: 13 Mar 2026 05:04:46.1197 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3tiHrAVHj44agyVzjHKdS3JUbENNBI5016QkpC+QQsLaDZP7Ok/y/a4ASXLiFQBkljrK18Gi5Y4nOkdQUIpWyg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7476
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
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,DM3PPF208195D8D.namprd11.prod.outlook.com:mid];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	TO_DN_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MISSING_XM_UA(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[suraj.kandpal@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: B866427D543
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogRGliaW4gTW9vbGFrYWRh
biBTdWJyYWhtYW5pYW4NCj4gPGRpYmluLm1vb2xha2FkYW4uc3VicmFobWFuaWFuQGludGVsLmNv
bT4NCj4gU2VudDogRnJpZGF5LCBNYXJjaCAxMywgMjAyNiA5OjU1IEFNDQo+IFRvOiBLYW5kcGFs
LCBTdXJhaiA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+OyBpbnRlbC1nZnhAbGlzdHMuZnJlZWRl
c2t0b3Aub3JnOw0KPiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6IHZpbGxl
LnN5cmphbGFAbGludXguaW50ZWwuY29tOyBTaGFua2FyLCBVbWEgPHVtYS5zaGFua2FyQGludGVs
LmNvbT47DQo+IFNoYXJtYSwgU3dhdGkyIDxzd2F0aTIuc2hhcm1hQGludGVsLmNvbT4NCj4gU3Vi
amVjdDogUmU6IFtQQVRDSCAyLzJdIGRybS9pOTE1L2RtYzogRW5hYmxlIFBJUEVETUNfRVJST1Ig
aW50ZXJydXB0DQo+IA0KPiANCj4gT24gMTMtMDMtMjAyNiAwODo1NiwgS2FuZHBhbCwgU3VyYWog
d3JvdGU6DQo+ID4+IE9uIDEyLTAzLTIwMjYgMDg6NDgsIEthbmRwYWwsIFN1cmFqIHdyb3RlOg0K
PiA+Pj4+IFN1YmplY3Q6IFtQQVRDSCAyLzJdIGRybS9pOTE1L2RtYzogRW5hYmxlIFBJUEVETUNf
RVJST1IgaW50ZXJydXB0DQo+ID4+Pj4NCj4gPj4+PiBFbmFibGUgUElQRURNQ19FUlJPUiBpbnRl
cnJ1cHQgYml0IGZvciBkaXNwbGF5IHZlcnNpb24gMzUrLg0KPiA+Pj4+DQo+ID4+PiBBZGQgc2Ft
ZSBCc3BlYyBsaW5rIGhlcmUgdG9vDQo+ID4+Pg0KPiA+Pj4+IFNpZ25lZC1vZmYtYnk6IERpYmlu
IE1vb2xha2FkYW4gU3VicmFobWFuaWFuDQo+ID4+Pj4gPGRpYmluLm1vb2xha2FkYW4uc3VicmFo
bWFuaWFuQGludGVsLmNvbT4NCj4gPj4+PiAtLS0NCj4gPj4+PiAgICBkcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jIHwgMyArKy0NCj4gPj4+PiAgICAxIGZpbGUgY2hhbmdl
ZCwgMiBpbnNlcnRpb25zKCspLCAxIGRlbGV0aW9uKC0pDQo+ID4+Pj4NCj4gPj4+PiBkaWZmIC0t
Z2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiA+Pj4+IGIv
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kbWMuYw0KPiA+Pj4+IGluZGV4IDM4
YjI4NGEwZGI4Mi4uZTYwZjFmOTc3MDcwIDEwMDY0NA0KPiA+Pj4+IC0tLSBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZG1jLmMNCj4gPj4+PiArKysgYi9kcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2RtYy5jDQo+ID4+Pj4gQEAgLTUxMCw3ICs1MTAsOCBAQCBz
dGF0aWMgdm9pZCBwaXBlZG1jX2Nsb2NrX2dhdGluZ193YShzdHJ1Y3QNCj4gPj4+PiBpbnRlbF9k
aXNwbGF5ICpkaXNwbGF5LCBib29sIGVuYWJsZSkgIHN0YXRpYyB1MzINCj4gPj4+PiBwaXBlZG1j
X2ludGVycnVwdF9tYXNrKHN0cnVjdCBpbnRlbF9kaXNwbGF5ICpkaXNwbGF5KSAgew0KPiA+Pj4+
ICAgIAlpZiAoRElTUExBWV9WRVIoZGlzcGxheSkgPj0gMzUpDQo+ID4+Pj4gLQkJcmV0dXJuIFBJ
UEVETUNfRkxJUFFfUFJPR19ET05FOw0KPiA+Pj4+ICsJCXJldHVybiBQSVBFRE1DX0ZMSVBRX1BS
T0dfRE9ORSB8DQo+ID4+Pj4gKwkJCVBJUEVETUNfRVJST1I7DQo+ID4+Pj4NCj4gPj4+IE1vc3Rs
eSBsb29rcyBva2F5IGJ1dCBoZXJlJ3MgbXkgcXVlc3Rpb246DQo+ID4+PiBJIGtub3cgTE5MIHBp
cGUgQiBoYWQgYW4gaXNzdWUgd2l0aCBQSVBFRE1DX0VSUk9SIGJlaW5nIHRyaWdnZXJlZCBvbg0K
PiA+Pj4gTE5MIHBpcGUgQiwgQXMgSSBjYW4gc2VlIGZyb20gVmlsbGUncyBjb21taXQgbWVzc2Fn
ZSwgYnV0IGlzIGl0DQo+ID4+PiBzdGlsbCB0aGUgY2FzZSBmb3INCj4gPj4gUFRMID8NCj4gPj4+
IENhbiB3ZSBoYXZlIHRoYXQgdGVzdGVkID8NCj4gPj4+IElmIHRoYXQgd29ya3Mgd2UgY2FuIGFk
ZCB0aGUgUElQRURNQ19FUlJPUiBmcm9tIFBUTCBvbndhcmRzLg0KPiA+Pj4gVGhlbiBoZXJlIHdl
IGNhbiBjaGFuZ2UgY29kZSB0byBjcmVhdGUgYSBtYXNrIGFuZCB0aGVuIHJldHVybiBpdA0KPiA+
Pj4gZmluYWxseSBsaWtlDQo+ID4+IDoNCj4gPj4+IG1hc2sgPSBQSVBFRE1DX0ZMSVBRX1BST0df
RE9ORQ0KPiA+Pj4NCj4gPj4+IGlmIGRpc3BsYXkgdmVyID49IDMwDQo+ID4+PiBtYXNrIHw9IFBJ
UEVETUNfRVJST1INCj4gPj4+DQo+ID4+PiBpZiBkaXNwbGF5IHZlciA8IDM1DQo+ID4+PiBtYXNr
IHw9IFBJUEVETUNfR1RUX0ZBVUxUIHwNCj4gPj4+ICAgICAgICAgICAgICAgICAgIFBJUEVETUNf
QVRTX0ZBVUxUOw0KPiA+Pj4NCj4gPj4+IFJldHVybiBtYXNrOw0KPiA+Pj4NCj4gPj4+IE9idmlv
dXNseSB0aGF0IGlzIGlmIFBJUEVETUNfRVJST1Igd29ya3Mgb24gUFRMIHByb3Blcmx5Lg0KPiA+
PiBUaGFuayB5b3UgZm9yIHNwb3R0aW5nIHRoaXMsIEkgdGhpbmsgaXRzIGJldHRlciB0byBhZGQg
YWJvdmUgIGxvZ2ljDQo+ID4+IGluIG5ldyBzZXJpZXMgcmF0aGVyIHRoYW4gY29tYmluZyB3aXRo
IDM1KyBiaXQgbWFzayB1cGRhdGUuDQo+ID4+DQo+ID4+IFJlZ2FyZHMsDQo+ID4+IERpYmluDQo+
ID4gSWYgdGhhdCBpcyB0aGUgY2FzZSB0aGVuIEkgdGhpbmsgaXRzIGJldHRlciB0byBkcm9wIHRo
aXMgcGF0Y2ggYWx0b2dldGhlci4NCj4gPiBXZSBoYXZlIGEganVzdGlmaWNhdGlvbiBvZiB3aHkg
d2UgcmVtb3ZlIGJpdHMgaW4gZmlyc3QgcGF0Y2gsIHRoYXQgd2FzIGEgY2hhbmdlDQo+IGluIE5W
TCBIL3cuDQo+ID4gQnV0IHRoaXMgY2hhbmdlIHdhcyBpbnRyb2R1Y2VkIGluIExOTC4NCj4gPiBX
aXRob3V0IGEgc3Ryb25nIHJlYXNvbmluZyBvZiB3aHkgeW91IGFyZSBlbmFibGluZyB0aGlzIGlz
IGluIE5WTCBhbmQNCj4gPiBub3QgaW4gUFRMICh3aGljaCBJIGRvbuKAmXQgc2VlIGluIHRoaXMg
cGF0Y2ggc2VyaWVzKSBJIHN1Z2dlc3QgeW91IGFkZA0KPiA+IHRoaXMgcGF0Y2ggd2l0aCBhcyBh
IHBhcnQgb2YgdGhlIHNlcmllcyB3aGVyZSB5b3UgaGF2ZSBhIHVzZSBjYXNlIGZvciBpdC4gQW5k
IGlmDQo+IHRoZXJlIHRvbyB5b3Ugb25seSBhZGQgaXQgZm9yIE5WTCBZb3Ugd2lsbCBuZWVkIHRv
IGFkZCBhIGNvbW1lbnRzIGFzIHRvIHdoeQ0KPiB0aGlzIGlzIG5vdCBlbmFibGVkIGZvciBQVEwu
DQo+IA0KPiBUaGlzIHBhdGNoIGludGVudCB0byBmaXggdGhlIGludGVycnVwdCBtYXNrIGZvciAz
NSsuDQo+IEkgZG9udCBzZWUgYW55IHJlYXNvbiB0byBkaXNhYmxlIHRoaXMgYml0IGFzDQo+IDEp
IGVycm9yIGJpdCB3YXJuaW5nIGlzIGFscmVhZHkgcHJlc2VudCBpbiBpbnRlcnJ1cHQgaGFuZGxl
ci4NCj4gMikgYml0IGlzIGRlZmluZWQgaW4gYnNlcGMuDQo+IDMpIExOTCBpdCB3YXMgbWVudGlv
bmVkIGRpc2FibGVkIGJlY2F1c2UgcGlwZUIgdHJpZ2dlcmluZyBpdCBkdXJpbmcgZmlyc3QgREMN
Cj4gc3RhdGUgdHJhbnNpdGlvbiB3aGljaCBkaWQgbm90IHNlZSBpbiB0aGlzIGNhc2UuDQoNCklu
IHRoYXQgY2FzZSB0aGUgaW50ZXJydXB0IGhhbmRsZXIgaXMgbWFkZSB0byByZXBvcnQgZXJyb3Jz
IGlmIHRoaXMgYml0IGlzIHVubWFza2VkIGZvciAgPj0gTE5MLg0KTm93IHRoaXMgYml0IGlzIGlu
dHJvZHVjZWQgaW4gTE5MIHRpbWVmcmFtZSBmb3Igd2hpY2ggdGhlIHJlYXNvbiB0byBub3QgYWRk
IGl0IGlzIG1lbnRpb25lZCBpbiBjb21tZW50IGFuZCBkb2N1bWVudGVkLg0KU2ltaWxhcmx5IGlm
IHlvdSB3YW50IHRvIHNraXAgUFRMIHlvdSB3aWxsIG5lZWQgdGhpcyB0byBiZSBkb2N1bWVudGVk
IHdpdGggdGhlIHJlYXNvbi4gV2hpY2ggbWVhbnMgdGhlIEZJWE1FIGNvbW1lbnQgbmVlZHMgdG8g
YmUgbW9kaWZpZWQNCkluIHRoZSBsZWFzdC4gSWYgdGhpcyBwYXRjaCBpcyB0byBnbyB0aHJvdWdo
Lg0KQWxzbyBWaWxsZSBjYW4geW91IHNoZWQgc29tZSBsaWdodCwgb24gd2hhdCB0aGUgSC93IGZv
bGtzIGhhZCB0byBzYXkgcmVnYXJkaW5nIHRoaXMgYW5kIGlmIHRoZXkgaGFkIG1lbnRpb25lZCBh
bnkgV0EgZm9yIExOTCwgYW5kIGlmIHRoaXMgaXMgZml4ZWQNCkluIExOTCsuDQoNClJlZ2FyZHMs
DQpTdXJhaiBLYW5kcGFsDQoNCj4gDQo+IFJlZ2FyZHMsDQo+IERpYmluDQo+IA0KPiA+DQo+ID4g
UmVnYXJkcywNCj4gPiBTdXJhaiBLYW5kcGFsDQo+ID4NCj4gPg0KPiA+Pj4gUmVnYXJkcywNCj4g
Pj4+IFN1cmFqIEthbmRwYWwNCj4gPj4+DQo+ID4+Pj4gICAgCS8qDQo+ID4+Pj4gICAgCSAqIEZJ
WE1FIFBJUEVETUNfRVJST1Igbm90IGVuYWJsZWQgZm9yIG5vdyBkdWUgdG8gTE5MIHBpcGUgQg0K
PiA+Pj4+IC0tDQo+ID4+Pj4gMi40My4wDQo=
