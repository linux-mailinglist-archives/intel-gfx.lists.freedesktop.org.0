Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 474408BA76F
	for <lists+intel-gfx@lfdr.de>; Fri,  3 May 2024 09:12:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 58ED510F7B2;
	Fri,  3 May 2024 07:12:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g/9mSv55";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CDD06112170
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 May 2024 07:12:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714720353; x=1746256353;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=hiwCkjKEdTgJW+AXXxAFpAZi71RzMhzt5451BRByM4I=;
 b=g/9mSv55cgtn+P67ETVA1jC1+/OHWGlMBjDLmcOrHHHXdxtOsU0eQUnL
 9YAbKIW/dQ8gs005JssxoT3uFcaTm9Ac8Mohazbg+SwJ5SIhtv7Msy7fk
 /pJKBNILxoYz9GNAnxsEK1tl39gkpnePk5QzZIPEbwHWb707giK4G3wiM
 fibVu4qKQSrkv7VVbUui2sspIiWG8R4eDjpZU9DX7PjdF1IHInrlJLOoB
 ouOC8UaaWhEfilZo2FhHEWyTMmKdcA37v1Uk9Cg+NC6ihZq9L6qJ9Qhb1
 hV8BHE9Fl2wKRjR0VamqlSO841jOmMKjfQKxCxUaO+JyUt2/XI1dX95Ex Q==;
X-CSE-ConnectionGUID: pLNRpBzfQROqnS9vXvqZmw==
X-CSE-MsgGUID: c6mivHkmRluukSI7mFwspQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11062"; a="33030667"
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="33030667"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 May 2024 00:12:31 -0700
X-CSE-ConnectionGUID: hTF4UGECTTS81Oi7+DotUA==
X-CSE-MsgGUID: 9jk7IJpRRqe55ghEkeqbUQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,247,1708416000"; d="scan'208";a="27779060"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 May 2024 00:12:30 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Fri, 3 May 2024 00:12:29 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Fri, 3 May 2024 00:12:29 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Fri, 3 May 2024 00:12:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=L2jiahs+BRhAf7UeN8E+V9Zv+9fiP9akqXDVrd9Sc/pn4IrsNFNzfeQChrq1Azh3vdMZ+EN9YMbYpkyLHIOvUoghias+SnQ39S0rf+HJuJjDl4r5se0pmFk7GFIPZTjo8TgE5Ya7b3QjpWpnOCoK7Mv7FB7PnKvWLk1zt56bIDvDn/hLXpKcS5K/8pvGRYW5DZpUGsMHYt4T4ADaXN41IFvWydQYBZ6iRRHhC9OxQ0XeWZtCriqMSuqjBPa6/c+ZUeBWh9yhXjekydDp/UsFEMOCf147QbzHZ2VsvcZl9O/+jTQxPaSDUjJCLUhq6+X/Iqjvk3yVql3f5wDDJ2l9Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hiwCkjKEdTgJW+AXXxAFpAZi71RzMhzt5451BRByM4I=;
 b=fZITbt1+ORzJdvhR139q/Ng2Rip93IGY8Lc9u6hzINysbVv/z2ND4m/26jJqGuPAdkVPEG31J8F0TugDRX2Xr4bTE9y+DbcW761GBZo11sQFx2qJqxK6PczkRAL1bM5HBzHp+X8JdylkFFl92ZPfhthYS/k2KE7IEnmAO7VHaECttcZHEy4SuDiCXIC7paGTqdyDyzK2DswcKjIkGo2/HmEI40NH63e3Hu3ji7lP9t8yAR4+1hN9T1ZD+KRnk8vaWALqlFIZ52hjgxOQleU65H5ThefrocxBCcAgn16N/buWXTs3aDIwj1vtCL48M4Vq4VSz89Iye0819uU7xR5UMA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from IA0PR11MB7307.namprd11.prod.outlook.com (2603:10b6:208:437::10)
 by PH8PR11MB6779.namprd11.prod.outlook.com (2603:10b6:510:1ca::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7519.34; Fri, 3 May
 2024 07:12:27 +0000
Received: from IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::d95b:a57d:ecc:5637]) by IA0PR11MB7307.namprd11.prod.outlook.com
 ([fe80::d95b:a57d:ecc:5637%7]) with mapi id 15.20.7544.029; Fri, 3 May 2024
 07:12:27 +0000
From: "Murthy, Arun R" <arun.r.murthy@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [PATCH v2 4/5] drm/i915: Eliminate extra frame from skl-glk
 sync->async flip change
Thread-Topic: [PATCH v2 4/5] drm/i915: Eliminate extra frame from skl-glk
 sync->async flip change
Thread-Index: AQHamuTKnXJzJtWJL06scmqvHHAWu7GFG/Aw
Date: Fri, 3 May 2024 07:12:26 +0000
Message-ID: <IA0PR11MB7307B87D3C9B0EEF25FCE4C2BA1F2@IA0PR11MB7307.namprd11.prod.outlook.com>
References: <20240430095639.26390-1-ville.syrjala@linux.intel.com>
 <20240430095639.26390-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20240430095639.26390-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: IA0PR11MB7307:EE_|PH8PR11MB6779:EE_
x-ms-office365-filtering-correlation-id: 522d2d12-181e-49a0-06cc-08dc6b406373
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|376005|1800799015|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?eTRoM2wwQ2xGc3ErY0x0QVQyd3F3ZGV2UFJvQ3o3eUt2Y0NoSVdKWTJmY01w?=
 =?utf-8?B?K2plV09zeVRZTEhIWkp4ZElMd24rWkV0WFNKSUZpYldWUUhoSzQ1a1pPMnFv?=
 =?utf-8?B?WlJESHIvYTZERFRxdFYxMmo0SEVzOFQ0TXhNQWVRd3kzQ0NBcXRGd3RCUkVK?=
 =?utf-8?B?dVRScXN4UmpPSlNmYWpEbHBRV2g0V1hsNEk5SkpBaDkwa1dKN0lOM3F6RUo1?=
 =?utf-8?B?TW1RVjhyNVVwdSszRGhFT29Hd3FPYnlKcmk3Q0NPQWJvTkQ4Rm53ZndPZ3dq?=
 =?utf-8?B?RUMyczA5M1FyZVZBVmsyTWVremNpM2ZOY3BFeHdsSElIMnB1MmswUWlYMWJy?=
 =?utf-8?B?QThRVnhJUG5LWUQrcy9WQzcyRThCM1J5bTdST2VqM2Z5U05tMFJ3WUtML25t?=
 =?utf-8?B?WTU1WEQwcVZoa2tmRndjek91ck1vNzJmd1U1WmJYYUVBYVZ5VzlmUkd3YVBu?=
 =?utf-8?B?dTFoS1FqYjBnREtYeVROVStQMWNNWVduVHkrbnliZFJLNERZdVFXbEgrWDdT?=
 =?utf-8?B?SjlMdjdmajZGM3UveUR1dDl3RjM0MVd2NWcwdU9wUm5iSkRmdHd2QUorelBh?=
 =?utf-8?B?RjBhVTd2NUx6cUR4eEFrSHpGR1JWU0NtRUhQZlRqaHU2MWJhaHdXUk4xQVlC?=
 =?utf-8?B?RE9QWitlTHlERnVlWEdZU21TZWM4N2wrUFVjZ0tyNW1zdk9nZ3I4Z2pNYURG?=
 =?utf-8?B?Y1NPN0gxcDVOR0RZcUR6SFFGbzM5ZGpTOWNWeFhFYUpUd3ZNaGI1cG9iK0ZD?=
 =?utf-8?B?QkFKYWVRNytMSWIzenkvTzdPUkFVczJrREZ6MVorMzBhNURJL2pOMnJDcnVa?=
 =?utf-8?B?cjdlVFloTTlmM1VkdTZPT24xdzRTSUhISDM3UnhrcGQ0R1haMkJFMFE2TSto?=
 =?utf-8?B?QWQ4ejdjVWFIcW1vdkJMZ0JPZlhiQWhQLzRWSkdTeERiY1d4bGcyMjlKWmhj?=
 =?utf-8?B?YURBTHRvWXNSTmg0QnFSOVdhMS9KNHZNaHVVaENiMU1OYWF1THdsNVRVNzRB?=
 =?utf-8?B?MnhvZDd2L3VwUVpyL1AyNkZqVXk1K21YcVFJc0p0R0ZHU3NOaHFZVWJubWh2?=
 =?utf-8?B?UDVJdHBOZXhkNXNWWHVSc05PdEdueG9HNFdjb3JJZVRlb3pja3RMYk9lQlcv?=
 =?utf-8?B?NC9OMUtHMHhwUThtU1B0SmtwdFdNYnhaZ0RrSS9nSVdVTEpzakowRzBjemtr?=
 =?utf-8?B?Y1l0U29oVVY1RTJYZkVWQUpsS0JDYlF5MmRtaXp2UEZ3QzM2VW5kbEYySUhn?=
 =?utf-8?B?YUVIbTl5MVIzZEZXUm1UZG1LK1F4MlAzZkdBQVBjVDdEb0hTL2haNXVXMjU2?=
 =?utf-8?B?SVBnZEFBajZVQklxNFpzbEpRTnEzQVBJRHRoMXJJUVRPRWhqUkJDYlpRR1ln?=
 =?utf-8?B?RStndEplRVlCdm9BdktNdEo1Rng5Wkoxa0pOZUxxQTFKa3Awc2t6KzFITm5H?=
 =?utf-8?B?NWtkM1ZlNDhGYVlzUGV0eUNqOWhkUDR0MHJoMDJQakpTNnk3OHJqQzYzNjVp?=
 =?utf-8?B?eHV2OHlzNGFRM3BKMlVEZG9VS2I5VEZCaEVYV1hkdGU5SUJ4YWlwb3kwQnVk?=
 =?utf-8?B?QitZazFlN2RObFBUNWRBWHhzUjk3Y1pwZ0FTNnV2Z3lhZVVCb216MHpaYUlz?=
 =?utf-8?B?RDdYRmhPY3loUUpURHUzVDMwaWxJR0ttN2pRcS9PSTBnTHErTmJldFRkc29O?=
 =?utf-8?B?c0V4VDNDc21VTnJPc3VMSVUrcFJnZUs5Uk1zWUYyMDNEWDRDdDQ2KzlPeFkr?=
 =?utf-8?B?U3piYXY5a2dJS1NoSUhzZmoxTWFBdGpDOUpOZjZsei84V0RWU3ZSdmdTK2lI?=
 =?utf-8?B?K1EyYmlFVVNUWDZoUVhXZz09?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:IA0PR11MB7307.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(376005)(1800799015)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?MUlENmFIUHhEM0k3UThDYzNyMXRGZ09BaXl3ZzhtYW9CL2crQnR4SWpSNFFt?=
 =?utf-8?B?b2VRSmRWMGljc1V2VXJUeERCMHQ2V1hTU3BVenlkNXlKcFhMaDltUlcrSlRK?=
 =?utf-8?B?T21UYUdtbDFyTEVOYTNuTTVhVXJXVWJXTTlrQkYrbWdvZjVucWVpVlNjUDNQ?=
 =?utf-8?B?MnlWdG5hTm9kcHNaWDdFVkVORTlFUHMzUEhvWDdWK3VyaUlQb1lIWmNKV2pM?=
 =?utf-8?B?QlA5ZEZ0TWpPZGl1VTFXNjJQdkN6V1JjS0FoQUY2VG03Wm00bjhHb3prRC9H?=
 =?utf-8?B?UCttNUpmY1M4TElVMUtFc3ZmU2VuUytZOUJjT0RLMVh3dnI3cUhmSU5KM1Vp?=
 =?utf-8?B?QVRHOHlCaEU4M01TZWlya01oKzdId1lQc0g0dTlvQy9ud3pBbnhUaEh6bTR6?=
 =?utf-8?B?TU9RYW5HZUx4eC94M0lMaHF0OGVEVWhEeXlGRy9ycjdoc3NBYnZUTmxRY3M5?=
 =?utf-8?B?Tzc3ZzNBYk1DVC9Ma1Via1ppdjFXMzgxY1VJa0pTRlFEYUhnN2E3VjhMc1Fj?=
 =?utf-8?B?a3IvY25BbTNhaVJFTFhjYVl4TkNlbFBrUExiMHBuek8rWFllSEFqNFN3YVpq?=
 =?utf-8?B?WWpMc1Z5clNjQk0xRDhONXF6cURkTitCQSs1ZFdMREtRYTNZZmdqc1hTWEg0?=
 =?utf-8?B?Mk11SXRnRkpYNUdreDRHV1kzbU1Sb1c5MEpNcjdHaTd4NnlETElWVlJ0c2o5?=
 =?utf-8?B?VWZGOC9HUWZpbVA2SGkzN1h0T2xUZzhaSDJNcjBTR2loeXp3YzRJN2F0SFJO?=
 =?utf-8?B?YnF2MkV2YWZ6TmlFSXdQdGVGZWx0Q1NHSlNwc1JNTVZoV2RGeXYyUmwvZVdK?=
 =?utf-8?B?akg5M1ludVRLTkh4OVBBTk1IL0RBOHB0Z3FIeXdsTFBnSVJXOWZBSUNnMzlh?=
 =?utf-8?B?NVgyNTlJOXI5UlZtWHJmOWJsSWgzc0FmWTB6N3hWdXlyV0hJcWwwTFcxTXli?=
 =?utf-8?B?ekIwNi9tREx0QWpsWjkvYVRzbTRSQkh0SUU3U202eVljbTZwanNpS1YvdytM?=
 =?utf-8?B?dDdpMHJSK0hyTW5sZzlIT1BGUmVsRWZpYWw2bmUxelRPSHJ2Rmk3SmFhRG5N?=
 =?utf-8?B?V2ErRXJVU0ZaZXJnOUZLUmltMWlSMi9zWHZwU0pnejEvck1LS21LdUZncjFu?=
 =?utf-8?B?UjhCRjB4MzVPZVJKY2FpNFh4Rm1wU2hQZm04VHcxRjNXK3dvNlR3bENlZS95?=
 =?utf-8?B?UWFQQndzaU9NeGsyUUt3SGVXOUVQcmtLL29qdTFQTk9SaWx1Tkc0YlVVY3ZD?=
 =?utf-8?B?U05YWkhHanM2RUphakRCNFNjSmJUK0w4UFBFZnQwM1lBR2FtYlZOZGJTbDJn?=
 =?utf-8?B?OS94TVVKV1BBcXJmbm1IcEUyeDMxL01aNHFwV3hTMmNJaUVLQjI4cVJVemhX?=
 =?utf-8?B?ZzYwbkswa0VzbE43alpzRDBEY1kxeC9wZkp6K0tJdVI4OHpzeWRpeERYVXRo?=
 =?utf-8?B?YU04Zmo3T29taUI5M1J2T3RIbVFjMVBmZVo1ak9vaWFONFJRdndsM0x5dmRY?=
 =?utf-8?B?NGo1clNZeXk0MVNIVmppakZWa2F5REJmWUhhM1BWQURMRlVHWWZySWdDWCtr?=
 =?utf-8?B?clZjWDMzUURvSDRMTFVVeVo0QXBvN2RlL1lPMDlzUjdsZCs2WEFtd2lGNWZ5?=
 =?utf-8?B?dms5OWxqaWJ0b294MXBRS3lDczlqYVFOVjdFWjgrd2hGWC9TTU43L3BRc2hh?=
 =?utf-8?B?bjArYkxEc3g1OGJVKzZvY3UrY0Jsa1VQd1FFV3lkSmpHNFY4UElUNGZOM1hO?=
 =?utf-8?B?UGxDTjlHTzFJdlh1MFhqdEwyTHB1ZzZCemR4cnEwZXBGSS9KRnhwN1ZFNzgw?=
 =?utf-8?B?ejArSStYcFhxemhXdDZlN3JmYUw0VnkxZWRiL0Z0cjR6eDE0M0wxS0kwY0Yv?=
 =?utf-8?B?Umd5NUdFWU9rZGFGUmdWVERzeHh2ZS9qbWhyaDBTanpSMEtvczJMTjAzMjVS?=
 =?utf-8?B?S0NnLzNTeCtuTmJMeTR2alVuamhBb1ZzK2RpcjNpbjVvc0p5RzJqMGhndUZB?=
 =?utf-8?B?Rnd0T213Z0txWDVhUGFENXpNNXdML3VOeS9OZlU0THpBRzVpNVdvOEJtV1lB?=
 =?utf-8?B?RkJKY3ErWkpVM2VRVW5vRFNzbVZMRENDRUVqc1dpb1dkWHoyR0RFY21YeE5i?=
 =?utf-8?B?Zm5mYk9seFNkRWZEcEplZzYyTVBvUHZxWFJvelRoZDF4bEZxZFA0UGhiSnZZ?=
 =?utf-8?Q?zYcqvM60pM5tJPoDjMeVCsGo0gdmD8uZT/uhS4+dMN92?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: IA0PR11MB7307.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 522d2d12-181e-49a0-06cc-08dc6b406373
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 May 2024 07:12:26.9952 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: Bc/UtGMwUtNmGIFDnM0h0aaphTvMoiwHUlNavkonUAG1ofO7PupNLCOJr+eF18IlynCRbBvC+P7gIrpdvG3avg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB6779
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSW50ZWwtZ2Z4IDxpbnRl
bC1nZngtYm91bmNlc0BsaXN0cy5mcmVlZGVza3RvcC5vcmc+IE9uIEJlaGFsZiBPZiBWaWxsZQ0K
PiBTeXJqYWxhDQo+IFNlbnQ6IFR1ZXNkYXksIEFwcmlsIDMwLCAyMDI0IDM6MjcgUE0NCj4gVG86
IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gU3ViamVjdDogW1BBVENIIHYyIDQv
NV0gZHJtL2k5MTU6IEVsaW1pbmF0ZSBleHRyYSBmcmFtZSBmcm9tIHNrbC1nbGsgc3luYy0NCj4g
PmFzeW5jIGZsaXAgY2hhbmdlDQo+IA0KPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5
cmphbGFAbGludXguaW50ZWwuY29tPg0KPiANCj4gT24gYmR3LWdsayB0aGUgc3luYy0+YXN5bmMg
ZmxpcCBjaGFuZ2UgdGFrZXMgYW4gZXh0cmEgZnJhbWUgZHVlIHRvIHRoZSBkb3VibGUNCj4gYnVm
ZmVyaW5nIGJlaGF2aW91ciBvZiB0aGUgYXN5bmMgZmxpcCBwbGFuZSBjb250cm9sIGJpdC4NCj4g
DQo+IFNpbmNlIG9uIHNrbCsgd2UgYXJlIG5vdyBleHBsaWNpdGx5IGNvbnZlcnRpbmcgdGhlIGZp
cnN0IGFzeW5jIGZsaXAgdG8gYSBzeW5jIGZsaXANCj4gKGluIG9yZGVyIHRvIGFsbG93IGNoYW5n
aW5nIHRoZSBtb2RpZmllciBhbmQvb3INCj4gZGRiL3dhdGVybWFya3MpIHdlIGFyZSBub3cgdGFr
aW5nIHR3byBleHRyYSBmcmFtZXMgdW50aWwgYXN5bmMgZmxpcHMgYXJlDQo+IGFjdHVhbGx5IGFj
dGl2ZS4gV2UgY2FuIGRyb3AgdGhhdCBiYWNrIGRvd24gdG8gb25lIGZyYW1lIGJ5IHNldHRpbmcg
dGhlIGFzeW5jDQo+IGZsaXAgYml0IGFscmVhZHkgZHVyaW5nIHRoZSBzeW5jIGZsaXAuDQo+IA0K
PiBOb3RlIHRoYXQgb24gYmR3IHdlIGRvbid0IGN1cnJlbnRseSBkbyB0aGUgZXh0cmEgc3luYyBm
bGlwIChzZWUNCj4gaW50ZWxfcGxhbmVfZG9fYXN5bmNfZmxpcCgpKSBzbyB0ZWNobmljYWxseSB3
ZSB3b3VsZG4ndCBoYXZlIHRvIGRlYWwgd2l0aCB0aGlzIGluDQo+IGk5eHhfcGxhbmVfdXBkYXRl
X2FybSgpLiBCdXQgSSBhZGRlZCB0aGUgcmVsZXZhbnQgc25pcHBldCBvZiBjb2RlIHRoZXJlIGFz
DQo+IHdlbGwsIGp1c3QgaW4gY2FzZSB3ZSBldmVyIGRlY2lkZSB0byBnbyBmb3IgdGhlIGV4dHJh
IHN5bmMgZmxpcCBvbiBwcmUtc2tsIHBsYXRmb3Jtcw0KPiBhcyB3ZWxsICh3ZSBtaWdodCwgZm9y
IGV4YW1wbGUsIHdhbnQgdG8gY2hhbmdlIHRoZSBmYiBzdHJpZGUpLg0KPiANCj4gU2lnbmVkLW9m
Zi1ieTogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NClJl
dmlld2VkLWJ5OiBBcnVuIFIgTXVydGh5IDxhcnVuLnIubXVydGh5QGludGVsLmNvbT4NCg0KVGhh
bmtzIGFuZCBSZWdhcmRzLA0KQXJ1biBSIE11cnRoeQ0KLS0tLS0tLS0tLS0tLS0tLS0tLS0NCj4g
LS0tDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2k5eHhfcGxhbmUuYyAgICAgICAg
IHwgIDUgKysrKysNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWlj
X3BsYW5lLmMgfCAxNSArKysrKysrKysrKy0tLS0NCj4gIC4uLi9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfdW5pdmVyc2FsX3BsYW5lLmMgICAgfCAgNSArKysrKw0KPiAgMyBmaWxlcyBjaGFuZ2Vk
LCAyMSBpbnNlcnRpb25zKCspLCA0IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9wbGFuZS5jDQo+IGIvZHJpdmVycy9ncHUv
ZHJtL2k5MTUvZGlzcGxheS9pOXh4X3BsYW5lLmMNCj4gaW5kZXggMDI3OWM4YWFiZGQxLi43NmZj
NzYyNjA1MWIgMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4
eF9wbGFuZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaTl4eF9wbGFu
ZS5jDQo+IEBAIC00NTUsNiArNDU1LDExIEBAIHN0YXRpYyB2b2lkIGk5eHhfcGxhbmVfdXBkYXRl
X2FybShzdHJ1Y3QgaW50ZWxfcGxhbmUNCj4gKnBsYW5lLA0KPiANCj4gIAlkc3BjbnRyID0gcGxh
bmVfc3RhdGUtPmN0bCB8IGk5eHhfcGxhbmVfY3RsX2NydGMoY3J0Y19zdGF0ZSk7DQo+IA0KPiAr
CS8qIHNlZSBpbnRlbF9wbGFuZV9hdG9taWNfY2FsY19jaGFuZ2VzKCkgKi8NCj4gKwlpZiAocGxh
bmUtPm5lZWRfYXN5bmNfZmxpcF9kaXNhYmxlX3dhICYmDQo+ICsJICAgIGNydGNfc3RhdGUtPmFz
eW5jX2ZsaXBfcGxhbmVzICYgQklUKHBsYW5lLT5pZCkpDQo+ICsJCWRzcGNudHIgfD0gRElTUF9B
U1lOQ19GTElQOw0KPiArDQo+ICAJbGluZWFyX29mZnNldCA9IGludGVsX2ZiX3h5X3RvX2xpbmVh
cih4LCB5LCBwbGFuZV9zdGF0ZSwgMCk7DQo+IA0KPiAgCWlmIChESVNQTEFZX1ZFUihkZXZfcHJp
dikgPj0gNCkNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfYXRvbWljX3BsYW5lLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVs
X2F0b21pY19wbGFuZS5jDQo+IGluZGV4IDc2OTAxMGQwZWJjNC4uNzA5OGEzNGExN2M4IDEwMDY0
NA0KPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2F0b21pY19wbGFu
ZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljX3Bs
YW5lLmMNCj4gQEAgLTQzNywxMCArNDM3LDYgQEAgc3RhdGljIGJvb2wgaW50ZWxfcGxhbmVfZG9f
YXN5bmNfZmxpcChzdHJ1Y3QNCj4gaW50ZWxfcGxhbmUgKnBsYW5lLA0KPiAgCSAqIG9ubHkgWC10
aWxlIGlzIHN1cHBvcnRlZCB3aXRoIGFzeW5jIGZsaXBzLCB0aG91Z2ggd2UgY291bGQNCj4gIAkg
KiBleHRlbmQgdGhpcyBzbyBvdGhlciBzY2Fub3V0IHBhcmFtZXRlcnMgKHN0cmlkZS9ldGMpIGNv
dWxkDQo+ICAJICogYmUgY2hhbmdlZCBhcyB3ZWxsLi4uDQo+IC0JICoNCj4gLQkgKiBGSVhNRTog
UGxhdGZvcm1zIHdpdGggbmVlZF9hc3luY19mbGlwX2Rpc2FibGVfd2E9PXRydWUgd2lsbA0KPiAt
CSAqIG5vdyBlbmQgdXAgZG9pbmcgdHdvIHN5bmMgZmxpcHMgaW5pdGlhbGx5LiBXb3VsZCBiZSBu
aWNlIHRvDQo+IC0JICogY29tYmluZSB0aG9zZSBpbnRvIGp1c3QgdGhlIG9uZSBzeW5jIGZsaXAu
Li4NCj4gIAkgKi8NCj4gIAlyZXR1cm4gRElTUExBWV9WRVIoaTkxNSkgPCA5IHx8IG9sZF9jcnRj
X3N0YXRlLT51YXBpLmFzeW5jX2ZsaXA7ICB9IEBADQo+IC02MDQsNiArNjAwLDE3IEBAIHN0YXRp
YyBpbnQgaW50ZWxfcGxhbmVfYXRvbWljX2NhbGNfY2hhbmdlcyhjb25zdCBzdHJ1Y3QNCj4gaW50
ZWxfY3J0Y19zdGF0ZSAqb2xkX2NyDQo+ICAJaWYgKGludGVsX3BsYW5lX2RvX2FzeW5jX2ZsaXAo
cGxhbmUsIG9sZF9jcnRjX3N0YXRlLCBuZXdfY3J0Y19zdGF0ZSkpIHsNCj4gIAkJbmV3X2NydGNf
c3RhdGUtPmRvX2FzeW5jX2ZsaXAgPSB0cnVlOw0KPiAgCQluZXdfY3J0Y19zdGF0ZS0+YXN5bmNf
ZmxpcF9wbGFuZXMgfD0gQklUKHBsYW5lLT5pZCk7DQo+ICsJfSBlbHNlIGlmIChwbGFuZS0+bmVl
ZF9hc3luY19mbGlwX2Rpc2FibGVfd2EgJiYNCj4gKwkJICAgbmV3X2NydGNfc3RhdGUtPnVhcGku
YXN5bmNfZmxpcCkgew0KPiArCQkvKg0KPiArCQkgKiBPbiBwbGF0Zm9ybXMgd2l0aCBkb3VibGUg
YnVmZmVyZWQgYXN5bmMgZmxpcCBiaXQgd2UNCj4gKwkJICogc2V0IHRoZSBiaXQgYWxyZWFkeSBv
bmUgZnJhbWUgZWFybHkgZHVyaW5nIHRoZSBzeW5jDQo+ICsJCSAqIGZsaXAgKHNlZSB7aTl4eCxz
a2x9X3BsYW5lX3VwZGF0ZV9hcm0oKSkuIFRoZQ0KPiArCQkgKiBoYXJkd2FyZSB3aWxsIHRoZXJl
Zm9yZSBiZSByZWFkeSB0byBwZXJmb3JtIGEgcmVhbA0KPiArCQkgKiBhc3luYyBmbGlwIGR1cmlu
ZyB0aGUgbmV4dCBjb21taXQsIHdpdGhvdXQgaGF2aW5nDQo+ICsJCSAqIHRvIHdhaXQgeWV0IGFu
b3RoZXIgZnJhbWUgZm9yIHRoZSBiaXQgdG8gbGF0Y2guDQo+ICsJCSAqLw0KPiArCQluZXdfY3J0
Y19zdGF0ZS0+YXN5bmNfZmxpcF9wbGFuZXMgfD0gQklUKHBsYW5lLT5pZCk7DQo+ICAJfQ0KPiAN
Cj4gIAlyZXR1cm4gMDsNCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gaW5kZXggODYwNTc0ZDA0Zjg4Li5hZDRjOTAzNDRm
NjggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3VuaXZl
cnNhbF9wbGFuZS5jDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvc2tsX3Vu
aXZlcnNhbF9wbGFuZS5jDQo+IEBAIC0xMTc0LDYgKzExNzQsMTEgQEAgc2tsX3BsYW5lX3VwZGF0
ZV9hcm0oc3RydWN0IGludGVsX3BsYW5lICpwbGFuZSwNCj4gIAlwbGFuZV9jdGwgPSBwbGFuZV9z
dGF0ZS0+Y3RsIHwNCj4gIAkJc2tsX3BsYW5lX2N0bF9jcnRjKGNydGNfc3RhdGUpOw0KPiANCj4g
KwkvKiBzZWUgaW50ZWxfcGxhbmVfYXRvbWljX2NhbGNfY2hhbmdlcygpICovDQo+ICsJaWYgKHBs
YW5lLT5uZWVkX2FzeW5jX2ZsaXBfZGlzYWJsZV93YSAmJg0KPiArCSAgICBjcnRjX3N0YXRlLT5h
c3luY19mbGlwX3BsYW5lcyAmIEJJVChwbGFuZS0+aWQpKQ0KPiArCQlwbGFuZV9jdGwgfD0gUExB
TkVfQ1RMX0FTWU5DX0ZMSVA7DQo+ICsNCj4gIAlpZiAoRElTUExBWV9WRVIoZGV2X3ByaXYpID49
IDEwKQ0KPiAgCQlwbGFuZV9jb2xvcl9jdGwgPSBwbGFuZV9zdGF0ZS0+Y29sb3JfY3RsIHwNCj4g
IAkJCWdsa19wbGFuZV9jb2xvcl9jdGxfY3J0YyhjcnRjX3N0YXRlKTsNCj4gLS0NCj4gMi40My4y
DQoNCg==
