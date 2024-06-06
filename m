Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5A8B48FE16D
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Jun 2024 10:48:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A8EC210E056;
	Thu,  6 Jun 2024 08:48:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SY2Lo9UT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BEC7110E056
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Jun 2024 08:47:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717663681; x=1749199681;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=mUQBcx1yE++oh14XtbEp4mUzVVIO9F8PhoeHChToBA4=;
 b=SY2Lo9UTuGrrGGQQoWF8UzxGfceMVM81rKZfvfAAefY2rOqdT0iaS3hm
 iaJY3ni8P7wGWWCpX0ZtC0s+T25SqQ21aIOuy15G0VMvJbPPchw9elWRH
 B3OiHBORcDHQHlFR8yMhAj1b2SZSat/kAKKSMsWq8AXhgfd0e4E6F0FxU
 cWvgf7CtLQe95wJ68k4AAWSTIymeSQE2ttsAEozwaL2rlsczixZRF1CMr
 N2j6lCgi+h8J+bLxfhE7MOvc43o8cWaMNniD6hdfNZEyOb/nrt2H1Rbdb
 DPPoUdNqOcW/WldAs3DKGIQMjYb5/0uKw0KEbFdS0MGWo90mlgZZ3m0Rw Q==;
X-CSE-ConnectionGUID: Tb6O5BudSHKoDoa6/ULcOA==
X-CSE-MsgGUID: wXARVDK+QrqHKNN+mXS4TQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="18105786"
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="18105786"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 01:47:59 -0700
X-CSE-ConnectionGUID: Cn0nEw1cTZS+QNnRri+rcg==
X-CSE-MsgGUID: an/Sg8GYTCmD/jcrsaE7Tg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,218,1712646000"; d="scan'208";a="38336993"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 06 Jun 2024 01:47:59 -0700
Received: from orsmsx611.amr.corp.intel.com (10.22.229.24) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 01:47:58 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX611.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 6 Jun 2024 01:47:58 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 6 Jun 2024 01:47:58 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 6 Jun 2024 01:47:57 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=JKWCL1i7Mr1vdSkShpI2TnU4kHYUmV9Tbc1ufDJ+s4vGP6YEZ19ErwmAGXnrsMY2W311M4+0vxlqPgQjoB+bl1MNDDs4qM3YIRbFanc3v9Fs/ksbR6wLEPrZkGnnNrjDkvNTiR/T9FKA8g013VPPXpLUFbycvF0TZtIO495wLPPnLQSnRGqkOobrigzXWbMLWOIZ7AYL0H8YzxtAHirSpP/ebq5kX6kH3di3kcRoK50w1eX2zOc1MFj6xzxpq/mnke9z5szeeVHrRHnUfdq2vRQv4dYC+GeQkY9uuOOe0L0Okmo0NJiRyQPQLxccGESHNHSgOdgsduNUmY2l3XJ6MQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=mUQBcx1yE++oh14XtbEp4mUzVVIO9F8PhoeHChToBA4=;
 b=WFIeSUErNKaK8wx4qPVxZYGpz81b+cyN/g8tkQFayLRsjYCVOQG5swWgJPZhjIkGZh+Rs9WqE3N9vz8WWD9qFPKgxt4Y/pu8NW6Ayf6S/nho9eCdlaeV9FIhMe9ULiLb77ByJ49oa7E0urhfwAPLz6MFsK1nq1OUmp6M7rJ89tTtLNBJKmSjH6GFrlolDq29XpQawCRWOAfRr2gW9h8I7G+rWTcfwL9ksXSxvVEyQVbwJZ2A/WEkr7QIBVyco98H/3zwYq0hTxT5NrE5TgbRTk2d9v9UmAoZqhV/a7BBnRYITKj+U7BXE8isetRanuONm9ycdgFFTX4ZEWNWLgYnSQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from PH7PR11MB5981.namprd11.prod.outlook.com (2603:10b6:510:1e0::15)
 by SA1PR11MB6661.namprd11.prod.outlook.com (2603:10b6:806:255::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7633.34; Thu, 6 Jun
 2024 08:47:55 +0000
Received: from PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0]) by PH7PR11MB5981.namprd11.prod.outlook.com
 ([fe80::40e0:95a6:26e8:8de0%6]) with mapi id 15.20.7633.018; Thu, 6 Jun 2024
 08:47:55 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Hogander, Jouni" <jouni.hogander@intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "Kahola, Mika" <mika.kahola@intel.com>
Subject: RE: [PATCH v6 01/26] drm/i915/alpm: Do not use fast_wake_lines for
 aux less wake time
Thread-Topic: [PATCH v6 01/26] drm/i915/alpm: Do not use fast_wake_lines for
 aux less wake time
Thread-Index: AQHatzLS3SvGOreNNk2ypdo1B25XIbG6bX+w
Date: Thu, 6 Jun 2024 08:47:55 +0000
Message-ID: <PH7PR11MB59810AED8F15D7E9CC094F77F9FA2@PH7PR11MB5981.namprd11.prod.outlook.com>
References: <20240605102553.187309-1-jouni.hogander@intel.com>
 <20240605102553.187309-2-jouni.hogander@intel.com>
In-Reply-To: <20240605102553.187309-2-jouni.hogander@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: PH7PR11MB5981:EE_|SA1PR11MB6661:EE_
x-ms-office365-filtering-correlation-id: f3c055e4-75ff-4294-e148-08dc86055c07
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230031|1800799015|376005|366007|38070700009;
x-microsoft-antispam-message-info: =?utf-8?B?UnZUb1JPcUczT3VxcjlkNUVtR2RaVWRoQ05OYzU4QWduejJHdlh2QzFieUxx?=
 =?utf-8?B?NGlUd2p6ZHdDdVZXRVRpOExuamgvTVZ0bHkxbXhWWW16ekhGQWtRQmtQRjZn?=
 =?utf-8?B?aVdLdGZqckxMR3lXek1HTTRpUEZoQ1o5RDhaVG1jWnZ0UmwvY25nbVVVZVhv?=
 =?utf-8?B?K2J6QjdOa1BYYm9XRlZScGpjdnBKdkZjb0hRWm5FK2I0MFNBRGd3R1k3WnVN?=
 =?utf-8?B?eVhjVUUxZXBkY0ZOc3c3UnBHcGJ4emdNekJ1RFlpU3UzVkh3dVpPZ1g3NjAv?=
 =?utf-8?B?NmR5RzZodmdrNFE0MWRFTzhEajZjQUF0bzVMeFlUeW5aaGN3d25EaUIzc09Q?=
 =?utf-8?B?N2tBVVlScTQwWk9hZTYyUXUveTVaOHlZcm1PNnQ5WFZsQ3Q2RjV0MU5MNERC?=
 =?utf-8?B?Yld1R1VWS1Jrc2RaK1pzcTNEUzRPZ2hFSDIwRVpYNDdXaitHWURJRXRaTXZq?=
 =?utf-8?B?UGF4ODFHMzNmTkd0Y2praUp4UHhTYUFtSFdvc0dhTXVOa0xjZVJQWnh4Tkpq?=
 =?utf-8?B?WW9uSUlCb0tNODZreUxjVGE2QU9JWmFlQ1dkdks4dnNaUlRRU2g1Y2ZJTEVK?=
 =?utf-8?B?V1M4cjN6Y1E2REdrUXI5M1hGVlBWaTFJRS8yMWhlQzdNbGhIeVlLMEc1UEhL?=
 =?utf-8?B?WUF2ZmdQKzhLMXhQYWJLN3ZjTHVKYnR2MTQ5dmZ3OUZLTE9NSXRCMFdTRjBm?=
 =?utf-8?B?bHpxaml6eDlKSkVGOXhEQ2JQY1lJT0J6ZVY0am45UFZPRk0rSUhxMEFqSjFH?=
 =?utf-8?B?WUpxY0M1TkxCVDEwVmFXdFhQeXlOWHF6WFdDNm54Rk1tRlNyV25zdHZXMTFv?=
 =?utf-8?B?QUZJMkZXalpoaVUyckVscVhMYlNiaHFqVjZZZUJUZVh3YXc3N0x0amY0aXIy?=
 =?utf-8?B?d0ZQSmpHSlk3M1FKNVVBQnJxd3A4SC9yeGlVYXRGRjdpSmZtZ2NHai9UZmxO?=
 =?utf-8?B?dzM2OGpzSUxJSll1dm9BUDRDeS9qclAzZXBQR3czemdvUnF4RHllcWxnLy9F?=
 =?utf-8?B?WEdhaW1IQVNuYWVaOERiT05YRVhLUWpCRC9pUXRuYVU1OEZ6a2dMYSt1Z1B3?=
 =?utf-8?B?T29qS293TWdrWDVsWS8ydkdONFdrU2VoRDMyNVN2UzRtRERkTVpWRE85Y0Jz?=
 =?utf-8?B?eWRmWTV1RytZclp6Y0NpL3hzbm1RQTFsV1VYdHVQY3BmMmxVZXJ2OVg2WUs5?=
 =?utf-8?B?aGkyclp6d1Y0OXlYNU8rd1I5bjhZeXNrUkRGdmxYZjNCaitjS0JWV09ka2k0?=
 =?utf-8?B?TnJzT3VxaFVzaUNTcmVKZ0lvTUpQVkZiMnk3RCtMcERRdzJYOUpDNVlTYTBC?=
 =?utf-8?B?M1ZoTEIwa0JGMmtUb3RubVFWcnFwdG9jRnJZN21oeFFuN1VqdzZSRWVFeWY2?=
 =?utf-8?B?MHV4SDRJNU02N3lUQ096anBIOWlKTHYyRTN1RlMrNkkweElKeEpnYWNRNFBz?=
 =?utf-8?B?b1plMWFEa2lEa1IxanJYSHRmakdqdzVBdmg1SHRObDkyZXJpN0lFem1leGlr?=
 =?utf-8?B?eGdsdE9Xc2owVVFjS2ZvbDBaekEzTlNKMnRCOThLQkdaQVNnVkJjazNzcTNH?=
 =?utf-8?B?WUZEYVJmdDRNd01VeDQ0YS9FV21Rclo3RElBVzFObFRMTW1xelRvSUpFRHk2?=
 =?utf-8?B?aU15TVdoeCt6ZkswTWYvL1JuOGYwdDlpa0ppbVJTdzNSN1BjRWp3T3NaSDVQ?=
 =?utf-8?B?dG5tOGxNQ0s0Tm1TcGQ2THkvT0I4VGdGaFVjdWk5SUhqaDFVRXdqdFBsbDk2?=
 =?utf-8?B?UzRuVUZjSHlzd3RCRFhmQkk5b3pOSVhRRk5qK2crZkZDR3AveldUbDNCc0pB?=
 =?utf-8?Q?a+f7JOwxvD2tQ3nc1PfERrexEtF913zfGTQ/U=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB5981.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(1800799015)(376005)(366007)(38070700009); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?c2FUOFI1bzNicXBySTFUNmxXN3lKWXA0aDlHTGY5K0FLbDNRZ3ZlTEJXYVJp?=
 =?utf-8?B?UFNVUTZYWEk3bzhTNXNLRDRWbTBqSVlnd29vbWNGOVdtQmh2MHIwbWFiMFhO?=
 =?utf-8?B?SWFNWjJFUEVaQ1VMczEwejlndU04dWJPNVp0bEhnN1Rwb0tiWjA4cFRpOURz?=
 =?utf-8?B?V3BTa1U1OWRkWXFmK0V2WTJQSGgwUFloVEl2enl6Uk5iMFowY1NhNGxkZCtz?=
 =?utf-8?B?dG1lcW5uTjBVU1lYZ1VHeG91RmpkditOamV1em9HenVnd2VWeGw0dGsxR1hK?=
 =?utf-8?B?Y2t4azg1T2hpL2pBeldtMmFCSHpubW8vNEtIVlFBLzY5b244VExETEZGSGJr?=
 =?utf-8?B?aDhxbStCSi9POC9hV055aWtPbnJicDRaWjRnUU9NVnVqS2VzNkdOTUJQdzRh?=
 =?utf-8?B?TVBxc3hyQ1Z1b0cyYzhQMUJxeE0vdmYzUnppUW9aa0ZTYmlRb1dWeE1wL0Yy?=
 =?utf-8?B?YXZGTmxLQjd3bmlYeDk0YmE1ZGpkaDhPVGNZczdJeDB1VEh2Qk40cFUycHl2?=
 =?utf-8?B?OUUwWk5FVTU3TGhHQlcvOTdkUUQzN2tjTktXL2NiNFBja2JyT2JyOFJndGEv?=
 =?utf-8?B?Kzl4LzZNcVVNRFVEOUhMVGxiV3lLQTcxU1dtOTRoSXpkS3A1aVBVNWR2LzR4?=
 =?utf-8?B?VHFFK0pVZ3JscTE0VjR0cEl1c1hYUURtaEh2MHRCRDhYaEhWbUFYdzh6NjhZ?=
 =?utf-8?B?RnBzVWM5VzdQc1dmSnIyaGpaY3dVWGRMWEhXNVZvM3V1ZVh5Tm1nTnoySVgw?=
 =?utf-8?B?aXduQUp2WGJ2S1pkQi9TMWFKOTV0S0p3emlPWVlOQXU3aXNqV3Y5T2wrRVBx?=
 =?utf-8?B?cEJuR1ljUWlCa1VxY2g2ZzRtRFNidzNsMStOUytGRUVMQmZiSXhDc2laM2JH?=
 =?utf-8?B?VmRENGo2K0ZSWnZpU0VMUkc0cmhvb0RTTWc2Y1R0bER0ODd1aC9lMTc2aXNY?=
 =?utf-8?B?dmF6QzVVeUgrVXBvd3pGMkdzV3RaR1pXeS9vWXdBQ0xhZGkxQURwL0N6N2hP?=
 =?utf-8?B?UWJhcFdkNzB4VHRacWk2VFdZTjdJNWZtTU9UU3NKMGJjbHpEOElablFIalFs?=
 =?utf-8?B?SjNNd3BsVjNBRGVQNjlkdDdzNTRvanJqYmpuZ1k0SzJxS0R2YUlGdmVnNDBK?=
 =?utf-8?B?Rm9zMnQ1TVJKTkdVUkxrc1J1cFV2M0Q0dHo2dzY1UHpsaitOWVFPREYyU0ho?=
 =?utf-8?B?M3VFVEJSZVJ2bHdUZjRrSEsyS2MyVDdwQXNzNzZhQ3Y3WEdHcE5YYU5JME5N?=
 =?utf-8?B?WlpORzdVZG9neWNoYmxlT3QxYkRreGZ5S3FlS3J6K244ZXMrVnc3NlFNclpr?=
 =?utf-8?B?cjdpZTl1YkVWd0RGQjZQVDFmSXExZTNkTDczbCtJYm1oU2hVT29lWHl2SnpV?=
 =?utf-8?B?dWdSMzRhbmIrRDFKUmxFZHltYnFjZ3BmaXFZTzdQeGJMZnhxdmpZZ2ZmdWUy?=
 =?utf-8?B?dmZnMXFWcEFMenZ2aGRpNWlZMnpRYytEeDJ2U1Axd1FIdDdjQXdqRXdmTFUz?=
 =?utf-8?B?eWxxem5EYzJQbjFuNVJDUldzZTdNY1lDMkExVDdQNks5RTNMQ3dJbFp0YlRo?=
 =?utf-8?B?MzFDb3lqd1kvY1AxaG4rSjFEWUpHWXVxZzVScHA2VU1STkduaW41aWFnMVI1?=
 =?utf-8?B?STdDYXF1TnpoVjVqUkk1RTdXRy9RUlYrTklvYzZyYWViRWdOWTV0NWx1OS9O?=
 =?utf-8?B?RjZnT1lFaFRrbjl0aGl2cE1xeGRTaVB3OWQzZUpjK2FML0Z4SXhoRkNNK2VW?=
 =?utf-8?B?NnkvRlc2Y0o5ckZ0MDFTakVFNFVHOUtLMWhjekhjaVF2ay9nYStBM0dRYkd2?=
 =?utf-8?B?N0Q1YTl3T2VsOTNJSlFpeGpPNktuWHZPdWtzV1N4Ym01b093cldSKzlkUVNq?=
 =?utf-8?B?ZG96NFczVDY1NDhnbGpBQTcwS1lKblNpajFZM0VtT0hXRHptVGZaTlZ2cWdq?=
 =?utf-8?B?a3FpK3YzbGRxRHVGdWQ2SGdZbUtCeGpkS2w3TzhRRHFCbVpHTDFMeUxSblBI?=
 =?utf-8?B?L01TSGZHeWdWSzh2QXZCYkV1ZFVOSG9TUGhXTXpveDEvV1ZhZm9iWGt3cnpu?=
 =?utf-8?B?WFh0TXZmeCtJMjFRM1REVE5WTXlrN3hmMzQ4c1dscFk4UHdSRnJPaUpTNmZV?=
 =?utf-8?Q?lGQynhDI19LdSG7h9/dFxnuGy?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB5981.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: f3c055e4-75ff-4294-e148-08dc86055c07
X-MS-Exchange-CrossTenant-originalarrivaltime: 06 Jun 2024 08:47:55.6432 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: nbm/DJLqHQlwu9wFILyufC8Q1Hq6rYKr1DaX3+5YEsE8OoDG407osY26BvYTKiHrSnr8UxVHkZUiAD6FGEywFg==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6661
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
IDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwgSnVuZSA1LCAy
MDI0IDM6NTUgUE0NCj4gVG86IGludGVsLWdmeEBsaXN0cy5mcmVlZGVza3RvcC5vcmcNCj4gQ2M6
IE1hbm5hLCBBbmltZXNoIDxhbmltZXNoLm1hbm5hQGludGVsLmNvbT47IEthaG9sYSwgTWlrYQ0K
PiA8bWlrYS5rYWhvbGFAaW50ZWwuY29tPjsgSG9nYW5kZXIsIEpvdW5pIDxqb3VuaS5ob2dhbmRl
ckBpbnRlbC5jb20+DQo+IFN1YmplY3Q6IFtQQVRDSCB2NiAwMS8yNl0gZHJtL2k5MTUvYWxwbTog
RG8gbm90IHVzZSBmYXN0X3dha2VfbGluZXMgZm9yDQo+IGF1eCBsZXNzIHdha2UgdGltZQ0KPiAN
Cj4gV2Ugd2FudCB0byBoYXZlIG93biB2YXJpYWJsZXMgZm9yIGZhc3Qgd2FrZSBsaW5lcyBhbmQg
YXV4IGxlc3Mgd2FrZSB0aW1lLiBJdA0KPiBtaWdodCBiZSBuZWVkZWQgdG8gY2hvb3NlIGlmIHdl
IGNhbiBlbmFibGUgUGFuZWwgUmVwbGF5IFNlbGVjdGl2ZSBVcGRhdGUgb3INCj4gUFNSMi4NCj4g
DQo+IEFsc28gY3VycmVudGx5IGF1eCBsZXNzIHdha2UgdGltZSBpcyBvdmVyd3JpdHRlbiBieSBj
YWxjdWxhdGVkIGZhc3Qgd2FrZSB0aW1lLg0KPiANCj4gdjI6dXNlIGxlc3Mgd2FrZSB0aW1lIGlu
IGludGVsX2FscG1fbG9iZl9jb21wdXRlX2NvbmZpZw0KDQpUeXBvIGF1eF9sZXNzXyouIFdpdGgg
dGhpcyBmaXhlZCwNClJldmlld2VkLWJ5OiBBbmltZXNoIE1hbm5hIDxhbmltZXNoLm1hbm5hQGlu
dGVsLmNvbT4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCj4gDQo+IEZpeGVzOiBkYTZhOTgzNmFjMDkg
KCJkcm0vaTkxNS9wc3I6IENhbGN1bGF0ZSBhdXggbGVzcyB3YWtlIHRpbWUiKQ0KPiBTaWduZWQt
b2ZmLWJ5OiBKb3VuaSBIw7ZnYW5kZXIgPGpvdW5pLmhvZ2FuZGVyQGludGVsLmNvbT4NCj4gLS0t
DQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2FscG0uYyAgICAgICAgICB8
IDQgKystLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5
cGVzLmggfCAxICsNCj4gIDIgZmlsZXMgY2hhbmdlZCwgMyBpbnNlcnRpb25zKCspLCAyIGRlbGV0
aW9ucygtKQ0KPiANCj4gZGlmZiAtLWdpdCBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfYWxwbS5jDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9hbHBt
LmMNCj4gaW5kZXggYTI2NzE2YzE0YWEzLi41MmE1NzMzNjc5NzYgMTAwNjQ0DQo+IC0tLSBhL2Ry
aXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+ICsrKyBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYWxwbS5jDQo+IEBAIC0xNTksNyArMTU5LDcgQEAg
c3RhdGljIGludA0KPiBfbG5sX2NvbXB1dGVfYXV4X2xlc3NfYWxwbV9wYXJhbXMoc3RydWN0IGlu
dGVsX2RwICppbnRlbF9kcCwNCj4gIAlpZiAoaTkxNS0+ZGlzcGxheS5wYXJhbXMucHNyX3NhZmVz
dF9wYXJhbXMpDQo+ICAJCWF1eF9sZXNzX3dha2VfbGluZXMgPQ0KPiBBTFBNX0NUTF9BVVhfTEVT
U19XQUtFX1RJTUVfTUFTSzsNCj4gDQo+IC0JaW50ZWxfZHAtPmFscG1fcGFyYW1ldGVycy5mYXN0
X3dha2VfbGluZXMgPSBhdXhfbGVzc193YWtlX2xpbmVzOw0KPiArCWludGVsX2RwLT5hbHBtX3Bh
cmFtZXRlcnMuYXV4X2xlc3Nfd2FrZV9saW5lcyA9DQo+IGF1eF9sZXNzX3dha2VfbGluZXM7DQo+
ICAJaW50ZWxfZHAtPmFscG1fcGFyYW1ldGVycy5zaWxlbmNlX3BlcmlvZF9zeW1fY2xvY2tzID0N
Cj4gc2lsZW5jZV9wZXJpb2Q7DQo+ICAJaW50ZWxfZHAtPmFscG1fcGFyYW1ldGVycy5sZnBzX2hh
bGZfY3ljbGVfbnVtX29mX3N5bXMgPQ0KPiBsZnBzX2hhbGZfY3ljbGU7DQo+IA0KPiBAQCAtMjk4
LDcgKzI5OCw3IEBAIHZvaWQgaW50ZWxfYWxwbV9sb2JmX2NvbXB1dGVfY29uZmlnKHN0cnVjdCBp
bnRlbF9kcA0KPiAqaW50ZWxfZHAsDQo+ICAJaWYgKGludGVsX2FscG1fYXV4X2xlc3Nfd2FrZV9z
dXBwb3J0ZWQoaW50ZWxfZHApKQ0KPiAgCQl3YWtldGltZV9pbl9saW5lcyA9IGludGVsX2RwLQ0K
PiA+YWxwbV9wYXJhbWV0ZXJzLmlvX3dha2VfbGluZXM7DQo+ICAJZWxzZQ0KPiAtCQl3YWtldGlt
ZV9pbl9saW5lcyA9IGludGVsX2RwLQ0KPiA+YWxwbV9wYXJhbWV0ZXJzLmZhc3Rfd2FrZV9saW5l
czsNCj4gKwkJd2FrZXRpbWVfaW5fbGluZXMgPSBpbnRlbF9kcC0NCj4gPmFscG1fcGFyYW1ldGVy
cy5hdXhfbGVzc193YWtlX2xpbmVzOw0KPiANCj4gIAljcnRjX3N0YXRlLT5oYXNfbG9iZiA9IChj
b250ZXh0X2xhdGVuY3kgKyBndWFyZGJhbmQpID4NCj4gIAkJKGZpcnN0X3NkcF9wb3NpdGlvbiAr
IHdha2V0aW1lX2luX2xpbmVzKTsgZGlmZiAtLWdpdA0KPiBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvaW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUv
ZGlzcGxheS9pbnRlbF9kaXNwbGF5X3R5cGVzLmgNCj4gaW5kZXggNzc2MDk2NTYzMTdiLi5kZjI5
ZWMzN2VmMjggMTAwNjQ0DQo+IC0tLSBhL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50
ZWxfZGlzcGxheV90eXBlcy5oDQo+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkv
aW50ZWxfZGlzcGxheV90eXBlcy5oDQo+IEBAIC0xODQ3LDYgKzE4NDcsNyBAQCBzdHJ1Y3QgaW50
ZWxfZHAgew0KPiANCj4gIAkJLyogTE5MIGFuZCBiZXlvbmQgKi8NCj4gIAkJdTggY2hlY2tfZW50
cnlfbGluZXM7DQo+ICsJCXU4IGF1eF9sZXNzX3dha2VfbGluZXM7DQo+ICAJCXU4IHNpbGVuY2Vf
cGVyaW9kX3N5bV9jbG9ja3M7DQo+ICAJCXU4IGxmcHNfaGFsZl9jeWNsZV9udW1fb2Zfc3ltczsN
Cj4gIAl9IGFscG1fcGFyYW1ldGVyczsNCj4gLS0NCj4gMi4zNC4xDQoNCg==
