Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MKE/FzxD1mkFCwgAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 13:59:56 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9FC503BB9CF
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Apr 2026 13:59:55 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2EA0110E341;
	Wed,  8 Apr 2026 11:59:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="g1N0sCLd";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DC5BF10E0D5;
 Wed,  8 Apr 2026 11:59:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775649593; x=1807185593;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=czH4xF4+hb39eKsGAO8ycfO/4RX+8NUoRPHH3qqhGF4=;
 b=g1N0sCLd3YDlbGqB8mtPzirQASTXf+ZDmpbAp9LbXACE27ZmVffukiVf
 hRHDJ5RkCZdl9EU9LZXQZvn0zImnMwJDt8r24NidIMhCsEnCmTjAle1bK
 eHjk8zOG4lc9vmvDndLBgXg7GzOtafK7DClo2wHUNG3bqUgmyNkE2pgYJ
 +YXscpBFoodkCi3dMHjEYY0WhtFNhi21Rb5P1nmDkTGZeo5PfdODhaU2O
 BRdRu1de2jomyG6LwdUtt99Bn4ZgwhWxvcloH3EIhjt+MALrpZ9JUiANR
 FnfTOzWXBZVKQBFBOT2GcDFarGv1JVpHJDLq455fxo/gE688IRGMEBg74 g==;
X-CSE-ConnectionGUID: 9HO/pXpnTu2/x22Se4JqJA==
X-CSE-MsgGUID: MP7VgvgGQfGUc7YiJWpdCw==
X-IronPort-AV: E=McAfee;i="6800,10657,11752"; a="80224102"
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="80224102"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 04:59:53 -0700
X-CSE-ConnectionGUID: 1uYqwbClSMi0SMV7fEslhw==
X-CSE-MsgGUID: c9y59w1VR9KdVHHHGISM1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,167,1770624000"; d="scan'208";a="258878269"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Apr 2026 04:59:52 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 04:59:52 -0700
Received: from ORSEDG903.ED.cps.intel.com (10.7.248.13) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Wed, 8 Apr 2026 04:59:52 -0700
Received: from DM1PR04CU001.outbound.protection.outlook.com (52.101.61.4) by
 edgegateway.intel.com (134.134.137.113) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Wed, 8 Apr 2026 04:59:51 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=ld1VnkE45YAE79O7fCyo3JboS0S+N89JbJmII1+DuodQnwiwv9X5Wpm8cT6FxtGizH8wjpEYwS3Z62jFOnzBPDdh1oQbGMuUlAovuQQ38tsFTtILpPcg/nZQgUjWgoyWy2ccjwRIWNZ+nU0i8kUXeLNL9KJV0ooBxXWGfMib7JPhEhNsE3035S6VV4IMBbfQ5s8U+t2ozIBup1euYviPFnRwiULVcI76KgF971T68xgpe4hTCq9k3RiC3RWRLimNgx5NHUQGYVRgl+DX6ZQNJlOxT6lM1rMJ2O2sI1NvoDrsQooNa1G/toW+eEhxuQt4LS/I8Rx652LY1NbIvhc5Sw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=czH4xF4+hb39eKsGAO8ycfO/4RX+8NUoRPHH3qqhGF4=;
 b=HDkB2aFMFdSeZiCD7FfBAncKDuO5gCBAeoCvYdYzMYqB06ZOhMuYTLNRPd+y6iT7ENs+DK7tRKDu44YTZ5vZo3LjOj0fmPuFbVh1pJzyI7jRS7lqXdDGNZu7yYUfOh1C+BRR4E7yy2EWrqyJKLCs/h9rixHXCKIXQRQN4FFDytVHQ33NEURHuXSgIagY8WqT9Ip/h6bYXzTkQyWxSZSlWKN1H9DF086H33v4ZQjVxAZqeS109QBAp8j1m0KDMgL5fp3F9HVA8q1bWbsNQrC1H5cYLQ7AQg5V8SvNBJpUAOAOIpYoADPOeuaNRUGCW6lWpFDyW8piLzseh9sdNJf3ZA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from CY8PR11MB7777.namprd11.prod.outlook.com (2603:10b6:930:71::14)
 by BY1PR11MB8030.namprd11.prod.outlook.com (2603:10b6:a03:522::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9769.17; Wed, 8 Apr
 2026 11:59:43 +0000
Received: from CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41]) by CY8PR11MB7777.namprd11.prod.outlook.com
 ([fe80::5a6:cd7:969c:fa41%5]) with mapi id 15.20.9769.018; Wed, 8 Apr 2026
 11:59:43 +0000
From: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [PATCH 7/9] drm/i915/wm: Verify 'ddb_y' as well as 'ddb'
Thread-Topic: [PATCH 7/9] drm/i915/wm: Verify 'ddb_y' as well as 'ddb'
Thread-Index: AQHcu5Z6dJO84+YfhUKDr1ihP5JXW7XVJy+A
Date: Wed, 8 Apr 2026 11:59:43 +0000
Message-ID: <4a9c3663b467924051b6fb9e78f80147923a005d.camel@intel.com>
References: <20260324134843.2364-1-ville.syrjala@linux.intel.com>
 <20260324134843.2364-8-ville.syrjala@linux.intel.com>
In-Reply-To: <20260324134843.2364-8-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
user-agent: Evolution 3.52.3-0ubuntu1.1 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: CY8PR11MB7777:EE_|BY1PR11MB8030:EE_
x-ms-office365-filtering-correlation-id: 556b4dbf-37e3-4a3e-85a5-08de95665266
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|10070799003|376014|1800799024|366016|56012099003|18002099003|22082099003|38070700021;
x-microsoft-antispam-message-info: aJPLa9FtevAIRIDGjsLtOPoT06ncWTmtLfgBEEUnl8ckMEeNIqd0RTRWBSHjKfF3rKJd7wuZxEA1zG6o3GJF59txGkGdD5xDgPqxcXv7dP5kzgW6hY8sYzcoYXa+r6IKg0VuybWqzr3gkmkm3BIgfbSt8CqjPSKzoGYvFByCvJhJlZ+DeO4EXL89GyG6OhY6L4y0HybUxuPPhSKZKSGX7nKgZLszw/0jNSUWZf5qfYipyoRc+XETUhD2ljc7DiOXQWMWNfBZP1YOQUril3S/fyO++KFruzMtIMTkfKIi+e7u5alo/T9dlxnVkJV5p2mksyVQFvuKearxlPWNnxXOFdsHmlKT2LXpDFEpo48VU/4mx9+RkyCnPwiqmm/B4aHrAVwmYEOmySnHAObs5THMQ8KNCzFotxZTkIUr2XquwoIBKkVH6s87OY/MC1Yl7CncrCI4knfEZH78HvV4/KHBdunxcSjSTr2aW2TFi3GaQi3tRYr1d68UN+Ggek0N20YaiJPlYDzhikn7DJ7lMfEintZvjZEAr+vktWvMjY7QsM104bE5KA2hG124n4v9fr1tVfsvlECROXBB5vXCNA7n38+PEXRcaKm5XxZfO7eHQ8oQY0jTo4aEzXK7+pSWoXXzp+B47X4Sk63CGXegcVys/p99v5mJDe4/WuDF75kngn+t0bU8PxDb9f4PxbrvweCx5j9bCvo5qmj3LtfapC+hYMoQw2MUelC8TtIUeBamTSFPtvG7L+Knsd+EkHNERz/W9SToGcxaNtTCF+CcqOkF4FA6DHhWjFYbJUjCfe8I63s=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CY8PR11MB7777.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(10070799003)(376014)(1800799024)(366016)(56012099003)(18002099003)(22082099003)(38070700021);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 2
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?Smp0MXpocGVNTVpQK3dMUk40MnZIdnUwZ0ZJME05QXdaajdSNzlHaXpadnV3?=
 =?utf-8?B?MWVKNUN6TGRZZno5NHlWQTRvcERLcFVNcUJubXlzaFBsR2J0MVFLc2Zlazhs?=
 =?utf-8?B?Z1cycXE4WlhJc2tzcnJRS2RYejJIL05XVGdDRmxaNStkaXoyREh6YzlPdjBp?=
 =?utf-8?B?M0FtaFMxcFYzUjZjeHdjL3BVN2tDbzhOZnJQZk42dzVMQmVNTFBtcW1JZWVr?=
 =?utf-8?B?dk83ZXd5OVVWdW0xTmtEcndGT1lwMkk2enlRSjVyUEJwUElic0NhckJHV3Q2?=
 =?utf-8?B?M0pJQmt6d0hwVG1wbGt6ejE4L2xONmhRSlBEUXRIMFhrUUZNQ1IyUDRqS1NG?=
 =?utf-8?B?bGcyY0p0MHRQelEyb1Y3emdMaGp4OHRIZVozQTJYMU02WnpxOCszWGZTWnhX?=
 =?utf-8?B?cUFTOTlEYStkemNpUU50Sm1veVg0R1lQdm1IZnBLYXQrejZYTWJ0T2lNVEJh?=
 =?utf-8?B?ZThSVGM5WE8xYzFPRW5RVFlDekhnQnBiUkQ3L2c4c21KdlZFcjNKakw0MGNV?=
 =?utf-8?B?MXhLaG9QYUVWbG85cVc4Ty9zanY0bDZnZzJHdnBTRDhuRDNTN1RMRDA1ZHlJ?=
 =?utf-8?B?M2Nla1BxWTNlRnBsWnBaSlAzOTBCSUhjeEF4K2k2UXMrN0hlMnZmdTRFZnZW?=
 =?utf-8?B?aGt6MEZ4NkppNEc5S0NENkdGdHFwOWlyRjF1bVJiN29HZlVGYytuR0N6M1Ay?=
 =?utf-8?B?dERNLzlKSE9sa3BNcFJLdjhDWEFkS1pWdWNSMmt5R0k2MkhpeGM5Y2tMcG1C?=
 =?utf-8?B?Ujh2cDBCV0lmNzlWVVRaeEQ0czA0R1c4bFZRUjhsY21aejFNUHhhemw4L2ly?=
 =?utf-8?B?OWFhdEw3cy9LMjRWMWI1endPYytPTVdlQUJ4djhrZ2ZSNkZqeXlTY0tydHlt?=
 =?utf-8?B?V0NoNkQyT1g5bjR6akNvZ01ML0w2dFJ2amF1eWxXVmRKWFNYYW81b3padC9N?=
 =?utf-8?B?NEJtS0EwenlHalQ3YXRhNUVVOFdlTTlhbUYwS1Z3bk9FbmZ4eERQd2R1QUtR?=
 =?utf-8?B?UVIzalgwSG5kM3lTalRaUlRSaEtnTGpkUXpwVk8xYnY2bjdtQWVuNm1zOGNO?=
 =?utf-8?B?YS9MbTMzR3piV2lBY0pjTXdacjdWUmpsL2lKNS9KRG82YXVOdS9kK3F6cFBw?=
 =?utf-8?B?SkVRV0M2WXdoR2lWanUvYWtNT3pWZUt1NUF3aENUajBGdTZBQTdZWE5VODFG?=
 =?utf-8?B?MGpDTlR2c3FNVURhS2tFa0FsSHdJODNEcWJmTC8vNm9sVi9jeE5tR2tJdGFF?=
 =?utf-8?B?S2YycHJDbEF4NlpkS2dhTW1sTmFGalZadE8vdHJXREIwUWJmWTZmb1F4VHFB?=
 =?utf-8?B?d2psaTJBcVJwRzFtd01BTXVUaHNnc25mQ2ZtUk1iR01aWW9jTEgrMkcrS0Zp?=
 =?utf-8?B?OHBZb2hsL3lVYm94RmVWM1IvblZEU1kzZzJ3Y2NFRUJpcVBKVExGYkNlU0tw?=
 =?utf-8?B?VkQ0cEQ5a0llU1BTQ2ZyTC9BYUthSWZodG9pM3NFRmVqSTM2SkJrcE9FYjE1?=
 =?utf-8?B?eWVyZ1U4N3FBc1p2NW1kZ1pWTmVKendGYkFhUlI2cmhRWGZKY3c5S0pQRVdl?=
 =?utf-8?B?b2xnRUVvemY0L3FoMytRRVppK285NjlDSXJwZm1DaUtNMndKTFp0SVlkUlBZ?=
 =?utf-8?B?bHJKYlNRQkRMNGdwTFo5U2wrcHcyZkZ0RUt5dXBmRXlhTGx1ZUMrK2V3ZUlu?=
 =?utf-8?B?MVdhV1JRbEk5QzVjSW1pSURxN1BFbVFhWmw2QzhIakZYU3FvcXgrazBDZXFB?=
 =?utf-8?B?T0JWbXlKc0Z0b3h0NnpEQU1YOFFOM2RSYnczR0Q3djRvd1lzTWlJWEZSYlF3?=
 =?utf-8?B?QmtOaXFkcUdtQmFEUFhNcWRMUW9MWXdhUytwMEZZNkl0WGtLMlZaWkRWVStl?=
 =?utf-8?B?QktxdUhUMjdnZ2w3ckZpdVkzS0hHZE1zcXpuUUh6c000QzVvUnpFdkovaDY5?=
 =?utf-8?B?Q0s4MzIyVTRvSWdlYlFKWVhHdXBZSDJFaXBLbTRPaC9iaDZZQlgxWnBaUkh4?=
 =?utf-8?B?VEtVMzNuTkNkWlYvWWZURlFwRlRxL3JZUy85VlhEL1gyajhsa01FMmxKY01w?=
 =?utf-8?B?Z1ZSNGxDK3hDNm44b3RldlQ1c0FNdm5KYjhwUExzQ3JmUGlTRkM3aUdtYkxq?=
 =?utf-8?B?Z0ZweE9ydXgwc243MCtsMUwwekhmSkwrYmMzZXd1Qloxem01Zy8ySjVHemlq?=
 =?utf-8?B?Q1o1RW5YUHloNURYTjBiOFJYM2tQMHE3UktnTmd6WnA1N29YV3BRUnFZd3Fv?=
 =?utf-8?B?d2lsUTd0bWlFUXBobGx3dVZGd3BCd0xiQmFEQzl3ZlowMzdGaTBwWWZmK1o2?=
 =?utf-8?B?bUVIWDhMTHlDVURyeVBSdjZTbG9BTFNHbWRQZnc3MGRqK3Fvb3ZTRVUwV25k?=
 =?utf-8?Q?ZjMqSB1SCEuNOQZwDi6vI0mMv3TFD1w6lGf0B4wy3j/Ub?=
x-ms-exchange-antispam-messagedata-1: QxbMKllhvmGc26N/MJPWPT3X1tPCJmQHH8w=
Content-Type: text/plain; charset="utf-8"
Content-ID: <37EBCB207EB1D1488F739A2C747201BD@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-Exchange-RoutingPolicyChecked: vPdB8tYQ/wR5LSILd9YomSEefR+lZw2u8V+clJ6bm68A6c6KmQ/vn9X9hTOlv4xbDj3KJzM1J2kkwPpRHkzm/uBValxHzX2Wf9iV5mUpO9q0i3xp3XCIioc5l9gkwwQZNpL9mqvJA7qgUNgqFMFo/5dMUVjJLf6QCehZytTAevBapYQUZ4bD3Ge0IJZ6rnIzXVmvaYqw0Kl1s3lvQwQmtiNr9Of66Jk5vClnRlFMlRhM3sf36/Q5YNZk1b2WwQKxKkaBvYeBU7eMd0RBcD6O8mcfKglTFNTIhGsUFfUHPQ4Gwh7UDTLZC2B+j8Vprk/2OBauQjKNl7lGpoxEUGFhCA==
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: CY8PR11MB7777.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 556b4dbf-37e3-4a3e-85a5-08de95665266
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Apr 2026 11:59:43.4393 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: qEj/0XAMJeIWhToqpE+5Eka2o1DFn1mKI751Ge5syS/8u2K1QHjueVZbh7pA8qkj/QhpeVNldmopmoc/kDKwWY4QSY9CmoJe07tM6J/Nsf0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR11MB8030
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
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	MIME_BASE64_TEXT(0.10)[];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_ALL(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:dkim,intel.com:email,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[vinod.govindapillai@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[3];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-gfx];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9FC503BB9CF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

T24gVHVlLCAyMDI2LTAzLTI0IGF0IDE1OjQ4ICswMjAwLCBWaWxsZSBTeXJqYWxhIHdyb3RlOg0K
PiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwuY29tPg0K
PiANCj4gVmVyaWZ5IHRoZSBwcmUtaWNsIE5WMTIgWSBjb2xvciBwbGFuZSBEREIgZW50cnkuIFRo
dXMgZmFyDQo+IHdlJ3ZlIG9ubHkgdmVyaWZpZWQgdGhlIFJHQi9VViBEREIgZW50cnkuDQo+IA0K
PiBTaWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50
ZWwuY29tPg0KPiAtLS0NCj4gwqBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93YXRl
cm1hcmsuYyB8IDQgKysrKw0KPiDCoDEgZmlsZSBjaGFuZ2VkLCA0IGluc2VydGlvbnMoKykNCj4g
DQoNClJldmlld2VkLWJ5OiBWaW5vZCBHb3ZpbmRhcGlsbGFpIDx2aW5vZC5nb3ZpbmRhcGlsbGFp
QGludGVsLmNvbT4NCg0KPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfd2F0ZXJtYXJrLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L3NrbF93
YXRlcm1hcmsuYw0KPiBpbmRleCAxN2ZhZjA5MGExNTQuLjFkOTMyYzM3ZDc2OCAxMDA2NDQNCj4g
LS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gKysr
IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfd2F0ZXJtYXJrLmMNCj4gQEAgLTQw
MjIsNiArNDAyMiwxMCBAQCB2b2lkIGludGVsX3dtX3N0YXRlX3ZlcmlmeShzdHJ1Y3QNCj4gaW50
ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gwqAJCXNrbF9kZGJfZW50cnlfdmVyaWZ5KHBsYW5l
LCAiRERCIiwNCj4gwqAJCQkJwqDCoMKgwqAgJmh3LT5kZGJbcGxhbmUtPmlkXSwNCj4gwqAJCQkJ
wqDCoMKgwqAgJm5ld19jcnRjX3N0YXRlLQ0KPiA+d20uc2tsLnBsYW5lX2RkYltwbGFuZS0+aWRd
KTsNCj4gKw0KPiArCQlza2xfZGRiX2VudHJ5X3ZlcmlmeShwbGFuZSwgIkREQiBZIiwNCj4gKwkJ
CQnCoMKgwqDCoCAmaHctPmRkYl95W3BsYW5lLT5pZF0sDQo+ICsJCQkJwqDCoMKgwqAgJm5ld19j
cnRjX3N0YXRlLQ0KPiA+d20uc2tsLnBsYW5lX2RkYl95W3BsYW5lLT5pZF0pOw0KPiDCoAl9DQo+
IMKgDQo+IMKgCWtmcmVlKGh3KTsNCg0K
