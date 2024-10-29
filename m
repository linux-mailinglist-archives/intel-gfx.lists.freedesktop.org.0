Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 060919B4338
	for <lists+intel-gfx@lfdr.de>; Tue, 29 Oct 2024 08:37:19 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F068210E5C0;
	Tue, 29 Oct 2024 07:37:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Uq++Vwbk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D672A10E5C0
 for <intel-gfx@lists.freedesktop.org>; Tue, 29 Oct 2024 07:37:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730187436; x=1761723436;
 h=from:to:subject:date:message-id:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=a0rOI4nqpusHF74ffO9J7rOAYk+mV5kbm4XSYWjVqaA=;
 b=Uq++VwbkOTwRqthbHqbJ+xYqZSm278RAYde5041lkMamOYISFbu721pM
 un2KXQdvw/mtbYU4kB/JnafIRn/9vcr04LcOc1mmm+pUFSNDPYwWLufbE
 THEPpZGVxudL6Qbvu5xx71HJc1oS8LpDyOBljaqLwy9j7X+SAQjo4W+ya
 1NhsLgVeJ1OxGlBjRwNhCV26TGVxctTe8t0d7PTqGulznDo0LrN+mxUeU
 N+y4Z5+v5DfItBV+/LsBWeEhCZv/I4rRqqsAalr8OIifuuDPhykMSF7y8
 O+kj+ly/Y18Dhde3rs1eF13aZ1Uufa3cILCkswz/rOMzDYDurNNDRXHzv g==;
X-CSE-ConnectionGUID: Dy79Rx+ATyS47qFPMjpqMA==
X-CSE-MsgGUID: W7BzntFpQGySxO2gbhjDZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="29775884"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="29775884"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Oct 2024 00:37:15 -0700
X-CSE-ConnectionGUID: /PG0qMsBQPumsPQ03LONAA==
X-CSE-MsgGUID: 1yXeNke9SNGV2uOmE8ej8A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,241,1725346800"; d="scan'208";a="81488574"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Oct 2024 00:37:15 -0700
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Tue, 29 Oct 2024 00:37:14 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Tue, 29 Oct 2024 00:37:14 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Tue, 29 Oct 2024 00:37:14 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=UH/Vo5Kq0jRBrPw+/m2HGP0DTthwkxbyWVQLtOXAsKI4ou/bZgo7IdN+O2RrWM/RNWRhqVVm81NOjZ9Gxv99mVx2T3FwCzm1vt6m8a1fnwQZ9HcTI6y963e3z/wmtrNrdWc8Algd2msCn43fVAvF0ExbAouzgjQ9yhDC6RyAxRU/oCATh68hotfTYk01pqJUzJR06XOpziWS5X9L/FjEKpyj2L2fSpHVYaxqhZb+XjR9ZJe68b6M3fyx68kAJTdcv2MxYpPGPS32+4IHR4sCgQukqqZwZkKqKnHK+pK2NHGuHvEHWDaiKmivl7bCoH9FVaJ7DJb8dol/1aLicPkKfw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=a0rOI4nqpusHF74ffO9J7rOAYk+mV5kbm4XSYWjVqaA=;
 b=J9UA7xTKLWODKkIwXm/QGtHF0nXCWmS7YWi45DPgnBe2/Fb04kYNEY41wPJGNPxSuBX3OCyttrgN9sIKIpUJTQhqSTG4rlmJIWmxl4NwZuOUSrAuSYFge+NFc7A1f1oEM2d9xyjzT2zyqEcJ6aiWxFHkIvoHKh1bIWGxKUz0lFB1cUXDlDHQt3dqu3hA1Qesln/cuQUyFU8VriH/CHFBUoiS5lGfEn/br7xPCD1WL9SJnldiJ7+PrP7lR8YlI4gcMu+XhKjOT06MFhcam7ZrWbxUf8Ivm4XTJHcCQ0G23PmHF+pb23LJ0bMr9FT+YDdlnUTu96e4K9lCeZVtZniHjQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS7PR11MB5990.namprd11.prod.outlook.com (2603:10b6:8:71::5) by
 PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8093.25; Tue, 29 Oct 2024 07:37:06 +0000
Received: from DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::60e:9fa:d735:5be7]) by DS7PR11MB5990.namprd11.prod.outlook.com
 ([fe80::60e:9fa:d735:5be7%7]) with mapi id 15.20.8093.023; Tue, 29 Oct 2024
 07:37:06 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: RE: [RFC] drm/i915/psr: Disable psr1 if setup_time > vblank
Thread-Topic: [RFC] drm/i915/psr: Disable psr1 if setup_time > vblank
Thread-Index: AQHbKcIxFbLjpX+O80Kos6807AtXibKdTmoAgAAIm/A=
Date: Tue, 29 Oct 2024 07:37:06 +0000
Message-ID: <DS7PR11MB5990113082611EF68379B633F94B2@DS7PR11MB5990.namprd11.prod.outlook.com>
References: <20241029050030.1413662-1-animesh.manna@intel.com>
 <508923e7afba69dbd57c9ca8c9867c03160f26db.camel@intel.com>
In-Reply-To: <508923e7afba69dbd57c9ca8c9867c03160f26db.camel@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS7PR11MB5990:EE_|PH7PR11MB7605:EE_
x-ms-office365-filtering-correlation-id: c68fae42-5d70-46a6-56a7-08dcf7ec7d2a
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|366016|376014|1800799024|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?aHdoOEJUK3lEWXBvczB3NTIwM2luQitoblRVVjFFTHF1bzNkSlpJdHdQQVVx?=
 =?utf-8?B?ZDFkVXFNenZnQXZqOTMxRXZSY0VaMXBIRzR1WFJ6V2F4UlRlZ3FINGR2VXdt?=
 =?utf-8?B?WnhaS2k1S3d6SWJwa1hVY09RZUdUOGV3b3EvUmZaUXlPb2V1QWU1WHptZjJ1?=
 =?utf-8?B?YnFRaHRwS3JPdFU0OGxqczNpc2MyVHoyV2loVm84ZFQ3M04zR3ZWSVY3L2l2?=
 =?utf-8?B?cEE0VktuUUdNWGt3WXNrOGtEaDRFUG5OSFhBZ3FlSFZxL0J6Mm9iaVhhZlhC?=
 =?utf-8?B?R1NZZDRVUDZNMnFTL1I1VysreEU3blE1ajd4WXk2UGdMMXhlZ2l2ZFRYVnRm?=
 =?utf-8?B?b1l3bFpwdGJvRXpQa0xscmpGSW9OSytIaVJucDFXSmlrV3EwNDIwdGd6bVM1?=
 =?utf-8?B?UEJIQlUvQjBFQzhqeHBSLzJodTRJNU5ZWlpjZ0YrTXZkV2JpY0RVWVNwaUdp?=
 =?utf-8?B?OFhqY3VsRUUvbm44YUtwQ3c3d2ZQTXByZVF0L1J4WUJLTU5uUWVNMkhBNmYy?=
 =?utf-8?B?N1B2THROS2RjTDdVNVQzMlJMeDIvYncySFJJdEljTkdvTlF2ek44dzdpQm1s?=
 =?utf-8?B?ZmVHekJXcjNKd3pLRzNDdEFjZ1pKbWY4TmpSYk4xNGV2ZGMxamF4dDl1ME1Y?=
 =?utf-8?B?b09MU0thNC84ZE43VTJSRC9GNERXbUZqUUdOT3dyUUtobHdRUWFicGErZ2Ri?=
 =?utf-8?B?MWFRdFQ1UDZpazJ5ek5DYU5PZzNHb2ZQbmVQaGxvckpoT3ZFL1Y0QllXV1JN?=
 =?utf-8?B?dm82ODdiZnZpcDhZWndOc2VldzFwYWtFTko1K3V5S2FaTkY4aE5hL0w4Q0lw?=
 =?utf-8?B?K2NEQWROVkQ1UDNKWkZ0ZDMrU3VPZGozUU9IalMvc3FSOFJIMzJDVUJEdGxR?=
 =?utf-8?B?QW0zZ1dIcWxrTDRtV2xnMnM3NEpvemlOcmljTExkVE82dnI3bVp6UDdaT1Rp?=
 =?utf-8?B?RVVzRSt3UkI5RC9VQndiYTJCeVRTd1hkdDF0TmVTdjhJSFFNcGhuc09GakFo?=
 =?utf-8?B?UnFSbTdOWmlQZUVKZFBTeUtoUFhMT3lzczlFMVNQZ2llVnJCZmlQQ2lKa0FG?=
 =?utf-8?B?OTgycG5HeGt0aGMvWU9rMDd1ODdOOTRNRy9BQzhPYm5xRWxFSDVBS0tFSmZT?=
 =?utf-8?B?L2Z0WDhuRHdjTWRSdENzRGtqRTdYQ0twVkVQbGRuWENZTTRNdzc0RVJWMnVB?=
 =?utf-8?B?TzAxTGRVcE1TV0x3Y2NFa0pKWkttS0dCVUhRZGFQTGszc3NaZWFueXVKYmZP?=
 =?utf-8?B?UkZlZUJKNWtxOWhic2pRMGtGQWxUWFMrU3ZaVkl2Z0FLell3ZlArdGpBS3Fz?=
 =?utf-8?B?S29DWEloRlNDbEhwblZadC9SdkhEWGw4MW1OcjAvQlhDWjV4UzJlaTBaQUQ4?=
 =?utf-8?B?ZS9LSUludE9vTm1oUDZoMTE0Vlh2ZzFPOVRzQVZCMVJJVzJ5L3BVU1BYa3Bk?=
 =?utf-8?B?Nkh5bGtHR0x4ZURERElJdHRlNkJDWkVzTWVMNTRhNXVETktqalpHTGtmbGQ2?=
 =?utf-8?B?UmdaenpSUDRLbmpKTndPcWZ0RUU3ZEZlZDh5N1ZHQ3BCTG9XMnQva2dTSFha?=
 =?utf-8?B?amY5Nk5LUk9EMnFmejdicHltTElRK2JRalF1bVJxd1VFSHhxMkFneml0REVD?=
 =?utf-8?B?bWRuTXVwQ2wwQUE5cERDSXZucWl6SU94dEVYQkpGMXV1WU5YSTJLN1o5STJy?=
 =?utf-8?B?dHlhLzdqYWVRTzMwb1p3cUFwTVcySGkyRlBrS0RyZVZWSUdnVDZnNkRpbHZO?=
 =?utf-8?B?MElZTVZNaHJCMFNHOWc3aWltaXczTnpwaURIaFozOS9kMEFFOTI5b2ZpbktF?=
 =?utf-8?Q?txSNrRUbShzPbxdZsyZ1LYpdqBNNDTL5bfegI=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS7PR11MB5990.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OW9ta3V3bUFURlQvZjBpd3BTbm0yVXcwQzh6a0FIVVB1OFFHaGpBQ3o5VDlB?=
 =?utf-8?B?MGZjQWEyUkdCUWNrMHNqLzNwV2FXM0oycXN4SHozeXRMTWVhdE1MN3VPSkVW?=
 =?utf-8?B?NHRIQWtHdXVUN0dORFoySkhNTVR5bnRCVEk4bXlER3dHYkdLNCtmQi9ydDZt?=
 =?utf-8?B?WXBBSlpnT1hMVHVlTEx1Y2lmckRqNUpnUm5xVFBKd0VVMmN3Sm9IYXZDNldV?=
 =?utf-8?B?bW5pc3NWS2NEQ1U2ZE9nUGtqbitMbHVSVkNHbDhKaWcwaE5oRmJKQVRvQWdr?=
 =?utf-8?B?am56UUFWRjhndWVqYmxnR2pjNUs1TjZuek1EWSt2b0NQRDVGRDEzbFUvYVFU?=
 =?utf-8?B?bTR0ZXVEc1c5allUOEQ5OUN6V2JKR25PaGs5MlhEY0c5RllpMUd3U3lHZnBy?=
 =?utf-8?B?WWZZQTNYT3d4YVZ1OGtFc1ZUTU5WRXl0R3c0cm00eWFUakZsZSsyN0Jmci94?=
 =?utf-8?B?MzFESi9iZkg0c3hCbXVFVTB3VWtIaTNVQThpRXRJUDBNVFBjUDcyaTBrTXAz?=
 =?utf-8?B?bXo3RUdJUkJ5cXRoVW5sTHQ1bGwxNXFIeHlPNUhrNHdaaitvSXBsS3ZXMEJq?=
 =?utf-8?B?d1I2ZVdBN08xK2gzNXRzT2RHbjRkWmpGeGZwT3NjUk8xdnNHYTNBZ3NmaFRG?=
 =?utf-8?B?R3BzU0VRZ0lHbnM1UVN1eG56Zm9TNXdsYUY3QldVNUVYcDE1VzVJcy9ZcnRq?=
 =?utf-8?B?aU5KVG9IQVhTblRqc3dmaU5zbHFoaHdkZjAxMDdiaHhkWURRZEp4WXh2SXhu?=
 =?utf-8?B?WHhzWW53K3pISUMyRmVSV0kvZk1kS0RKZEpNUTNDZGQ4RE5kMGlKd1U5c1Bp?=
 =?utf-8?B?Q01SajJqVVhVdFZ0a3FNMThrTWNXRlBNTjdIc2lnRW1MS2p5SzhrYlFaTE16?=
 =?utf-8?B?R3g0elJJMUdkMFpTbDM2d0lmZkZ2aEt4TkdCWUpsRG9Ia1VydXQyYVNXVEhm?=
 =?utf-8?B?ZjdEbWp3Q1NvdTRrSWZaOXhSSERIZ0RDU0x3VEhiYzdySU9UZjlSdFFsUGo2?=
 =?utf-8?B?WFVHdW95MWp5Rng2YzlrdiswaHhaY2E5RG5rYnVrYmh1cWp3Ymt1bHFmZC9L?=
 =?utf-8?B?VFduNTkwREh0dzJJN1JDZGRjbUNTdTFRQmNyZVJwZjRyamEyWHNtTmVnS0pm?=
 =?utf-8?B?KzhJYTdiQzZsdHF1ZjlKMWNPNVBLaWp6aDVYT3NxK2Nic3dmTWUxblQxK08x?=
 =?utf-8?B?Umo3KzlacnQzQ0Y4SStHUWFCTzlkVGttWlI4VXptU3A0NE9YaW5tL3ZwVmlv?=
 =?utf-8?B?SjVWUVkrVE84NlN6aEtydG9ocXhRbHUwOExXWUhiQXZPWkJzc0NndW5OSEF4?=
 =?utf-8?B?SkFpSVJGdkFZS3ZHRE96V1lJNEdYNnlyT1BJWmc2L01rWERCanRNamFtdkc2?=
 =?utf-8?B?QzZjcGxISGVnUzFnOFFRWGkveG9pdEx5WHkvSnZRdXhYLy9KSkNVeGtwWmZw?=
 =?utf-8?B?dVMyd3FFR3Y0dXUvZW5DbnMveGdiU3VuZzMxQnNZNlB1d2tWajdnTkVYMjha?=
 =?utf-8?B?VDZvVDhLKzlaOUI1eXBFcnBmalA3ZFd2TTRMOXpQaXE5a2hqNlZhc2N0ekFV?=
 =?utf-8?B?V1lCd3lIVlh4Ni9GODNxTXBrMGpJRDVXMWcwdUhxbnlaWUpWQUVseE1MSXdG?=
 =?utf-8?B?UXlCemtGU3UyUWFTbmRIMjJQSUlRWFk0K2hUL05ub29DNXRSNU83Tmlabzhu?=
 =?utf-8?B?ODE4YXpvU0dUUTc2Ym15eGl5eHNEYks3bFFmcjVaMnZKVWJGNUoxcWM1b0I0?=
 =?utf-8?B?OTBQdjJnZmJBTVRoYWEyVnhOL3BaRDhWSUN3STZkRklJV1AwbUNTYmRMWlNl?=
 =?utf-8?B?Y1I1K1NLTk5Td3ZvMEFYamxuY3gwalZhOFBnL2lENDZJWTlvQUQvNHlrOXA0?=
 =?utf-8?B?cXpmeTBpdC9LeVZEclQyMGhYNVhRTUZWNHZXMm9vNUwwSlZycmxxRWVlNzd5?=
 =?utf-8?B?dnVETzJjNFpqOS8xSTZ0NzQvUUVoSjFBcnZtRTF6MThIWkNiYmo2L0RpVWFB?=
 =?utf-8?B?cUcxdS9iV3VFUzNod2l5NFlIM1ExanZ6M0p4L3FyN1JJQjVJU0tsZlNTU000?=
 =?utf-8?B?Z3JZL2IvMXZqVHdzeERXUjV0Qk5FOEVqQVFtUHB2VHpsUDBNQ1NLcVRURnRi?=
 =?utf-8?Q?g/8pqwYOun0UHq5MSMCD9qmd4?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS7PR11MB5990.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: c68fae42-5d70-46a6-56a7-08dcf7ec7d2a
X-MS-Exchange-CrossTenant-originalarrivaltime: 29 Oct 2024 07:37:06.3568 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: E0aA6wINHGZ/+w+s9cewIz5gzV2urUMfHPobKjy+XMW9o9/QOZuFva+L0gwjL7Ho70q108cKjI2gtyhGdtbrkA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB7605
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFR1ZXNkYXksIE9jdG9iZXIgMjks
IDIwMjQgMTI6MzYgUE0NCj4gVG86IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVs
LmNvbT47IGludGVsLQ0KPiBnZnhAbGlzdHMuZnJlZWRlc2t0b3Aub3JnDQo+IFN1YmplY3Q6IFJl
OiBbUkZDXSBkcm0vaTkxNS9wc3I6IERpc2FibGUgcHNyMSBpZiBzZXR1cF90aW1lID4gdmJsYW5r
DQo+IA0KPiBPbiBUdWUsIDIwMjQtMTAtMjkgYXQgMTA6MzAgKzA1MzAsIEFuaW1lc2ggTWFubmEg
d3JvdGU6DQo+ID4gSXNzdWUgaXMgc2VlbiB3aGVuIFBTUiBlbmFibGVkIHdpdGggc2V0dXAgZnJh
bWVzIGFuZCB3aGVuIHRyeSB0bw0KPiA+IGRpc2FibGUgUFNSIGF0IFNSRE9OQUNLIFN0YXRlICgw
eDEpLiBQU1IgRlNNIGlzIHN0dWNrIGF0IFNSRE9OQUNLKDB4MSkNCj4gPiBmb3IgbW9yZSB0aGFu
IDUgc2Vjb25kcy4gSXNzdWUgbm90IHNlZW4gd2l0aCBTZXR1cCBmcmFtZXMgZGlzYWJsZWQuDQo+
ID4gQ3VycmVudGx5IGRpc2FibGUgcHNyMSBpZiBzZXR1cHRpbWUgPiB2YmxhbmsgdG8gd29ya2Fy
b3VuZCB0aGUgYWJvdmUNCj4gPiBpc3N1ZS4NCj4gPg0KPiA+IEhTRDogMTYwMjQ1OTQ2NzQNCj4g
Pg0KPiA+IFNpZ25lZC1vZmYtYnk6IEFuaW1lc2ggTWFubmEgPGFuaW1lc2gubWFubmFAaW50ZWwu
Y29tPg0KPiA+IC0tLQ0KPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYyB8IDEzICsrKysrKysrKysrKysNCj4gPiDCoDEgZmlsZSBjaGFuZ2VkLCAxMyBpbnNlcnRp
b25zKCspDQo+ID4NCj4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9pbnRlbF9wc3IuYw0KPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9w
c3IuYw0KPiA+IGluZGV4IDQxNzYxNjNlYzE5YS4uODg3ZmE4YThmODc4IDEwMDY0NA0KPiA+IC0t
LSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfcHNyLmMNCj4gPiArKysgYi9k
cml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX3Bzci5jDQo+ID4gQEAgLTE2NDAsNiAr
MTY0MCwxNSBAQCBfcGFuZWxfcmVwbGF5X2NvbXB1dGVfY29uZmlnKHN0cnVjdCBpbnRlbF9kcA0K
PiA+ICppbnRlbF9kcCwNCj4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHRydWU7DQo+ID4gwqB9
DQo+ID4NCj4gPiArc3RhdGljIGJvb2wgaW50ZWxfcHNyX25lZWRzX3dhXzE4MDM3ODE4ODc2KHN0
cnVjdCBpbnRlbF9kcA0KPiA+ICppbnRlbF9kcCwNCj4gPiArwqDCoMKgwqDCoMKgwqDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoCBzdHJ1Y3QgaW50ZWxfY3J0Y19zdGF0ZQ0KPiA+ICpjcnRjX3N0YXRlKQ0KPiA+ICt7DQo+
ID4gK8KgwqDCoMKgwqDCoMKgc3RydWN0IGludGVsX2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRl
bF9kaXNwbGF5KGludGVsX2RwKTsNCj4gPiArDQo+ID4gK8KgwqDCoMKgwqDCoMKgcmV0dXJuICgo
RElTUExBWV9WRVIoZGlzcGxheSkgPT0gMjApICYmIGludGVsX2RwLQ0KPiA+ID5wc3IuZW50cnlf
c2V0dXBfZnJhbWVzID4gMCAmJg0KPiA+ICvCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAh
Y3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUpOyB9DQo+ID4gKw0KPiA+IMKgdm9pZCBpbnRlbF9w
c3JfY29tcHV0ZV9jb25maWcoc3RydWN0IGludGVsX2RwICppbnRlbF9kcCwNCj4gPiDCoMKgwqDC
oMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgIHN0cnVj
dCBpbnRlbF9jcnRjX3N0YXRlICpjcnRjX3N0YXRlLA0KPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqAgc3RydWN0IGRybV9jb25uZWN0
b3Jfc3RhdGUgKmNvbm5fc3RhdGUpDQo+ID4gQEAgLTE2ODYsNiArMTY5NSwxMCBAQCB2b2lkIGlu
dGVsX3Bzcl9jb21wdXRlX2NvbmZpZyhzdHJ1Y3QgaW50ZWxfZHANCj4gPiAqaW50ZWxfZHAsDQo+
ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm47DQo+ID4NCj4gPiDCoMKg
wqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+aGFzX3NlbF91cGRhdGUgPQ0KPiA+IGludGVsX3NlbF91
cGRhdGVfY29uZmlnX3ZhbGlkKGludGVsX2RwLCBjcnRjX3N0YXRlKTsNCj4gPiArDQo+ID4gK8Kg
wqDCoMKgwqDCoMKgLyogV2FfMTgwMzc4MTg4NzYgKi8NCj4gPiArwqDCoMKgwqDCoMKgwqBpZiAo
aW50ZWxfcHNyX25lZWRzX3dhXzE4MDM3ODE4ODc2KGludGVsX2RwLCBjcnRjX3N0YXRlKSkNCj4g
PiArwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgY3J0Y19zdGF0ZS0+aGFzX3BzciA9IGZh
bHNlOw0KPiA+IMKgfQ0KPiANCj4gUGF0Y2ggbG9va3Mgb2sgdG8gbWUuIE1heWJlIHNvbWUgZGVi
dWcgcHJpbnRvdXQgd291bGQgbWFrZSBzZW5zZT8NCg0KU3VyZSwgd2lsbCBhZGQgaW4gbmV4dCB2
ZXJzaW9uLg0KDQpSZWdhcmRzLA0KQW5pbWVzaA0KPiANCj4gQlIsDQo+IA0KPiBKb3VuaSBIw7Zn
YW5kZXINCj4gPg0KPiA+IMKgdm9pZCBpbnRlbF9wc3JfZ2V0X2NvbmZpZyhzdHJ1Y3QgaW50ZWxf
ZW5jb2RlciAqZW5jb2RlciwNCg0K
