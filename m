Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mD1PEq4DEGqLSQYAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 09:20:14 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A64205AFEC3
	for <lists+intel-gfx@lfdr.de>; Fri, 22 May 2026 09:20:13 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1867510E67D;
	Fri, 22 May 2026 07:20:12 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="StTKYUIG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8E70710E67D;
 Fri, 22 May 2026 07:20:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779434411; x=1810970411;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=slq1l6sc9FputqkosoEErfmItB/KCMi2yUCegnIsqvw=;
 b=StTKYUIGq9H8IQkR4g3HK/7arK5oXC3zGBri1iDXSjTiP97o42A2EGB3
 fyVe5mFo5hQQOcFxGj3tkljvjV0Tlrh47ESkoHJ+sPovlA/ZjDLIxPu8B
 kflD1vX6fc7jzqCNWLAYMwHCzgw4ZD0aBf9gvK4YSbpsGmnjWVP1O92Jn
 KM1+aDtuno6D/l/qWLGWn4Iqt0OF0izyI0bunGSFbsoXzqTlTKKlQLrfL
 qOi2SksaOgHZ1mDC8DAD3HUOu5hXuCNSrwsS5R8WI6aBED3+jL9VCZ+sj
 QL9d36IMJVqtbLM9NBAvxdI7/JIkxL+HayOenFWZhQdzmtvVLORyaCYXe A==;
X-CSE-ConnectionGUID: gr+dmzqcTV++Zu+d9hBJ4g==
X-CSE-MsgGUID: 9wOpVSCSQkaxTQ3ISyRN/Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11793"; a="79511812"
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="79511812"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 00:20:10 -0700
X-CSE-ConnectionGUID: U9eGkmHZSueE1m5/h5iNeA==
X-CSE-MsgGUID: KmAM3V5zSKWjfW5ARMfhMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,161,1774335600"; d="scan'208";a="241066849"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 May 2026 00:20:11 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 00:20:09 -0700
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Fri, 22 May 2026 00:20:09 -0700
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.25) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Fri, 22 May 2026 00:20:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=knQBB07JapfRT7Qz/2fq6SGQ2XlRvjGYpuOWhzFvW+1qAad83hU06J/Dc/baGZOdWLlZpqUnWDDcOLHz2TAjdoEmOgZ7yx5sC9ru8t8z48l2K0TYlYuOFFs8f4e1vzBrtY7tK4xlLvDasbl9QGjP3ebJkMEvgUf8KKEYIygn0uA3qoodxoQ/7WB1lneBzyPPl3lMb4QwZU8MUNhrOhRAlL9GOmMfxUVnkYMdrLZzBjb/PNNehnIkzQ3YRQ67qms84ZeL/NeK74ximhVyGh8qisSJ2T63j042YF4kHQHcYYyj0jQKc79HU4w0H636QfLGeIIfTEXsCWWYZufkahB2Og==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=slq1l6sc9FputqkosoEErfmItB/KCMi2yUCegnIsqvw=;
 b=l6EFgaMiwONFs24vTs98hCa3/4+jK8ljiJQaJrKjuMZYDmvV7wRstWi1Twted/s2P3tDUdUgPsfHmjQMeRMtPVYFNx1vnHgdcjj9qi26LpYf4+ZiN0BZt3DXes5iagbFOJKpnJ1GLEXgOD/3OkNmq96usz6DTAfjUZ3oa2jscKkm32g+jrgXKuSJG4HI4wxOGGAWrRsK43r0aUXmqHYCcCqIqKutL6vJm/3hL2sMRNLDYOMqCsoztblE8iSmPIso6FdIon/H9jrKgiY58NgnQTCIOn8Z+CzacxlwCStHgl7DvKsvfIE6ufc+jtJmlGLkIABYOUiEnfIbN2ooRBY+LA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 BN9PR11MB5322.namprd11.prod.outlook.com (2603:10b6:408:137::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.48.17; Fri, 22 May
 2026 07:20:07 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::9086:5e0b:ad24:762%6]) with mapi id 15.21.0048.013; Fri, 22 May 2026
 07:20:06 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Deak,
 Imre" <imre.deak@intel.com>
Subject: Re: [PATCH 3/5] drm/i915/dp: Add helper to set common link params
Thread-Topic: [PATCH 3/5] drm/i915/dp: Add helper to set common link params
Thread-Index: AQHc5rpVN/sFqoQBLUWWTePyrHPrg7YZqVoA
Date: Fri, 22 May 2026 07:20:06 +0000
Message-ID: <39796830dc8a0218f58fbbe53dc7813a081c633f.camel@intel.com>
References: <20260518112427.2460725-1-imre.deak@intel.com>
 <20260518112427.2460725-4-imre.deak@intel.com>
In-Reply-To: <20260518112427.2460725-4-imre.deak@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|BN9PR11MB5322:EE_
x-ms-office365-filtering-correlation-id: d4af162e-da53-4018-417c-08deb7d28cf0
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|38070700021|22082099003|18002099003|56012099003|11063799006|4143699003;
x-microsoft-antispam-message-info: Gq8hD0rcklIPQlxs0a1cWjiPasc58TWMBV4O2jJejQMlvVQUVwiF4ZrkB1d+VxnZnaFviCq3eGUGIKyNstAch8GxUIO/a2BMGWeTknqmz4fu1nCP19IDXYg2YLRaYLpiWuYy0OAYvzzJJ3dHnAsevmxUI2YhDc5g6Rhdd71BAM8HlDmewPvSTqJJ597jB4N4AfsKBsNyDFMbDrcaFHHhNYYRbsMBHIggidWls606OZQHflu8Y57HmeCNSChSTs4O+IE+E9wPSu8tLIf2MkuzTSOv3XjH7YLd1cFv1OzsdMbkcxGAiGU+zQ53dzCZ6bGwLR29p9F2w1KYeaxGnGAQZMmkQUo+j6wm7I2Hw7zMUvh5pd+Q39JDlISSBhdsvtqiFk103zekNZ51R+442dYRB1YUdHvyfKVnbRBEp60gGVYlXXPMpTvtOvakjAsVwo5JUF07XaQffOYW1Yx1z1IvX9iUI9cBTXKS4Qh9UyGD1YkiorBHLLg91YgLmN6tJlW5iZ5n+zTQ+ZVMw03c2Tb2XY2jsGEwgvAMJSQsbXieBWIutGmRNpPam7j2a3gwxWA2CzPZHxDmeOiEpgjmfRYc5g4whoTaHgXw6W12deIvFgU5nop2Y2uEVnwMcmgcHrr/wnJ4T8NZUAPVAKZrqLR0PVkh4agXsTbP8xQH328gdZtF2+MoVi3Gh6ldJGfnYMZ+yR2di3gMnfV/VLy9YwILq1thcFaILmAhw+gJ9Z9el3DJmBug9L2RCabJ8PDYdbbN
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700021)(22082099003)(18002099003)(56012099003)(11063799006)(4143699003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Yzg4bWwvUXRtQjI3L0V4YVZ2bWJieWg5YWFXRHhYU1QxSFdPRWpST2hsM0kv?=
 =?utf-8?B?TmUyb0d2NCthN1B5azR0WHdCWTdJbE9EOUZTMEJLdG1XMC9MZURKaTFPazdo?=
 =?utf-8?B?RUpVSVlTZm92Y2xsbHN3WHM1Zis2d0I5MUJqdHdoa1IwNm1udDllQ2NyWjNx?=
 =?utf-8?B?RW9SOGFGMmlsSzd3VDl3bHNxNHZTUlBWQ01FZzlBbVV0cXdBcm9IejNSZ3ha?=
 =?utf-8?B?N0JCeXQzYzZIS2ozVnRlYmtaMHJnMjI5RlI3UC9IWHNHOW5ULzU0dlZpV0l5?=
 =?utf-8?B?TmV4ZVZwZHRadEpqUjMxZCtKeEFRakpGcHZ3eUZrQVptVFlSNitKRm1va3FH?=
 =?utf-8?B?cXNVTy83bnVCUFJqbVl0cG5lcmw3a1Z6WHRqUDBuZkptVGIxTWVxK2dRa0k2?=
 =?utf-8?B?VlZlUTY3aDFLSWpZWVF0NVlRdmcvWmZNWnVlU0RoT3pHVDJmYXU0OWpodXEy?=
 =?utf-8?B?U2JIc1NQNlVwTE9mN3k5Z3laN3lITE1uYWhDOEFuYVBTSTEwMkhEekUwaXph?=
 =?utf-8?B?SkRmMnlQS3c2TlAzamhJTklZbEhVWWRuNzNib1hvdWxMeXVsbFBsTjIzVUFN?=
 =?utf-8?B?bGQ4RDVSb1Q4YlpxcnlZMnVJMFREVC9TaVNLWHJsajQ5bGRvenlKekt4VUwx?=
 =?utf-8?B?Z3RpdzhQWDNFaVNVbXVlZmZBQ0xPeDJ0ME9XMjRNS0h1dWtzZ0pOb3poanRn?=
 =?utf-8?B?T3E0TGZIVkR0ZXZKQmYyUG5SRDNtdE9DQktjSldOZ3pTQUEydWRJbmptL1pq?=
 =?utf-8?B?eDdaSGlyMERCTXBVVVFUckhaUHdva2w5eE0rQkVlcnRKNHNBeEF1dTRIM3hq?=
 =?utf-8?B?bkVOY3VydTFHbTczNW56T3dNSHNqSm1OY0J1MVZCa1RONjZLQ0lXSjYzVGZY?=
 =?utf-8?B?eDFEejdWZWNOSHB2SXl0cUoxOHkzTmNtOW53VmVhSXJPNWVtWFVXK1B2SVVU?=
 =?utf-8?B?ckZ2ZFY4WjNrQWtJc3pCSXZENVREOUZXcHNkMStaZ2tQN0ZNeTdCS3FGVEMx?=
 =?utf-8?B?SUVEdGZ2NGFudVBtdWk1aGpZblBPVVN6dHp5OGc0dUpXejFPNFRNbnVVeTlt?=
 =?utf-8?B?akNBZmp3MEFRUS94emRWdk1aYjMxVGJlMEJFR0d0NjMzc0tBalcycjBzWXhm?=
 =?utf-8?B?L3gvZlBmWVRyT09jbnFNeHZFSGE1QVEwT1I3clFwYk1LTERoZWRYemtMaVNX?=
 =?utf-8?B?Q0p1NnhXK1Jab3FtMGVFeGZULzFwcVpqako3TitPWnpJM08wRTl5cjd0RHVP?=
 =?utf-8?B?dS82cCtMTlhWNUp2MGVjV0h4SU04L2xVUHA1V0FQekM5WXdOeFgvbGF5WEJX?=
 =?utf-8?B?Uys0K2ptWWZQeVJ1d2puRFBHM0Z0YnRYRDJVQjczZ2xERFVGSXF2eWxuVGxL?=
 =?utf-8?B?RW5uNEpvZVoyQzQxUFJkUG4zMHhkWlRuQWdwRkFoZjZNZTlEQmlDWWV1NGFl?=
 =?utf-8?B?Y1owbzUzODdJbTNXSVZzaFBBVlRUbnRMR09xdGI0N2lRckxwRG9haFdwYnA2?=
 =?utf-8?B?RzcrVW1oZVRBaERaUmVkaDJ1dlhubktzU21xWEhBcU1tNGRHWlJCSUQwekh3?=
 =?utf-8?B?cEVmWnJuMS9yeDB2QnZoT1FJL0JzMjEwbTV1UzVyTEJnUVVZSm5TcitIWWhC?=
 =?utf-8?B?bHhlWjREV1graGZuQVNFL1VMQjdWRUozZ25xZVFhRElhK2FOU3Q0K3FrcDVV?=
 =?utf-8?B?U3FTMGtVSUdaWkVDSk16NlIxQXR1S0tJTmlBWTBGaHRtNmpPTWdSTytXRVZ4?=
 =?utf-8?B?UUxnOWp6SWxMOHdEZ2ZLQjdWeWpkNjNKOGxxQTB3MC91dXhheUVUWWtUSnRS?=
 =?utf-8?B?RUxUVFFHNmd1VklyTHdZSXArUzk3YzFxa2Q0L3dscWd2U0wrcFdJazdlVzZu?=
 =?utf-8?B?a0xqV0VkSVdxTjY0Vnk1bkhQUjB5Ny91OHN4V1Mrbm9KV1cwSzR5SXZ6ZDFo?=
 =?utf-8?B?RExBSUVLN2pFWExMSkp4and0WGZxZ0doYU1PN29xSlgvamNXUmFGclYvYlBJ?=
 =?utf-8?B?QTZ0bUZyUDdhY0xCYWUzQWxMVld4S2UxNDEvU2FpNXA1OUFFcHdhc1hZaXdj?=
 =?utf-8?B?N0M0U25XdFJiSENPRmp3OHV5a1g5KzB2YXZPUlZ5ZmF3TUhNVzkrZjVRWkFC?=
 =?utf-8?B?aGJHQTVZTWR3MTdFOHVLeUw1czcrQUhRWnBYemlZQnY3R3loYVJwT04zN2k0?=
 =?utf-8?B?R2luOWt4L3JyNmVRL2doelBGNVdsWDhOMmpUVnZ4Y0IvZVpFWFlRL3QyNGlW?=
 =?utf-8?B?ZXBTYklsTFFncFM4aDhQRytpU2JaVmxpVXRqNXBMTmIycnBpSWdWaHA5bENs?=
 =?utf-8?B?dEIvVlNmNWR6SWRSekJDN3VJVWI5WkxLRUJPa2V0WmhFcW9xTjcwcHRUbDQ5?=
 =?utf-8?Q?SyylzGS3lFsNxyCo=3D?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <6197AAC413162D47A68AD07296676D71@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: JUP6UBboge2NhvGW/eQFYuRycblwVItM7tOWQjdiQkkZ2p6jTy+MybzHmsJe8ri1W3PH/ZCTuzpVMlonaXjJ3ohHR/N06WC/kVuOR8BUYdHrLer09kCp9Wgsz+Ui5tYGA+vPuJaeO31aqt5ZMlgpOqQFREbyXOUXdjDqFjaOdWUvTZIbSlF+DKr1lXLUF2wwaAYtxfPOXO5USMoCtF8um9MHU5aJotIoOivnQZ5M/nRYTSOu1MYWXP0CbVnQDo4qBFGGCCsdBqapYMEHxVWGkfD+Gj0f9zPIHRRg6Eg6OBOkU4juozsg0OI+6D1LvNRYaN9k+YyD496cy4d+/n1hhA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d4af162e-da53-4018-417c-08deb7d28cf0
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 May 2026 07:20:06.5201 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 3YMdVjuLOtM0JArAsd/pvBkIXaN8SGA8UF+i8sSrn2zABILotTtDBfeiHGeXid8sAFLth3qPcMzqb90xFM+t4LRO7Fp8ftqw9QWH62UckMA=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BN9PR11MB5322
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
X-Spamd-Result: default: False [-0.21 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:dkim,gabe.freedesktop.org:rdns,gabe.freedesktop.org:helo];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.997];
	FROM_NEQ_ENVFROM(0.00)[jouni.hogander@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: A64205AFEC3
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gTW9uLCAyMDI2LTA1LTE4IGF0IDE0OjI0ICswMzAwLCBJbXJlIERlYWsgd3JvdGU6DQo+IEFk
ZCBpbnRlbF9kcF9zZXRfY29tbW9uX2xpbmtfcGFyYW1zKCkgdG8gcHJlcGFyZSBmb3IgdXBkYXRp
bmcgdGhlDQo+IG1heGltdW0gY29tbW9uIGxhbmUgY291bnQgdG9nZXRoZXIgd2l0aCB0aGUgY29t
bW9uIHJhdGVzLg0KPiANCj4gU2lnbmVkLW9mZi1ieTogSW1yZSBEZWFrIDxpbXJlLmRlYWtAaW50
ZWwuY29tPg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBp
bnRlbC5jb20+DQo+IC0tLQ0KPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYyB8IDggKysrKysrLS0NCj4gwqAxIGZpbGUgY2hhbmdlZCwgNiBpbnNlcnRpb25zKCspLCAy
IGRlbGV0aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZHAuYw0KPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxf
ZHAuYw0KPiBpbmRleCA5YzUzMGVmMTJiN2NjLi4wNmJmMWZiMjNmYWZmIDEwMDY0NA0KPiAtLS0g
YS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RwLmMNCj4gKysrIGIvZHJpdmVy
cy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+IEBAIC04MDUsNyArODA1LDExIEBA
IHN0YXRpYyB2b2lkIGludGVsX2RwX3NldF9jb21tb25fcmF0ZXMoc3RydWN0DQo+IGludGVsX2Rw
ICppbnRlbF9kcCkNCj4gwqAJCWludGVsX2RwLT5jb21tb25fcmF0ZXNbMF0gPSAxNjIwMDA7DQo+
IMKgCQlpbnRlbF9kcC0+bnVtX2NvbW1vbl9yYXRlcyA9IDE7DQo+IMKgCX0NCj4gK30NCj4gwqAN
Cj4gK3N0YXRpYyB2b2lkIGludGVsX2RwX3NldF9jb21tb25fbGlua19wYXJhbXMoc3RydWN0IGlu
dGVsX2RwDQo+ICppbnRlbF9kcCkNCj4gK3sNCj4gKwlpbnRlbF9kcF9zZXRfY29tbW9uX3JhdGVz
KGludGVsX2RwKTsNCj4gwqAJaW50ZWxfZHBfbGlua19jb25maWdfaW5pdChpbnRlbF9kcCk7DQo+
IMKgfQ0KPiDCoA0KPiBAQCAtNDkwMyw3ICs0OTA3LDcgQEAgdm9pZCBpbnRlbF9kcF91cGRhdGVf
c2lua19jYXBzKHN0cnVjdCBpbnRlbF9kcA0KPiAqaW50ZWxfZHApDQo+IMKgew0KPiDCoAlpbnRl
bF9kcF9zZXRfc2lua19yYXRlcyhpbnRlbF9kcCk7DQo+IMKgCWludGVsX2RwX3NldF9tYXhfc2lu
a19sYW5lX2NvdW50KGludGVsX2RwKTsNCj4gLQlpbnRlbF9kcF9zZXRfY29tbW9uX3JhdGVzKGlu
dGVsX2RwKTsNCj4gKwlpbnRlbF9kcF9zZXRfY29tbW9uX2xpbmtfcGFyYW1zKGludGVsX2RwKTsN
Cj4gwqB9DQo+IMKgDQo+IMKgc3RhdGljIGJvb2wNCj4gQEAgLTczNDEsNyArNzM0NSw3IEBAIGlu
dGVsX2RwX2luaXRfY29ubmVjdG9yKHN0cnVjdA0KPiBpbnRlbF9kaWdpdGFsX3BvcnQgKmRpZ19w
b3J0LA0KPiDCoAl9DQo+IMKgDQo+IMKgCWludGVsX2RwX3NldF9zb3VyY2VfcmF0ZXMoaW50ZWxf
ZHApOw0KPiAtCWludGVsX2RwX3NldF9jb21tb25fcmF0ZXMoaW50ZWxfZHApOw0KPiArCWludGVs
X2RwX3NldF9jb21tb25fbGlua19wYXJhbXMoaW50ZWxfZHApOw0KPiDCoAlpbnRlbF9kcF9yZXNl
dF9saW5rX3BhcmFtc19mb3JjZShpbnRlbF9kcCk7DQo+IMKgDQo+IMKgCS8qIGluaXQgTVNUIG9u
IHBvcnRzIHRoYXQgY2FuIHN1cHBvcnQgaXQgKi8NCg0K
