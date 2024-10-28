Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F079B30DB
	for <lists+intel-gfx@lfdr.de>; Mon, 28 Oct 2024 13:47:43 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2CC710E4A1;
	Mon, 28 Oct 2024 12:47:41 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fVChSr7Q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BFCB310E49C;
 Mon, 28 Oct 2024 12:47:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730119661; x=1761655661;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-id:content-transfer-encoding:mime-version;
 bh=oIs0+Kg0Zd3zaD3K4g+z0c7r5KOydzY2LMazQ1JS2is=;
 b=fVChSr7QnT9JO3XsOyFNYk1aHOSHYV0Kdq2WU/ngUSUQNdCbeAtm1V6o
 2yMmyoZmZe2tFmOZmBADD+ePftPxsw8U4wxYX40pJedYghAxprlwm0fAk
 81NaxsPLO2vjy0N7NWEM4e2wStIEp1HWrBYRufORowIJOZPRZhpgxn59T
 dLoqs7MrbBhNEZnLeKYKYA/mPY3f7kHsKBNRgfG5Szp+UIqa+fk0seys8
 7pnelp6kvINI5cUo9UA3/xNE0U4InYXB4/2ksIvMs8aZ7B8bHhIl/8vzv
 3iaBbXPH4iFhbpNwnqfdhsCYzLDMeFgfjJhMeDDq3bROurVQtKkSLP8lT A==;
X-CSE-ConnectionGUID: hjWwF6b+RW6RmqjzJefJww==
X-CSE-MsgGUID: x2nd6zdISOacmtmO0dB4JQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11238"; a="29143646"
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="29143646"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Oct 2024 05:47:40 -0700
X-CSE-ConnectionGUID: aUQsJ3mhTHWEf2SJKrd/HQ==
X-CSE-MsgGUID: og1oLtPvT7WPR7ETmh3jzQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,239,1725346800"; d="scan'208";a="86745092"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa004.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 28 Oct 2024 05:47:39 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 28 Oct 2024 05:47:39 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 28 Oct 2024 05:47:39 -0700
Received: from NAM10-BN7-obe.outbound.protection.outlook.com (104.47.70.40) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 28 Oct 2024 05:47:38 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=RzATeqEAaK0x3qfBk5NgQ5r6eRUAI+g64P/QuQaOLdhO8cpDyeWU6frt6ULJ36hX6Kz32z+66Ze6DWlRphiyhnI52oHDf4u5PIeOHfYaFeqjGGt9tnMrR+ULYU+ux0EZ0H3AJ2F7wY6qkYzDQ9Y8WmLVFzsJGB3QYm3JljcWrhbnkJMaKWTeFTVQk3ssWRAnVv43RgN4iQoeGez4jIiTS0+CI8JvHhYIM9Pj2Ivhwvkn5MCss9zT9dlTu83+xXaVpi7stYW5Gwhg5BFlHa7BsbFCbFuJyyMA9theWMuPgoI5KmUr37oFbykMS1Hscj7PZ8v7gCpfiL4wReo/1X873w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=oIs0+Kg0Zd3zaD3K4g+z0c7r5KOydzY2LMazQ1JS2is=;
 b=s+iGvaNGYG+xGlzZ/EZkhPkCz+kKMbccgO/SJldojDcCLmLdhpd3FG8+zOMuur1v22eJY2/wCHJH9mTkXvt6vpHUQh34MMbVVeusDqbjJTyuvrws6HvOPgSrlSjT8P7Cz2TTyADsNyCoC1gPC/qN/+TJACkppnFqwSIIEsTxXtbj8MSmRmuZPxtALOjq1dNWIm7tGOA4bdNCbhPjoOmmMF2viYQFfzJ0bkhQ1z1Vhzd8ndVbyrodrlUhyJO8VOfnkSgs+MkwNeLnB7uGLaAQbqUViPjVBUkEgZWkbOQsKoRnutPloOeEDwQNBXxxhLhg9q/dGgy8pUXfpV+BLvIabw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 SJ0PR11MB4832.namprd11.prod.outlook.com (2603:10b6:a03:2dd::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.25; Mon, 28 Oct
 2024 12:47:35 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8093.018; Mon, 28 Oct 2024
 12:47:35 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "jani.nikula@linux.intel.com" <jani.nikula@linux.intel.com>
Subject: Re: [PATCH] drm/i915/psr: WA for panels stating bad link status after
 PSR is enabled
Thread-Topic: [PATCH] drm/i915/psr: WA for panels stating bad link status
 after PSR is enabled
Thread-Index: AQHbKQ2YceuAC/LbEEuFYJdoPX73V7KcFo2AgAAGdgA=
Date: Mon, 28 Oct 2024 12:47:35 +0000
Message-ID: <2675986431d600d0567a7e169d94b939e9e8a918.camel@intel.com>
References: <20241028074642.804895-1-jouni.hogander@intel.com>
 <87o734pg90.fsf@intel.com>
In-Reply-To: <87o734pg90.fsf@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|SJ0PR11MB4832:EE_
x-ms-office365-filtering-correlation-id: f748c326-0da1-45b9-28f7-08dcf74eb26c
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|376014|366016|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?VUU2K0VGV3dlaVNzTTRmVlZzbkoycVFNS2JqaEV6V0pxZU56YmVUTU5SUlN5?=
 =?utf-8?B?Z0lDNkhiR0dtek5oME9lVEhLeWdwa3BnWDRUWjNxRG5UV0pjUHV6MUpZQjk2?=
 =?utf-8?B?VTRqZ2NaNzRuSUlGcnVENUdoTXR5UmNPUXBFcWxFSFI4SnFXM2VEc2lDWkJi?=
 =?utf-8?B?YTAwY3lha1NnMXRwUFlsM1grcEtVVk53RWdSbHpKbG4rYkNZcTBTMEszdmZH?=
 =?utf-8?B?MWFZMUVBRytTKzdCTmRsV0Y1VXMxMVJMZzVuVTR3M1FNUGNIZEUvRDBNd2Fj?=
 =?utf-8?B?c2EvOWJWVWRYTFNUMld4R2s0TnRuSjBRbXFJcnp2YkZ3NlJ6RTEvVmNaWDY4?=
 =?utf-8?B?VXh4WERlT2szdXUwT0VseVE5ZTVVMS9DYURXeVVEcHRVbFRBMGk0OFFSTlc0?=
 =?utf-8?B?dHBybFk0dUVpbWVsUkFZL2ZsSldKYlNBMjMwSnM3UkF2NTBvOExXYmovTTBC?=
 =?utf-8?B?RFNzeXV3NlozL3NhYjlnUjREdGl1YUQ2bGJmYTlYbWtTRFRRTzdSZ2tJWTlL?=
 =?utf-8?B?aXpVdko4UzhjL2ltQjBscnJCenhuYUZadTN4MUZSUitRL1phZUZ1KzBiSFpk?=
 =?utf-8?B?dVNrVnArYXAzK0ljeDlibnluUGdrdFpiaTdrMWVzL1l1cVRyQUQ0cWV1U1Ux?=
 =?utf-8?B?L1R4OUxyZlNsRTZLY3hxdnJNbGVHRlFoaEpJdDJuTHVLd1lEaHRYS0Y3aTBv?=
 =?utf-8?B?SSsyTjJZc0RtZlpUZ2tNWlJBczRmTDdPK0UrRFZvekNTNUM4WExDNFFWQzRt?=
 =?utf-8?B?RVpNak5MR3FNRE5oM3VPbmVrQUZaV1JNbGkxZTJDeEV6NnA4TXRuQnpDYUlQ?=
 =?utf-8?B?eU41SFppOTFpbEo3V0ZvVkhUSmplRng2S3lNVitoNG5sQ281azMxWEliNXhn?=
 =?utf-8?B?U0w1ek1lcjVRODltSHRlQlNyRmhlTWt6Z3ZBOFEyZ1l2WGJiWFlOa0dRWkp3?=
 =?utf-8?B?UWo4Q0VtS1ZVNzl0Vzg3cUVBNGplcnBXTzV4M0tSWWxDSC9Dd25xV3pDam8w?=
 =?utf-8?B?Y2EzaXpRVWZyZ2owQXBwUHpPUmpxdWQwY3pxWmRuZnBVR0hwR3g1K3QzN3No?=
 =?utf-8?B?VGlkTVpidEZlOXBUUXBBMWt5dmhvUDZzcEI4REwzZVFiK1NiR3JFUHlySE9l?=
 =?utf-8?B?MkVUWEZ0R2ZyZTNhdnJEYmUwczlWT0NkUjhDOCtiQWd3cSt1RG9kTnBuRHcw?=
 =?utf-8?B?anozQkdLN2x6WjQrdWZ5bUorNklQMTBacFcxd2RIR3dETEorRDNSeUx4M05r?=
 =?utf-8?B?NGxjMmlWbHlGVWw0ZXV0RG44U2Z4RXBXRDJENzliN211dDNFU3MxTWQ4OEtz?=
 =?utf-8?B?aWhObXExRzB6WHdpKzV2bEdYWWRKMkhzVTFFRXg5QUNjRlRvVFdFbitnbTRI?=
 =?utf-8?B?a3BuNzltM2Zja0I4ZGh1SnlvdTlJdmM2bHdPNXBxUFNFZFpJREVqZm1QdkhD?=
 =?utf-8?B?UnBiV0wwRHh5VkJaaGJNWVo5Tk5samVyYW5idEtOcG05Mk1hRzloakVMTFFt?=
 =?utf-8?B?dU9YN2o3ZjVUQWxGdkJSUFJZSTFUb2xFV1h4U294bVVUTVlzZDE4Z0pXU1JS?=
 =?utf-8?B?MTBhMHQyQTdEOTYzbTdIWEZ5NFlsNGpNYmMvUnFIZEkxWE9WVWVGd1U4cVJh?=
 =?utf-8?B?aStoNWNRNGd0eHc2enhiMU40dGMwTzJrNnhjclJoTVBLREJvZUlSM0F2aXMw?=
 =?utf-8?B?S2FseGhSUWNJUE9CZVdwT1pRRVlCSDVjVTVHdlpzQVArcDFkdVI1ZEMwQmg2?=
 =?utf-8?B?N0dsZHhpa3dtcnJsWTA0c2ZWUTFqdm1CY1RDeWNZYWV3Q1UwYjk2MVljQjRV?=
 =?utf-8?Q?ncACee3gM7dxSKzHZX9+7DGoe3DMUtd+7U/xY=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?TURsZ0dxdTY2UjcxSldyUllUcUhRbktwWWtYNjZ5bU4xa0tTTG9Nc2lFc1JH?=
 =?utf-8?B?ODZsNlNpVlorT2Y1VWtWNytMT25HYy84V010WWFScUtBYnU1d1E0SStadmpS?=
 =?utf-8?B?R1BOb1lQN0thQ3gyUjFmSFN4MFk4L2xEcWw0ZVhPeUtWOTlFaTlOK0VUUHJS?=
 =?utf-8?B?OVJpb3lUQVM2WjJvS2dURC9uSzVPTG9VbmhhVFpCd1g1WXBmVU1NWVZudjVC?=
 =?utf-8?B?aXFpU3BEMGlkbnlBTWRad3N4UkdFTjdhRkhuRk0rUjBEeU1GakhYOWoxUVY5?=
 =?utf-8?B?NklsMG1qOWpXMFFKUVhwa3llNS9lekcrM0xTbmpUTHQ1ZXBwdXZBdjFNbGkv?=
 =?utf-8?B?ZTBkTWJKcWQxeWZtOXhsZWM5dUJKTjIwT1BzTVBsMnV0SHhXWlhQdXl4dTZ2?=
 =?utf-8?B?RUlWUEJVbmdnTkxvcElZbEtvOG1tZFMyZ1NDMm5EQ3FwTHBwSlE3b2wycitq?=
 =?utf-8?B?R3ZyUTRGWk16dGZBSHdnOTZ0Q3VrOEUxendiMzQwSGpOalcyM2lEZGFkTkt5?=
 =?utf-8?B?czRlTjFMTEJ5UGMwZ0FJZHprNGp0SHZ1TE1PTGJQbC9qdXkxUFBzRGZpVStq?=
 =?utf-8?B?eEgvMy9QaDZ2Umg0OVdldUN4Mjg2Q3VIb2YzZnBBZ3QyT0NhMDFZRXREdWlP?=
 =?utf-8?B?WkFmUGtDT2tBT3BsSGd6YlRBQWpKOFhSSTJXMkpPN0tiMjFEU0puSzlvc0pV?=
 =?utf-8?B?N291N3hybHdWdEZsdFlsY1BTREFWOGtwOU5jSVdXaW9SRUVJMzk2V2Flcm1R?=
 =?utf-8?B?Q3cwdURaeExMcG5GR1lvcWZUbCtWckU1RTBrL0cvbFNCZGNRSTFNcDJvaEo4?=
 =?utf-8?B?bWtaSFRKZ0wxK080emxGZmYwZjMzUG53MHdiOEN6TXYzZFZwekd0ZTZaWnZy?=
 =?utf-8?B?SEJJS0VKWVdXTXJTSzVUazRleTl6WEZkV1VZaXhSb1E2ZGMxOTN3dkFxR1lF?=
 =?utf-8?B?OWt6ZXdNaW01RklOK1Y4K3NkZlZydmhEQko2MnBtUlJXZzdvZ00rNThjSXVx?=
 =?utf-8?B?bXBHR3pyeDhDZVlZOHpLQ3h4V2F6d0FOeW9OQzZVVkFka3QzdWdVMDA2QTBX?=
 =?utf-8?B?OWRQaVVXVnJPdlJPek5IYkVDajFkTzV0MjVoYlVSQ09maURRZUhjWk9QYVRD?=
 =?utf-8?B?cE9YbDJINHV2Znh5MlBVNThNS0xkSGgzb3VwSll6TXhIV1gxUFJva3J0UDRN?=
 =?utf-8?B?OXVQb0owU25ZS3NzUHJzVTdDZzVzZ3pLaWxJNU9MZUFuTXBYU2tFaWV4SG96?=
 =?utf-8?B?NmF5M2JFNFUyZWRsNEpMNFMvYXZXOXI3bm43WmxOZzFXQnJXU0VBRmVLQ2VC?=
 =?utf-8?B?WENBbDlRdlhKSVZpdFo2VUMyMXRRTHAwQ3VONU1IVGYzMFh4QzRyMTBHZ29h?=
 =?utf-8?B?bXEyVWJTOWo1L1E3QjYwZG52OHQxUmUwRUpVVkpyME9QZm9PdTZQWHpPckh6?=
 =?utf-8?B?ZEwwanBsMlUvWnM3eVgvbS9kVzRNSjdOU0hNbm05N1RoNkh0Q3hjN1loVDI4?=
 =?utf-8?B?RWpRTWFoL0dUTlBtRmtsbCsyNVQ2VTdGaUlhK2tpb0dzZ2Y2ejk1T09kSjFs?=
 =?utf-8?B?UFRQM2t3L2dGaEh1YXNmTXd6bThDcTR6SXhRSk4rUUtYWkpCa2FIQkFwNGpI?=
 =?utf-8?B?OW5LVWppRzB3YWhYSjZ0R1ZFU0FVOGtod0hLUEdWMzN1QXZmOVEwSXlCR3dZ?=
 =?utf-8?B?dzZEMjlvMWtrQ1ZYM0JEZ3kxQmd6cG9ZalY0TkZrRTdCZ2NwS205dUQzSWM3?=
 =?utf-8?B?VUFJNW43Zm44dmlCRXJicDdSUkNZQ1BFRW4yR1dxNGpGQjJNK0dGMkFocTJw?=
 =?utf-8?B?c0RPeHp6WVl5V3k5MDlqNGRxd1QxOTcycFlMNWN6cm5qbjg0cURWeXhTaFFp?=
 =?utf-8?B?eEpIMThPT2RqZ3R1Y0Y4ekFDYnAvb2JONlQwOUhjZWZ1elAwMlJmeG90b2Zn?=
 =?utf-8?B?Qm5MZDQ2UEN1eU1EQnpVbUVmdHNqbmU2MHBQQXR5eE9QU0hNeVdidG9HQm1r?=
 =?utf-8?B?VlV0SmxCbjE1OW1NRy9hY1kwdHVuTWV5bkViemZ5d2VLWnA0N1pqaldqanM3?=
 =?utf-8?B?WFluMHZMcHZEcHg5eEJWcmVUZ3g0czUwRmJUejZwekRoVTVFSUZBeGRianRS?=
 =?utf-8?B?VEdTNjVhS3BZWUNGaTJJRXBwdVpZNDFrNTJ1d1B2ZUt4VGFPbjBkYk1OeUdE?=
 =?utf-8?B?eXc9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <E9785753BE78724A924B894C66EBBCBA@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f748c326-0da1-45b9-28f7-08dcf74eb26c
X-MS-Exchange-CrossTenant-originalarrivaltime: 28 Oct 2024 12:47:35.2231 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: IHgghW9spo6MIyRtTfcFFyYVXfbQJK1uJJUsJL0aJzmnaKe1EH5nhOjQAdLFKFltvjgyMWTt7baNHzOHibr6RpJ3DAXiYEAYXBUAsi+GGm8=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4832
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

T24gTW9uLCAyMDI0LTEwLTI4IGF0IDE0OjI0ICswMjAwLCBKYW5pIE5pa3VsYSB3cm90ZToNCj4g
T24gTW9uLCAyOCBPY3QgMjAyNCwgSm91bmkgSMO2Z2FuZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRl
bC5jb20+IHdyb3RlOg0KPiA+IFdlIGFyZSBjdXJyZW50bHkgc2VlaW5nIHVuZXhwZWN0ZWQgbGlu
ayB0cmFpbmluZ3Mgd2l0aCBzZXZlcmFsDQo+ID4gZGlmZmVyZW50DQo+ID4gZURQIHBhbmVscy4g
VGhlc2UgYXJlIGNhdXNlZCBieSB0aGVzZSBwYW5lbHMgc3RhdGluZyBiYWQgbGluaw0KPiA+IHN0
YXR1cyBpbg0KPiA+IHRoZWlyIGRwY2QgcmVnaXN0ZXJzLiBUaGlzIGNhbiBiZSBvYnNlcnZlZCBi
eSBkb2luZyBmb2xsb3dpbmcgdGVzdDoNCj4gPiANCj4gPiAxLiBCb290IHVwIHdpdGhvdXQgWGUg
bW9kdWxlIGxvYWRlZA0KPiA+IA0KPiA+IDIuIExvYWQgWGUgbW9kdWxlIHdpdGggUFNSIGRpc2Fi
bGVkOg0KPiA+IMKgwqDCoCAkIG1vZHByb2JlIHhlwqAgZW5hYmxlX3Bzcj0wDQo+ID4gDQo+ID4g
My4gUmVhZCBwYW5lbCBsaW5rIHN0YXR1cyByZWdpc3Rlcg0KPiA+IMKgwqDCoCAkIGRwY2RfcmVn
IHJlYWQgLS1vZmZzZXQgMHgyMDBlIC0tY291bnQ9MQ0KPiA+IMKgwqDCoCAweDIwMGU6wqAgMDAN
Cj4gPiANCj4gPiA0LiBFbmFibGUgUFNSLCBzbGVlcCBmb3IgMiBzZWNvbmRzIGFuZCBkaXNhYmxl
IFBTUiBhZ2FpbjoNCj4gPiANCj4gPiDCoMKgwqAgJCBlY2hvIDB4MSA+IC9zeXMva2VybmVsL2Rl
YnVnL2RyaS8wL2k5MTVfZWRwX3Bzcl9kZWJ1Zw0KPiA+IMKgwqDCoCAkIGVjaG8gIi0xIiA+DQo+
ID4gL3N5cy9rZXJuZWwvZGVidWcvZHJpLzAwMDA6MDA6MDIuMC94ZV9wYXJhbXMvZW5hYmxlX3Bz
cg0KPiA+IMKgwqDCoCAkIGVjaG8gMHgwID4gL3N5cy9rZXJuZWwvZGVidWcvZHJpLzAvaTkxNV9l
ZHBfcHNyX2RlYnVnDQo+ID4gwqDCoMKgICQgc2xlZXAgMg0KPiA+IMKgwqDCoCAkIGNhdCAvc3lz
L2tlcm5lbC9kZWJ1Zy9kcmkvMC9pOTE1X2VkcF9wc3Jfc3RhdHVzIHwgZ3JlcCBzdGF0dXMNCj4g
PiDCoMKgwqAgJCBlY2hvIDB4MSA+IC9zeXMva2VybmVsL2RlYnVnL2RyaS8wL2k5MTVfZWRwX3Bz
cl9kZWJ1Zw0KPiA+IMKgwqDCoCBTb3VyY2UgUFNSL1BhbmVsUmVwbGF5IHN0YXR1czogREVFUF9T
TEVFUCBbMHg4MDMxMDAzMF0NCj4gPiANCj4gPiA1LiBOb3cgcmVhZCBwYW5lbCBsaW5rIHN0YXR1
cyByZWdpc3RlcnMgYWdhaW46DQo+ID4gwqDCoMKgICQgZHBjZF9yZWcgcmVhZCAtLW9mZnNldCAw
eDIwMGUgLS1jb3VudD0xDQo+ID4gwqDCoMKgIDB4MjAwZTrCoCA4MA0KPiA+IA0KPiA+IFdvcmth
cm91bmQgdGhpcyBieSBub3QgdHJ1c3RpbmcgbGluayBzdGF0dXMgcmVnaXN0ZXJzIGFmdGVyIFBT
UiBpcw0KPiA+IGVuYWJsZWQNCj4gPiB1bnRpbCBmaXJzdCBzaG9ydCBwdWxzZSBpbnRlcnJ1cHQg
aXMgcmVjZWl2ZWQuDQo+IA0KPiBXaGljaCBlRFAvRFBDRCB2ZXJzaW9uIGFyZSB3ZSB0YWxraW5n
IGFib3V0Pw0KDQpUaGlzIGlzIGF0IGxlYXN0IHNpbmNlIGVEUCAxLjQuDQoNCj4gDQo+IENvdWxk
IHRoaXMgYmUgcmVsYXRlZCB0byBBVVgtbGVzcyBBTFBNPw0KDQpQYW5lbHMgd2UgYXJlIHNlZWlu
ZyB0aGlzIGFyZSBub3QgdXNpbmcgQVVYLWxlc3MgQUxQTS4NCg0KPiANCj4gU29tZSBuaXRwaWNr
cyBiZWxvdywgbGVzcyBpbXBvcnRhbnQuDQo+IA0KPiA+IFNpZ25lZC1vZmYtYnk6IEpvdW5pIEjD
tmdhbmRlciA8am91bmkuaG9nYW5kZXJAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+IMKgLi4uL2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5owqDCoMKgIHzCoCAyICsNCj4gPiDC
oGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuY8KgwqDCoMKgwqDCoCB8wqAg
MyArLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuY8KgwqDC
oMKgwqAgfCAzOQ0KPiA+ICsrKysrKysrKysrKysrKysrKysNCj4gPiDCoGRyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmjCoMKgwqDCoMKgIHzCoCAxICsNCj4gPiDCoDQgZmls
ZXMgY2hhbmdlZCwgNDQgaW5zZXJ0aW9ucygrKSwgMSBkZWxldGlvbigtKQ0KPiA+IA0KPiA+IGRp
ZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlw
ZXMuaA0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmgNCj4gPiBpbmRleCAyYmIxZmE2NGRhMmYuLmYwYjdkNzI2Mjk2MSAxMDA2NDQNCj4gPiAt
LS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2Rpc3BsYXlfdHlwZXMuaA0K
PiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBl
cy5oDQo+ID4gQEAgLTE2MTgsNiArMTYxOCw4IEBAIHN0cnVjdCBpbnRlbF9wc3Igew0KPiA+IMKg
wqDCoMKgwqDCoMKgwqB1MzIgZGMzY29fZXhpdF9kZWxheTsNCj4gPiDCoMKgwqDCoMKgwqDCoMKg
c3RydWN0IGRlbGF5ZWRfd29yayBkYzNjb193b3JrOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqB1OCBl
bnRyeV9zZXR1cF9mcmFtZXM7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoGJvb2wgbGlua19v
azsNCj4gPiDCoH07DQo+ID4gwqANCj4gPiDCoHN0cnVjdCBpbnRlbF9kcCB7DQo+ID4gZGlmZiAt
LWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHAuYw0KPiA+IGIvZHJp
dmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gaW5kZXggYjAzNmM2NTIx
NjU5Li5lZmFhYWRmYjEyZWEgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kcC5jDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9kcC5jDQo+ID4gQEAgLTUwMDcsNyArNTAwNyw4IEBAIGludGVsX2RwX25lZWRzX2xp
bmtfcmV0cmFpbihzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHApDQo+ID4gwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gdHJ1ZTsNCj4gPiDCoA0KPiA+IMKgwqDCoMKg
wqDCoMKgwqAvKiBSZXRyYWluIGlmIGxpbmsgbm90IG9rICovDQo+ID4gLcKgwqDCoMKgwqDCoMKg
cmV0dXJuICFpbnRlbF9kcF9saW5rX29rKGludGVsX2RwLCBsaW5rX3N0YXR1cyk7DQo+ID4gK8Kg
wqDCoMKgwqDCoMKgcmV0dXJuICEoaW50ZWxfZHBfbGlua19vayhpbnRlbF9kcCwgbGlua19zdGF0
dXMpIHx8DQo+ID4gK8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBpbnRlbF9wc3JfbGlu
a19vayhpbnRlbF9kcCkpOw0KPiANCj4gTml0cGljaywgaW4gZ2VuZXJhbCBJIHRoaW5rICJub3Qg
QSBhbmQgbm90IEIiIHJlYWRzIGJldHRlciB0aGFuICJub3QNCj4gKEENCj4gb3IgQikiIGJlY2F1
c2Ugc2F5aW5nIHRoZSBwYXJlbnMgYWxvdWQgaXMga2luZCBvZiBjbHVtc3kuIFJlYWRpbmcNCj4g
Y29kZQ0KPiBhbG91ZCAod2VsbCwgaW4gbXkgaGVhZCBhbnl3YXkpIGlzIG9uZSBvZiBteSBtYWlu
IHRlc3RzIGZvcg0KPiByZWFkYWJpbGl0eS4NCg0KeWVzLCBJIGFncmVlIG9uIHRoaXMuIEkgd2Fz
IGp1c3QgdGhpbmtpbmcgdGhpcyB0b28gbXVjaCBhcyB3YW50IGl0IHRvDQphY2NlcHQgaW50ZWxf
ZHBfbGlua19vayByZXN1bHQgaWYgaXQncyB0cnVlLiBJIHdpbGwgY2hhbmdlIGl0Lg0KIA0KPiAN
Cj4gPiDCoH0NCj4gPiDCoA0KPiA+IMKgYm9vbCBpbnRlbF9kcF9oYXNfY29ubmVjdG9yKHN0cnVj
dCBpbnRlbF9kcCAqaW50ZWxfZHAsDQo+ID4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9p
OTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3Bs
YXkvaW50ZWxfcHNyLmMNCj4gPiBpbmRleCA5OTI1NDNmNTA4YzEuLjBjZDczODgzODllMCAxMDA2
NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+
ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuYw0KPiA+IEBA
IC0yMDA5LDYgKzIwMDksMTUgQEAgc3RhdGljIHZvaWQgaW50ZWxfcHNyX2VuYWJsZV9sb2NrZWQo
c3RydWN0DQo+ID4gaW50ZWxfZHAgKmludGVsX2RwLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnRl
bF9kcC0+cHNyLmVuYWJsZWQgPSB0cnVlOw0KPiA+IMKgwqDCoMKgwqDCoMKgwqBpbnRlbF9kcC0+
cHNyLnBhdXNlZCA9IGZhbHNlOw0KPiA+IMKgDQo+ID4gK8KgwqDCoMKgwqDCoMKgLyoNCj4gPiAr
wqDCoMKgwqDCoMKgwqAgKiBMaW5rX29rIGlzIHN0aWNreSBhbmQgc2V0IGhlcmUgb24gUFNSIGVu
YWJsZS4gV2UgY2FuDQo+ID4gYXNzdW1lIGxpbmsNCj4gPiArwqDCoMKgwqDCoMKgwqAgKiB0cmFp
bmluZyBpcyBjb21wbGV0ZSBhcyB3ZSBuZXZlciBjb250aW51ZSB0byBQU1IgZW5hYmxlDQo+ID4g
d2l0aA0KPiA+ICvCoMKgwqDCoMKgwqDCoCAqIHVudHJhaW5lZCBsaW5rLiBMaW5rX29rIGlzIGtl
cHQgYXMgc2V0IHVudGlsIGZpcnN0IHNob3J0DQo+ID4gcHVsc2UNCj4gPiArwqDCoMKgwqDCoMKg
wqAgKiBpbnRlcnJ1cHQuIFRoaXMgaXMgdGFyZ2V0ZWQgdG8gd29ya2Fyb3VuZCBwYW5lbHMgc3Rh
dGluZw0KPiA+IGJhZCBsaW5rDQo+ID4gK8KgwqDCoMKgwqDCoMKgICogYWZ0ZXIgUFNSIGlzIGVu
YWJsZWQuDQo+ID4gK8KgwqDCoMKgwqDCoMKgICovDQo+ID4gK8KgwqDCoMKgwqDCoMKgaW50ZWxf
ZHAtPnBzci5saW5rX29rID0gdHJ1ZTsNCj4gPiArDQo+ID4gwqDCoMKgwqDCoMKgwqDCoGludGVs
X3Bzcl9hY3RpdmF0ZShpbnRlbF9kcCk7DQo+ID4gwqB9DQo+ID4gwqANCj4gPiBAQCAtMzQ1OCw2
ICszNDY3LDkgQEAgdm9pZCBpbnRlbF9wc3Jfc2hvcnRfcHVsc2Uoc3RydWN0IGludGVsX2RwDQo+
ID4gKmludGVsX2RwKQ0KPiA+IMKgDQo+ID4gwqDCoMKgwqDCoMKgwqDCoG11dGV4X2xvY2soJnBz
ci0+bG9jayk7DQo+ID4gwqANCj4gPiArwqDCoMKgwqDCoMKgwqAvKiBMZXQncyBjbGVhciBwb3Nz
aWJseSBzZXQgbGlua19vayBmbGFnIGhlcmUgKi8NCj4gDQo+IFRoYXQncyBraW5kIG9mIGEgdHJh
bnNsYXRpb24gb2YgQyBpbnRvIEVuZ2xpc2guIElmIHlvdSBuZWVkIHRoZQ0KPiBjb21tZW50LA0K
PiB0aGVuIG1heWJlIHN0YXRlIHRoZSB3aHkgaW5zdGVhZCBvZiB0aGUgd2hhdD8NCg0KWW91IGFy
ZSByaWdodC4gSSBkaWRuJ3Qgc3VjY2VlZCBzdGF0aW5nIGxpbmtfb2sgbWlnaHQgbm90IGJlIHNl
dCBhdCBhbGwNCmJ1dCB3ZSBhcmUgc3RpbGwgY2xlYXJpbmcgaXQgaGVyZS4gQW55d2F5cyB1c2Vs
ZXNzIGNvbW1lbnQuIEkgd2lsbCBkcm9wDQppdC4NCg0KQlIsDQoNCkpvdW5pIEjDtmdhbmRlcg0K
DQo+IA0KPiA+ICvCoMKgwqDCoMKgwqDCoHBzci0+bGlua19vayA9IGZhbHNlOw0KPiA+ICsNCj4g
PiDCoMKgwqDCoMKgwqDCoMKgaWYgKCFwc3ItPmVuYWJsZWQpDQo+ID4gwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqBnb3RvIGV4aXQ7DQo+ID4gwqANCj4gPiBAQCAtMzUxNyw2ICszNTI5
LDMzIEBAIGJvb2wgaW50ZWxfcHNyX2VuYWJsZWQoc3RydWN0IGludGVsX2RwDQo+ID4gKmludGVs
X2RwKQ0KPiA+IMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gcmV0Ow0KPiA+IMKgfQ0KPiA+IMKgDQo+
ID4gKy8qKg0KPiA+ICsgKiBpbnRlbF9wc3JfbGlua19vayAtIHJldHVybiBwc3ItPmxpbmtfb2sN
Cj4gPiArICogQGludGVsX2RwOiBzdHJ1Y3QgaW50ZWxfZHANCj4gPiArICoNCj4gPiArICogV2Ug
YXJlIHNlZWluZyB1bmV4cGVjdGVkIGxpbmsgcmUtdHJhaW5pbmdzIHdpdGggc29tZSBwYW5lbHMu
DQo+ID4gVGhpcyBpcyBjYXVzZWQNCj4gPiArICogYnkgcGFuZWwgc3RhdGluZyBiYWQgbGluayBz
dGF0dXMgYWZ0ZXIgUFNSIGlzIGVuYWJsZWQuIENvZGUNCj4gPiBjaGVja2luZyBsaW5rDQo+ID4g
KyAqIHN0YXR1cyBjYW4gY2FsbCB0aGlzIHRvIGVuc3VyZSBpdCBjYW4gaWdub3JlIGJhZCBsaW5r
IHN0YXR1cw0KPiA+IHN0YXRlZCBieSB0aGUNCj4gPiArICogcGFuZWwgSS5lLiBpZiBwYW5lbCBp
cyBzdGF0aW5nIGJhZCBsaW5rIGFuZCBpbnRlbF9wc3JfbGlua19vaw0KPiA+IGlzIHN0YXRpbmcg
bGluaw0KPiA+ICsgKiBpcyBvayBjYWxsZXIgc2hvdWxkIHJlbHkgb24gbGF0dGVyLg0KPiA+ICsg
Kg0KPiA+ICsgKiBSZXR1cm4gdmFsdWUgb2YgbGlua19vaw0KPiA+ICsgKi8NCj4gPiArYm9vbCBp
bnRlbF9wc3JfbGlua19vayhzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKQ0KPiA+ICt7DQo+ID4g
K8KgwqDCoMKgwqDCoMKgYm9vbCByZXQ7DQo+ID4gKw0KPiA+ICvCoMKgwqDCoMKgwqDCoGlmICgo
IUNBTl9QU1IoaW50ZWxfZHApICYmICFDQU5fUEFORUxfUkVQTEFZKGludGVsX2RwKSkgfHwNCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqAgIWludGVsX2RwX2lzX2VkcChpbnRlbF9kcCkpDQo+ID4g
K8KgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoHJldHVybiBmYWxzZTsNCj4gPiArDQo+ID4g
K8KgwqDCoMKgwqDCoMKgbXV0ZXhfbG9jaygmaW50ZWxfZHAtPnBzci5sb2NrKTsNCj4gPiArwqDC
oMKgwqDCoMKgwqByZXQgPSBpbnRlbF9kcC0+cHNyLmxpbmtfb2s7DQo+ID4gK8KgwqDCoMKgwqDC
oMKgbXV0ZXhfdW5sb2NrKCZpbnRlbF9kcC0+cHNyLmxvY2spOw0KPiA+ICsNCj4gPiArwqDCoMKg
wqDCoMKgwqByZXR1cm4gcmV0Ow0KPiA+ICt9DQo+ID4gKw0KPiA+IMKgLyoqDQo+ID4gwqAgKiBp
bnRlbF9wc3JfbG9jayAtIGdyYWIgUFNSIGxvY2sNCj4gPiDCoCAqIEBjcnRjX3N0YXRlOiB0aGUg
Y3J0YyBzdGF0ZQ0KPiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX3Bzci5oDQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bz
ci5oDQo+ID4gaW5kZXggNWYyNmY2MWY4MmFhLi45NTZiZTI2M2MwOWUgMTAwNjQ0DQo+ID4gLS0t
IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9wc3IuaA0KPiA+ICsrKyBiL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmgNCj4gPiBAQCAtNTksNiArNTks
NyBAQCB2b2lkIGludGVsX3BzcjJfcHJvZ3JhbV90cmFuc19tYW5fdHJrX2N0bChjb25zdA0KPiA+
IHN0cnVjdCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0DQo+ID4gwqB2b2lkIGludGVsX3Bzcl9w
YXVzZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiDCoHZvaWQgaW50ZWxfcHNyX3Jl
c3VtZShzdHJ1Y3QgaW50ZWxfZHAgKmludGVsX2RwKTsNCj4gPiDCoGJvb2wgaW50ZWxfcHNyX25l
ZWRzX2Jsb2NrX2RjX3ZibGFuayhjb25zdCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpj
cnRjX3N0YXRlKTsNCj4gPiArYm9vbCBpbnRlbF9wc3JfbGlua19vayhzdHJ1Y3QgaW50ZWxfZHAg
KmludGVsX2RwKTsNCj4gPiDCoA0KPiA+IMKgdm9pZCBpbnRlbF9wc3JfbG9jayhjb25zdCBzdHJ1
Y3QgaW50ZWxfY3J0Y19zdGF0ZSAqY3J0Y19zdGF0ZSk7DQo+ID4gwqB2b2lkIGludGVsX3Bzcl91
bmxvY2soY29uc3Qgc3RydWN0IGludGVsX2NydGNfc3RhdGUgKmNydGNfc3RhdGUpOw0KPiANCg0K
