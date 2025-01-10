Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 77510A0962C
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 16:44:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1B63910F117;
	Fri, 10 Jan 2025 15:43:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jZncu2Mw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E158310F120
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2025 15:43:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736523838; x=1768059838;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=W9ToC7PYu27NbQD4Gusjl2osToyzB+HKyl3QoBVVtOo=;
 b=jZncu2MwCbAQ+9pIwEJ8J/qI8fmwbsrUuCKuvEg4nZGpN1N9aJePkqpt
 t2CniWyL9oraKJ2oj9oRZ8skEAX2P8/NvZphj6za3J/BCfCj6HG0fmWSd
 mmLuBV1ehsT1VtBYOUYK2m937+8eVbAa76O53c/A+mOWc1o2aDxD8nNRB
 OKlbg9yLeHDNI8HnV8G5lQiI7pAAglVKAsoc7gPOXBAvWvpT+ic1mSUP6
 zJrsQlaK7mflX39JcY+GHlMLnI8RScjrwNROq0bhYPOONzQH8/Iq512q/
 RJnkGPbLtzZ9midBezlx4TKlfF8In1qMtvLkBt7kINizMK0bxLG8nMeyO w==;
X-CSE-ConnectionGUID: 4SxlA2hCT0Kz6pFwP4/6PA==
X-CSE-MsgGUID: 9tojTWQzR62MV9riGwIO4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11311"; a="36037658"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="36037658"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jan 2025 07:43:57 -0800
X-CSE-ConnectionGUID: QYFcmL2iTj+I05rJVbdpWQ==
X-CSE-MsgGUID: 5CdhuxZHRKSq4RdbbXfzow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="104278190"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa007.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 10 Jan 2025 07:43:57 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 10 Jan 2025 07:43:56 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 10 Jan 2025 07:43:56 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.175)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 10 Jan 2025 07:43:55 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=vDpki5viIvrJqdjOWfwcoz/MPfvItYF6p0C/sqduS0NxR0r+uhBEQ9Jm0gXHunwxh3BtA+6tm4R+bjQrkQfgr3VrYUXFrQ7DPO1ha4NQMwhc75V755GkvhDDlASzdoEGyyqSaNr/leIi9xcfrf3rvDR/zKOjPj3K4xSDtm/pQ2XGIsQ1vpkG6HPYKEAFUmCMzQI7XoCR5KGnNKcjwRUJtGVp91FV0hlhs3oXOrHiR0JH9ldYdT+6qnjDLydLXY8MNDONtgRlCNrd3bmPE/Jd6bYQ/xJ/+j5XBSVxnvumjwi0vmEUp1OU9uyu4JKQ4Jm1mNQHzO20lOK5LUvN0wB3ag==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=W9ToC7PYu27NbQD4Gusjl2osToyzB+HKyl3QoBVVtOo=;
 b=U+U8Njv5SjUGuhLx7pZUV9KlYRyr9H+tS/sWXFltqjCgOLAVpCQGresHtrld9aUO8lf5No6ocaa8YK/z/W3YFBx8Z3lC0U38N/aFE6ppccrEq9GtzV4xsJS605HKF4jJuGQm0PdR7NWiBO9PVmh622dB3JUdyi2tLGGlZmX0lgQI9twvhCDeNyVCtWJ6lAoQZWFNsMgAnLWYqZFcJ5Ghi25gnvR34JlMQQW/qJtMFiHRhOaVeaz41bCFHYkq8qN+21V6vpX32Fs4m2gXv03tbKRn3ux3cLxfuQSqRpImk+jYfMUzntPNDdhqPnlcKE7alXdVFI8/YCw953DlBTxW4A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from MN0PR11MB5987.namprd11.prod.outlook.com (2603:10b6:208:372::8)
 by MN0PR11MB6086.namprd11.prod.outlook.com (2603:10b6:208:3ce::11)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8314.17; Fri, 10 Jan
 2025 15:43:35 +0000
Received: from MN0PR11MB5987.namprd11.prod.outlook.com
 ([fe80::a7c3:f2e2:98a9:da87]) by MN0PR11MB5987.namprd11.prod.outlook.com
 ([fe80::a7c3:f2e2:98a9:da87%4]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 15:43:35 +0000
From: "Chery, Nanley G" <nanley.g.chery@intel.com>
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Ghuge, Sagar" <sagar.ghuge@intel.com>, Xi Ruoyao <xry111@xry111.site>,
 "Souza, Jose" <jose.souza@intel.com>
Subject: RE: [PATCH 4/4] drm/uapi/fourcc: Document the Intel clear color
 alignment better
Thread-Topic: [PATCH 4/4] drm/uapi/fourcc: Document the Intel clear color
 alignment better
Thread-Index: AQHbQisGHf0d6qUutk+igxqIxfpjIbMQZdGQ
Date: Fri, 10 Jan 2025 15:43:35 +0000
Message-ID: <MN0PR11MB5987217695BB98F25B39645ADC1C2@MN0PR11MB5987.namprd11.prod.outlook.com>
References: <20241129065014.8363-1-ville.syrjala@linux.intel.com>
 <20241129065014.8363-5-ville.syrjala@linux.intel.com>
In-Reply-To: <20241129065014.8363-5-ville.syrjala@linux.intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: MN0PR11MB5987:EE_|MN0PR11MB6086:EE_
x-ms-office365-filtering-correlation-id: 71bb4308-d8b6-4a82-a534-08dd318d8b6a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|376014|366016|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?YTJ3RSt1SndrczF4NlBnVStCdzdmckVrZGJoNVZSR0pLWWJzQWczdUsxWVp2?=
 =?utf-8?B?N0p4d3lKSUcrTEo1eURmOUtEUUNVQVpqWjFmTXoyMU4vamRUelozMUlicHZK?=
 =?utf-8?B?SkFIMWdRTDJOYzl5MEorRG50WDFRNDY1OGhpV2czQVowMjB4Vk9jNEM2aVBC?=
 =?utf-8?B?UHNvajltNlJkdC9tVCs5aWgxU3BXZkxXTDYvZjVoU3Fib3F3bmJra2l3VU55?=
 =?utf-8?B?YnJCT0JVVzk2MVFBc2dTWmt2OE91LzVjeUVacUQrdHBDOXUwazJwTWswTEJY?=
 =?utf-8?B?ZUZaYmtiSEZydy8yLzd6MVJwL0xMZWxmajUvSEd1b0xSUlJMRWk2aG5oczNz?=
 =?utf-8?B?WWJZbThtZTRLVmM1Skc0WmdWQkhQbzB4VFM4dmlFQzFRM1V6NUhWUmRoODA1?=
 =?utf-8?B?a0hkbU1GbzBndmM3VzFMUlhqUmZCYnJyeG9OaEg4eFQyQXloOFBXWmdoZGhZ?=
 =?utf-8?B?Qlg3eVh3aWF3aC9vUk83YzkyWkVpdEZVY083TzNENkZSYSt2RVR6OUZ0d0NB?=
 =?utf-8?B?bTVQTzNKUUVNSFZ5WHRkKy9YU0huUTBocjRoTDFJaklOelZRT0NLVzFSU1hS?=
 =?utf-8?B?RDJKaGZpY1JKeVZqV2lUQ3BJK3F6bzNBZ1EvSUtPQ3loWjVaN3g2NjFEZjFx?=
 =?utf-8?B?YkJlRklzTHVqd29xbU5PZ2dId1UxM0pVTVhNMXdabHRmeEIzZVNsN3Iyd3Fs?=
 =?utf-8?B?ZDRkMUxYZTE5Q0UzM09aQU1nbk1lK0JOUTJxeEViTWFESWlkemMra0RoSFdD?=
 =?utf-8?B?eXZ1ejM4ZmIweWcyRHRwaHB1Tk9hNVNYNXZ3MlN6My81bFZOZ0pCS2pkb3hr?=
 =?utf-8?B?K2tPQmdCQTZjWTlGUTh1cVVGL29SU25NVENHR2RyQ3JrMmpUVEx5aGF3bnFr?=
 =?utf-8?B?ekV6Q242UVpQM3lWQXBQVlFsYU9MUVVmeFp0c0p5VDBJUi9PdFdMVWFzM0VS?=
 =?utf-8?B?aWE4S3V5d3hyUFFoWlgzL1ViNXNxQ2d4L3dMMUtHdVp1bEtQS092STVyNVgy?=
 =?utf-8?B?V0M4OUJZK2RtOStEUTArelBscEpVL1F5NERER1NjYXhqRnNiWVY0YUplR1ZR?=
 =?utf-8?B?TS9weGpyb1liRndWbUNMalRFZk5SaGROTzZEdTJjVmhENGNxVUlVd1lWbE8z?=
 =?utf-8?B?Q1FoUkNpVk1YT1Zzd0hwVzNRdDhxSzZuRjYxMnFtb0MxQlRrQytMZklJYlNC?=
 =?utf-8?B?TWEwbFRyNXpZOEZmWkhmSlQvem1Ld1p1clpCRFdoN041dThyYnNwcWtXUENa?=
 =?utf-8?B?M0JCYzJwTENZQndyS3hYOVR3WDlnVVIvaWQ1TjJiR3hyQXB0RENzNVBTdHpV?=
 =?utf-8?B?WXZqRyttNDhYam9jWDEyRzRtWXhWb0RxRjVucDA0dENnV2hLWlJHUjEvTUhu?=
 =?utf-8?B?aTVvUnJrS1p2WDFpUytsQXNMZFAvTUh3WTJJTzdORm1hVjFJMWVjZkFmRit5?=
 =?utf-8?B?dVZoQmF4OXZEUXJEa1p1NU44ZlhLUjBOdUxSZWtQUXBGZ3dwTDQ2R3RCMWNW?=
 =?utf-8?B?Nkk4ZzFYUk1JN0l5TEtUU2diVjZOVnRMVFN2NXlySDF0RDV5RnBzdEtRS0ly?=
 =?utf-8?B?K3d5WDRIdXFndE1QbGUzV3JsRTU4YkJ4TnpHUjc1QVkweUZFRlBMVXRhNER3?=
 =?utf-8?B?RlB4Z1hjVGI3NkV1VUlwUWNBTzBSbFFBWTBuQm9acjZmV3g4dXFiTGRranhH?=
 =?utf-8?B?WFV3bDhEM24rNWFpMEY0azVUd2U1czJXUjFwa01xL0JpVEQ1WUt5Wnp3aVRj?=
 =?utf-8?B?RU56KzJMYkZBZkp4SXZ3cmdybURHMnVyTXE2T3F5NXJIaUVBWmhtQWF3b0lR?=
 =?utf-8?B?WEM4SFdQcE1RTkJab29QQ0tadFZaZzJkTzdYNUpXM3ZjWUNQOS93NnVOY25P?=
 =?utf-8?Q?DeQ5S70ztgf+2?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:MN0PR11MB5987.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?UHdENVdPWlJneEpocGhDZ0FsZ2dOd1BNVHc1dVFTQWxLOVQzc2E5bDd2eTZS?=
 =?utf-8?B?K2Z6RkZpVm9YR0w2d1dNenVVNXZIYlp2WXREWkQvek1XQzVGa0NyZ3FjM0pH?=
 =?utf-8?B?b0xWdk1CQllBaHlTNi8wOGJZK0tTTFo4aDhYU0lYQlBUcFFYQkI0VnZTMGdF?=
 =?utf-8?B?VlVJY21jQjgvOVJ1amRIUXk4Z2xtWUgzanhTemp2TmRmcTBwRzZ2RDltVmJy?=
 =?utf-8?B?U1V0ZFRhbHlUOW1JaWxlTnNMLzNYN21id243NjZNcWQ0cVY1VzByUDZ3MGxt?=
 =?utf-8?B?MzNJUHh6M0VVZmE4RlJBem13WDh1VG1VWVF5RjJ6UHBYd1BnTXA1Njh6MFB4?=
 =?utf-8?B?Ny9iRDF0dm5EWUNDd29sem9ad0ZDdjRzTXVDWjNCWGF0TllpMUw1WHU2LzhQ?=
 =?utf-8?B?L0szbkw1OStzQ20xTnMvUXlob1g3eTQ0VjJmQzc2TmlETGwxaXAwQmJTSUdx?=
 =?utf-8?B?dVFOTmUvL3pudEFoZ3FXUTNPdWdzTGdKczJZR1hQd2NsNFNKNUNKcHFKMUJQ?=
 =?utf-8?B?bjQxZ21NcGtwejZkT1d5djhXMEJTVjB2MHF3eTdQckFsUVI1SU55SUdzSmpW?=
 =?utf-8?B?TjVtM2dMWHljYlBDcWJVcFhQeUg0dURtTGlmWVV2S1lEaEpNREp5QzgzOUpS?=
 =?utf-8?B?dlFJVnJ6VEMrdWtDSDFTdlJ5cmJpVHJPd0tUYTEyWVJMdmFWdFBsTU55MEFW?=
 =?utf-8?B?QTNRblBwTldiQ0tNL0NKcDdBT1R0TTBFa05TanRadzVVMDczVnorM1JmVjFs?=
 =?utf-8?B?eVlRVi9HK2JaSmtqMnlzUHVzOHkraFJ5Sm81NUdhT0NFOC9sSGphaWJ1MnEy?=
 =?utf-8?B?REZvZGZ1cllwL0gzT0JWUEdLb0xSbG8zQ2VuTGZVOURHVVJBZ1NPcWdUMjI3?=
 =?utf-8?B?WHJsT3F5TkFqcm04emYwUkNnWW81UDY3ZmlLdGRoSFFQVTgyaEF4a1Y3UDIy?=
 =?utf-8?B?RjlRN0k3U212cENncjdYS3dxNEplMjVDdmU2dTZEaFZFbDJENExVSzVoNjRj?=
 =?utf-8?B?WGxkUWN4OUxtTmlRZ25SLzhBazFYZFp5TFRLRWU3TmN3U3JpdWp5UXRvRGhO?=
 =?utf-8?B?VGM1VThRTGdKU295WEpBdnNHQjZwaHhWcktISmo5eWJRcHR4dVJNZTA3UDVX?=
 =?utf-8?B?VUphd25tNTdpenBqSjJaU0ppWkVKa3dzL1RNaGZUK3RwUXVGZkhTbk45d2Fu?=
 =?utf-8?B?czVyNEpKQ05nc054Mjl3eE9GQzBVcEFJUmI3U2R0U3FvbjQ4dVhqelkyNEhT?=
 =?utf-8?B?cGR1Uk1sKzRWZzR6Z29HYmV3MFJjN1REd2Q5aG84MWFnZHNkR3VBMkZ4a3kr?=
 =?utf-8?B?RFo3Q3VlQUVTSll3dGlMMk84YXc4SDdOWG9KQlAzMU1CeHlrOVdGMUhJV2hM?=
 =?utf-8?B?K21MeFJSalIyVzVkTzE2b0RhVmFhNGhZOHpLWTl2MVpraUZyOFR0NFZDZFdr?=
 =?utf-8?B?VWNLOXdLL2VVQVA3SnBtREI5aE1FaHFlU2xXSzJPWXNUZzYrNUt4UjE2R2M2?=
 =?utf-8?B?QWhvMUFHYTJYdTlZSldVM2ZDeVVkVDZkSUNMNWQwTFp4NEttRHhCeU11U0FT?=
 =?utf-8?B?Tno2WnVZamZncndTSUhZenFDaTdoVTNRckQ3WXJ2Tno3Ni80RnVvSlFsTHRV?=
 =?utf-8?B?WEdJZFRZbTZhc2s2alpUMXg1SUZ1dUg2elJCY2hCdHR4OTJ4VmJwaHVjeDVR?=
 =?utf-8?B?MVhlN0xVZ2RqUlVhV0l0MWVLVDR4bVpYZUtmL0hSaEZLWlRPVUVLL0FUUEdi?=
 =?utf-8?B?VkdVdGRKaHBZRGw4OGU3WlgrQ0owUWZUVFZSS2c2TFJDK2RlcFZZQXhkdXMr?=
 =?utf-8?B?RjhKL1hKblBoSTk0a09rYWVQb283R0o3bzc2dkswOEFzN3JBTjJpRm1rZkJO?=
 =?utf-8?B?ZzJab3p6ZHZDRW1CVGw5cGpzR3kvR2l1YXAvWmRVVlBHbEFlbjY5aEFpTHc0?=
 =?utf-8?B?alVvWjcxVE9hVSttUlVwVHRtdEtRYU1Sc2QvOC9FdjhIVTFRS1BtZFlya05y?=
 =?utf-8?B?NDVaK0dxRHhYM2hhSGdzY3NpTXV0OXZyTFJSbk81SDJhbFp4T0JWeVF1QzA5?=
 =?utf-8?B?WUlmNklacXl0SW5nTzc3amJFN28xNENwRktzUXEwUjZ3NzlrWG5vODlvcTV4?=
 =?utf-8?Q?NRGvVUwTe6gUWBT3r1zi0KQw+?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: MN0PR11MB5987.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 71bb4308-d8b6-4a82-a534-08dd318d8b6a
X-MS-Exchange-CrossTenant-originalarrivaltime: 10 Jan 2025 15:43:35.5604 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nxlB6UatRGe70JGvNBQtjkl6F3cCeZgUPsIh48dsForx6lwtl3vdHHFQ1Tx+Ux6l+QlxbL92V/ilE5nDI8T0IinQKM1fC53MBPZWTYyuYks=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6086
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

PiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBWaWxsZSBTeXJqYWxhIDx2aWxs
ZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5LCBOb3ZlbWJlciAyOSwg
MjAyNCAxOjUwIEFNDQo+IFRvOiBpbnRlbC1nZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IENj
OiBHaHVnZSwgU2FnYXIgPHNhZ2FyLmdodWdlQGludGVsLmNvbT47IENoZXJ5LCBOYW5sZXkgRyA8
bmFubGV5LmcuY2hlcnlAaW50ZWwuY29tPjsgWGkgUnVveWFvIDx4cnkxMTFAeHJ5MTExLnNpdGU+
DQo+IFN1YmplY3Q6IFtQQVRDSCA0LzRdIGRybS91YXBpL2ZvdXJjYzogRG9jdW1lbnQgdGhlIElu
dGVsIGNsZWFyIGNvbG9yIGFsaWdubWVudCBiZXR0ZXINCj4gDQo+IEZyb206IFZpbGxlIFN5cmrD
pGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+IA0KPiBEb2N1bWVudCB0aGUg
ZmFjdCB0aGF0IHRoZSBJbnRlbCBjbGVhciBjb2xvciBvZmZzZXQgYW5kIHBpdGNoDQo+IG11c3Qg
YmUgNjQgYnl0ZSBhbGlnbmVkLg0KPiANCg0KRG9jdW1lbnRpbmcgdGhpcyBuZXcgZmxleGliaWxp
dHkgcmFpc2VzIHNvbWUgcXVlc3Rpb25zLiBQYXJ0aWN1bGFybHksIGhvdyBjYW4gdXNlcnNwYWNl
IG1ha2UgdXNlIG9mIHRoZSA2NEIgYWxpZ25tZW50IGdpdmVuIHRoYXQgdGhlcmUgYXJlIG9sZCBr
ZXJuZWxzIHdoaWNoIHJlcXVpcmUgdGhlIDRLIGFsaWdubWVudD8gDQoNCi1OYW5sZXkNCg0KPiBD
YzogU2FnYXIgR2h1Z2UgPHNhZ2FyLmdodWdlQGludGVsLmNvbT4NCj4gQ2M6IE5hbmxleSBDaGVy
eSA8bmFubGV5LmcuY2hlcnlAaW50ZWwuY29tPg0KPiBDYzogWGkgUnVveWFvIDx4cnkxMTFAeHJ5
MTExLnNpdGU+DQo+IExpbms6IGh0dHBzOi8vZ2l0bGFiLmZyZWVkZXNrdG9wLm9yZy9tZXNhL21l
c2EvLS9jb21taXQvMTdmOTdhNjljMTM4MzJhNmMxYjBiM2FhZDQ1YjA2ZjA3ZDRiODUyZg0KPiBT
aWduZWQtb2ZmLWJ5OiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmphbGFAbGludXguaW50ZWwu
Y29tPg0KPiAtLS0NCj4gIGluY2x1ZGUvdWFwaS9kcm0vZHJtX2ZvdXJjYy5oIHwgMjcgKysrKysr
KysrKysrKystLS0tLS0tLS0tLS0tDQo+ICAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygr
KSwgMTMgZGVsZXRpb25zKC0pDQo+IA0KPiBkaWZmIC0tZ2l0IGEvaW5jbHVkZS91YXBpL2RybS9k
cm1fZm91cmNjLmggYi9pbmNsdWRlL3VhcGkvZHJtL2RybV9mb3VyY2MuaA0KPiBpbmRleCA3MGYz
YjAwYjA2ODEuLjgyMzRkYjFmNDg0YSAxMDA2NDQNCj4gLS0tIGEvaW5jbHVkZS91YXBpL2RybS9k
cm1fZm91cmNjLmgNCj4gKysrIGIvaW5jbHVkZS91YXBpL2RybS9kcm1fZm91cmNjLmgNCj4gQEAg
LTU5OCw3ICs1OTgsNyBAQCBleHRlcm4gIkMiIHsNCj4gICAqIGNvbXByZXNzaW9uLg0KPiAgICoN
Cj4gICAqIFRoZSBtYWluIHN1cmZhY2UgaXMgWS10aWxlZCBhbmQgaXMgYXQgcGxhbmUgaW5kZXgg
MCB3aGVyZWFzIENDUyBpcyBsaW5lYXINCj4gLSAqIGFuZCBhdCBpbmRleCAxLiBUaGUgY2xlYXIg
Y29sb3IgaXMgc3RvcmVkIGF0IGluZGV4IDIsIGFuZCB0aGUgcGl0Y2ggc2hvdWxkDQo+ICsgKiBh
bmQgYXQgaW5kZXggMS4gVGhlIGNsZWFyIGNvbG9yIGlzIHN0b3JlZCBhdCBpbmRleCAyLCBhbmQg
dGhlIG9mZnNldCBhbmQgcGl0Y2ggbXVzdA0KPiAgICogYmUgNjQgYnl0ZXMgYWxpZ25lZC4gVGhl
IGNsZWFyIGNvbG9yIHN0cnVjdHVyZSBpcyAyNTYgYml0cy4gVGhlIGZpcnN0IDEyOCBiaXRzDQo+
ICAgKiByZXByZXNlbnRzIFJhdyBDbGVhciBDb2xvciBSZWQsIEdyZWVuLCBCbHVlIGFuZCBBbHBo
YSBjb2xvciBlYWNoIHJlcHJlc2VudGVkDQo+ICAgKiBieSAzMiBiaXRzLiBUaGUgcmF3IGNsZWFy
IGNvbG9yIGlzIGNvbnN1bWVkIGJ5IHRoZSAzZCBlbmdpbmUgYW5kIGdlbmVyYXRlcw0KPiBAQCAt
NjUyLDcgKzY1Miw3IEBAIGV4dGVybiAiQyIgew0KPiAgICogb3V0c2lkZSBvZiB0aGUgR0VNIG9i
amVjdCBpbiBhIHJlc2VydmVkIG1lbW9yeSBhcmVhIGRlZGljYXRlZCBmb3IgdGhlDQo+ICAgKiBz
dG9yYWdlIG9mIHRoZSBDQ1MgZGF0YSBmb3IgYWxsIFJDL1JDX0NDL01DIGNvbXByZXNzaWJsZSBH
RU0gb2JqZWN0cy4gVGhlDQo+ICAgKiBtYWluIHN1cmZhY2UgcGl0Y2ggaXMgcmVxdWlyZWQgdG8g
YmUgYSBtdWx0aXBsZSBvZiBmb3VyIFRpbGUgNCB3aWR0aHMuIFRoZQ0KPiAtICogY2xlYXIgY29s
b3IgaXMgc3RvcmVkIGF0IHBsYW5lIGluZGV4IDEgYW5kIHRoZSBwaXRjaCBzaG91bGQgYmUgNjQg
Ynl0ZXMNCj4gKyAqIGNsZWFyIGNvbG9yIGlzIHN0b3JlZCBhdCBwbGFuZSBpbmRleCAxLCBhbmQg
dGhlIG9mZnNldCBhbmQgcGl0Y2ggbXVzdCBiZSA2NCBieXRlcw0KPiAgICogYWxpZ25lZC4gVGhl
IGZvcm1hdCBvZiB0aGUgMjU2IGJpdHMgb2YgY2xlYXIgY29sb3IgZGF0YSBtYXRjaGVzIHRoZSBv
bmUgdXNlZA0KPiAgICogZm9yIHRoZSBJOTE1X0ZPUk1BVF9NT0RfWV9USUxFRF9HRU4xMl9SQ19D
Q1NfQ0MgbW9kaWZpZXIsIHNlZSBpdHMgZGVzY3JpcHRpb24NCj4gICAqIGZvciBkZXRhaWxzLg0K
PiBAQCAtNjg4LDE3ICs2ODgsMTggQEAgZXh0ZXJuICJDIiB7DQo+ICAgKiBjb21wcmVzc2lvbi4N
Cj4gICAqDQo+ICAgKiBUaGUgbWFpbiBzdXJmYWNlIGlzIHRpbGU0IGFuZCBpcyBhdCBwbGFuZSBp
bmRleCAwIHdoZXJlYXMgQ0NTIGlzIGxpbmVhcg0KPiAtICogYW5kIGF0IGluZGV4IDEuIFRoZSBj
bGVhciBjb2xvciBpcyBzdG9yZWQgYXQgaW5kZXggMiwgYW5kIHRoZSBwaXRjaCBzaG91bGQNCj4g
LSAqIGJlIGlnbm9yZWQuIFRoZSBjbGVhciBjb2xvciBzdHJ1Y3R1cmUgaXMgMjU2IGJpdHMuIFRo
ZSBmaXJzdCAxMjggYml0cw0KPiAtICogcmVwcmVzZW50cyBSYXcgQ2xlYXIgQ29sb3IgUmVkLCBH
cmVlbiwgQmx1ZSBhbmQgQWxwaGEgY29sb3IgZWFjaCByZXByZXNlbnRlZA0KPiAtICogYnkgMzIg
Yml0cy4gVGhlIHJhdyBjbGVhciBjb2xvciBpcyBjb25zdW1lZCBieSB0aGUgM2QgZW5naW5lIGFu
ZCBnZW5lcmF0ZXMNCj4gLSAqIHRoZSBjb252ZXJ0ZWQgY2xlYXIgY29sb3Igb2Ygc2l6ZSA2NCBi
aXRzLiBUaGUgZmlyc3QgMzIgYml0cyBzdG9yZSB0aGUgTG93ZXINCj4gLSAqIENvbnZlcnRlZCBD
bGVhciBDb2xvciB2YWx1ZSBhbmQgdGhlIG5leHQgMzIgYml0cyBzdG9yZSB0aGUgSGlnaGVyIENv
bnZlcnRlZA0KPiAtICogQ2xlYXIgQ29sb3IgdmFsdWUgd2hlbiBhcHBsaWNhYmxlLiBUaGUgQ29u
dmVydGVkIENsZWFyIENvbG9yIHZhbHVlcyBhcmUNCj4gLSAqIGNvbnN1bWVkIGJ5IHRoZSBERS4g
VGhlIGxhc3QgNjQgYml0cyBhcmUgdXNlZCB0byBzdG9yZSBDb2xvciBEaXNjYXJkIEVuYWJsZQ0K
PiAtICogYW5kIERlcHRoIENsZWFyIFZhbHVlIFZhbGlkIHdoaWNoIGFyZSBpZ25vcmVkIGJ5IHRo
ZSBERS4gQSBDQ1MgY2FjaGUgbGluZQ0KPiAtICogY29ycmVzcG9uZHMgdG8gYW4gYXJlYSBvZiA0
eDEgdGlsZXMgaW4gdGhlIG1haW4gc3VyZmFjZS4gVGhlIG1haW4gc3VyZmFjZQ0KPiAtICogcGl0
Y2ggaXMgcmVxdWlyZWQgdG8gYmUgYSBtdWx0aXBsZSBvZiA0IHRpbGUgd2lkdGhzLg0KPiArICog
YW5kIGF0IGluZGV4IDEuIFRoZSBjbGVhciBjb2xvciBpcyBzdG9yZWQgYXQgaW5kZXggMiwgYW5k
IHRoZSBvZmZzZXQgYW5kDQo+ICsgKiBwaXRjaCBtdXN0IGJlIDY0IGJ5dGVzIGFsaWduZWQuIFRo
ZSBjbGVhciBjb2xvciBzdHJ1Y3R1cmUgaXMgMjU2IGJpdHMuDQo+ICsgKiBUaGUgZmlyc3QgMTI4
IGJpdHMgcmVwcmVzZW50cyBSYXcgQ2xlYXIgQ29sb3IgUmVkLCBHcmVlbiwgQmx1ZSBhbmQgQWxw
aGENCj4gKyAqIGNvbG9yIGVhY2ggcmVwcmVzZW50ZWQgYnkgMzIgYml0cy4gVGhlIHJhdyBjbGVh
ciBjb2xvciBpcyBjb25zdW1lZCBieSB0aGUNCj4gKyAqIDNkIGVuZ2luZSBhbmQgZ2VuZXJhdGVz
IHRoZSBjb252ZXJ0ZWQgY2xlYXIgY29sb3Igb2Ygc2l6ZSA2NCBiaXRzLiBUaGUNCj4gKyAqIGZp
cnN0IDMyIGJpdHMgc3RvcmUgdGhlIExvd2VyIENvbnZlcnRlZCBDbGVhciBDb2xvciB2YWx1ZSBh
bmQgdGhlIG5leHQgMzINCj4gKyAqIGJpdHMgc3RvcmUgdGhlIEhpZ2hlciBDb252ZXJ0ZWQgQ2xl
YXIgQ29sb3IgdmFsdWUgd2hlbiBhcHBsaWNhYmxlLiBUaGUNCj4gKyAqIENvbnZlcnRlZCBDbGVh
ciBDb2xvciB2YWx1ZXMgYXJlIGNvbnN1bWVkIGJ5IHRoZSBERS4gVGhlIGxhc3QgNjQgYml0cyBh
cmUNCj4gKyAqIHVzZWQgdG8gc3RvcmUgQ29sb3IgRGlzY2FyZCBFbmFibGUgYW5kIERlcHRoIENs
ZWFyIFZhbHVlIFZhbGlkIHdoaWNoIGFyZQ0KPiArICogaWdub3JlZCBieSB0aGUgREUuIEEgQ0NT
IGNhY2hlIGxpbmUgY29ycmVzcG9uZHMgdG8gYW4gYXJlYSBvZiA0eDEgdGlsZXMgaW4NCj4gKyAq
IHRoZSBtYWluIHN1cmZhY2UuIFRoZSBtYWluIHN1cmZhY2UgcGl0Y2ggaXMgcmVxdWlyZWQgdG8g
YmUgYSBtdWx0aXBsZSBvZg0KPiArICogNCB0aWxlIHdpZHRocy4NCj4gICAqLw0KPiAgI2RlZmlu
ZSBJOTE1X0ZPUk1BVF9NT0RfNF9USUxFRF9NVExfUkNfQ0NTX0NDIGZvdXJjY19tb2RfY29kZShJ
TlRFTCwgMTUpDQo+IA0KPiAtLQ0KPiAyLjQ1LjINCg0K
