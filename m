Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 657A39E92E8
	for <lists+intel-gfx@lfdr.de>; Mon,  9 Dec 2024 12:54:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2D38910E158;
	Mon,  9 Dec 2024 11:54:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ewgVjxaz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 61A0A10E158
 for <intel-gfx@lists.freedesktop.org>; Mon,  9 Dec 2024 11:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733745262; x=1765281262;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=OdiOMiDHyyzo1CdXaAjsTdzCXp8qrAV0a2QaLNxuqBs=;
 b=ewgVjxazjm2y7JWZzxGW+6lujjP0UVxk2D7Gei423DHjuKZ4AlFslA4Z
 FKIhz2ZyvFlSFY7TIfs8O/te6+KQLAhOxpH4DSV+hrJdYOrn5BaJJ15iv
 4C7rkijfx8mgNCOCO6fN96eAY8VwIzyKBjPPQOJScbR0V+towSIVWbclQ
 jv3ctqHOpCyLnj9prZTYCBusEXwcId/6P6p7SApgDaU5KggNXIDQNN/ax
 k5tkrHkmY4iiIBWMf/lVi+VLzihy6eR9G9s8z3Plwvy7kVlZCN5AGhYFV
 sUjtPHQ5NTk5k5ff78CSAh94LX3cPv0ZW+Usay3saBUg7q3fEealVuZaJ Q==;
X-CSE-ConnectionGUID: 2fTsWg50Tg+R6OJLh1pFNQ==
X-CSE-MsgGUID: XZqFx7IZR1GpLqnr/6vN+Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11281"; a="44505476"
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="44505476"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Dec 2024 03:54:22 -0800
X-CSE-ConnectionGUID: 6SCTtkg0Qlq2Dy+rchYKQg==
X-CSE-MsgGUID: cbtCkkT+Rou9qdMb58ssrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,219,1728975600"; d="scan'208";a="94881214"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Dec 2024 03:54:21 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 9 Dec 2024 03:54:21 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 9 Dec 2024 03:54:21 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.42) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 9 Dec 2024 03:54:21 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=R1eP12ChRDO0Asi3TXb5VYClXzSRye4yI11RXKhhoSi6TkrHS/7X5M3igxYno6EBNoS8nN6fRNR3G4gRpJUBlZmTMV/m5GSGLnMfKqE6wf+4cZznHobDBvormQAomK436JldoUaWxwaABjj12xuXc3mRMSJLY7E3VRWYpWb/QXq2KnN83m7s4utV8PX4za5q1nFNJM8l+uuafOKZ7a8AfAorJKo2SMgOQOVfYz5anrivguqad3CDdUiA4HyeSV/ClABJpAuavr+WQkJ9INWMqhGOpeyavp/+DdW4YsqeTlDHbL7gz5CaMa6VtRrJcFXUBCuNSqRN+c+kIvhBoREO6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=OdiOMiDHyyzo1CdXaAjsTdzCXp8qrAV0a2QaLNxuqBs=;
 b=iA+RdaLq6666BzSn8HBwxN6EsAnLsS2Oy829DQEkVfyR/QWMeA6bw2Nlo4RrJzEoeadJEmbR/pBuXEP87+eALOQ8z/i4sSQFX03J2sL8HV+B5BNdAc+2N7IvmfTiuMLGM+vgFGzzcBNrlZFiY5iR/XQSMRJlUcafW562xwQ4cpI9TrZ+oT0bKi0cjagsPX9Zi83h5Bzl8dhEAVxexIxR4BU6d96ten9dXqsUo2YLig+3GlmyoM6l9h8FZI4xVs+Z2gFIh2ywYrodAGBgy5rNDFSDwuHYFL+pXKOcDeturM2KmXokLeuIeWfQ4GVBnm+ov3i5akoMVoH72cbF/DYFwA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from BL1PR11MB5979.namprd11.prod.outlook.com (2603:10b6:208:386::9)
 by BL4PR11MB8823.namprd11.prod.outlook.com (2603:10b6:208:5a6::9)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Mon, 9 Dec
 2024 11:54:18 +0000
Received: from BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372]) by BL1PR11MB5979.namprd11.prod.outlook.com
 ([fe80::b0f6:fbc:94be:2372%7]) with mapi id 15.20.8207.017; Mon, 9 Dec 2024
 11:54:18 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Nikula, Jani" <jani.nikula@intel.com>, "B, Jeevan" <jeevan.b@intel.com>
Subject: RE: [PATCH v2 1/2] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Topic: [PATCH v2 1/2] drm/i915/lobf: Add lobf enablement in post plane
 update
Thread-Index: AQHbRjaRCNplQRjFvU62VhAJExIXCbLdnkyAgAAtWzCAAARqgIAAAhgg
Date: Mon, 9 Dec 2024 11:54:18 +0000
Message-ID: <BL1PR11MB5979323382ECE7A6F3E39E41F93C2@BL1PR11MB5979.namprd11.prod.outlook.com>
References: <20241204100328.3738778-1-animesh.manna@intel.com>
 <20241204100328.3738778-2-animesh.manna@intel.com>
 <59438896581fbd20a460c6243c1116bfec31e480.camel@intel.com>
 <BL1PR11MB5979ADA574A73E61AE34E2A2F93C2@BL1PR11MB5979.namprd11.prod.outlook.com>
 <891038f168e400cf6fdedea89be4264959242281.camel@intel.com>
In-Reply-To: <891038f168e400cf6fdedea89be4264959242281.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: BL1PR11MB5979:EE_|BL4PR11MB8823:EE_
x-ms-office365-filtering-correlation-id: 7e63423e-d9cc-4e6b-6dbc-08dd1848368b
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?U05PRDFkM1U4aTJaTE5IckFDZVIySDRJTUREb2k3eFFtWlAycjRISXNWVVBv?=
 =?utf-8?B?YUEya3dMaWN2QjVoU000dXBlNFlYQkM2cVJpV3FvRUYwRkVxYnluV3VycTJ0?=
 =?utf-8?B?aVJQcGJ2WVpLRWMrb0ExT1V0czEyRXFWYi8xVkU0RXpEb0hTMDNZMHVMSUFj?=
 =?utf-8?B?emowVWs3Q09pUXdVMXJOTE5ZcjhrcndnNnFmSDh2OVk1aGFqcTRJN1JHNHJU?=
 =?utf-8?B?RTU5cHZKdEZ4bWJ6UVd6cEUzMW9pdnRCODRzQjRBYTA0NnZjd0IxbWljbHRl?=
 =?utf-8?B?eHlma3BidktIeENHcUJTTGJKUUxiblBqQWpueEU5Z3Fvd0l5clpBTUZ2d1lR?=
 =?utf-8?B?dDJrelJkeUVzLzgrZk5OTDYvVlp3SU5aemZ5THBzeEptbkJwNk9IT2pwYTdO?=
 =?utf-8?B?RkdPanplSHJlT0JaMGVpN1JuUkEwUkxzK2NqcUxXb3dJUi8wWkl3SzF2Y0ts?=
 =?utf-8?B?d01iQjFsUmJGZ2tDbmRrTXlEMW94dHgva0l3UDQwa2srWHB5cG9WdFNoS3dZ?=
 =?utf-8?B?VVhLRm4raUVpdUdGay9IUFg0YlhmWWVLTGVQNU5qR2JNTmx3NnNucVFPUUZk?=
 =?utf-8?B?TnJpWjcyYTZIZ2h3NUFVSElOaUdKalMxdmxtOG1PdlVyU0JCbEpoQmJEZ0tx?=
 =?utf-8?B?U1cvWDRTUWdEUlYrY2FpTUhLdkJ4QjdRRVorM3lKWjRkN2k3QncvM05qWUVk?=
 =?utf-8?B?RHFDMDlHK0ZKWlR2VXdMUFhIY3B2TTBCQjdjTEZvOFpLSXdJVmhGYjZaV1Qx?=
 =?utf-8?B?Z0lzMVNTT2owN00rSTdLK2JsRnl5TXhqakR1M0JwN2FvNFlMUkxDWVU5eVp1?=
 =?utf-8?B?UllyZ29kK2k5WDdWQ1htS0JtdFpSWnBwMjZDNmhqTnNzZ3hPZHY2bHdGejdz?=
 =?utf-8?B?Um81L1dVaVZ3K29YamIwcGd5ZEthOTdMdlMxUmlCRHdINkNxM2lMaVhVOC9N?=
 =?utf-8?B?WGF0UC9qajlsd29mL3BVMkMyekx5ZXJKcUJTaWlVekdHK3A1c1BqUFhtai82?=
 =?utf-8?B?cHZGd1MwYjlvNTJjNlVVT2EzbDFnckRZQVYvRWRKcXVDQmZNOEwwUGl5R1M3?=
 =?utf-8?B?VXZ1cDhhak5RWTZkWWRiK1UzaEQ1MlpWNmVXaUdsRzk4bXh0Sy9naHBwd3VG?=
 =?utf-8?B?cnJaeGRQWnlGeVJubEFmVXJKWkhQVXlFbXJ0a1hsZFNiOXBsOXUzWURUMkUy?=
 =?utf-8?B?YkhGdGZ3NVVNeXdGQmFQcmhocVlRUmtZUS9FVEl3T0gwVkcxdm9yaTI3MEpn?=
 =?utf-8?B?OUdqdzBVYVJFdnFJWFd6VkJCYldRU0lJMDgycG5Db2JPdWc4REVaQjl4Vno3?=
 =?utf-8?B?L1FEWDd1ZDhicElOSVZDd0YxMjFBa1RUcm1OQjRmRk95aW56KzFBZjRKdUN2?=
 =?utf-8?B?ci9PcVZIOEc4U3p1SE9nMHQ2dkRrTkVPWGt2TVNvalNWWFBpZ2lPQU5IV0Ry?=
 =?utf-8?B?TS9iTXBTaGZpcll4TU9rdUxiVWJXclREQ0hDSzI1dnpaRlRRM08wcFl5QlBM?=
 =?utf-8?B?QnVDQ0pNMDZVdDRDQldiNmg1MC8vV2R0anNpZE54cVRxSjBPU1QwcDdGL1d0?=
 =?utf-8?B?ekQ5Zml6c3JQSUVkZzZabjBuZjRwSEhodTBaOWpjbnYzVkxuODN4K2dLWXZY?=
 =?utf-8?B?SUNIaTR0MXNqODhkaHVXNDdESlh6RFdYbWpGb0JCaXZHcmdZTHM5QlYxVC9K?=
 =?utf-8?B?WFliQ0pxV0VwYWp5c1FIbEg3TnhDZ2liRnR0WnpzdzlZWXdjVkNsS2FwcVZP?=
 =?utf-8?B?MlBQdFdoUDBXa3Q2aU0ySDRRUXNSZHdXZ0x1NlVpZWZNbDlCV3hYNmZIalNa?=
 =?utf-8?B?Q2dUWDZndmZqOUhnVHF1aEJJSDhmTDRXanhpK2orRXlCdnFEbU41K0ZlWWEr?=
 =?utf-8?B?UVR6eVdvbVgrWUV2RFdzdklKYUJRUDZpL3Y0NUNlRFVvbVE9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL1PR11MB5979.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SDEvNERtSFhVYi9QMkp4WGZvN1dpVjdlMGhMUzdzdXRueWV2cXpXQklVdndD?=
 =?utf-8?B?dDZYcFJCN2F2MCtrbWRhalYwczRXVEdUdkFrSGdyaTJsV1FGM0NPZlNwNzg3?=
 =?utf-8?B?MC9HZHNSUnRCRHNFN0NsdzBZTmpCMm9hUm9vRVhzdUtuVzJTWGl4OE9uOTBx?=
 =?utf-8?B?SC9kTDhRTGM2VGNjNk9xN3VjaHpJRzhkKzR5SmNqUEI5UVpHTUF5em9YQ1hI?=
 =?utf-8?B?eGh1aEZVK3BXenVzeVVaTWtzbHZCWkVKQTdhZDJsMXZLMS9VamdGd3R4Y2Zn?=
 =?utf-8?B?cGJGZ0ZVWTNraFdHYWlYYklUYkl5Rm8wa3Q3WlkwRzVQOVF2UXlJVGdETmdw?=
 =?utf-8?B?TTRveTZ2S2crcEtBbldsZFZYQnhBeWU5TmJPQllTL2NKTDYwZzlSU0wzU1oy?=
 =?utf-8?B?clhabURvWmp1Ty83Q0pIU1l4cUhkMFdBNkNLRDdOcUZUeHdnZjhlcGxQNTNR?=
 =?utf-8?B?M2JqY2VvS2N4OG81WDZLenREN1ZLQXFJQ3YzUEFnS21IelRhMWhkanpaZkFM?=
 =?utf-8?B?ZWZobnVFSFQvdDIwSkc3NGswL2VXamFpQXd0SWVYenBybjI1MnI3NXBYNXEr?=
 =?utf-8?B?RHgrR2tHdSt2SGhpWnhGMXZxUzltSnM2eUR6VzRLWFBlaGswRnFKRU5KMlE0?=
 =?utf-8?B?c3lXdTRZaWJ4OG8xdGY3cjJNVFJMTnVtOUgyUXBDY3ZzeS9OR2ZIeXRGNHZa?=
 =?utf-8?B?NWU3T1gvWHM4bHZzdmFrUXJuMHpSVmhjcmozMjRTNitBSDBXNXk0Uk1ZUmVv?=
 =?utf-8?B?TXhQRXNiWTJwa21reFNkNXBrdEZ0aXp6M3d1Y1JCWnMrMHMyZ1lJbnd5eTUz?=
 =?utf-8?B?b1pHbGZJMHF3VFdoYlBKMjc3dkttRXlYVGhmWU1zL1g3VDNaU1VpZ050dkdy?=
 =?utf-8?B?bENRb0R4eFZ3MTl4Q29OWGtDbm92NGl0OEpzbFpxQkg1MjBuNWlkakFpc21X?=
 =?utf-8?B?SGVTNk9RWjdZTVlpOVpuTGdBZ3p1UVZsUTlIVWo5ZmxITTJZcWpwa09PMjB1?=
 =?utf-8?B?Y05QQjdPNGN1aUFHRytLMUkwTlB4cmZrbFNBMDh4YVRHalhmNG9RN0R4VmE1?=
 =?utf-8?B?cXNHaElKbGp5cTR2S2JGNkUyYXJRQXRUQk8zbXkwWEZUVmdXY05oWjhHVHhX?=
 =?utf-8?B?NGVwcnUwdFlsM29zc3kzSDRSU0c3M0FhQ0dTdmNnRFFwdCsvQTdzSFBmQlRT?=
 =?utf-8?B?TlMvQTlmU3pVZ1h0TkF6WGVkZVkwMjJkY3FVMUxWbEdZOXpOanhCY3h1QUN4?=
 =?utf-8?B?VWFEcGhIUHVsQm5MNVFqS3VPb2FvVTZBSVNDeXFFU01lOFQ0eExxc05SK2Ji?=
 =?utf-8?B?Z3kzSmRiaU1JaDA5RDM0M1VvYkNwU0FjTTNLamRqbFpnY0J5aFdVMURDbjJp?=
 =?utf-8?B?NDdRV2ZqUFNRZVJRUFptM24vOEM4MlpSamRTemFsY25ob1dlS0hyeVM4Y2JJ?=
 =?utf-8?B?c3FneU53MERpZ1ZYOGNmTEZaUmErMk5mOGtJWDlXK3JpRjYwZ2RnOWN5WlF5?=
 =?utf-8?B?R3FxTzJwWXZRN2UrWWxoZjlpdm43T3VnTkFhQzBTU1I5Mk9hbjZyT3JlTXM4?=
 =?utf-8?B?NllSMU5na2Qvc3lWanhRSWtzRXp6RHl1TXJkd3FwLy94Q053S1Vzd2V1YzNz?=
 =?utf-8?B?UmVub3Q4aXhLa2Vqc1ByZXNQREZJczU3bGNXUTdJYjR5VC92WC9vWGtWQ0JU?=
 =?utf-8?B?ejhucTZpK0pXUGxWZGJEcHNKQmVsSjhvcTg0bU00Q1kwVzVPOUYyRkVUcWhU?=
 =?utf-8?B?eTZRbElNb0RKdEJ4S0phTXdRY2R4ZlZGWlZhTlRMYkdFbUFSbWJ6OXkxdVd0?=
 =?utf-8?B?M084UEVHekJTZWxxRDdvVVZYQTBqL2JxNjFuT3RVU1JaZGRuRXNHckVTekU3?=
 =?utf-8?B?dVlMSXg0dStsK0lRblNWOERyOGgzR2F0MmdBWm9MZWtMbFU5TmZhOEV2ZjFV?=
 =?utf-8?B?QzgvSGZ0ZC9GbXVpdnRYaUV5RDZncVZxOHFwVFlzSnp2b2dYdlQrdGNHZkxX?=
 =?utf-8?B?S0wwMGZXeVFqenlRN1lTV3VvaVRJVXdLYzhtOGNXdVJFMUxUekR5SmlVMmNs?=
 =?utf-8?B?bXVrWmNGbmtCZFNyQ2h4SEZhNHdtSnJjV1NHa0ozNFBucHF3eHg1STE5NG8z?=
 =?utf-8?Q?BU6YUCVmmqrCf2RBjwl8U0z5Y?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: BL1PR11MB5979.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 7e63423e-d9cc-4e6b-6dbc-08dd1848368b
X-MS-Exchange-CrossTenant-originalarrivaltime: 09 Dec 2024 11:54:18.8060 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: QRxv0FaGwAFU1D/rh2ZWzUEVLoMJEzku54YGLItipCdMqwDf1OUNfz4qL/ax4DVbXUPe/eMbuKSSnncSBGOreg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL4PR11MB8823
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogSG9nYW5kZXIsIEpvdW5p
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IE1vbmRheSwgRGVjZW1iZXIgOSwg
MjAyNCA1OjA0IFBNDQo+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5j
b20+OyBpbnRlbC0NCj4gZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogTmlrdWxhLCBK
YW5pIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+OyBCLCBKZWV2YW4gPGplZXZhbi5iQGludGVsLmNv
bT4NCj4gU3ViamVjdDogUmU6IFtQQVRDSCB2MiAxLzJdIGRybS9pOTE1L2xvYmY6IEFkZCBsb2Jm
IGVuYWJsZW1lbnQgaW4gcG9zdA0KPiBwbGFuZSB1cGRhdGUNCj4gDQo+IE9uIE1vbiwgMjAyNC0x
Mi0wOSBhdCAxMToxOSArMDAwMCwgTWFubmEsIEFuaW1lc2ggd3JvdGU6DQo+ID4NCj4gPg0KPiA+
ID4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gPiA+IEZyb206IEhvZ2FuZGVyLCBKb3Vu
aSA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+ID4gU2VudDogTW9uZGF5LCBEZWNlbWJl
ciA5LCAyMDI0IDI6MDYgUE0NCj4gPiA+IFRvOiBNYW5uYSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5u
YUBpbnRlbC5jb20+OyBpbnRlbC0NCj4gPiA+IGdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4g
PiA+IENjOiBOaWt1bGEsIEphbmkgPGphbmkubmlrdWxhQGludGVsLmNvbT47IEIsIEplZXZhbg0K
PiA+ID4gPGplZXZhbi5iQGludGVsLmNvbT4NCj4gPiA+IFN1YmplY3Q6IFJlOiBbUEFUQ0ggdjIg
MS8yXSBkcm0vaTkxNS9sb2JmOiBBZGQgbG9iZiBlbmFibGVtZW50IGluDQo+ID4gPiBwb3N0IHBs
YW5lIHVwZGF0ZQ0KPiA+ID4NCj4gPiA+IE9uIFdlZCwgMjAyNC0xMi0wNCBhdCAxNTozMyArMDUz
MCwgQW5pbWVzaCBNYW5uYSB3cm90ZToNCj4gPiA+ID4gRW5hYmxlbWVudCBvZiBMT0JGIGlzIGFk
ZGVkIGluIHBvc3QgcGxhbmUgdXBkYXRlIHdoZW5ldmVyIGhhc19sb2JmDQo+ID4gPiA+IGZsYWcg
aXMgc2V0LiBBcyBMT0JGIGNhbiBiZSBlbmFibGVkIGluIG5vbi1wc3IgY2FzZSBhcyB3ZWxsIHNv
DQo+ID4gPiA+IGFkZGluZyBpbiBwb3N0IHBsYW5lIHVwZGF0ZS4gVGhlcmUgaXMgbm8gY2hhbmdl
IG9mIGNvbmZpZ3VyaW5nDQo+ID4gPiA+IGFscG0gd2l0aCBwc3IgcGF0aC4NCj4gPiA+ID4NCj4g
PiA+ID4gdjE6IEluaXRpYWwgdmVyc2lvbi4NCj4gPiA+ID4gdjI6IFVzZSBlbmNvZGVyLW1hc2sg
dG8gZmluZCB0aGUgYXNzb2NpYXRlZCBlbmNvZGVyIGZyb20gY3J0Yy0NCj4gPiA+ID4gc3RhdGUu
DQo+ID4gPiA+IFtKYW5pXQ0KPiA+ID4gPg0KPiA+ID4gPiBTaWduZWQtb2ZmLWJ5OiBBbmltZXNo
IE1hbm5hIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT4NCj4gPiA+ID4gLS0tDQo+ID4gPiA+IMKg
ZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmPCoMKgwqAgfCAyNQ0KPiA+
ID4gPiArKysrKysrKysrKysrKysrKysrKw0KPiA+ID4gPiDCoGRyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfYWxwbS5owqDCoMKgIHzCoCA0ICsrKysNCj4gPiA+ID4gwqBkcml2ZXJz
L2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYyB8wqAgMyArKysNCj4gPiA+ID4g
wqAzIGZpbGVzIGNoYW5nZWQsIDMyIGluc2VydGlvbnMoKykNCj4gPiA+ID4NCj4gPiA+ID4gZGlm
ZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4g
PiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBtLmMNCj4gPiA+ID4g
aW5kZXggNTVmM2FlMWU2OGM5Li43NTA2MzM0MmExMDAgMTAwNjQ0DQo+ID4gPiA+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ID4gPiA+IEBAIC0zNjcs
NiArMzY3LDMxIEBAIHZvaWQgaW50ZWxfYWxwbV9jb25maWd1cmUoc3RydWN0IGludGVsX2RwDQo+
ID4gPiA+ICppbnRlbF9kcCwNCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGxubF9hbHBtX2NvbmZp
Z3VyZShpbnRlbF9kcCwgY3J0Y19zdGF0ZSk7DQo+ID4gPiA+IMKgfQ0KPiA+ID4gPg0KPiA+ID4g
PiArdm9pZCBpbnRlbF9hbHBtX3Bvc3RfcGxhbmVfdXBkYXRlKHN0cnVjdCBpbnRlbF9hdG9taWNf
c3RhdGUNCj4gPiA+ID4gKnN0YXRlLA0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBzdHJ1Y3QgaW50ZWxfY3J0
YyAqY3J0Yykgew0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZGlzcGxheSAq
ZGlzcGxheSA9IHRvX2ludGVsX2Rpc3BsYXkoc3RhdGUpOw0KPiA+ID4gPiArwqDCoMKgwqDCoMKg
wqBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSA9DQo+ID4gPiA+ICvC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9hdG9taWNfZ2V0X25ld19jcnRjX3N0
YXRlKHN0YXRlLCBjcnRjKTsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Vu
Y29kZXIgKmVuY29kZXI7DQo+ID4gPiA+ICsNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgaWYgKCFj
cnRjX3N0YXRlLT5oYXNfbG9iZikNCj4gPiA+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoHJldHVybjsNCj4gPiA+ID4gKw0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBmb3JfZWFjaF9p
bnRlbF9lbmNvZGVyX21hc2soZGlzcGxheS0+ZHJtLCBlbmNvZGVyLA0KPiA+ID4gPiArwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqAgY3J0Y19zdGF0ZS0NCj4gPiA+ID4gPnVhcGkuZW5jb2Rlcl9tYXNrKSB7DQo+ID4gPiA+
ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2Rw
Ow0KPiA+ID4gPiArDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpZiAo
IWludGVsX2VuY29kZXJfaXNfZHAoZW5jb2RlcikpDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY29udGludWU7DQo+ID4gPiA+ICsNCj4gPiA+
ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoGludGVsX2RwID0gZW5jX3RvX2ludGVs
X2RwKGVuY29kZXIpOw0KPiA+ID4gPiArDQo+ID4gPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqBpZiAoaW50ZWxfZHBfaXNfZWRwKGludGVsX2RwKSkNCj4gPiA+ID4gK8KgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9hbHBtX2NvbmZpZ3Vy
ZShpbnRlbF9kcCwNCj4gPiA+ID4gY3J0Y19zdGF0ZSk7DQo+ID4gPg0KPiA+ID4gVGhpcyBpcyBy
ZWNvbmZpZ3VyaW5nIGxvYmYgZXZlbiBpZiBpdCdzIGFscmVhZHkgY29uZmlndXJlZD8gSXMgdGhh
dA0KPiA+ID4gd2FudGVkPw0KPiA+DQo+ID4gaGFzX3BzciBhbmQgaGFzX2xvYmYgYXJlIG11dHVh
bGx5IGV4Y2x1c2l2ZSwgc28gYWxwbV9jb25maWd1cmUoKSB3aWxsDQo+ID4gYmUgY2FsbGVkIG9u
Y2UuDQo+IA0KPiBoYXNfcHNyIGlzIHVucmVsYXRlZC4gQ29uc2lkZXIgZS5nLiBjYXNlIHdoZXJl
IHhlLmVuYWJsZV9wc3I9MCBpcyBpbg0KPiBib290Y21kLiBoYXNfcHNyIGlzIGFsd2F5cyBmYWxz
ZS4gQUxQTV9DVEwgaXMgd3JpdHRlbiB3aXRoIGxvYmYgZW5hYmxlZCBvbg0KPiBldmVyeSBjb21t
aXQgaWYgaGFzX2xvYmYgaXMgdHJ1ZS4NCg0KQ3VycmVudGx5IFZSUiBmaXhlZCByZWZyZXNoIG1v
ZGUgY2hlY2sgaXMgbm90IGFkZGVkIGluIHRoaXMgcGF0Y2ggc2VyaWVzIHdoaWNoIGNhbiB0YWtl
IGNhcmUgb2YgcmVzZXR0aW5nIHRoZSBoYXNfbG9iZiBmbGFnIGFzIHdlbGwsIHRoYW5rcyBmb3Ig
Y2F0Y2hpbmcsIHdpbGwgYWRkIGluIG5leHQgdmVyc2lvbi4NCkhvcGUgd2l0aCB0aGUgYWJvdmUg
Y2hhbmdlIHRoZSBiZWxvdyBjb21tZW50cyB3aWxsIGJlIGFkZHJlc3NlZC4NCg0KUmVnYXJkcywN
CkFuaW1lc2gNCg0KPiANCj4gQW5vdGhlciB0aGluZyBoZXJlIGlzIHRoYXQgbG9iZiBpcyBuZXZl
ciBkaXNhYmxlZCBhZnRlciBpdCBnZXRzIGVuYWJsZWQ/DQo+IA0KPiBQbGVhc2UgYWxzbyByZXZp
ZXcgY2FzZXMgd2hlcmUgbG9iZiBuZWVkcyB0byBiZSBkaXNhYmxlZC4gRS5nLiByZWZyZXNoIHJh
dGUNCj4gY2hhbmdlLiBTZWUgYnNwZWMgNzEwNDEuDQo+IA0KPiBCUiwNCj4gDQo+IEpvdW5pIEjD
tmdhbmRlcg0KPiA+DQo+ID4gUmVnYXJkcywNCj4gPiBBbmltZXNoDQo+ID4NCj4gPiA+DQo+ID4g
PiBCUiwNCj4gPiA+DQo+ID4gPiBKb3VuaSBIw7ZnYW5kZXINCj4gPiA+ID4gK8KgwqDCoMKgwqDC
oMKgfQ0KPiA+ID4gPiArfQ0KPiA+ID4gPiArDQo+ID4gPiA+IMKgc3RhdGljIGludCBpOTE1X2Vk
cF9sb2JmX2luZm9fc2hvdyhzdHJ1Y3Qgc2VxX2ZpbGUgKm0sIHZvaWQNCj4gPiA+ID4gKmRhdGEp
DQo+ID4gPiA+IMKgew0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Nvbm5l
Y3RvciAqY29ubmVjdG9yID0gbS0+cHJpdmF0ZTsgZGlmZiAtLQ0KPiA+ID4gPiBnaXQgYS9kcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiA+ID4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5oDQo+ID4gPiA+IGluZGV4IDhjNDA5YjEw
ZGNlNi4uMmY4NjJiMDQ3NmE4IDEwMDY0NA0KPiA+ID4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiA+ID4gPiArKysgYi9kcml2ZXJzL2dwdS9kcm0v
aTkxNS9kaXNwbGF5L2ludGVsX2FscG0uaA0KPiA+ID4gPiBAQCAtMTIsNiArMTIsOCBAQCBzdHJ1
Y3QgaW50ZWxfZHA7DQo+ID4gPiA+IMKgc3RydWN0IGludGVsX2NydGNfc3RhdGU7DQo+ID4gPiA+
IMKgc3RydWN0IGRybV9jb25uZWN0b3Jfc3RhdGU7DQo+ID4gPiA+IMKgc3RydWN0IGludGVsX2Nv
bm5lY3RvcjsNCj4gPiA+ID4gK3N0cnVjdCBpbnRlbF9hdG9taWNfc3RhdGU7DQo+ID4gPiA+ICtz
dHJ1Y3QgaW50ZWxfY3J0YzsNCj4gPiA+ID4NCj4gPiA+ID4gwqB2b2lkIGludGVsX2FscG1faW5p
dF9kcGNkKHN0cnVjdCBpbnRlbF9kcCAqaW50ZWxfZHApOw0KPiA+ID4gPiDCoGJvb2wgaW50ZWxf
YWxwbV9jb21wdXRlX3BhcmFtcyhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwLCBAQCAtDQo+ID4g
PiA+IDIxLDYNCj4gPiA+ID4gKzIzLDggQEAgdm9pZCBpbnRlbF9hbHBtX2xvYmZfY29tcHV0ZV9j
b25maWcoc3RydWN0IGludGVsX2RwDQo+ID4gPiA+ICppbnRlbF9kcCwNCj4gPiA+ID4gwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoCBzdHJ1Y3QgZHJtX2Nvbm5lY3Rvcl9zdGF0ZQ0KPiA+ID4gPiAqY29ubl9zdGF0ZSk7
DQo+ID4gPiA+IMKgdm9pZCBpbnRlbF9hbHBtX2NvbmZpZ3VyZShzdHJ1Y3QgaW50ZWxfZHAgKmlu
dGVsX2RwLA0KPiA+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoCBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ID4gPiAqY3J0Y19z
dGF0ZSk7DQo+ID4gPiA+ICt2b2lkIGludGVsX2FscG1fcG9zdF9wbGFuZV91cGRhdGUoc3RydWN0
IGludGVsX2F0b21pY19zdGF0ZQ0KPiA+ID4gPiAqc3RhdGUsDQo+ID4gPiA+ICvCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0
cnVjdCBpbnRlbF9jcnRjICpjcnRjKTsNCj4gPiA+ID4gwqB2b2lkIGludGVsX2FscG1fbG9iZl9k
ZWJ1Z2ZzX2FkZChzdHJ1Y3QgaW50ZWxfY29ubmVjdG9yDQo+ID4gPiA+ICpjb25uZWN0b3IpOw0K
PiA+ID4gPiDCoGJvb2wgaW50ZWxfYWxwbV9hdXhfd2FrZV9zdXBwb3J0ZWQoc3RydWN0IGludGVs
X2RwICppbnRlbF9kcCk7DQo+ID4gPiA+IMKgYm9vbCBpbnRlbF9hbHBtX2F1eF9sZXNzX3dha2Vf
c3VwcG9ydGVkKHN0cnVjdCBpbnRlbF9kcA0KPiA+ID4gPiAqaW50ZWxfZHApOyBkaWZmIC0tZ2l0
DQo+ID4gPiA+IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMN
Cj4gPiA+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXkuYw0K
PiA+ID4gPiBpbmRleCA0ODA1YmY2ODJkNDMuLmZmZDk2YjE4N2U1ZSAxMDA2NDQNCj4gPiA+ID4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4gPiA+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5LmMNCj4g
PiA+ID4gQEAgLTU1LDYgKzU1LDcgQEANCj4gPiA+ID4gwqAjaW5jbHVkZSAiaTl4eF9wbGFuZS5o
Ig0KPiA+ID4gPiDCoCNpbmNsdWRlICJpOXh4X3BsYW5lX3JlZ3MuaCINCj4gPiA+ID4gwqAjaW5j
bHVkZSAiaTl4eF93bS5oIg0KPiA+ID4gPiArI2luY2x1ZGUgImludGVsX2FscG0uaCINCj4gPiA+
ID4gwqAjaW5jbHVkZSAiaW50ZWxfYXRvbWljLmgiDQo+ID4gPiA+IMKgI2luY2x1ZGUgImludGVs
X2F0b21pY19wbGFuZS5oIg0KPiA+ID4gPiDCoCNpbmNsdWRlICJpbnRlbF9hdWRpby5oIg0KPiA+
ID4gPiBAQCAtMTE5MCw2ICsxMTkxLDggQEAgc3RhdGljIHZvaWQgaW50ZWxfcG9zdF9wbGFuZV91
cGRhdGUoc3RydWN0DQo+ID4gPiA+IGludGVsX2F0b21pY19zdGF0ZSAqc3RhdGUsDQo+ID4gPiA+
DQo+ID4gPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9wc3JfcG9zdF9wbGFuZV91cGRhdGUoc3Rh
dGUsIGNydGMpOw0KPiA+ID4gPg0KPiA+ID4gPiArwqDCoMKgwqDCoMKgwqBpbnRlbF9hbHBtX3Bv
c3RfcGxhbmVfdXBkYXRlKHN0YXRlLCBjcnRjKTsNCj4gPiA+ID4gKw0KPiA+ID4gPiDCoMKgwqDC
oMKgwqDCoMKgaW50ZWxfZnJvbnRidWZmZXJfZmxpcChkZXZfcHJpdiwgbmV3X2NydGNfc3RhdGUt
DQo+ID4gPiA+ID5mYl9iaXRzKTsNCj4gPiA+ID4NCj4gPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlm
IChuZXdfY3J0Y19zdGF0ZS0+dXBkYXRlX3dtX3Bvc3QgJiYgbmV3X2NydGNfc3RhdGUtDQo+ID4g
PiA+ID4gaHcuYWN0aXZlKQ0KPiA+DQoNCg==
