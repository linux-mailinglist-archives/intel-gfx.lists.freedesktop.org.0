Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id CJalLwLlHWoPfwkAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 22:01:06 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F37D9624DC6
	for <lists+intel-gfx@lfdr.de>; Mon, 01 Jun 2026 22:01:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8C0B310E908;
	Mon,  1 Jun 2026 20:01:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CYFmu8l4";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B92F810E908;
 Mon,  1 Jun 2026 20:01:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780344064; x=1811880064;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=McE7NodICyDvtv+BHk6JJYrFwDX2W2MKWG1YNTfMz2Y=;
 b=CYFmu8l4qXJ7GaxmQYbezotDH0Xdr5t8JHHvCq9P6BayxX44pl2vo0Is
 aMvyOh3m44J57Jgb2WaNTEJnkrjGpLTToYsJGgZvp4xgfWdD3YUh0XVUm
 oLQ3/GRbebe/IKTqhQPEMqfekAhoGiVW4B8qAy3tsNlmT32Adep+JpKiX
 sfHvQNTINTZxTSppnB8tgUs4lEH4EJc19FTwA8yub/Qi2XzhcTOADuYlb
 sS/DK0vgwR9FkkD0FDAvu/Nt+N0vNYjarq3/JS2ytb21m5d+wfv7b/yD+
 6uZ+NV8ikiQBCOZksoZJULoXOr7JTODXAU5h3j9gmwxdH0ZYCIseqGJY/ Q==;
X-CSE-ConnectionGUID: leDhQpdeSlOffiCkxKY7VA==
X-CSE-MsgGUID: f4Ta2sLVQ4Wdn08Nyq2h4Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11804"; a="85000346"
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="85000346"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 13:01:04 -0700
X-CSE-ConnectionGUID: v0QMGAAGQ7Ojqdd7Cef10g==
X-CSE-MsgGUID: HCksl79RRZm/Xotc42BRCQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,181,1774335600"; d="scan'208";a="240678398"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa007.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2026 13:01:03 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 13:01:02 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Mon, 1 Jun 2026 13:01:02 -0700
Received: from CO1PR03CU002.outbound.protection.outlook.com (52.101.46.28) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Mon, 1 Jun 2026 13:01:01 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mgNnoQ20s2euiI+zQ6rqFM4v+PWdeSZR5Ybx7EqMclPvbkv8bjB4VW28ELR7NJj/U/H4fDTgeDC4jKlWtlijsHI5CNeQ1bDbZgQ9lOIla6ajXLwgDgEJah+IdK3mznA4z7ex8db1ell9dSnQ3vm4aP8LkFybwvoOUEHG3aufh/OIEd8t2JudEZlyG72iMEhd0QNkcIRpbvgf7pUH0sel5KWhUqtf0eyxyMzSjRsLjwHYNSqkDpAzg7klzqiLvurlOT6KRDxBqrkP9KriO6eFvzJG4kKf/gmpk2AbBgraKWh4YsE5SzWC+XRPIdv4zEGK3RDZj+UCxjtY1yahbufFsg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=McE7NodICyDvtv+BHk6JJYrFwDX2W2MKWG1YNTfMz2Y=;
 b=FFUh5OhjY9AbGKUgO+lO5h498RxK+psDCTh0HCnFnuS6N4yKlSa7Lai9PqoDT4dKN8p8wdMHWZ1VL6WOTtLXvR3Ym9XwkqubmgiSqYd5AELopxsQVtbEWlCPQsbSQEBoHGmej1YtJgDXZCVdDyQ4md/p3/8DskN6wQw1w6CJ1FAWEwXF/9Ej13vVVQM6CktQ94y7nk7r33vKfSgExw/qZuLlDKNWBmwPGTCzejYrsuSPvyRiTG6p8qd1TNp1akc50UIr6cBkRUc92SFipLCzlJAjzQM06uJzqrEXYe8Nt+5hZDD3M4BLXU3D9T4EX5SfHksMNNx7rbUnkkLhua5bwQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by SJ1PR11MB6275.namprd11.prod.outlook.com (2603:10b6:a03:456::14)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.21.71.15; Mon, 1 Jun 2026
 20:00:58 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%4]) with mapi id 15.21.0071.015; Mon, 1 Jun 2026
 20:00:58 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Lee,
 Shawn C" <shawn.c.lee@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "Syrjala, Ville"
 <ville.syrjala@intel.com>, "Roper, Matthew D" <matthew.d.roper@intel.com>
Subject: Re: [PATCH] drm/i915/display: update BW buddy initialization for
 LPDDR4 and LPDDR5
Thread-Topic: [PATCH] drm/i915/display: update BW buddy initialization for
 LPDDR4 and LPDDR5
Thread-Index: AQHc7s+BIHDCVnHvaEuhsaCt0tdmjLYlA3OAgAAcLQCAAAc/AIAE/jkA
Date: Mon, 1 Jun 2026 20:00:58 +0000
Message-ID: <0dd31ce783eb440513d8609f725f5bd77efde44d.camel@intel.com>
References: <20260528182601.205595-1-vinod.govindapillai@intel.com>
 <d661dae5343e317fdf286194af4c5e707cbeea97@intel.com>
 <ahmupPZMuah4etPi@intel.com>
 <d11d0432e1b442ecc187e9f5ef43ab2e42b28947.camel@intel.com>
In-Reply-To: <d11d0432e1b442ecc187e9f5ef43ab2e42b28947.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|SJ1PR11MB6275:EE_
x-ms-office365-filtering-correlation-id: 76c72df3-4f0f-43e9-a4b3-08dec0187f73
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|56012099006|4143699003|11063799006|38070700021|22082099003|18002099003;
x-microsoft-antispam-message-info: KtVxSnppR0k29od6QOMwu8XmO8vPQPfiLONLS8N1P8pJMg5/0Yh10j7kIAJuSjT6NhKUygt+d3zv0T6Hb5aA7ITfxzxHJcN3PyuIgd6IrUVutFeuc8uMf4LJTrrft0EU/Y3EdSvIKugM0xDXZ31gVVjVhkEUib3U0i+cVNQVqzy1hK57GZsBS77/HP25CPSXpvwlRkUKwNbYIZaIE6p0Vrbs9M4V+LzLGmaNKHlMTfxnYSlt5qmLHPe6oQaHmemB4SAOglHxyurHe37HX2hjfeDyhylp8bfjNCs6LrBF5dksJOcEgwqCdH/M0CpULiWFvEPqK1UBi3XYFDzTCoGUryAOnl5DHo0NJLmii58Z+TiPXo9/PvK9L4jF+qiUuDVeovPbD273LUEskSu5mUvOLIpi7N18EwOzt8RDWflBNQbG8+4ZLLu5MdKgOC+xCgjj8JusJ5CCD3t/m4FsHpEFgaEut584m7iQOaY+diXyPuS9n7/q/jvZUb0QvIehU5ypnA2NVCJBkT/kfYwtKmfwaZIEhBrWZJYlhNahhAXlLJjvEJqQS60lYDmMJsQqvzwTBf3BfUwe2iojcAWLIf6e+sjscTY0bHNpqn+Xv6FCm2wzww+fktKhkNGYnoEJRCBXGnFWQaRA6nXFO4LTKnyhVG+ewO/sNhXrJWb8/fv5lBZQcbH2j4wDDu1We5gmTe5KA3DMEb/c1KNvZ6wq4HN0sAC9buMHBsm+oc78Utotl1s+CI5IcQS4WQzIVr3Xwczh
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(56012099006)(4143699003)(11063799006)(38070700021)(22082099003)(18002099003);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YkVmaXVHS0RDdTV0TnVSc1ExT2VoTnNzUlhGQjQvZmFyUGwyT05iM0w2c0dD?=
 =?utf-8?B?NGRLcjJZckZmM0h4aHNoSUFSZzlkNHpMSTVoWnFwaTQzM0d1dms3R3pZVVBE?=
 =?utf-8?B?UitwZXMxaFpHemVBUDlvRDVhamI1NzlscmJKRXJWMWdsMnZTeWM0akZFbGVV?=
 =?utf-8?B?MkVYNHVzTmh2UEZGam5jK0JGU1o2dEM2ekYwQXpvcCswUGN2Nk1KMWJFVW9z?=
 =?utf-8?B?Mkp3OUMyV2N1M0c1NUhSYmRPcHExT3g2ZExpdTdCZ3JuOUhRRmZqeVBDQlQv?=
 =?utf-8?B?QkN1WFVqeGt6eXRzcC9pVHcwU3pmZHNaQzk2UDVVTHJTRHltczUrVkFKVXZI?=
 =?utf-8?B?QjRSRkZ4dUpGbmtsU1BsUW1vSk56NVNNY05xSkQrcWFibFVGNGZsN2xsSWpF?=
 =?utf-8?B?K1k3R2dsWVJ5OFJ0MnBkV010Y3BpVHFnczZOUmZ6UHRjV1NvTzNXM3FIcWxH?=
 =?utf-8?B?bzhTdlNFQ1N1akQrYWZ1TjJMcUFkUmphNGhkOFVnazg1VTdkaU1mcHQ0bE1i?=
 =?utf-8?B?R2pkaWpxVVRweXdMbitiajJsNGlScndGWkMvamhWemhnNmFYOGFBUE9VK09a?=
 =?utf-8?B?dGk4SHZZaDdCUkNSemRMRUw3MnMxZlJQWURZUXp5WmFzd1VIYjdFSTF4a1Jj?=
 =?utf-8?B?U0xqdFlGclZIdzlqdEJrbnM1OWlDWWRZWS9XdStBc05menNKWG5MeXRUYnpy?=
 =?utf-8?B?c0xjNVRFMW9CWTQ4c0V2bUY1TDBBVjlMMlBiNnlGK281YUthbHI2KzhYdnlV?=
 =?utf-8?B?YU9KOGVvS004cXBwSjgyc0JobkYyVDZMRTBnS2ZOSW16Ui9zbEJPNWdQeGgw?=
 =?utf-8?B?YTNob0pmempQQ2hhZ1ZOZ3dJQis0Z0RMZ3VrczIrQzBtbEpwVDVub21kaVNv?=
 =?utf-8?B?K1AyYXIxcnJnd0E1TlB5elVjVUlnVm1INTFaTmYwNjl1WE1RQjdBU21DbjQ5?=
 =?utf-8?B?dWNvallTcFE1dndmNEJWTkZBajVmUCtFck5jVnF0eDZtRHhuaE0rdTZPR1Rx?=
 =?utf-8?B?NzdpMXhnQTZwQzhKK3EwTWYwQXRQRlhnSmNYRHpXbXF1NFZ2dVByMkcwQ1Rh?=
 =?utf-8?B?Mlc0RkFaUDRhNHFpaXJ0TUdpbVNTNTE4bG9NTm9pSVM4dkJSSVNOWW1JR0Y1?=
 =?utf-8?B?V1o3eE9DMmZLWmhYTndteGZwV2N2VTR5cnlhQUltdmlsb1YzRWhxUk9wbFVs?=
 =?utf-8?B?QlpsMXN1dGNldWxiYnZKQmNmcHJiMGE5eDhGMXRuYlozOFVZdHgwUDJKamt0?=
 =?utf-8?B?YzFySzAxQTZMYjhYZndpdTQwL1hCcUhUTWg1ZUFITzBtSHNXZW14WThGMnhJ?=
 =?utf-8?B?U0dJUG84UjErL1FKN1pMKzZUV1RkSXc3NUdYdzdkaEtIaU0wdEJVVjM0VGZ4?=
 =?utf-8?B?dFIvSzIzRDNFY1VnaVVXZTcwZi9aWGhXNTRoM2wrMmNtMkpBVUtVNG9uUzBr?=
 =?utf-8?B?UndZS1MrR3ZsWSswbkFoV3NabzVCb3Vlb29DK0FKakZSdDIwSFAzc3VQa3dz?=
 =?utf-8?B?Q0RUb3dxZXg4QlJTc2lTVCsvcjJTeWtPOVNNZXM2c3I4UEdyQnAvclFvcmlm?=
 =?utf-8?B?eTFRRHdIV1JXeXNxbi85T2ZoaEErRWNEc1docnlYVGxQSWJtTzRZT2RFcVRO?=
 =?utf-8?B?Zkh6cEM3R0FicUJkOGlXSTA2QWg3VGYvTmpQZEJvWC9JOEhkY1NWNDZoM3p0?=
 =?utf-8?B?U0NKdG1oM25laDg3eDVSa2hKaWdTb2N3clptQ1didjhtcWtlNk5sM08vaXZl?=
 =?utf-8?B?N0c4dTgwbks1c05LYmRhZTRHOEpSTDRZZnlyNE0wZnJLWWoxNVNjZWtyT21j?=
 =?utf-8?B?RDJUTDFTdWdpN3JFZ3RSLzFNYzBsWXZqcTF3NjZHcUQ4dGZRMVJlUk5IM2p3?=
 =?utf-8?B?dEhwRGtKbEt5TXVBRHBNbVEvc29wUHJ2SVFOSENzblkzemNHb2lYU1kwQlB5?=
 =?utf-8?B?dXFYMmZBdDV3M25ISGUzUWlpdWVWeXIvQ2drbExYV0piWnE1RXJ4V2tkTWt6?=
 =?utf-8?B?MCs5bE1PQi94b1hWc2xUaE5SQnRFV1MrU0NWcTdXZnRFeTJWYkNWV2FEWE1D?=
 =?utf-8?B?VSs5UGgrU3FKOHFnZnZFODlSanQzZlNGeHhpcnRYU2hqT255YkY4Nk4vbjh4?=
 =?utf-8?B?Y2YyTmdzL21QTVhzN0JyUlQzS2RsdnBXdERrN2tZT3BzV2lscDU5TEt4VmJ3?=
 =?utf-8?B?V3B2NEFRZHBDaERSdEFRNGxWam1qYlIwRXZ3aWpSd21mdWpFRUhBM3hJcEg1?=
 =?utf-8?B?eXBwWDZHQkViL0dKR3Y3TDBRT1R6ODJqMEtubm5TSmJ1cFluWW04a29hSTE2?=
 =?utf-8?B?RTlqVEhZMlFwWm1rSWR1MFRXaWJGbzRlbk03WnNiMk9MWUZYVkE0U3NVV3JP?=
 =?utf-8?Q?Sk4YWvJjCDJYRJqEnEDa1Ndkx9sRmeytITjGgmNEz7iVx?=
x-ms-exchange-antispam-messagedata-1: 5lcEWq485VJlioTqO+X7WAl4bVN6PGe9R5B3feMuHJrhJMNl+4Y/WyYL
Content-Type: text/plain; charset="utf-8"
Content-ID: <2893DAF9FCEB8C46BD04590BE00E7868@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: slOm52FM35z7hQVeGGY8G5PtuJbFTkx44RjCeYT0er/mxek4cgE+4oe8o8TbtNDiK57Z4xYtCyik+9Ly8UMYQOahLyxfEOwCQE1zHuNxgPitsde1lmHzDK18ymUAdloJBZja9cYTevKNt1IVsAYecMHJXbn/c3FAlREnECuPZBR9Jdf1iuTD5TccYOOPYnEc4xChrP9nAafuo06GnJ9UUwlsnI8B1wO4rKwFlE6uyUs+1PSmAqBwrkeFX9clDPlUryywC8g7HhrYcfZao2iCUp65pJ+cCiGo/j5iOHjHevVlqAU34DHFvZFeBmrshH6Ojym8uukwjCoqqsoz5GIb3w==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 76c72df3-4f0f-43e9-a4b3-08dec0187f73
X-MS-Exchange-CrossTenant-originalarrivaltime: 01 Jun 2026 20:00:58.3015 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: uaYGLxxOrtK2tPxVUSZ9M7ymHv/5W94jCwxMeePeEJ0yl9c/gZYjhofzGIWld3OANK9POGlhjerznmElNHkQQmCeK/FpS/v/SI25VrKEOok=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ1PR11MB6275
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
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_BASE64_TEXT(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.993];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	DKIM_TRACE(0.00)[intel.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCPT_COUNT_SEVEN(0.00)[7];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F37D9624DC6
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gRnJpLCAyMDI2LTA1LTI5IGF0IDE4OjQ2ICswMzAwLCBHb3ZpbmRhcGlsbGFpLCBWaW5vZCB3
cm90ZToNCj4gT24gRnJpLCAyMDI2LTA1LTI5IGF0IDE4OjIwICswMzAwLCBWaWxsZSBTeXJqw6Rs
w6Qgd3JvdGU6DQo+ID4gT24gRnJpLCBNYXkgMjksIDIwMjYgYXQgMDQ6Mzk6MTNQTSArMDMwMCwg
SmFuaSBOaWt1bGEgd3JvdGU6DQo+ID4gPiBPbiBUaHUsIDI4IE1heSAyMDI2LCBWaW5vZCBHb3Zp
bmRhcGlsbGFpDQo+ID4gPiA8dmlub2QuZ292aW5kYXBpbGxhaUBpbnRlbC5jb20+IHdyb3RlOg0K
PiA+ID4gPiBQY29kZSByZXBvcnRzIHRoZSBudW1iZXIgb2Ygc3ViY2hhbm5lbHMgZm9yIExQRERS
NCBhbmQgTFBERFI1Lg0KPiA+ID4gPiBCdXQgdGhlIHBhZ2UgbWFzayBzZWxlY3Rpb24gdGFibGUg
aXMgYmFzZWQgb24gdGhlIGNoYW5uZWxzLiBTbw0KPiA+ID4gPiBhZGp1c3QgdGhlIG51bWJlciBv
ZiBjaGFubmVscyBmb3IgTFBERFI0IGFuZCBMUEREUjUgc28gdGhhdCB0aGUNCj4gPiA+ID4gY29y
cmVjdCBwYWdlIG1hc2sgY2FuIGJlIHBpY2tlZC4gVGhlcmUgYXJlIHR3byBzdWJjaGFubmVscyBw
ZXINCj4gPiA+ID4gY2hhbm5lbC4NCj4gPiA+IA0KPiA+ID4gSU1PIHRoZSBwYXJzaW5nIG9mIHRo
ZSBpbmZvcm1hdGlvbiBiZWxvbmdzIGluIGludGVsX2RyYW0uYy4gSWYNCj4gPiA+IHlvdQ0KPiA+
ID4gZ2V0DQo+ID4gPiBzdWJjaGFubmVscyBmcm9tIHBjb2RlIG9yIHdoZXJlIGV2ZXIsIGludGVs
X2RyYW0uYyBzaG91bGQgZmlndXJlDQo+ID4gPiBpdA0KPiA+ID4gb3V0LA0KPiA+ID4gYW5kIHN0
b3JlIHRoZSBudW1iZXIgb2YgY2hhbm5lbHMgaW4gLT5udW1fY2hhbm5lbHMuDQo+ID4gDQo+ID4g
V2UgYWN0dWFsbHkgd2FudCBzdWJjaGFubmVscyBmb3IgUUdWIHN0dWZmLiBBbmQgdGhhdCdzIHdo
YXQgbW9kZXJuDQo+ID4gcGNvZGUgZ2l2ZXMgdXMsIG9sZGVyIHBjb2RlIGdhdmUgdXMgY2hhbm5l
bHMgaW5zdGVhZCBhbmQgd2UgY29udmVydA0KPiA+IHRoYXQgdG8gc3ViY2hhbm5lbHMgaW4gdGhl
IFFHViBjb2RlIG9uIHRob3NlIHBsYXRmb3Jtcy4gSSBoYXZlIGENCj4gPiBwYXRjaA0KPiA+IHRv
IG1vdmUgdGhlIGFkanVzdG1lbnQgaW50byBpbnRlbF9kcmFtLmMgZm9yIHRob3NlIHBsYXRmb3Jt
cyBzbw0KPiA+IHRoYXQNCj4gPiB3ZSBnZXQgY29uc2lzdGVudCBkYXRhIG91dCBvZiBpbnRlbF9k
cmFtLmMgZXZlcnl3aGVyZS4NCj4gPiANCj4gPiBGb3IgdGhpcyB0aGluZyBoZXJlIEkgdGhpbmsg
dGhlIGJlc3QgdGhpbmcgd291bGQgYmUgdG8gY2hhbmdlIHRoZQ0KPiA+IHRhYmxlIHRvIHVzZSBz
dWJjaGFubmVscyBpbnN0ZWFkLiBMb29rcyBsaWtlIFZpbm9kIGRpZG4ndCBmaWxlIHRoZQ0KPiA+
IEJzcGVjDQo+ID4gaXNzdWUgYXNraW5nIGZvciB0aGUgdGFibGUgdG8gYmUgdXBkYXRlZCB0aGVy
ZSwgc28gSSBqdXN0IGRpZCB0aGF0Lg0KPiANCj4gT2guLiBzb3JyeS4uwqAgSSBzdWdnZXN0ZWQg
YSB3cm9uZyBjb2RlIHllc3RlcmRheSBvbiBqaXJhIHRvIGJlIHRyaWVkDQo+IGJ5DQo+IHRoZSBj
dXN0b21lci4gU28gd2FudGVkIHRvIGZpeCB0aGF0ISBXaWxsIHVzZSB0aGUgdXBkYXRlZCB0YWJs
ZSB3aGVuDQo+IGl0DQo+IGlzIHVwZGF0ZWQuDQo+IA0KPiBCUg0KPiBWaW5vZA0KDQpIaSBWaWxs
ZSwNCg0KQ2FuIHdlIGdvIGFoZWFkIHdpdGggdXBkYXRpbmcgdGhlIHRhYmxlIGluIHRoZSBkcml2
ZXIgdG8gY2hhbmdlDQpMUEREUjQvNSB0byB1c2Ugc3ViIGNoYW5uZWxzPyBPciBkbyB3ZSBuZWVk
IHRvIHdhaXQgZm9yIHRoZSBpc3N1ZSB0aGF0DQp5b3UgcmFpc2VkIG5lZWQgdG8gYmUgcmVzb2x2
ZWQgZmlyc3Q/DQoNCkJSDQpWaW5vZA0KDQo+IA0KPiA+IA0KPiANCg0K
