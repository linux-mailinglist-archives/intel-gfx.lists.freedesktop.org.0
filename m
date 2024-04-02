Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 66978894E93
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Apr 2024 11:22:23 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D0E1310F5EC;
	Tue,  2 Apr 2024 09:22:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="M6xtJbWq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 68DD210FBB0
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Apr 2024 09:22:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1712049737; x=1743585737;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=zKQTtJlfjcp8VWxW8agf8h/BisozexrO8CvJcxDeGz8=;
 b=M6xtJbWqNuBsht9R3AVPPhkpcDoAoL3Rl1a1tT/Pn+Hbsx9E1NgWkxyf
 8YnBDZQOx0GU4onx/iU0+u2FbgdhpzKD7lonbJ14ACEPieFci1NSKkVaE
 Yfm5rm2LgKiiDjgVP2JKwH2jzQZrNSVqHn3KrE+Yqv1ofqjpkda1GTgJc
 FdyoWsATUOO55pDKoejWRslJODq9ShHhvvSScyLuwGJxMrP09YIIQS6qy
 Dh936FIKWGCfX+awmNhhjwx+7TA0LcpIf/liaTOS0DhuHU+KA0hCkPpA1
 72CLBxrzokjlMEGVvu/+W5qwSt9W5aAjsi69oCySef2WqL8OWTN2nhgZy w==;
X-CSE-ConnectionGUID: VSsvL1UeROOaGFzrJYyjBA==
X-CSE-MsgGUID: /nfJ23Q8SqaBxL04v/RS0w==
X-IronPort-AV: E=McAfee;i="6600,9927,11031"; a="10171792"
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="10171792"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Apr 2024 02:22:15 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,174,1708416000"; d="scan'208";a="18466968"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 02 Apr 2024 02:22:15 -0700
Received: from orsmsx612.amr.corp.intel.com (10.22.229.25) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 02:22:14 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX612.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35; Tue, 2 Apr 2024 02:22:13 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.35 via Frontend Transport; Tue, 2 Apr 2024 02:22:13 -0700
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.35; Tue, 2 Apr 2024 02:22:13 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=lM3h0qfMObz+iN/UReSJk7AAL1DOcaN014WLxX6OYpaY8z5QOxPpyUZPUr1W6C5CxgB/G7SzcIeZ1Wc6A5voqkoSjQL6ZRB/o4G+6hgIVnV+LtnOqxQ8/wLLl2GECDECF97EBCHX8yIl++g6NE3T+wdMVbUz/a5Sfdus3V/OIcuJcCNR6h1itF6KN+Z/S3k5PnBBiY/HNttYZFNscPmWjRDSS2og9dDe4/H1Sy44glKPHuGmeRctGKZ5JE4wKUbbK0/HWvV3SJycG026U2qvbyiBKHyG5TpNJDQTIMuzwNvJXnOTmGJd7zlUUvQq+Dlo1tTtaTbhD/xATJPbodFKQg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=zKQTtJlfjcp8VWxW8agf8h/BisozexrO8CvJcxDeGz8=;
 b=e2lkga0lIhfc4x5IE+3AnNOWv96IHB4HdHQq6Rrk245nxMgN8rY3Q7gUvU/JRC72+DlFvX6Wgww8ingnbKkZxyDceUDgn4gi3LgWRwdhWO4M4vLfhUgfqrjJGSHI/ZXUvh+SRkC9lR7RG1dIArt6nBave66bhOQPuVa6hgv4BqMHOCrJSS4es6wSuQDEn+yixf/A+DnEUJp006N8ICL3tkng7OQNbUsGyfoj6J55G96rIwWzTPEuHIdqRkJpYWF43GCNOHSOluevwHUjRq53OyIjk5v5WrzDOVnvIaCB2L2Rrq4x95cw2s9/jCC5G8vCx07ECEevxP5MyOiISd0LZg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SA2PR11MB5084.namprd11.prod.outlook.com (2603:10b6:806:116::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7452.25; Tue, 2 Apr
 2024 09:22:12 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::bccd:7928:80ae:179f%5]) with mapi id 15.20.7452.019; Tue, 2 Apr 2024
 09:22:12 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Murthy, 
 Arun R" <arun.r.murthy@intel.com>
Subject: Re: [PATCH v5 0/5] ALPM AUX-Less
Thread-Topic: [PATCH v5 0/5] ALPM AUX-Less
Thread-Index: AQHafEQA5JLy8nI5M0qON4reo+Rpi7FMqmQAgAgbj4A=
Date: Tue, 2 Apr 2024 09:22:12 +0000
Message-ID: <30c37af4bf55d111cdd4651c82b4988d52bd5398.camel@intel.com>
References: <20240322103000.103332-1-jouni.hogander@intel.com>
 <PH7PR11MB5981CF7E4430C02F02F6E0CDF93B2@PH7PR11MB5981.namprd11.prod.outlook.com>
In-Reply-To: <PH7PR11MB5981CF7E4430C02F02F6E0CDF93B2@PH7PR11MB5981.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SA2PR11MB5084:EE_
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
x-microsoft-antispam-message-info: uWFbi+JoLhJZRgUwKxP3fpo+mOxHo7NTMItMnRAs1hcpDAABjl1LIBTunZt49gyu2jsRc6XiA905j6Hnvz99lk56RTId4gqEFFvHf0/GQJ/awIPSmHMNk7fFJ4xQQ3q4KXEUDkXjhQx6CzncyWqELp7LOhbK8LIZCGuaUi9x1Io7ycOSliJiBgoO2xO/nqcaf+la9pqS3h0iBOGJtzhjnYFkEzwq49dAzD5ud291jKjwHgeJBkOII/JdQJe98H0qPO7Xq+GfZQaYBWxBqwGozbfNYaB2bNZ8ODmrh5T4isuipXP9lukpVsT4lfnm/LfFGDcfbehRgOPViijGHmYXVx5iycDXdPx54mEj9XI9WaTCREs+3uzDeG5t4L5cOTbyGcJJ7pZO53v56X/yTaWo0yJ6ljrGs85wmubgly/8VfrghWkdE9w+J2kbrLsUu8UOYWrZBrO1+HJqXPPxABzbQv+n3exiFcoux/QdRvrYs5SH4IbH6IdCcvtMuXH8M6WxX88EXeXNqcqyZEcMzYw0xtHWOiZw1OOPhlcEDv4/EtHSuwW5brzQFa3w4ZY7+B/JtOcP0EV/vhbSWSCxhlKg9pos60XEqFwsEe0or7SYJ+4oNkyUigBsWx6ZHAEj7LBwNsiDivmtGP3sHoQgpp8zXhXxS5Kceb8X80qds5A43KA=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(366007)(376005); DIR:OUT; SFP:1102; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?aktyWkpvMnNDbXM3WW9LOVQxNEsxSUJNSVAwMHoyWm5pOUI5QVp4RkZ4cU9O?=
 =?utf-8?B?NGdJS01SMWgyYTFWYXB1TCtNRTQ5TFJOdE90MWRlSGkzY3ZQb3F1QVg1K0NU?=
 =?utf-8?B?ZVJjc2xQeEg1VnFqQ3FQRmgwYjZzZC9ncHBYRngvZkdKTytFMWwybm84N1cx?=
 =?utf-8?B?YXBIZWFRYzB0L2EyU0hWN2VseGh3c2RSemFDcEo2SDNZRVY2b2RWUE5QczAx?=
 =?utf-8?B?QWttYlB1NExtaVozaEVYUU16S3VYeHEyYk9XM3FtKzBZQ0VDMjB5MVp1SlN6?=
 =?utf-8?B?cHhmSjR3blVja1hUTXY0Rk45ZFUwV2ZkKzN3OGVhUmJCakZsYXdDSDc1V0Q4?=
 =?utf-8?B?YmRuSll5LzVKNCsvU0Y3Sk1ZbnlwUFgySWZ2aHJNQkpGclVYanl3a2FHeFdy?=
 =?utf-8?B?bFRhdzdEWndReGxsaHRSdlRGN2l5MytPZ0NJa0g4L21YVXN1RkNlaFZ2ektm?=
 =?utf-8?B?SjhBenQ5Z0VsYXhGWGZ1TTEzVnZ5a3F2ejVZT3Zucnd5aHl4TllWamdqVFcz?=
 =?utf-8?B?dGNPWkN2MlBLZEcxM0liWmlRdXRkbXVROVdPTWlzVmVXLy9mb3l1eUtNekND?=
 =?utf-8?B?UVBTcGhWZlRKK3pGc1h6N1l4cHFNOTE0T1dyYS95N0dlSjRkMmNMZDYwVk5a?=
 =?utf-8?B?YU9GR3BhYmlwQlhVNndJV2xUMnNkMXc1ektCRWl4VDlTU2dMZ2F6MGlmRlRv?=
 =?utf-8?B?WDFrb3ZGWEpjZzI3VnpnM2x0OHpaYkx6eHYveUF2RzBVQzdreW1LZHdxZE9z?=
 =?utf-8?B?dnpObTFEbUlCMWNPckt3cjFId2lEeFhKSzNDNkV3V1R5SDNYNTA2Tm1uRzJp?=
 =?utf-8?B?TlFrMHYvRXpNeWlTc09rTUJjUVpjb3JERnVaektPVC9xZVFmdmdVaHE2akJa?=
 =?utf-8?B?ZC9sUXRjOTJXOHE1V2ZZOFozdm9kTXJ5TjBHdCtqNUQwV3VWSCs2cUJYNy9E?=
 =?utf-8?B?UU92UU9SbTNHM3VidFJINGNWMzNoQm5OVWVkZ2RCWnBrb0xMTFZBcGZmQktN?=
 =?utf-8?B?anZMZmNLaHNTNW41NVVxdis1N0k1OFd2VW9tKzl0dUZ6dVlMMFNOOWhCMkRJ?=
 =?utf-8?B?cFVNbDRSaGRkbUdzQnh1U0NuQmptdkhGUHFER3M2dVN3RnVaU0EyUG5zZGs0?=
 =?utf-8?B?cFVWR2dKbXF3NEptcVQxMmR1OFhzcWROZmR2Ynk1L21BSnFDRzlNcjJlaDBo?=
 =?utf-8?B?ODVLa2tPTURCTDErMzA5emxkTGtCZHBQUERSM0llV2pGL0JRK1FrNkJPQzY3?=
 =?utf-8?B?TS9XREsxR2dHVjRFMlVzemVLcGJlN2lWRGNHTEdZdDdqTVgrUUhraFFaYnZV?=
 =?utf-8?B?SU4rUFBnK1NHNWV3Q0FuRW82amNIWmJpakNCOG5SMFh5ZWxsQ0Y0NWxQL3o3?=
 =?utf-8?B?OVI4QzhuQk96cDdPVmJTcWJhL1pDeC85S0ZlSHAzNmljQVhTZFR1L0VUajd1?=
 =?utf-8?B?cGZTMHBXdkYzQTg0NzRnbXdFb3RCLzBWUU4yaGx1dGxGZUlRSzNPMXV5cVN0?=
 =?utf-8?B?NGhSVWltcEVicGF0eE4yMmhDLzRBeEIxQmVCRGdFWFFnUHNVTEljeVlSUUpK?=
 =?utf-8?B?TXRtbHhSQitQNmRGYzhSN0RGTDI1S1JCRDFsNE5UZXc3QURyRzNINnQzUHlk?=
 =?utf-8?B?cWpqK2hwVEpDQ1p5aWdubWlQQ0owV29ETW0xQmxNWlNxUU1iNDQzUWpCT3dv?=
 =?utf-8?B?VXZnb1k2ZXpidERaMXJPb3RPN1VHKzNrVjdLSmE0QnVWUldJVHJqNGhXWUdv?=
 =?utf-8?B?SDFTWEc3ZTBZMkRqOFJERkR0d3UyMnZ4MWF6WlVTVWpZcTlFMUo2UHYwSCtv?=
 =?utf-8?B?OXVqU2h4UThlMENNZVNCcG1pc3RncGdDK3UzOG1ackZkWGdjaXpweHd0WHlQ?=
 =?utf-8?B?Z0UwWGJQcmNSMmJUUWpNQ016MG9WVlBQb0VUUmd3a1N6NGdDMEp5NGhseDZ3?=
 =?utf-8?B?OFhva3huQ21TMHEwTDVaRVFNVjlmcnBCSzNGRnVCalVlT1JxdkppTW01MjIw?=
 =?utf-8?B?NW1PUmVNM2J6dDBHUlpnN2dtU2tCYlRkY3JLQUFpZmcrOTJpdVUrdmNDT0dU?=
 =?utf-8?B?bkwxMjlvUnVOejdBTHZvTkVQd1F3clFsUS80RmZhcnN1VVAwMDN3aE15V1lj?=
 =?utf-8?B?TVBmeTlVS0l6emJBVW9OUmtuM1hsaXh4VkZLVWJRVzhjM3ZoQlJoZGRYT2I5?=
 =?utf-8?B?RUE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <2978897739217A4FAF4D5B58DFCE0A12@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: a74ba177-1086-417a-b126-08dc52f66101
X-MS-Exchange-CrossTenant-originalarrivaltime: 02 Apr 2024 09:22:12.2200 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nt4Xrb7FVyOQuX+mxFEMM7rber2CuGdxLz4LUYO/6jlm0UN2SthMtvtnrDFE3m5x8Hnkc4GXF7JjRszm/JSKksbil3tI6glYsE++QEQCgUI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB5084
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

T24gVGh1LCAyMDI0LTAzLTI4IGF0IDA1OjMzICswMDAwLCBNYW5uYSwgQW5pbWVzaCB3cm90ZToN
Cj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0tDQo+ID4gRnJvbTogSG9nYW5k
ZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+ID4gU2VudDogRnJpZGF5LCBN
YXJjaCAyMiwgMjAyNCA0OjAwIFBNDQo+ID4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3Rv
cC5vcmcNCj4gPiBDYzogVmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVs
LmNvbT47IE1hbm5hLCBBbmltZXNoDQo+ID4gPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgTXVy
dGh5LCBBcnVuIFINCj4gPiA8YXJ1bi5yLm11cnRoeUBpbnRlbC5jb20+Ow0KPiA+IEhvZ2FuZGVy
LCBKb3VuaSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IFN1YmplY3Q6IFtQQVRDSCB2
NSAwLzVdIEFMUE0gQVVYLUxlc3MNCj4gPiANCj4gPiBUaGlzIHBhdGNoIHNldCBpcyBpbXBsZW1l
bnRpbmcgY2FsY3VsYXRpb24gb2YgQUxQTSBBVVgtTGVzcw0KPiA+IHBhcmFtZXRlcnMgZm9yDQo+
ID4gSW50ZWwgSFcgYW5kIHdyaXRpbmcgdGhlbSBpbiBjYXNlIG9mIEFVWC1MZXNzIGlzIGVuYWJs
ZWQuIEl0IGlzDQo+ID4gYWxzbyBlbmFibGluZw0KPiA+IEFMUE0gQVVYLUxlc3MgZm9yIGVEUCBQ
YW5lbCBSZXBsYXkuIEN1cnJlbnQgY29kZSBpcyBub3QgYWxsb3dpbmcNCj4gPiBQYW5lbA0KPiA+
IFJlcGxheSBvbiBlRFAuIFBhdGNoZXMgZm9yIHRoaXMgYXJlIGNvbWluZyBsYXRlci4NCj4gPiAN
Cj4gPiBUaGlzIGltcGxlbWVudGF0aW9uIGlzIG9ubHkgZm9yIFBhbmVsIFJlcGxheSB1c2FnZS4g
TE9CRiAoTGluayBPZmYNCj4gPiBCZXR3ZWVuDQo+ID4gQWN0aXZlIEZyYW1lcykgdXNhZ2UgbmVl
ZHMgbW9yZSB3b3JrLg0KPiA+IA0KPiA+IHY1Og0KPiA+IMKgIC0gbWVudGlvbiBBVVggTGVzcyBl
bmFibGUgaXMgb25seSBvbiBzb3VyY2Ugc2lkZSBpbiBjb21taXQNCj4gPiBtZXNzYWdlDQo+ID4g
djQ6DQo+ID4gwqAgLSBkcm9wIHBhdGNoIGFkZGluZyBBVVggTEVTUyBkcGNkIGRlZmluZXMNCj4g
PiDCoCAtIHJlLXVzZSBmYXN0X3dha2VfbGluZXMgdG8gc3RvcmUgYXV4X2xlc3Nfd2FrZV9saW5l
cw0KPiA+IMKgIC0gYWRkIGNvbW1lbnQgZXhwbGFpbmluZyB3aHkgQVVYIGxlc3MgaXMgZW5hYmxl
ZCBvbiBlRFAgcGFuZWwNCj4gPiByZXBsYXkNCj4gPiDCoMKgwqAgd2l0aG91dCBhbnkgZXh0cmEg
Y2hlY2tzDQo+ID4gdjM6DQo+ID4gwqAgLSB1c2UgZGVmaW5pdGlvbnMgaW5zdGVhZCBvZiBudW1i
ZXJzIGZvciBtYXggdmFsdWVzDQo+ID4gwqAgLSBkbyBub3QgdXNlIGFscG1fY3RsIGFzIHVuaW5p
dGlhbGl6ZWQgdmFyaWFibGUNCj4gPiB2MjoNCj4gPiDCoCAtIHVzZSB2YXJpYWJsZXMgaW5zdGVh
ZCBvZiB2YWx1ZXMgZGlyZWN0bHkNCj4gPiDCoCAtIGZpeCBzZXZlcmFsIG1heCB2YWx1ZXMNCj4g
PiDCoCAtIG1vdmUgY29udmVydGluZyBwb3J0IGNsb2NrIHRvIE1oeiBpbnRvIF9sbmxfY29tcHV0
ZV8qDQo+ID4gwqAgLSBkbyBub3Qgc2V0IEFVWC1XYWtlIHJlbGF0ZWQgYml0cyBmb3IgQVVYLUxl
c3MgY2FzZQ0KPiA+IMKgIC0gZG8gbm90IHdyaXRlIEFMUE0gY29uZmlndXJhdGlvbiBmb3IgRFAy
LjAgUGFuZWwgUmVwbGF5IG9yIFBTUjENCj4gPiANCj4gPiBKb3VuaSBIw7ZnYW5kZXIgKDUpOg0K
PiA+IMKgIGRybS9pOTE1L3BzcjogQWRkIG1pc3NpbmcgQUxQTSBBVVgtTGVzcyByZWdpc3RlciBk
ZWZpbml0aW9ucw0KPiA+IMKgIGRybS9pOTE1L3BzcjogQ2FsY3VsYXRlIGF1eCBsZXNzIHdha2Ug
dGltZQ0KPiA+IMKgIGRybS9pOTE1L3BzcjogU2lsZW5jZSBwZXJpb2QgYW5kIGxmcHMgaGFsZiBj
eWNsZQ0KPiA+IMKgIGRybS9pOTE1L3BzcjogRW5hYmxlIEFMUE0gb24gc291cmNlIHNpZGUgZm9y
IGVEUCBQYW5lbCByZXBsYXkNCj4gPiDCoCBkcm0vaTkxNS9wc3I6IERvIG5vdCB3cml0ZSBBTFBN
IGNvbmZpZ3VyYXRpb24gZm9yIFBTUjEgb3IgRFAyLjANCj4gPiBQYW5lbA0KPiA+IMKgwqDCoCBS
ZXBsYXkNCj4gDQo+IFRoZSBhYm92ZSBwYXRjaGVzIExHVE0uIEZvciB3aG9sZSBwYXRjaCBzZXJp
ZXM6IA0KPiBSZXZpZXdlZC1ieTogQW5pbWVzaCBNYW5uYSA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+DQoNClRoYW5rIHlvdSBBbmltZXNoIGZvciB5b3VyIHJldmlldy4gVGhlcmUgYXJlIG5vdyBw
dXNoZWQgdG8gZHJtLWludGVsLQ0KbmV4dC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0KDQo+
IA0KPiA+IA0KPiA+IMKgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5o
wqDCoMKgIHzCoMKgIDIgKw0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRl
bF9wc3IuY8KgwqDCoMKgwqAgfCAxODgNCj4gPiArKysrKysrKysrKysrKysrKy0NCj4gPiDCoGRy
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyX3JlZ3MuaCB8wqAgMTIgKy0NCj4g
PiDCoDMgZmlsZXMgY2hhbmdlZCwgMTkzIGluc2VydGlvbnMoKyksIDkgZGVsZXRpb25zKC0pDQo+
ID4gDQo+ID4gLS0NCj4gPiAyLjM0LjENCj4gDQoNCg==
