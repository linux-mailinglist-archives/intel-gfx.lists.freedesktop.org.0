Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F3F99D0A66
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Nov 2024 08:50:16 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9AD2010E15E;
	Mon, 18 Nov 2024 07:50:14 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hmlwYzFG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DAD4C10E15E
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Nov 2024 07:50:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1731916212; x=1763452212;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-id:content-transfer-encoding: mime-version;
 bh=gJkjI2qlK+QhlTCQlwydmC60oZgN4P0p7eFLoGj0Uog=;
 b=hmlwYzFGOBjRjs5Pimux7LI+VAiyzckznuEhkg0pWhozR/R/GlHfrQYS
 vEJyyeHlIV+faauaRBNarGDSpetrpMr+W/MHIyBgtsPxFkZRRsJJW9u4R
 aIFX596OewZAlA8xRXKEOrS3oGbvPhqMlfxzIBFDFfrhZA4+geBFVo6Mn
 TFK6oap5ER1OkVmmiaP/MwSwC91Sli+eCHCaD2UvDooQpJqK6tXezMH/2
 Q7H2v72uytkxu9ty1XcKXWDK345NHUOBLfwmeeU7i01Ge6hkXz3A4btsO
 TLmsM4YOQ5jGIZh3uY855m2hKTVX/6BILNrVqEexwxUfDzJXTJ4IF7TlZ A==;
X-CSE-ConnectionGUID: wbBy4v6GR4CXCRjdTB58XA==
X-CSE-MsgGUID: 1Ep4ZJzASKCBIpxiR7y2Tg==
X-IronPort-AV: E=McAfee;i="6700,10204,11259"; a="49389387"
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="49389387"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Nov 2024 23:50:12 -0800
X-CSE-ConnectionGUID: kjBV/VyIQtez7SporuYcvg==
X-CSE-MsgGUID: NrEn/2viQFeJ9E9HcnPd/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,163,1728975600"; d="scan'208";a="89301092"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 17 Nov 2024 23:50:12 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Sun, 17 Nov 2024 23:50:11 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Sun, 17 Nov 2024 23:50:11 -0800
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Sun, 17 Nov 2024 23:50:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=r1WfuusUwDrFXPsMX8IkoVJPwAvs+V+m1Ssh07WVEK8jSF1xsPRDRU2L1iiJFUR9k2PaJ4EwB1mmx8DrTGqagL/9qVWbgKz/vW/B/fJKF3dnVxI5QIU6rIagTUJM1HSS5ScuQ9132OOn+PJKpiJSx/yWq5AoY9ABaCGNzBK687c0cTrX2Aj25T1Pqy7BU5Qj75vE0kRcUSDmZZrNfE3gXj2dmiB3uvrMDaQr2BxnDl62MEq0eWkZMwGm174Ezx5MnxtyvY0q6TsdNM/jUJlBsgP9WkjdqFQoDYNejMGZO+JH8TyG2iBFbSYFP2ybc07cUPFJujSb3NdFdh3j84mRpQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=gJkjI2qlK+QhlTCQlwydmC60oZgN4P0p7eFLoGj0Uog=;
 b=eNW0/TXsE6AQh4r7eZB/5Q5IS694eDk3RqsXjybqrvt1IwL4AM6BtYdZtjAoajvBDFNfKEBn/nB0MpBPrX+jQ+uer+HqZsiN0rl2P7twWns+uyADibuSni3mgjBV1EruBx1FyYELiswA4wsueAYQry149ChOxuUvit3sRRnstINZ0HxUdfnw+PfdYTOS7USj1vw58Yv3zM5kPrMK1r3ztx0qlBb5jffiLezqsCHGWWo+umzBQgdoGjkLKayAieGIweYOGMIiwKRrk52MJNCb+FVjhHkvnTntJT8QaKB0ubVnos6pjM0QOphf+B/oiXDFk8OZGaFo6TbBjUbWJc73jQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DM4PR11MB6019.namprd11.prod.outlook.com (2603:10b6:8:60::5) by
 PH7PR11MB6796.namprd11.prod.outlook.com (2603:10b6:510:1ba::6) with
 Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8158.22; Mon, 18 Nov 2024 07:50:09 +0000
Received: from DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2]) by DM4PR11MB6019.namprd11.prod.outlook.com
 ([fe80::fc1:e80f:134c:5ed2%4]) with mapi id 15.20.8158.017; Mon, 18 Nov 2024
 07:50:09 +0000
From: "Hogander, Jouni" <jouni.hogander@intel.com>
To: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>
CC: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 7/9] drm/i915: Nuke ADL pre-production Wa_22011186057
Thread-Topic: [PATCH 7/9] drm/i915: Nuke ADL pre-production Wa_22011186057
Thread-Index: AQHbGnhCf0LGFlIAVkeRBFq9KWW8ELKV0J2AgAaP8ICAIId8AA==
Date: Mon, 18 Nov 2024 07:50:09 +0000
Message-ID: <b96f8862a9589782b1e7027f28af979176680a05.camel@intel.com>
References: <20241009182207.22900-1-ville.syrjala@linux.intel.com>
 <20241009182207.22900-8-ville.syrjala@linux.intel.com>
 <06e016174cfe2768302db0e3e1ed7193665b4fb8.camel@intel.com>
 <Zx-oF-EVxnJ7qlfE@intel.com>
In-Reply-To: <Zx-oF-EVxnJ7qlfE@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DM4PR11MB6019:EE_|PH7PR11MB6796:EE_
x-ms-office365-filtering-correlation-id: 79a74092-b212-45ec-4381-08dd07a5a055
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0; ARA:13230040|1800799024|366016|376014|38070700018;
x-microsoft-antispam-message-info: =?utf-8?B?QmRzdkhpR21RWTRwRUl2cnpqMWw3VXhxdS8rTjFCNXNrKzBlSXBhMFZYSVRB?=
 =?utf-8?B?emxXblVNY01uZVozUzRJUURnS3Z2cnNmeEVoSmNmNGQ5SWRTUlF0aGZWQUFj?=
 =?utf-8?B?bURSQVB6V0ZHc2lpUXhaQ2d6aElndHdUanNORTh4VTJlYzNYZ3h3Y2pqL0Ns?=
 =?utf-8?B?RU9GN2tXUDBJYzBLUXNMdTM3M2JOREI0WTJwQmZJVUR3RGNuVnhFMHhkalc2?=
 =?utf-8?B?djdsSTdHSFB0QkxUSmdJU3hOUmp1MVc1MVZtSUh6WURXaGtKVWhzRktyc1U2?=
 =?utf-8?B?bFBoQ3RjdXJUVUsrUTh5d2dKWmVGeC9PTUNJUnBWRURid1N2d2FQOGZ6aitI?=
 =?utf-8?B?RlA0SHRzdFlOcFBiTkRhSU1DZUcvYVZzNkkveTd4TFRLTCsxOTlEUG1Ib3Ez?=
 =?utf-8?B?ZXlUVzdubEdNbGM0andPb3Jsck1xSGhCR3J3R240bW5jc0dPSllzcHdaaGNu?=
 =?utf-8?B?L0p6TUtzVXpVZHRsa0J2UFgyRGtaVjBZbnNjdlRaVlAvWDhjSUx3eEo2bnVp?=
 =?utf-8?B?MWJEaG5OZ2tEWG9tcUtiVGVYcGxNdjJCd0hWL1YrSE91RHozcTgxekdDZXNZ?=
 =?utf-8?B?dVVOejVIeG9xcXJkSmFnMUpHSjZPZVFVTVZXR0hyYjBrbE54NEhqMk1QMjhn?=
 =?utf-8?B?cXlWaGZ5QXFneDdTWEZUMVg0QmJoYXlETFFBUUhML3QyZ3c0Qjkvc1BBR3Bt?=
 =?utf-8?B?azhDSklzL2NJWnF1NjhNcVY0QitZc1I5NGlmVFBCQ1NxUStmWE4rZ3d3Y0Fy?=
 =?utf-8?B?aWZPbzM0NC9mS0ZDWkZYZVZsck1SMmx0QXAwcC9BcXV4Yi9nN3FNRzlPRmVY?=
 =?utf-8?B?S05RYklHZllGVVUvZWhxdk0rNW8zWnpLS2V2OGZkRXRuUkVsOU5HUTV6TUto?=
 =?utf-8?B?aWJFWjhtQnBBWkc5S1BRY00yUDB4UXVrVzR6L3c2VzdVSzA4MzUvek4yYkNS?=
 =?utf-8?B?eFJZOFR5dFJGcGZDeUJlajFlTU1RdDhjOURZM0NxSUdDNzZaY1BvdFpKcmxm?=
 =?utf-8?B?eGVOL1BUZVBXclhhV2ROZTNKVks4Y2JnM2VkTWtSMjlJMmxTUlRBMHlsTWV0?=
 =?utf-8?B?eXltUUJxYmV3V2RZMml3SVdzVnRKcnRSR3BXZUtrSEY1T1FBWmVuMTFFN2Y3?=
 =?utf-8?B?MVJtTDIweHdVTHl2K1AwYXFOZFhHRHU0RHQ4OXQ4cWRxamdVZk8vSlhBTmJ3?=
 =?utf-8?B?OXozWkMzQjRZU0p2c2Fwc1BKOXZpc1FuUTBBYjgyWDBsdG1ONzY1cnl2U25l?=
 =?utf-8?B?QnFleVlSMlZNUUlpdU9VeTlXd01mV2ttTGwvY0JyY25oK2dOOXdOUkpLMFht?=
 =?utf-8?B?bzFSdGwyRHRjTENYalVhdHdlSWdka2N6RGhtOTZwNGIyTjluY0hnZ3lobW9Y?=
 =?utf-8?B?dnhadWZ2OUJ6aXZOdTZpWGlEUVFMNjQybWtWNlpJQTZ1VDBtamxmK2FzcU9o?=
 =?utf-8?B?NGphK3hlZUI0aGprQlViYnVjcVlVTU1CaDR0bDFoZ3NmbGtQMmp3OHpmQmoz?=
 =?utf-8?B?WExZbTliTUVLSHJvZ1R5dktjbG1rOERLdzIxWmIxQUhtc2YvazBHRnMyVk9P?=
 =?utf-8?B?S2dDRlIzeWhIODVCSlVIMkFpT1JTU2tmQTRlMWZGM1U2aUxoeHNUN2tHMEdO?=
 =?utf-8?B?T3Vpa0xiRXFrZ1kyaEowbHNpdm9IeDFrUXFXdHNrSFZSTmx4eWVpYU9OZldE?=
 =?utf-8?B?TmVqNVh2NkFscGRqR0owRE1rWTFSNi9uUWpXa25ocUNSNWY2MHkxR0YxQVBJ?=
 =?utf-8?B?MVpialpGT0RkdVRibm51MVk2K1REcjhGTEtTWHlJUG9hdUl2cnRvRDJxWUlv?=
 =?utf-8?Q?aFGN2hZmT1jODWobugwdpCThVumiNw3u013G8=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB6019.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(38070700018); DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?OWJ2dTFWa1BTdkJUN0dBdHJ2MXQzUVIzUzR4TURxaHRYTDdtZ2lGazZnZVJQ?=
 =?utf-8?B?ZXhnTmxwT0dZd0J0ZmV5aE92eGs2dnQ4R3B0alcybGZVbkd5QTh5UmZLTUcy?=
 =?utf-8?B?d1NXbmdFTWJpRzNGNGNhTGtmaVQvT21tTEdDeFc3Y3VEbi91R2k3WnNicVNM?=
 =?utf-8?B?bHRQZTNabkdLbmg1UUpva29qalhQL3lMRGV0NmN2bVRqY3NteFhiN2dmcGND?=
 =?utf-8?B?enN0eEhNc2ZpY3hrNnpIZnNvUWl3S1hsdE1pQUJhV0ZsYU1FcjcyckQrZzZs?=
 =?utf-8?B?WUJyR2puMUxSUU9YUjhuK2VybmxKT3UzS1M5UGJDLyt2MmpjdjlqNUE0d0tt?=
 =?utf-8?B?Tjl1akxOL0VoOWludEtrckxoOUs5dVhmdmhLRXArOC9KNWF5UHI1WVJHWEw3?=
 =?utf-8?B?SjhCdk9HMURsWEZUZXJuWVpQQkNBdWw3ZEptWmU5VUhzRTMxZ3hzb2wzMXdv?=
 =?utf-8?B?RnFnN1pzN050d1p0NzYrajMzclVKWWJUZkZOWER0Ymx5MmJlRDY4azJUdERx?=
 =?utf-8?B?U1ZMaXJQOU5KMFZsaXAwajBxTU1WaVFjb2RoZkkyL1hIWklaTmJZamkxclMv?=
 =?utf-8?B?YkdyOGZhR21MYkNuMU5UUnVtN2JEOUoyYzFnYzZpaStOWWtlU2taUGpvWnUv?=
 =?utf-8?B?djN3d0lxQmtFQ2NqekF2d2dFdkxvczhsMnU5L3lKNzlPTUZlR1o4VUk4R1BO?=
 =?utf-8?B?cUVJRGNieHpxclZ4c21VVW9LUDVORWZnTzI5dEdORVpjeFllTG5aL0JhZnN0?=
 =?utf-8?B?UjRoTnRTeVJxQXN0OTd0Rm1taXVyZjBkdVNCc3dmNDdVakJBVCthYm81d0xE?=
 =?utf-8?B?Vi93d0ZLWDhyRlcvQ3RLbWNWMFErR0pWRjR3SHZKN2dqbGdzTFlIWGFoWSs0?=
 =?utf-8?B?L2ZGTG9CSUlZdGRUcFc3ZWRkYk1jNmRlMElJeFoxQ0RJZUoxVFVKa05wcGd6?=
 =?utf-8?B?R3l0V3Zva2hTSENmN20vRTRDR0R3eUM4cW8ra3lqMzEvVGtIZEZBZGx3MTRp?=
 =?utf-8?B?alozU0Q0UVFxRFk2THhERjBvK3k1MzlOcURKeVF2d0U3ekpWZ1JjYzB1MlZi?=
 =?utf-8?B?dE1yOG9xRE1UN3M4MmE3QzV0ODZwWlZvcDNnR09wdDlHd1lkVVIyNG4ycCt5?=
 =?utf-8?B?R0h4bXIzK3BBb0Z2b0FqSUNEMkRabUU3QUtKVXN6SHFiaHM4aDZUdWQ2czRo?=
 =?utf-8?B?ZU5YTE1yKzcxSVlsaVZieHVvcUNIOUliQVhpTnUrZ1VUUVVma2k2bFo2L2dW?=
 =?utf-8?B?L2xtbjdiN2k3d0RhUml2Zy9oT3hKTUZmWG5HSEZXWnUyR1FhblNGS3p3V2tI?=
 =?utf-8?B?eEZ2VWxjM1V2Nit6STNiZWdySExhd3RmNU9tS3Rhb0F5WHVYZFNuUldHcE9F?=
 =?utf-8?B?L3VEb3lud0dUbXVGOHRiUDRYNFVqSy9CYk15OEhQUU5PTmx4eUdPMmc1ZE5T?=
 =?utf-8?B?L2lrZWtSMmNIaDk3akYwRjgzZys5VXM1VlRVVUsxZ1FaTWhiSW9HZkZPK3FC?=
 =?utf-8?B?WkY4U2w5RG54dUtEVHpmL3V5ck5uN29mOWhlUWkwamtQUDZWeEcrcEtEQmJv?=
 =?utf-8?B?Wm1Uc0ZuWWxXQm1JUW1tUkluM0IzbUtBRFJtdlVPcEdmc0FKTmEyVzdMb2NR?=
 =?utf-8?B?OHNzQ3FhNytjRElhVWVZend6bkxpbEZ3Snh1K2dWY2tMOFVjQU9sUnlSTWdm?=
 =?utf-8?B?ZVRxZTN2eGg2WDVEUEIrTzdkS2ZsWmpnLzlrSzBmMHlrY3Y5Mi9nK1l5Nmpo?=
 =?utf-8?B?Snp4d2JpMEJjNlQ2eXlLekpCd1J6VXNmVzM0eVpvNStoUnNjZXJiNHMvOU8r?=
 =?utf-8?B?TDB4QnlFelhDNDZnRjdQTzhnK05vQnJPV0YvM3JXSmJ5YjJ4aHlnK3ZqMXdo?=
 =?utf-8?B?OHVNSmV6azAxdVFUcXgxMGNKdlVNd2MvOHZmang4blRmaW1uemF3SFlkdG94?=
 =?utf-8?B?UkdHand6eG9wQVpJaHd2ZWxrMERmMklObVd5eEcvRk1TcVJPSXVVbGVaTlZP?=
 =?utf-8?B?K2kwY2FISG9CL0xTaFNtUU1zemZveVl5aWd5Tm1FNGdvcVJXSlZiQnFCeVc0?=
 =?utf-8?B?NTlEa0VuazN1eUJuMTlBa3VIZS8wSDFSUnlXU1REVm5DQjBzYloveHU3S0du?=
 =?utf-8?B?UWpreGRSYUdRcXFUenEwVHhudWRnd2NjYUhCQ2l1M2JFeHA2bkZKWXF0SWEx?=
 =?utf-8?B?WVE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-ID: <A76F396AB4BE574CBA27D46A8FE0E51A@namprd11.prod.outlook.com>
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB6019.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 79a74092-b212-45ec-4381-08dd07a5a055
X-MS-Exchange-CrossTenant-originalarrivaltime: 18 Nov 2024 07:50:09.7345 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: 9C/fpFQxrzXHLZwPl3ulDjfngT+dwwmZF0uZZL8an0QJNhWY2EvCKIkFHZMXALzdBnpGOe/0EAV4sd8uIuBtSsfMTghUniLmwx9ISomI3zg=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6796
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

T24gTW9uLCAyMDI0LTEwLTI4IGF0IDE3OjA0ICswMjAwLCBWaWxsZSBTeXJqw6Rsw6Qgd3JvdGU6
DQo+IE9uIFRodSwgT2N0IDI0LCAyMDI0IGF0IDEwOjUyOjEzQU0gKzAwMDAsIEhvZ2FuZGVyLCBK
b3VuaSB3cm90ZToNCj4gPiBPbiBXZWQsIDIwMjQtMTAtMDkgYXQgMjE6MjIgKzAzMDAsIFZpbGxl
IFN5cmphbGEgd3JvdGU6DQo+ID4gPiBGcm9tOiBWaWxsZSBTeXJqw6Rsw6QgPHZpbGxlLnN5cmph
bGFAbGludXguaW50ZWwuY29tPg0KPiA+ID4gDQo+ID4gPiBXYV8yMjAxMTE4NjA1NyAoc29tZSBD
Q1MgcHJvYmxlbSkgb25seSBhZmZlY3RlZCBBREwgQS1zdGVwcGluZywNCj4gPiA+IHdoaWNoIEkg
cHJlc3VtZSBpcyBwcmUtcHJvZHVjdGlvbiBody4gRHJvcCB0aGUgZGVhZCBjb2RlLg0KPiA+IA0K
PiA+IE1heWJlIHlvdSBjb3VsZCBhZGQ/IDoNCj4gPiANCj4gPiBCc3BlYzogNTQzNjkNCj4gDQo+
IENhbiBkby4NCg0KV2l0aCB0aGF0IGFkZGVkOg0KDQpSZXZpZXdlZC1ieTogSm91bmkgSMO2Z2Fu
ZGVyIDxqb3VuaS5ob2dhbmRlckBpbnRlbC5jb20+DQoNCj4gDQo+ID4gDQo+ID4gQlIsDQo+ID4g
DQo+ID4gSm91bmkgSMO2Z2FuZGVyDQo+ID4gDQo+ID4gPiANCj4gPiA+IFNpZ25lZC1vZmYtYnk6
IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb20+DQo+ID4gPiAt
LS0NCj4gPiA+IMKgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9za2xfdW5pdmVyc2FsX3Bs
YW5lLmMgfCA4IC0tLS0tLS0tDQo+ID4gPiDCoDEgZmlsZSBjaGFuZ2VkLCA4IGRlbGV0aW9ucygt
KQ0KPiA+ID4gDQo+ID4gPiBkaWZmIC0tZ2l0IGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gPiA+IGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlz
cGxheS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gPiA+IGluZGV4IGVhNzJjNTRlODMyOS4uYzg1
YmIxZmVhOTJmIDEwMDY0NA0KPiA+ID4gLS0tIGEvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxh
eS9za2xfdW5pdmVyc2FsX3BsYW5lLmMNCj4gPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2RybS9pOTE1
L2Rpc3BsYXkvc2tsX3VuaXZlcnNhbF9wbGFuZS5jDQo+ID4gPiBAQCAtMjU2MiwxMCArMjU2Miw2
IEBAIHNrbF9wbGFuZV9kaXNhYmxlX2ZsaXBfZG9uZShzdHJ1Y3QNCj4gPiA+IGludGVsX3BsYW5l
DQo+ID4gPiAqcGxhbmUpDQo+ID4gPiDCoHN0YXRpYyBib29sIHNrbF9wbGFuZV9oYXNfcmNfY2Nz
KHN0cnVjdCBkcm1faTkxNV9wcml2YXRlICppOTE1LA0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoCBlbnVtIHBpcGUg
cGlwZSwgZW51bSBwbGFuZV9pZA0KPiA+ID4gcGxhbmVfaWQpDQo+ID4gPiDCoHsNCj4gPiA+IC3C
oMKgwqDCoMKgwqDCoC8qIFdhXzIyMDExMTg2MDU3ICovDQo+ID4gPiAtwqDCoMKgwqDCoMKgwqBp
ZiAoSVNfQUxERVJMQUtFX1AoaTkxNSkgJiYgSVNfRElTUExBWV9TVEVQKGk5MTUsDQo+ID4gPiBT
VEVQX0EwLA0KPiA+ID4gU1RFUF9CMCkpDQo+ID4gPiAtwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgcmV0dXJuIGZhbHNlOw0KPiA+ID4gLQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoGlmIChE
SVNQTEFZX1ZFUihpOTE1KSA+PSAxMSkNCj4gPiA+IMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqDCoMKgcmV0dXJuIHRydWU7DQo+ID4gPiDCoA0KPiA+ID4gQEAgLTI1ODcsMTAgKzI1ODMsNiBA
QCBzdGF0aWMgYm9vbCB0Z2xfcGxhbmVfaGFzX21jX2NjcyhzdHJ1Y3QNCj4gPiA+IGRybV9pOTE1
X3ByaXZhdGUgKmk5MTUsDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoChJ
U19USUdFUkxBS0UoaTkxNSkgJiYgSVNfRElTUExBWV9TVEVQKGk5MTUsDQo+ID4gPiBTVEVQX0Ew
LA0KPiA+ID4gU1RFUF9EMCkpKQ0KPiA+ID4gwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKg
wqByZXR1cm4gZmFsc2U7DQo+ID4gPiDCoA0KPiA+ID4gLcKgwqDCoMKgwqDCoMKgLyogV2FfMjIw
MTExODYwNTcgKi8NCj4gPiA+IC3CoMKgwqDCoMKgwqDCoGlmIChJU19BTERFUkxBS0VfUChpOTE1
KSAmJiBJU19ESVNQTEFZX1NURVAoaTkxNSwNCj4gPiA+IFNURVBfQTAsDQo+ID4gPiBTVEVQX0Iw
KSkNCj4gPiA+IC3CoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqDCoMKgwqByZXR1cm4gZmFsc2U7DQo+
ID4gPiAtDQo+ID4gPiDCoMKgwqDCoMKgwqDCoMKgcmV0dXJuIHBsYW5lX2lkIDwgUExBTkVfNjsN
Cj4gPiA+IMKgfQ0KPiA+ID4gwqANCj4gPiANCj4gDQoNCg==
