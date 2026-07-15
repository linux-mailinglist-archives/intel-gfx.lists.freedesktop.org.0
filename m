Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Di0gOZ1sV2onNwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 13:18:53 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CCC975D805
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Jul 2026 13:18:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=intel.com header.s=Intel header.b=izOTpZ7h;
	spf=pass (mail.lfdr.de: domain of intel-gfx-bounces@lists.freedesktop.org designates 131.252.210.177 as permitted sender) smtp.mailfrom=intel-gfx-bounces@lists.freedesktop.org;
	dmarc=pass (policy=none) header.from=intel.com;
	arc=pass ("microsoft.com:s=arcselector10001:i=1")
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EE19110EFED;
	Wed, 15 Jul 2026 11:18:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D268510EFED;
 Wed, 15 Jul 2026 11:18:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1784114331; x=1815650331;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=j9GBoOVL1iLoKZmapXKBhR0JvXwHf1q2HnLuuZTej7A=;
 b=izOTpZ7hGClIhi3/N6Vv1uZzCBDcmxFK6jf9dVoPFpU8BKViJv5zIlCG
 Ih96kZliMvYQcPsY+WnhuIgYMpePhvNFYZ8smHdROqI08zcULrgduRPHH
 khOuyuEkVYhvacu2HWvD8CLwdPdUxz3Cp83EzFASeA/Q8rydQVb89n4ou
 fnUe9bPZpMUzdWFT5SSInkco3VOEXFFK0HBUYTkwtzhaDATGwggp1HNSC
 qe2FWMCLuUEFBYOh6kbMr3V+r6z9sSKHNQDZnz35xqfpow0qbaenXp1rZ
 XEBmqvq02gf/GMPU70D23ZTIEO6k2JxS7xRQUKQG/q2b3VxvT6W4VF8EK g==;
X-CSE-ConnectionGUID: VOh104RjQl+S1KIBUutHAA==
X-CSE-MsgGUID: 0XaQJgqhT/Cq1/AqP5cnyw==
X-IronPort-AV: E=McAfee;i="6800,10657,11847"; a="107545008"
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="107545008"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 04:18:50 -0700
X-CSE-ConnectionGUID: 3oOWON0fQWKRP6Wy4CSvZA==
X-CSE-MsgGUID: DDHa5vXmRm2Qc+S4gzkN2w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,165,1779174000"; d="scan'208";a="253540825"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jul 2026 04:18:49 -0700
Received: from ORSMSX902.amr.corp.intel.com (10.22.229.24) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 04:18:49 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43 via Frontend Transport; Wed, 15 Jul 2026 04:18:49 -0700
Received: from CY7PR03CU001.outbound.protection.outlook.com (40.93.198.61) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.43; Wed, 15 Jul 2026 04:18:47 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sn0lsQMLKK/QwH5R5rfAx6Qxxclq4701AbQl/TeINqjCrP7m8aPCzISSXYosj2stb4ZuZGk+yg1TIp5iqrdTzB5lXePnHyu7s4t+0Puw0//G2AnEQMK+//G4e6QbL/FwBtWwwfRhvDwhA5O+CO+/GP4K0v6njo5+NPgq1m6PcWmtstr4v/hL8h2DZbKNP6JHjLU5XvdAYl8Ji1YLQNI7obiDnWBSutxfzYjYasi/9N0PbyjPG/ZUo3wvvuXJ76eYGlP0a8bWak1wi78JYlefyAorxX8tynKW4W0ZUE5gkf03drcTuq2e31KBYanh4SLs6qDNS/SIJBs7rYLHAPGQMA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=j9GBoOVL1iLoKZmapXKBhR0JvXwHf1q2HnLuuZTej7A=;
 b=fNEP5sjW+J5Cxo4cZo71WP2SFM57WlAZKsXJvrbIgQoyj+pViuSOc8h20qoam/f+TZQ6l+PB+gJ9ZucCR1FgYgd2WI7Xoldbq2P5bVHtRTsyUSMTDgkfslutvDbznafiUxvqGc56wkSLEWVnOB3rg4hq3Rpy95G0nLsaloNYWDI7a9Fdny+gRWr33a0p5zuanti3ZW+R6uEAlCn2qudXcROms+NIdyasdGJWopU69Az12sW8YVWvsBQ6CL72bYFxcGGAxknqQ3Y+H5345M+Q2lwEsK0Z0crTqWk/abudRbLmpX1A4ge8ov4q57JlB3SxPB4Q2JxiRRtGQUoER637yQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by PH7PR11MB7121.namprd11.prod.outlook.com (2603:10b6:510:20c::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.223.10; Wed, 15 Jul
 2026 11:18:44 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.21.0223.008; Wed, 15 Jul 2026
 11:18:44 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "Kandpal, Suraj" <suraj.kandpal@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
Subject: Re: [PATCH v3 7/7] drm/i915/bw: introduce the peak bandwidth threshold
Thread-Topic: [PATCH v3 7/7] drm/i915/bw: introduce the peak bandwidth
 threshold
Thread-Index: AQHc/QZkoAY64JsZGUmu1QY5xQ581rZs7oMAgAAB3wCAAASwAIABqESA
Date: Wed, 15 Jul 2026 11:18:44 +0000
Message-ID: <139ec8e5ac060b99ece16e20473e9e9810dd7911.camel@intel.com>
References: <20260615203355.218578-1-vinod.govindapillai@intel.com>
 <20260615203355.218578-8-vinod.govindapillai@intel.com>
 <DS4PPFE901A304F24C228DE849CFFF801E4E3F92@DS4PPFE901A304F.namprd11.prod.outlook.com>
 <fc71679c36379e2dcbe72cc1e6d6af2a2d6175ab.camel@intel.com>
 <DS4PPFE901A304F6C46EA3449A8A0B089B9E3F92@DS4PPFE901A304F.namprd11.prod.outlook.com>
In-Reply-To: <DS4PPFE901A304F6C46EA3449A8A0B089B9E3F92@DS4PPFE901A304F.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|PH7PR11MB7121:EE_
x-ms-office365-filtering-correlation-id: 0ed03f97-70d4-4c03-f49d-08dee262d54c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|376014|366016|23010399003|1800799024|10070799003|38070700021|10067099003|18002099003|4143699003|22082099003|56012099006|11063799006;
x-microsoft-antispam-message-info: e6b8exXjhDmABGzSCZj+E/1WQmV8MU4PlTni+WgXa0DPJUWLnFa+paXOTJZjc61CfUbNf2EzkAzCNCGqbqNBDCziGjN9kv70+cNwkF7Dbzqus02GSoPuK9vaxMySTeJnkt7WPFCANxQtCUzgMhVWoassIYs2sRYb8+LyqJr5qKkKc6RbPNNOvDmMVbQ0wf6otwGftSLs7GVY7eLBQqAGGFg7JxWQkwPyWvYexbbaN8Yel/z1lfEj4V6913dwLk3M59tR1DG9WZqDCwdT8V++FxLwb4tgTKmRZXvqQIZwybRemipIQxbIzXf+X77q59z+sX0c4SzlGD/W7LeJ8aIbT4VAXAlWJQg56j69BLQdNKQ4J7Fz0XQ1lIa/kkXQDryUAhY39VSewzdf11/HgbLxuaCTtgxNy1iBJHgYpB67eHz3HqPVAuvV1Uw46TZ72BrPOVnBDTH/BlmITzt2OutLpVkuB3TVNrF8itS9xK1CMa74mLZJgaIZOjUKl/+TqRqIhY76nU9TMPW5SXDCRYVdYKHeWP/RglxeEld1XEMHHI0/xDPPtQl7eLxoCXhR3WNtLFgtMSsXY9B06c3tFLIbV6MUfU/CNf0P8Bfa1SBsQRZhJk0djW5WqtoX5FP0LBUeraUUJDNwtePlpb8pTOdwZLmdLy92a4P25QxTTOswCsMHWB0htONDSXGtlOxnIGjk1juFfnXZsGQJtcRXMFY1Tx9KVxAn9A+1gahEcPlwdow=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(23010399003)(1800799024)(10070799003)(38070700021)(10067099003)(18002099003)(4143699003)(22082099003)(56012099006)(11063799006);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?WU95ZVVaSEYxRHJ4QmlZSDVmS0JoR1NrWkZKa1o1UlVyS2J5dWVWcDhRN2o1?=
 =?utf-8?B?ZmJUdzdGSjk3ZkhOMTY5UXNjWVIyWm9JT21ua1g4UXRIYWp6aFlIV3U3V05O?=
 =?utf-8?B?SXEvZnJPOEtabUIxUVJ3enZRRytSVDNzMm5jYmpWY0R4aGVzOFQyVDFYd0M1?=
 =?utf-8?B?eUpFTzIvUDQ5TUlndWt4akYxVHorbThWcW1zV0FrVHdQVExaalZNWHNMTHF1?=
 =?utf-8?B?clIzNUVFbjY2dFhCRHJySUdWNWY1Q1NKcTQycG1RcktSdkJXWXVJSi94Q2lC?=
 =?utf-8?B?M3c2bTRQSVlrSlF4SzBCS2dwZ2s4RkRUTjNNRGI3RU9HdEcwMUFOcUlVUU53?=
 =?utf-8?B?SHgzVG95SkJYdW1zOVYxa3dMTFBCR1NzRkJsOFBCWCtJTGJCWUlzdXNTWXMw?=
 =?utf-8?B?NkF5QjNmRFhybERua2xJaUh2N3RPR1d0SU9iTWxqampYcnJ1TlExd21WNUJ1?=
 =?utf-8?B?MHdTZUZ6ejFtQkJ6T3NXeWlHUXV1cmhOaHlHdG4xSXoyUmkvdGhTcCs3SzFq?=
 =?utf-8?B?NkRLZXJZWlZmZnBKMkZQUzZlWHpaek9qamt2T1JjZXBvWFhiRTBpTlZNcytB?=
 =?utf-8?B?Z0Z4Vnc3TUxPblhWMHZZY1VOM0ZYVGg2UmczejdCZVFqRGJzWFBrSWtNcHJQ?=
 =?utf-8?B?SkxEd28zVUxnM2w4Y2w0T3NZWS9Ydng0OXhaMUVpa2NmVW9xQmdXbHU1Mk91?=
 =?utf-8?B?TTlacGFjTlhhbnRsa2tvbFA1UW9IVU1RR2NRVjVtZkZibVVVVE1VNlFNVjV5?=
 =?utf-8?B?K1VPcU5iazRvZTF2cWJPSk5qYzZ3Ni8zUlhnN3d0elAxZEFBckFrNU04OW9y?=
 =?utf-8?B?Qi9wRUlxQ0N4VFBQT2RtSTE0MWtuY1Y2TVRyTkFkdGtwcTNBUGhzY2EvenlI?=
 =?utf-8?B?aXJKSHhEYmJQa2NNTkQyOHY5bWkrbm5pcWdRMTFDTGtOYU8rdjBtSHJja1Na?=
 =?utf-8?B?S1Jtb0ZraWowQmkvZEM5L0pEcTZGUkhQZUwxM2YxUk5ZWGZGTk41ZWNTMlpu?=
 =?utf-8?B?bDQzSStGbVd4cnhHakk2czg5bDB6QTFpZ2lPc2U1aWdGaTZ4Tkw2bzhzdVpX?=
 =?utf-8?B?RWtTSHZJM2J0ZFZMN2xiNjE4Z2Z3UXorb2pzb2Uxc3N6YnJOV2YreHRvbXNB?=
 =?utf-8?B?cXZOcXllcU5MOGVoRmZyWFdvZnVmckdXRmRvS3ZFeDlSZW80SEVKQWwrMHdw?=
 =?utf-8?B?cWZ6RCtPSTAwYzR0SWxoUXpDZHBYNTV4RkhuTDBiSXRVTDZxYXViSG5RQm5W?=
 =?utf-8?B?UURsd251eXRBYlN4bm1sWlBBaHhJY0kwWWNXRmhGM3FzRmliQnFIWHBuR2J0?=
 =?utf-8?B?dytyUHRlZDkyZjFVYVduMXFXTklqTmVlVkF2Z3JBN1V4ZFFRZTJXYUV3OTZB?=
 =?utf-8?B?YlBXWE43bFBLeGVIWlIzV0dQQXFTbTI1ayt4YjRGSEZwRS90MmMyRFlQTEJz?=
 =?utf-8?B?SDFNME1ZTmRaSThQY2d6U0hVTTJsUkFVMEh3NnFoSzlWZHVPV3lUWjArOGRn?=
 =?utf-8?B?OW1Dc0NRVHJqWmhrZ2tOR2dyVlFBZmlhUCt1VVdrREV5YncwTjVkSGJpNC9t?=
 =?utf-8?B?Qzc2WkpQUjA4L1RYdk0yeG83TytSM2p2NnlaaFBCV05Vbi8vSDA2TFdhdnhK?=
 =?utf-8?B?dVAzdDFlRTdoSGROaXYvNEVmOXRXczR3RGNRd3lldm5pWU4xME0xYVFCWDBC?=
 =?utf-8?B?eks1c0F1cll0UFE4ZzBIVVVHYmh5MC9OSHBhT1o1NU5zLzltTG5nWEoyT1k4?=
 =?utf-8?B?V0pLcHdLL0FOL04xK3BEOXdDTFh3MmhIUDhTSWtBY0p6SG5wMkdwbnJRdWJL?=
 =?utf-8?B?UEIvYXIwS3JnUG1tNEpvWVJYaE9OU1NSTmRrUUNBTVM3VDhhRTBMaFhXYWJj?=
 =?utf-8?B?K2ZITDZieXBwcnlmT2FVYUI1OGtnREhwL1gvSk94dERlSEdtTVdHVUsxTjAx?=
 =?utf-8?B?WGx6N2xBWVlKYXFkWVlwRHFxbThyd2MyeGM5ZVBweFNJcU9xV3l4Q3BCVzZ5?=
 =?utf-8?B?R0NNbFR2TlAxSXEvTk8rMEpwbmM2MDFqWHM4c1BkYUdvWVV2T2ZpU21rdEc2?=
 =?utf-8?B?ekdXSGRya0lkSTNlaW1xYmlhTVRDa2VxaVIrTDRvdlJWdURqM1Ywd0N6Z0kz?=
 =?utf-8?B?V2tpdlY4YnBEVENUVWZNbFRKOHJiSENhV3hnOWFybmRsdnFidXdtYXZLLzlk?=
 =?utf-8?B?QTdCa085bnlxNVFKbkZWdVo5Y0NqcFUwYnhHUEZUa2txdkVWcmhWY1Bua3E1?=
 =?utf-8?B?STRYWnhnRFJXMThqTUZPZjlqMlBMOWtpcUhKQ0s3cDdGbzZTMEdpMkhZdzNl?=
 =?utf-8?B?SzJQSWRPTDJOZnI3WmhqL0M1MldaWmwrdFZvanV1eEU1bm81VkJYVmJYNXFm?=
 =?utf-8?Q?fZyb9h6aBB4JC+CJy2/tvCaHeNI8kbLQUFQ6VRwPPTZE0?=
x-ms-exchange-antispam-messagedata-1: Vs4L44ihuIJIXGaTI9ivbha19YVBZG8W9mJtzud/s8cN1efSIxN+oYHR
Content-Type: text/plain; charset="utf-8"
Content-ID: <35686B0FC8F29E4EA9A54B61CE65210A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: WJqFil+GQaRa6n+ikXbfhhQFEC1P2YFeVsbft6JhjnaM3iYe/9XoFpxMqfGwx5KAsJmRCWgAilqy9w+eMmd2Z+0vtfF/kF+aNm9dsovws2c+7kx2K+LHwt1KvwibXIoAbHHlNhgmrYt8ausq+64/yzZvR07V7uKn/h3+TdCFA5eHfLqLqjiGjtypAI1P6vuz0l1IlTcYtDpVGMrCR/HBqje+hu1knJ1Fv6NeBC9FjDlYIrYf9z1Bjh/zn8NHi/JY22Qk5LJ9ekdGywlwlu1xRJJQnScrsX/DPj0qlKfiNg4Wa/E043gs2BJpvqYr6L+BoMtQdc0toNuFWthogXngGg==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 0ed03f97-70d4-4c03-f49d-08dee262d54c
X-MS-Exchange-CrossTenant-originalarrivaltime: 15 Jul 2026 11:18:44.6121 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: WpWJpUJlNAAbJznPMRj2Buci/1C2cTExYDakFS5G0Wq5fQ3fVryfS/hlMLnLcC9Qgl2Ao2wJoT3VZgaTl7n+yRhVc24QjAQD68UwTGbLgW0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7121
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.21 / 15.00];
	ARC_ALLOW(-1.00)[microsoft.com:s=arcselector10001:i=1];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,lists.freedesktop.org:from_smtp,intel.com:from_mime,intel.com:mid,intel.com:email,intel.com:dkim];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 6CCC975D805

VGhhbmtzIGZvciB0aGUgcmV2aWV3cy4gQWxsIHRoZXNlIGFyZSBub3cgcHVzaGVkLg0KDQpUaGFu
a3MNClZpbm9kDQoNCk9uIFR1ZSwgMjAyNi0wNy0xNCBhdCAxMDowMCArMDAwMCwgS2FuZHBhbCwg
U3VyYWogd3JvdGU6DQo+ID4gPiA+IEFkZCBhbiBleHRyYSBRR1YgZW50cnksIHdpdGggYm90aCBw
ZWFrIGJ3IGFuZCBkZXJhdGVkIGJ3IHNldCB0bw0KPiA+ID4gPiAyMCBHQi9zLCB0byB0aGUgYmFu
ZHdpZHRoIGluZm8gd2hlbiBhbGwgb2YgdGhlIGZvbGxvd2luZyBob2xkOg0KPiA+ID4gPiAxLiBU
aGUgcGxhdGZvcm0gaXMgWGUzKy4NCj4gPiA+ID4gMi4gVGhlcmUgaXMgYXQgbGVhc3Qgb25lIGV4
aXN0aW5nIFFHViBwb2ludC4NCj4gPiA+ID4gMy4gVGhlIG51bWJlciBvZiBRR1YgcG9pbnRzIGlz
IGJlbG93IDggKHRoZSBtYXhpbXVtKS4NCj4gPiA+ID4gDQo+ID4gPiA+IE9uY2UgYSBwbGFuZSBn
cm91cCBpcyBmb3VuZCwgdGhlIGRyaXZlciBpdGVyYXRlcyBvdmVyIGFsbCBRR1YNCj4gPiA+ID4g
cG9pbnRzDQo+ID4gPiA+IGluIHRoYXQgZ3JvdXAgdG8gZmluZCB0aGUgYmVzdCBtYXRjaCBmb3Ig
dGhlIHJlcXVpcmVkIGRhdGENCj4gPiA+ID4gcmF0ZS4gSWYNCj4gPiA+ID4gdGhlIHJlcXVpcmVk
IGRhdGEgcmF0ZSBpcyBiZWxvdyAyMCBHQi9zLCBpdCBzZWxlY3RzIHRoZSBwZWFrIGJ3DQo+ID4g
PiA+IGZyb20NCj4gPiA+ID4gdGhpcyBuZXcgUUdWIHBvaW50ICgyMCBHQi9zKS4NCj4gPiA+ID4g
DQo+ID4gPiA+IHYyOiBhZGQgdGhlIHBlYWsgYmFuZHdpZHRoIHRocmVzaG9sZCBhcyBhbiBhZGRp
dGlvbmFsIFFHViBlbnRyeQ0KPiA+ID4gPiANCj4gPiA+ID4gQnNwZWM6IDY4ODgwDQo+ID4gPiA+
IFNpZ25lZC1vZmYtYnk6IFZpbm9kIEdvdmluZGFwaWxsYWkNCj4gPiA+ID4gPHZpbm9kLmdvdmlu
ZGFwaWxsYWlAaW50ZWwuY29tPg0KPiA+ID4gPiAtLS0NCj4gPiA+ID4gwqBkcml2ZXJzL2dwdS9k
cm0vaTkxNS9kaXNwbGF5L2ludGVsX2J3LmPCoMKgwqDCoMKgwqAgfCAzMw0KPiA+ID4gPiArKysr
KysrKysrKysrKysrKysrDQo+ID4gPiA+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV9kZXZpY2UuaMKgwqAgfMKgIDEgKw0KPiA+ID4gPiDCoDIgZmlsZXMgY2hhbmdlZCwgMzQg
aW5zZXJ0aW9ucygrKQ0KPiA+ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1
L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfYncuYw0KPiA+ID4gPiBpbmRleCBkYjJlZTlkZTVlZWMuLjcxYWE5
YTY5MjhkYiAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9idy5jDQo+ID4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYncuYw0KPiA+ID4gPiBAQCAtNTIsNiArNTIsOCBAQCBzdHJ1Y3QgaW50ZWxfcWd2X3Bv
aW50IHsNCj4gPiA+ID4gDQo+ID4gPiA+IMKgI2RlZmluZSBERVBST0dCV1BDTElNSVQJCTYwDQo+
ID4gPiA+IA0KPiA+ID4gPiArI2RlZmluZSBQRUFLX0JXX1RIUkVTSE9MRAkyMDAwMA0KPiA+ID4g
PiArDQo+ID4gPiA+IMKgc3RydWN0IGludGVsX3BzZl9ndl9wb2ludCB7DQo+ID4gPiA+IMKgCXU4
IGNsazsgLyogY2xvY2sgaW4gbXVsdGlwbGVzIG9mIDE2LjY2NjYgTUh6ICovwqAgfTsgQEANCj4g
PiA+ID4gLQ0KPiA+ID4gPiA2MDEsNiArNjAzLDM0DQo+ID4gPiA+IEBAIHN0YXRpYyBpbnQgdGds
X3BlYWtidyhpbnQgbnVtX2NoYW5uZWxzLCBpbnQgY2hhbm5lbF93aWR0aCwNCj4gPiA+ID4gaW50
DQo+ID4gPiA+IGRjbGspDQo+ID4gPiA+IMKgCXJldHVybiBudW1fY2hhbm5lbHMgKiAoY2hhbm5l
bF93aWR0aCAvIDgpICogZGNsazvCoCB9DQo+ID4gPiA+IA0KPiA+ID4gPiArc3RhdGljIHZvaWQg
eGUzX2FkZF9wZWFrYndfdGhyZXNob2xkKHN0cnVjdCBpbnRlbF9kaXNwbGF5DQo+ID4gPiA+ICpk
aXNwbGF5KSB7DQo+ID4gPiA+ICsJdTggcWd2X3BvaW50cyA9IGRpc3BsYXktPmJ3Lm51bV9xZ3Zf
cG9pbnRzOw0KPiA+ID4gPiArDQo+ID4gPiA+ICsJaWYgKCFIQVNfUEVBS19CV19USFJFU0hPTEQo
ZGlzcGxheSkpDQo+ID4gPiA+ICsJCXJldHVybjsNCj4gPiA+ID4gKw0KPiA+ID4gPiArCWlmIChx
Z3ZfcG9pbnRzID49IEk5MTVfTlVNX1FHVl9QT0lOVFMpIHsNCj4gPiA+ID4gKwkJZHJtX3dhcm4o
ZGlzcGxheS0+ZHJtLCAiTWF4aW11bSBRR1YgcG9pbnRzDQo+ID4gPiA+IHJlYWNoZWQuDQo+ID4g
PiA+IElnbm9yZSB0aGUgcGVhayBidyB0aHJlc2hvbGRcbiIpOw0KPiA+ID4gDQo+ID4gPiBEbyB3
ZSByZWFsbHkgbmVlZCB0byBiZSB0aHJvd2luZyBhIHdhcm5pbmcgc3BsYXQgaGVyZSBzaW5jZSB0
aGVzZQ0KPiA+ID4gYXJlDQo+ID4gPiBqdXN0IHRoZSBjb25kaXRpb25zIHdlIG5lZWQgdG8gbWVl
dCBpZiB3ZSB3YW50IHBlYWsgQlcgdGhyZXNob2xkLg0KPiA+ID4gRnJvbSB5b3UgY29tbWl0IG1l
c3NhZ2UgaXRzIG5vdCBhbHdheXMgbmVjZXNzYXJ5LiBDb3JyZWN0IG1lIGlmIEkNCj4gPiA+IGFt
DQo+ID4gPiB3cm9uZyBNYXliZSBkcm1fZGJnX2ttcy4NCj4gPiA+IA0KPiA+IA0KPiA+IEFjay4g
WWVzIGRlYnVnIGlzIGVub3VnaC4gVGhhbmtzLg0KPiA+IA0KPiA+IE90aGVyd2lzZSBvayAtIGNh
biBiZSBSQi1lZD8NCj4gDQo+IFllcyB3aXRoIGFib3ZlIGZpeGVkDQo+IA0KPiBMR1RNLA0KPiBS
ZXZpZXdlZC1ieTogU3VyYWogS2FuZHBhbCA8c3VyYWoua2FuZHBhbEBpbnRlbC5jb20+DQo+IA0K
PiA+IA0KPiA+IEJSDQo+ID4gVmlub2QNCj4gPiANCj4gPiA+IA0KPiA+ID4gPiArCQlyZXR1cm47
DQo+ID4gPiA+ICsJfQ0KPiA+ID4gPiArDQo+ID4gPiA+ICsJaWYgKHFndl9wb2ludHMgPD0gMSkg
ew0KPiA+ID4gPiArCQlkcm1fd2FybihkaXNwbGF5LT5kcm0sICJTQUdWIG5vdCBzdXBwb3J0ZWQu
DQo+ID4gPiA+IElnbm9yZQ0KPiA+ID4gPiB0aGUNCj4gPiA+ID4gcGVhayBidyB0aHJlc2hvbGRc
biIpOw0KPiA+ID4gDQo+ID4gPiBTYW1lIGhlcmUNCj4gPiA+IA0KPiA+ID4gUmVnYXJkcywNCj4g
PiA+IFN1cmFqIEthbmRwYWwNCj4gPiA+IA0KPiA+ID4gPiArCQlyZXR1cm47DQo+ID4gPiA+ICsJ
fQ0KPiA+ID4gPiArDQo+ID4gPiA+ICsJZGlzcGxheS0+YncubnVtX3Fndl9wb2ludHMrKzsNCj4g
PiA+ID4gKw0KPiA+ID4gPiArCWRpc3BsYXktPmJ3LnBlYWtid1txZ3ZfcG9pbnRzXSA9IFBFQUtf
QldfVEhSRVNIT0xEOw0KPiA+ID4gPiArDQo+ID4gPiA+ICsJZm9yIChpbnQgaSA9IDA7IGkgPCBB
UlJBWV9TSVpFKGRpc3BsYXktPmJ3Lm1heCk7IGkrKykNCj4gPiA+ID4gKwkJZGlzcGxheS0+Yncu
bWF4W2ldLmRlcmF0ZWRid1txZ3ZfcG9pbnRzXSA9DQo+ID4gPiA+IFBFQUtfQldfVEhSRVNIT0xE
Ow0KPiA+ID4gPiArDQo+ID4gPiA+ICsJZHJtX2RiZ19rbXMoZGlzcGxheS0+ZHJtLCAiQW4gZXh0
cmEgUUdWIHBvaW50ICVkIGFkZGVkDQo+ID4gPiA+IGZvcg0KPiA+ID4gPiBQZWFrDQo+ID4gPiA+
IGJ3IHRocmVzaG9kIG9mICVkXG4iLA0KPiA+ID4gPiArCQnCoMKgwqAgcWd2X3BvaW50cywgUEVB
S19CV19USFJFU0hPTEQpOyB9DQo+ID4gPiA+ICsNCj4gPiA+ID4gwqBzdGF0aWMgaW50IHRnbF9n
ZXRfYndfaW5mbyhzdHJ1Y3QgaW50ZWxfZGlzcGxheSAqZGlzcGxheSwNCj4gPiA+ID4gwqAJCQnC
oMKgIGNvbnN0IHN0cnVjdCBkcmFtX2luZm8gKmRyYW1faW5mbywNCj4gPiA+ID4gwqAJCQnCoMKg
IGNvbnN0IHN0cnVjdCBpbnRlbF9zb2NfYndfcGFyYW1zDQo+ID4gPiA+ICpzb2NfYndfcGFyYW1z
LA0KPiA+IEBAIC02OTUsNg0KPiA+ID4gPiArNzI1LDkgQEAgc3RhdGljIGludCB0Z2xfZ2V0X2J3
X2luZm8oc3RydWN0IGludGVsX2Rpc3BsYXkNCj4gPiA+ID4gKmRpc3BsYXksDQo+ID4gPiA+IMKg
CQlkcm1fZGJnX2ttcyhkaXNwbGF5LT5kcm0sICJRR1YgJWQ6DQo+ID4gPiA+IHBlYWtidz0ldVxu
IiwgaSwNCj4gPiA+ID4gZGlzcGxheS0+YncucGVha2J3W2ldKTsNCj4gPiA+ID4gwqAJfQ0KPiA+
ID4gPiANCj4gPiA+ID4gKwkvKiBGb3IgeGUzIGNhc2VzIGFkZCBhbiBleHRyYSBxZ3YgcG9pbnQg
Zm9yIFBlYWsgYncNCj4gPiA+ID4gdGhyZXNob2xkICovDQo+ID4gPiA+ICsJeGUzX2FkZF9wZWFr
YndfdGhyZXNob2xkKGRpc3BsYXkpOw0KPiA+ID4gPiArDQo+ID4gPiA+IMKgCWZvciAoaSA9IDA7
IGkgPCBxaS5udW1fcHNmX3BvaW50czsgaSsrKSB7DQo+ID4gPiA+IMKgCQljb25zdCBzdHJ1Y3Qg
aW50ZWxfcHNmX2d2X3BvaW50ICpzcCA9DQo+ID4gPiA+ICZxaS5wc2ZfcG9pbnRzW2ldOw0KPiA+
ID4gPiANCj4gPiA+ID4gZGlmZiAtLWdpdA0KPiA+ID4gPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaA0KPiA+ID4gPiBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaA0KPiA+ID4gPiBpbmRleCAxM2U5
M2E0YjRmNWYuLjEzNjBhMTZlZGJjMSAxMDA2NDQNCj4gPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X2RldmljZS5oDQo+ID4gPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV9kZXZpY2UuaA0KPiA+ID4g
PiBAQCAtMTkxLDYgKzE5MSw3IEBAIHN0cnVjdCBpbnRlbF9kaXNwbGF5X3BsYXRmb3JtcyB7DQo+
ID4gPiA+IMKgI2RlZmluZSBIQVNfTUJVU19KT0lOSU5HKF9fZGlzcGxheSkJKChfX2Rpc3BsYXkp
LQ0KPiA+ID4gPiA+IHBsYXRmb3JtLmFsZGVybGFrZV9wIHx8IERJU1BMQVlfVkVSKF9fZGlzcGxh
eSkgPj0gMTQpDQo+ID4gPiA+IMKgI2RlZmluZQ0KPiA+ID4gPiBIQVNfTVNPKF9fZGlzcGxheSkJ
CShESVNQTEFZX1ZFUihfX2Rpc3BsYXkpID49DQo+ID4gPiA+IDEyKQ0KPiA+ID4gPiDCoCNkZWZp
bmUNCj4gPiA+ID4gSEFTX09WRVJMQVkoX19kaXNwbGF5KQkJKERJU1BMQVlfSU5GTyhfX2Rpc3Bs
YXkpLQ0KPiA+ID4gPiA+IGhhc19vdmVybGF5KQ0KPiA+ID4gPiArI2RlZmluZSBIQVNfUEVBS19C
V19USFJFU0hPTEQoX19kaXNwbGF5KQ0KPiA+ID4gPiAJKERJU1BMQVlfVkVSKF9fZGlzcGxheSkg
Pj0gMzApDQo+ID4gPiA+IMKgI2RlZmluZQ0KPiA+ID4gPiBIQVNfUElQRURNQyhfX2Rpc3BsYXkp
CQkoRElTUExBWV9WRVIoX19kaXNwbGF5KSA+PQ0KPiA+ID4gPiAxMikNCj4gPiA+ID4gwqAjZGVm
aW5lDQo+ID4gPiA+IEhBU19QSVhFTF9OT1JNQUxJWkVSKF9fZGlzcGxheSkJKERJU1BMQVlfVkVS
KF9fZGlzcGxheSkgPj0NCj4gPiA+ID4gMzUpDQo+ID4gPiA+IMKgI2RlZmluZQ0KPiA+ID4gPiBI
QVNfUE1ERU1BTkQoX19kaXNwbGF5KQkJKERJU1BMQVlfVkVSKF9fZGlzcGxheSkgPj0NCj4gPiA+
ID4gMTQpDQo+ID4gPiA+IC0tDQo+ID4gPiA+IDIuNDMuMA0KPiA+ID4gDQo+IA0KDQo=
