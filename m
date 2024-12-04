Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CBFA89E35FB
	for <lists+intel-gfx@lfdr.de>; Wed,  4 Dec 2024 09:54:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3E2F710EC82;
	Wed,  4 Dec 2024 08:54:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FDBNn7l3";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E896D10E06A;
 Wed,  4 Dec 2024 08:54:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1733302444; x=1764838444;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=/H7GNv0TLA0hupWHY3H8g64q+J8T01h6C+RFVx0WIHQ=;
 b=FDBNn7l3Cm77zzXz4QWm5zyU5S9j/kSSleidWRzypc1jjxV7pngNQwVH
 ac+vpKeDsXwKIHepHIe5zBBGXgKQdxkjIflF5GcMOsrwslYIyRysTI5mb
 8L3VDp4IqnkFS7P1JpUvzUk3++DqMm3sT1uinEmdkX7IxjoJVigFcjMnQ
 ft34NiO43kYflY8th4onx+wpyrzjyn1CFoMA5QcuEm5l29WCLB7xfDN+y
 8IKcrzezRxiNt1f9eVaotRbh4TffIxIGU8vCErqvPFhC6CYjCSr/0E2mA
 GaXZI+UFvVk/s2PVYRtuHInJagbRnonBgeBDUUjzH/s1Tk9loWiPOwey5 g==;
X-CSE-ConnectionGUID: 37EfUxTtQOKlO1roCFnrjw==
X-CSE-MsgGUID: b9utLSTvQFeNskWw0HywmQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11275"; a="21138623"
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="21138623"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Dec 2024 00:54:03 -0800
X-CSE-ConnectionGUID: U+BKe9meR32D3W3OcOzMfg==
X-CSE-MsgGUID: VQB4oZAJQPG5+RcpToUKPQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,207,1728975600"; d="scan'208";a="97765044"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 04 Dec 2024 00:54:03 -0800
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 4 Dec 2024 00:54:03 -0800
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 4 Dec 2024 00:54:03 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.172)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 4 Dec 2024 00:54:03 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=jYwEPxPszCyNRL6S64GW0BlAYN+dOwj1mnD7pdGDQuTYjWho3ePPW9ssO5Sd6K/VmhKEBJT09ptoNeWPy/L3p2Pw7BAFjhGMMxuSu2FkBeOuPPBm98U9BrEIoVcZ6kzsuu0uYG8IJKbT8jSn3wCYUdCgOl1oGn9xeVmlTqkgo6ZvnRS2TOmQIqK14B4QlxpQkZlHxYsERDSx1ZbQvRXnXGBrhUv3fx98I0cT4ZFz5tEN7LMUiGi4LMJrn3iJ5a2zFLvYTtcLCHs6bLMcfbFwlCC9zn1GuypLG3IHUjpwuv/v3vC8NnkJ6VgLYFKwCpX6PhikEOR8H8yU0YKE/H4cQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=/H7GNv0TLA0hupWHY3H8g64q+J8T01h6C+RFVx0WIHQ=;
 b=hoCnVToYCRVX9g3E3YkO7snLb0CCh9xKEhpvhzUNLOWZ7rh271OqSMCgxOhb9/O284rHgMtF963veqgHI2qeUP9GvTh2UsoSuBvY5gnQLkNrGT+FewX+xcJBuqvvBQC/xzotqYj7GZsWLlL6nRGHlG511BKCS8+NyMkw42qnAMEKCt6qUbxnJxHO9UsWlx7mgE2Gf6CN1Aax8CxYYPrIYUvbVfWNA6MKO02y4jagJadgLqJ0GAbsaF8ZIQQUHJ+vKlM+3bTAxzbdJZsaP4gMdN3rSVRe7/e7HFcCWlVj6CgDivdXg7weWMQLfdnVnB6ph6VGj03Rw9ZOHwY46Pzb2Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MW4PR11MB7054.namprd11.prod.outlook.com (2603:10b6:303:219::20)
 by MW3PR11MB4588.namprd11.prod.outlook.com (2603:10b6:303:54::19)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8230.11; Wed, 4 Dec
 2024 08:54:00 +0000
Received: from MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e]) by MW4PR11MB7054.namprd11.prod.outlook.com
 ([fe80::9504:33a7:4018:581e%3]) with mapi id 15.20.8207.014; Wed, 4 Dec 2024
 08:54:00 +0000
From: "Kahola, Mika" <mika.kahola@intel.com>
To: "Nikula, Jani" <jani.nikula@intel.com>, "intel-gfx@lists.freedesktop.org"
 <intel-gfx@lists.freedesktop.org>, "intel-xe@lists.freedesktop.org"
 <intel-xe@lists.freedesktop.org>
Subject: RE: [PATCH] drm/i915/cx0: split out mtl_get_cx0_buf_trans() to c10
 and c20 variants
Thread-Topic: [PATCH] drm/i915/cx0: split out mtl_get_cx0_buf_trans() to c10
 and c20 variants
Thread-Index: AQHbQlO9WRs9CI1rb0Wpd+f3slqMAbLVz0Yg
Date: Wed, 4 Dec 2024 08:54:00 +0000
Message-ID: <MW4PR11MB7054E2FC4DA3275E9FF14F42EF372@MW4PR11MB7054.namprd11.prod.outlook.com>
References: <20241129114158.486418-1-jani.nikula@intel.com>
In-Reply-To: <20241129114158.486418-1-jani.nikula@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MW4PR11MB7054:EE_|MW3PR11MB4588:EE_
x-ms-office365-filtering-correlation-id: 62e09c94-5cd5-4dcf-2785-08dd14413276
x-ld-processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|7053199007|38070700018; 
x-microsoft-antispam-message-info: =?utf-8?B?WStZNEszS3ZTZ2tFWGVBbUg1dTd3dlRqQXJhei9HSTF5M2Z6TnBmM3F2cEF6?=
 =?utf-8?B?UlFNZisvWE5kbUZ5dlg0YjlDVDl4ZVJxNFVMblNHZEFjSWZXbkZpdURDVE4v?=
 =?utf-8?B?cXZXZlZLUjRtbERhNXo5clRIeG5DVGhMZzRPQkVZNTk3VWtPMXJNa2JaM3Ba?=
 =?utf-8?B?ZjhOMW5pMk1mUmxxbDlTLzVLUjg3RW1sUVNnTmpqelMySkZnR1FWejhBRzRq?=
 =?utf-8?B?TFozL2pUTll1QWFubnNXcHJ5TjRmbTQ3T2drdGFKb0krSVlmRCttb0NReUpI?=
 =?utf-8?B?dmNYSFlHRUtGQWVuUHVIWDYrbmJKWkdZTDdXa05vWkM3MUtQL09Ddm9EQXZO?=
 =?utf-8?B?djhGNlpjTGorZDJuQ01TdnJwaGhjTHBSYUhUUlNDQlppdGdLOHN1YlVYTnNC?=
 =?utf-8?B?OWhmRTh0aU80d3psWlQ3WkFTMU8wVG00L2E3YUtuZ1V4YnJqWWxGMWF2eERn?=
 =?utf-8?B?aUErOWVvbkR3b2V0TW5oMEt6N3l6azlYMHhzUXpZUytHS1ZMckVDL09KekQ1?=
 =?utf-8?B?ZVc2a1k1RFpYWmkxakJkNHljT1BMeVFXeE1WMVRaNDUvVTErMGh1WVE3eDl3?=
 =?utf-8?B?VytVMXZ1bE0yN1dFc0taY3FMYUQzMU91SEpFdk82ZEd0cUtzNkczMm4yb1pL?=
 =?utf-8?B?d1BwYW1XUy9jMUZTVER2WGh1WEtMTlhwVHB4Sy9hREQ4M3FFTktGVEJwRmtR?=
 =?utf-8?B?dlNnQlJEOGVlWW5YRTdBYzBaeE9ocm9teWl6VzFQL1dpU3dVN0xpL20zUUtn?=
 =?utf-8?B?UjB5V2NkVnFmTjRON1dkdGdxd1ZOWU5CYUg3aUtmTkFWRUhMclVYS21Hd0ZD?=
 =?utf-8?B?Q2NNQnlzYWtObUVVYmxlamN4UTZoNG0rR1FsN1ZKdjVpMTFFK3g3SUZCODIv?=
 =?utf-8?B?djcvY0lsUHlwK2J6UWNWazBiTW5vT0djN29JQ3owckJuSEZSYnFRU2lYdXpm?=
 =?utf-8?B?TExCeDdFcmwzWVVnQnYxKzhlNVJ0QzVxNE1mQjFYeHZDbXk0WDE1UzQ2UDl2?=
 =?utf-8?B?ZGFXdTN3Ny9UQkZqLytoTUM2UFUvOVA5c2gveWRTZVdwL09weG5COEc5U2dp?=
 =?utf-8?B?SGJSNFlrS2NkWGQvU2lWVnJ5elBGYi9xeEZEakR2TWoxUTc5bHlPQkI1c3Ny?=
 =?utf-8?B?Tk9kenRaTW9RdjIwMkIyNVhYb2pzRnptVUd1OHI3REp1em93VitXNmxNNzJj?=
 =?utf-8?B?QTFWQ3BvbTRXaUtxd0pLQjU2YWFNeUw3MlhvQlIyYzRuaGsyS3FPbWlieEtC?=
 =?utf-8?B?ekdzbVpQN09jcUwxRFR6Y2FmT0tTV1hJSWx2ZDJ2b0M5TnRQWUVORllEQ1M0?=
 =?utf-8?B?aGxHVjNZVFh4QnM0NitpR05OaEtPZy94bkIwWFNMLzdSUXI5cmM3REg1NjB6?=
 =?utf-8?B?UXFlYUVQYUFLMTNMUU1MS0dUOGRwaUk5SUJBenBoOFVXeXRId2lsWFc1SVRU?=
 =?utf-8?B?YjhocVdnSXlEekMvZGJvdWpNeXlVSUN2ekJXaUdKZ2RIcjlMN1ppaDQ3YjRJ?=
 =?utf-8?B?T2NicUpWOUkzeVNjbXNZZFdJY2l5U0s1enZlVDkrTmNzT2ltaXkwZlI0YVo1?=
 =?utf-8?B?VFQ1ZWQ0TkRoaDNnRUZQaFY0RTVXUnloSzA1K3ZlOFZwaHFhOGFiQzVuQlRo?=
 =?utf-8?B?a2VRejgzZjQxMVJmWS9SV3NmVlo4eUR5T0Vqa1J6SHlMMWtlK1RYZUZXVFQy?=
 =?utf-8?B?M2w0TXNlZDE2aTJUUzFGV1cxQy81Y1VlbHZ6c011bWNOdWJVM0dMZEx1cnc5?=
 =?utf-8?B?RmtBMGVRN3NuT3J5S2k2UXd3S2hzOEFsWlBFKzMyckMweWlGYm5mdkNWQmlr?=
 =?utf-8?B?ZTQweUJJN0pmeW1ldjdrSTh5clQyZlVnQkMzQ3liWUg3VUZLRDI3blljNXpk?=
 =?utf-8?B?UlpJVkFqd20vSTZiekxrd3FPNkVZRU14dG1TR0JZQmtXbWc9PQ==?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MW4PR11MB7054.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007)(38070700018); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OHZQc2pTUitpcXQ4SGc5NHJHbHYzamlQRE9rMVgwQ0dDZThSWEtkOGhaYVJG?=
 =?utf-8?B?UUtJUnJ2Q0ZUQXA3Q253dlczd2w2YS9lSm9nekRCbENQditERXRoa1hJSCtP?=
 =?utf-8?B?SURjakR4Ym1KNUlhSWh2RVRURmFIdGRqMVJqbDRkR25FMU9JVDNkS3pyUEFQ?=
 =?utf-8?B?dlZQZFdMd0puRmdnZzl3RFFTSWt5eGJNSHMrZzVsRWlCRDdVWWZOZjZLRHFm?=
 =?utf-8?B?SG5nRXJKYzgwUFRQM3Vyd2hnNEtiWTFVMlkvSVFmOFphUjVaRTM5TW1ZNlhK?=
 =?utf-8?B?S1lEejF6RWtjUmlPSnhJdkNMZ2RRRFowazVXRTN2N2drSnNIdW1SY1NGeWRJ?=
 =?utf-8?B?ell4bk9DVDFCL0htc0xJUGp5K1FsNnFLQ3k5YXJFSW9VTk5MM0xYenBBelBU?=
 =?utf-8?B?Y1BnMjhsc0htYllqdDdsNE5BOVBlVTAyT1J0QWlwTXNpL1ZLVXdMVFRIUGpH?=
 =?utf-8?B?L25VRHl1TzhVV210MzcvN08xZnYvWTNSZGQzaHY3OVJWZHdPM0F2UEJiV3RU?=
 =?utf-8?B?R3lzWkZSSkNWWnlnWUhYLzJtcVY5Z3BxanR6ZzFjdm9oa0UrSTRFbUVZb09a?=
 =?utf-8?B?QWxCSkZkaUs0MFA2aFd0cXRTaGErK3JMYWxQT1lURmxXaVpEbmo5QXpMRGli?=
 =?utf-8?B?N1VKdUYyVG1MZldrdjhSWVJXUXQ1dEdrSHJJTDhBcDFjdFE4dVc5VWpxbG5S?=
 =?utf-8?B?NEo5SHFrTUFLZE5qaGJBVE1xTnBBSWtkNFpZZHdyNko3M2Z5cXVWTEwyaGxG?=
 =?utf-8?B?L3hZdWNvUnBxdEk1dUlaMDJzeDNFSWxBeXJUNmtkOU1iZFZBanpQNmhIRThv?=
 =?utf-8?B?NW5OSjhSZ3VFNGNTU2dVeFRkVjJ0MzBpVlQ0b2tuVkpidmJhT0FZQVZJZ1Vx?=
 =?utf-8?B?YVp5aTR3aHNsdCtEYUNnaDRTclh5RzZLSTFyNWZDRy9ZR243ZnkxeEFvWXpW?=
 =?utf-8?B?SXpQYVBvWlVadm90TVRoTkszS3FaTDNtR1RiVVBDekxCREk4dUQxN1ZYQTY3?=
 =?utf-8?B?NGVmTndMeUp5RXV6dVdUSnd0VmZ1eVk5RjcyYWU0aEc2U2lXRWp3K3FDRDFZ?=
 =?utf-8?B?czhtZXh0RmIxWk5ZQkFXQTFRL0ROcHBnUTlFY056TTR1WnZ1aXgrUHFhNkxm?=
 =?utf-8?B?SHBvSlZCSnF1Mlh3dlJ0cVpQbEdhTktmd25RTjNCWUhhc0RPcWdXZFFVOEJK?=
 =?utf-8?B?ZVdLNFI1UzZWZWJJNlh3Y3pUeGlrRmhWZktiYWVYbHZFc2psSkVXSGpFeDJY?=
 =?utf-8?B?STczN2J4NGZIRDJ3U2ZUdys1SnM4eVFkWDEyTlBkaFpmcSt4dHlWYTVoNk5Z?=
 =?utf-8?B?NW9rNXBIR0srRm5vaWhFSldXdVFlZ0hWVXlmU25sRGpHVEVkMGNneTUvSUc2?=
 =?utf-8?B?S0dzMldjVE1KZnJRcjNuMVVHZFpNWWRna2JKTzVZaTdFZGxINVAxQ3MrajR0?=
 =?utf-8?B?SU44TXFoZWlnRW14dDNBMng1bHdTOE5Fa1pqb2FIbXVXQW1yaHRvZkthVk1n?=
 =?utf-8?B?bU9PN1FyR1ROc28zWURIcU5YZ084dTBLOGtoVmMxVXh4dms4OGErdVM5Zkh0?=
 =?utf-8?B?eUZ3NUJhUFpLYisxcEJQSVVFc2tPYWFHci9ROWk5Y2ZJTWV2WjZ0ZEkzUXRu?=
 =?utf-8?B?Wm9SeTBtWGRSdXFEUm50OG5YeDJneDRJUmhyTEdoL0lNY2lUVldTYlBPbzBl?=
 =?utf-8?B?dzVyMTJ4Rk9xUmRkUC9CdFhhMHVHaXNTVGVqTEJVWVkvcGZ1OEhGa2Y5NTh6?=
 =?utf-8?B?bGkzbVA2WkVxNGtwOTk3K0lXbExSL1h5VG5HMWdVbG05M0E3ZnM1djdxY1Jm?=
 =?utf-8?B?Z3RIdmhOV1RmbEJTVjBxMkowa0V3UEdKMGt3dWNZbS9rRVQrd3FHOHlCaGZl?=
 =?utf-8?B?YjJ0ZUxSblJyRnpPRUdxWDVYU0U5Z3Zvb1pha2dMbFZrcUx0K1NLS04vZHIr?=
 =?utf-8?B?bnQxU2dvSmNQblV1TGh3STRiS0lWVExNeWY2MVNLcm44Y3BRajNlOENUWkpi?=
 =?utf-8?B?RnRwOCtBMkRVakFrcVF2ZEtCUmduM3ZVZjhBQkdhV241NFRHRVZCYnFXeEFO?=
 =?utf-8?B?Q1FPSlMrbFUyc2pXNHo1MDU3OHM3aFJiYVY0UEVoR1BLSjliTE5hVEhGeW5u?=
 =?utf-8?Q?U/3RqZ0dgWhtBmZLppfqs9G8R?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MW4PR11MB7054.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 62e09c94-5cd5-4dcf-2785-08dd14413276
X-MS-Exchange-CrossTenant-originalarrivaltime: 04 Dec 2024 08:54:00.8353 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: TOTlYgUdKHhc1LLZiCISuiRIg5S/pJaE/hxf0VqivIwC+93Kfr4TRe22IwaA2CxNAoGi1lJMc1vMR1TZmAqQEg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW3PR11MB4588
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBOaWt1bGEsIEphbmkgPGphbmku
bmlrdWxhQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCAyOSBOb3ZlbWJlciAyMDI0IDEzLjQy
DQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnOyBpbnRlbC14ZUBsaXN0cy5m
cmVlZGVza3RvcC5vcmcNCj4gQ2M6IE5pa3VsYSwgSmFuaSA8amFuaS5uaWt1bGFAaW50ZWwuY29t
PjsgS2Fob2xhLCBNaWthIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRD
SF0gZHJtL2k5MTUvY3gwOiBzcGxpdCBvdXQgbXRsX2dldF9jeDBfYnVmX3RyYW5zKCkgdG8gYzEw
IGFuZCBjMjANCj4gdmFyaWFudHMNCj4gDQo+IFRoZSBQSFkgaXMgZWl0aGVyIGMxMCBvciBjMjAs
IHRoZXJlJ3Mgbm8gbmVlZCB0byBjaGVjayBhdCBydW50aW1lIGFuZCBjb21wbGljYXRlDQo+IHRo
ZSBjb25kaXRpb25zIGluIG10bF9nZXRfY3gwX2J1Zl90cmFucygpLg0KPiANCj4gV2hpbGUgYXQg
aXQsIHJlcGxhY2UgdGhlIGRpcmVjdCBwb3J0IGNsb2NrIGNoZWNrIHdpdGggaW50ZWxfZHBfaXNf
dWhicigpLg0KPiANCj4gQ2M6IE1pa2EgS2Fob2xhIDxtaWthLmthaG9sYUBpbnRlbC5jb20+DQoN
ClRoZSBjaGFuZ2UgaXMgcmVhc29uYWJsZSBhbmQgc29saWQuDQoNClJldmlld2VkLWJ5OiBNaWth
IEthaG9sYSA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPg0KDQo+IFNpZ25lZC1vZmYtYnk6IEphbmkg
TmlrdWxhIDxqYW5pLm5pa3VsYUBpbnRlbC5jb20+DQo+IC0tLQ0KPiAgLi4uL2RybS9pOTE1L2Rp
c3BsYXkvaW50ZWxfZGRpX2J1Zl90cmFucy5jICAgIHwgMjMgKysrKysrKysrKysrKy0tLS0tLQ0K
PiAgMSBmaWxlIGNoYW5nZWQsIDE2IGluc2VydGlvbnMoKyksIDcgZGVsZXRpb25zKC0pDQo+IA0K
PiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVm
X3RyYW5zLmMNCj4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RkaV9idWZf
dHJhbnMuYw0KPiBpbmRleCA0ZDIxY2U3MzQzNDMuLjkzODliMjk1MDM2ZSAxMDA2NDQNCj4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMNCj4g
KysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kZGlfYnVmX3RyYW5zLmMN
Cj4gQEAgLTE2ODcsMTggKzE2ODcsMjQgQEAgZGcyX2dldF9zbnBzX2J1Zl90cmFucyhzdHJ1Y3Qg
aW50ZWxfZW5jb2Rlcg0KPiAqZW5jb2RlciwgIH0NCj4gDQo+ICBzdGF0aWMgY29uc3Qgc3RydWN0
IGludGVsX2RkaV9idWZfdHJhbnMgKiAtbXRsX2dldF9jeDBfYnVmX3RyYW5zKHN0cnVjdA0KPiBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiArbXRsX2dldF9jMTBfYnVmX3RyYW5zKHN0cnVjdCBp
bnRlbF9lbmNvZGVyICplbmNvZGVyLA0KPiAgCQkgICAgICBjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0
Y19zdGF0ZSAqY3J0Y19zdGF0ZSwNCj4gIAkJICAgICAgaW50ICpuX2VudHJpZXMpDQo+ICB7DQo+
IC0JaWYgKGludGVsX2NydGNfaGFzX2RwX2VuY29kZXIoY3J0Y19zdGF0ZSkgJiYgY3J0Y19zdGF0
ZS0+cG9ydF9jbG9jayA+PQ0KPiAxMDAwMDAwKQ0KPiArCXJldHVybiBpbnRlbF9nZXRfYnVmX3Ry
YW5zKCZtdGxfYzEwX3RyYW5zX2RwMTQsIG5fZW50cmllcyk7IH0NCj4gKw0KPiArc3RhdGljIGNv
bnN0IHN0cnVjdCBpbnRlbF9kZGlfYnVmX3RyYW5zICogbXRsX2dldF9jMjBfYnVmX3RyYW5zKHN0
cnVjdA0KPiAraW50ZWxfZW5jb2RlciAqZW5jb2RlciwNCj4gKwkJICAgICAgY29uc3Qgc3RydWN0
IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUsDQo+ICsJCSAgICAgIGludCAqbl9lbnRyaWVz
KQ0KPiArew0KPiArCWlmIChpbnRlbF9jcnRjX2hhc19kcF9lbmNvZGVyKGNydGNfc3RhdGUpICYm
DQo+ICtpbnRlbF9kcF9pc191aGJyKGNydGNfc3RhdGUpKQ0KPiAgCQlyZXR1cm4gaW50ZWxfZ2V0
X2J1Zl90cmFucygmbXRsX2MyMF90cmFuc191aGJyLCBuX2VudHJpZXMpOw0KPiAtCWVsc2UgaWYg
KGludGVsX2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0hETUkpICYmDQo+
ICEoaW50ZWxfZW5jb2Rlcl9pc19jMTBwaHkoZW5jb2RlcikpKQ0KPiArCWVsc2UgaWYgKGludGVs
X2NydGNfaGFzX3R5cGUoY3J0Y19zdGF0ZSwgSU5URUxfT1VUUFVUX0hETUkpKQ0KPiAgCQlyZXR1
cm4gaW50ZWxfZ2V0X2J1Zl90cmFucygmbXRsX2MyMF90cmFuc19oZG1pLCBuX2VudHJpZXMpOw0K
PiAtCWVsc2UgaWYgKCFpbnRlbF9lbmNvZGVyX2lzX2MxMHBoeShlbmNvZGVyKSkNCj4gLQkJcmV0
dXJuIGludGVsX2dldF9idWZfdHJhbnMoJm10bF9jMjBfdHJhbnNfZHAxNCwgbl9lbnRyaWVzKTsN
Cj4gIAllbHNlDQo+IC0JCXJldHVybiBpbnRlbF9nZXRfYnVmX3RyYW5zKCZtdGxfYzEwX3RyYW5z
X2RwMTQsIG5fZW50cmllcyk7DQo+ICsJCXJldHVybiBpbnRlbF9nZXRfYnVmX3RyYW5zKCZtdGxf
YzIwX3RyYW5zX2RwMTQsIG5fZW50cmllcyk7DQo+ICB9DQo+IA0KPiAgdm9pZCBpbnRlbF9kZGlf
YnVmX3RyYW5zX2luaXQoc3RydWN0IGludGVsX2VuY29kZXIgKmVuY29kZXIpIEBAIC0xNzA2LDcN
Cj4gKzE3MTIsMTAgQEAgdm9pZCBpbnRlbF9kZGlfYnVmX3RyYW5zX2luaXQoc3RydWN0IGludGVs
X2VuY29kZXIgKmVuY29kZXIpDQo+ICAJc3RydWN0IGRybV9pOTE1X3ByaXZhdGUgKmk5MTUgPSB0
b19pOTE1KGVuY29kZXItPmJhc2UuZGV2KTsNCj4gDQo+ICAJaWYgKERJU1BMQVlfVkVSKGk5MTUp
ID49IDE0KSB7DQo+IC0JCWVuY29kZXItPmdldF9idWZfdHJhbnMgPSBtdGxfZ2V0X2N4MF9idWZf
dHJhbnM7DQo+ICsJCWlmIChpbnRlbF9lbmNvZGVyX2lzX2MxMHBoeShlbmNvZGVyKSkNCj4gKwkJ
CWVuY29kZXItPmdldF9idWZfdHJhbnMgPSBtdGxfZ2V0X2MxMF9idWZfdHJhbnM7DQo+ICsJCWVs
c2UNCj4gKwkJCWVuY29kZXItPmdldF9idWZfdHJhbnMgPSBtdGxfZ2V0X2MyMF9idWZfdHJhbnM7
DQo+ICAJfSBlbHNlIGlmIChJU19ERzIoaTkxNSkpIHsNCj4gIAkJZW5jb2Rlci0+Z2V0X2J1Zl90
cmFucyA9IGRnMl9nZXRfc25wc19idWZfdHJhbnM7DQo+ICAJfSBlbHNlIGlmIChJU19BTERFUkxB
S0VfUChpOTE1KSkgew0KPiAtLQ0KPiAyLjM5LjUNCg0K
