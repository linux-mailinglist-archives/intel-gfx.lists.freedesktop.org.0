Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A4D9AC3BB9
	for <lists+intel-gfx@lfdr.de>; Mon, 26 May 2025 10:33:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AA61510E2BD;
	Mon, 26 May 2025 08:33:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nx3nhj73";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 76D0410E2BD;
 Mon, 26 May 2025 08:33:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748248406; x=1779784406;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=89jH1o5EKwtjtCH02nMhQxBniukEV3Ugbu6GhhSBigI=;
 b=nx3nhj73velEkHKl9qiZ/i98ilHhtXAAnHHhWtMVIysogtfUWSSkaBAt
 PRAyu4mo2cstnlr4CuWDblkGcxipIZm4t7jJz8EcGqmiBtKSDS0JFtapd
 K9RfNvC+GmERuGijA59dS9pjGbMpUo6SdI4dDZv0Ltwf6Bsh8D2iweO2a
 5UVc6K6jcByzqP/pJWmXp9RSJiFsIVEDsPMY6ohCQuHRa3E0JCb8FQGSC
 egVCFSVd04a1BDqp9HTIE/DH+CYvD9xBvQxXaShnyvAlBNje23zDlB25C
 8rdFnbMs+ObFW7DXuO7sQhkXZsuVAsd7mnEVgtkispknRT8x7mLeypUmc Q==;
X-CSE-ConnectionGUID: O4Kd2vmGSBeXkwSJ9MGdOA==
X-CSE-MsgGUID: mEAal4ClR82CPRAc4ORziw==
X-IronPort-AV: E=McAfee;i="6700,10204,11444"; a="61269228"
X-IronPort-AV: E=Sophos;i="6.15,315,1739865600"; d="scan'208";a="61269228"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2025 01:33:26 -0700
X-CSE-ConnectionGUID: TI26DRqcSk6//eXSeJ5tJg==
X-CSE-MsgGUID: d1q4kF/QTzSBsWfCZHDIcw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,315,1739865600"; d="scan'208";a="142182610"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa006.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 May 2025 01:33:26 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Mon, 26 May 2025 01:33:25 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Mon, 26 May 2025 01:33:25 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (40.107.236.46)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Mon, 26 May 2025 01:33:24 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=X/4uxLp55baqMj6uuKiPr6uuBobMo9XvsRwy3aPiN326c8c29MFui/EfmpBl/IACGcPHMH49zZdxmBZLbXOI0sKHI49jq1p0RdXmXbWUdPkhZoxofDrNFsMejK47FjCA4D3pShF6kX4HC3DHOHE057xADlBSS4gDeGBt5Ir8XHfBX0oilUyChBCT07C/wafa6ek2T7MPRD7/R9zYSm9Urmxt3ZUjhn2ZnicCIOlAbCSUJ7qtKN0OYHidW8/03djX+z89HOsOn1rrXz77iLXGMpl2VJpgVAXT6rRX68KE1ctC7YBE0y0ldBDsQ2jiQzvkK96JPJgIu28yl1IL+5s60w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=89jH1o5EKwtjtCH02nMhQxBniukEV3Ugbu6GhhSBigI=;
 b=ZX7mCxuoMYrCgnzl5qUXCZrKDzYnetLkWnWvO9WOuby/O8ALa7yeoNJBWvdqLxEKXdFw3ixQhTnID3IQs/hg9+WBeTv2kzPmcVukMuHsvJBzAXDkXajdJKSGCEqBY7OT/dnmWyx5POtl801nssQfD27/Kn2Z7twXccxUdzt4QLOJP2rsSIDcHmz0QVoPiGszhCYwGAhNhi6mpej2DNxp6TQREO/hmzVZBOOjW3nYEJxZpMvHozCYaIHaEJTaVQyOh2IsAc086pwdmEVnnJNdjGyIK1F0L5m8rz/Klh2Xff+UEwjNRnKgYPgUEV5GPpgVdFvIMx4Q46yYrL6klS7WAQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from DS0PR11MB8049.namprd11.prod.outlook.com (2603:10b6:8:116::6) by
 MN0PR11MB6035.namprd11.prod.outlook.com (2603:10b6:208:376::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8769.21; Mon, 26 May
 2025 08:33:03 +0000
Received: from DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c]) by DS0PR11MB8049.namprd11.prod.outlook.com
 ([fe80::d84a:3532:5337:1f7c%6]) with mapi id 15.20.8769.021; Mon, 26 May 2025
 08:33:03 +0000
From: "Manna, Animesh" <animesh.manna@intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>
Subject: RE: [v8 00/11] drm/xe/display: Program double buffered LUT registers
Thread-Topic: [v8 00/11] drm/xe/display: Program double buffered LUT registers
Thread-Index: AQHby61jfZlKY972rE2VquNWZnT52rPkmd6g
Date: Mon, 26 May 2025 08:33:03 +0000
Message-ID: <DS0PR11MB80492A2B572E6AD051E11143F965A@DS0PR11MB8049.namprd11.prod.outlook.com>
References: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
In-Reply-To: <20250523062041.166468-1-chaitanya.kumar.borah@intel.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: DS0PR11MB8049:EE_|MN0PR11MB6035:EE_
x-ms-office365-filtering-correlation-id: d8195dcc-20f9-4462-c19a-08dd9c2feea9
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|1800799024|376014|10070799003|366016|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?U3RISTJ5d3J3WXp4aGh0bjZtZzNZVlFxMEJqdDBmNStCdWhvR1Z3VTVrN1pE?=
 =?utf-8?B?d1pVci8vUU1iZHg2S2NrUzBKZHlnb1pBRGp4QVRsT08wU3pmWENJaDFUZVBw?=
 =?utf-8?B?STczNzlRdUNONUQxNjAwU0k0YkVDMldzbEI1RkllbERFZzJkY0V6b0NSK3Vz?=
 =?utf-8?B?ZnZnVzNMWUliTi9oUUsrMmY2eWg1bXBXQ3c3QzdUZU1DSllVd0JtR2J4MTFR?=
 =?utf-8?B?ZGhRWUtSa3Z0Q0FMQkRNUXlaMGpCaUd3d2pUMHBMZHZaYjVOSDMwd1NZMUJ5?=
 =?utf-8?B?Z3htcE1oSmFiK3R1dXB6MDlZREUwallPRGI3MThzV0F2WldiaUpoVHNIbEQz?=
 =?utf-8?B?OE9tblZvbWVjTHdYMGsxMCtTd1crMXJsVnUwYTFlb0dZNE10dUppWWZucGxI?=
 =?utf-8?B?Y1k5blF5WmhaU3h2aHV2OEJVUEpQdlFSbEs3SEpodWF4dHNyTHJUZkNZRmZM?=
 =?utf-8?B?RlZrN3JWcCtKcFNNcU1RVFMyNGNYb1ZzbHZmRWZYelIwQm5yU0owVUZzNm5D?=
 =?utf-8?B?L0VUR1hkbHpyUkZPVytIV3VoRmxtVzVRZU01TTdDMEVTUkpaa1pldFBJOXY4?=
 =?utf-8?B?dWFTTTcwTGpZaWxraWlEV1RDdmVzODc5T2FjV1dhZXZML0Vwb3Uya0h1TG5X?=
 =?utf-8?B?U2xrQmxPU3RnNzJYaUZ4RVZ3VDlQbzJIUEh5cnlPK1NRQ1Vocmo3SW5mWWFi?=
 =?utf-8?B?U0Y2b1c2dTljbDVuM1RxQmxOZy92NnFrQ1NYTWhsNkNER0NVYjA3NWhpcm1p?=
 =?utf-8?B?OWE1OGNUOHNqa2ZMd3NGUDJ2NVAyTlFIMSt2WENhZVhjMGpZb2VHQm5kT1Zk?=
 =?utf-8?B?NjlMN1FVeGFHNDhSYjFlNEZsWG5UUndtOWFPVFRIV1hpVU4yKzh2Y200YVFl?=
 =?utf-8?B?VEpsQzliWWMzODZtN0M0bmJYL2FtL2pLQy9zeWVIYXNNcDdUUjVYMzRSQXRi?=
 =?utf-8?B?WnN3SkhTZHI4MVIxZlVsdE1MTlZEZjRzQUhhN1BuS0RCSHovWDV2clpSdXVK?=
 =?utf-8?B?bGpEcmZvVml4SjhnaXB0K2Q1VXQyUk5zcDdOc2pDbnh4Rk9ZVmwzL0xLb0JS?=
 =?utf-8?B?VDZ5cG5LQWpTTlFnbWFORVpTVXhSdWtZa3dFdlJkQ0pDem5IRjBPZlNUTWQy?=
 =?utf-8?B?RHdSL2wxaDFkSk1VWjcyWG1XMnl2d0ttRFZGVkVlMUdsd2ZDbWNZMDdUQ2Zo?=
 =?utf-8?B?S0ZKbEw0SE92VDI0d1JxU1d4TUpkV3BPVDF3UzRFOUdCV1NxbUM3QzZ1YmRD?=
 =?utf-8?B?ZmcxTWpSazJiWmFHQzN2VVlucXNqeDQ4Z2RZdTJXa3U4N0tEYW1OZ3M4QlVD?=
 =?utf-8?B?aU5ZUjN0Ri83N1NLSHpJVzFSWWF0cklxcVpQMTdhSzVYb0lTRFVacXJNM013?=
 =?utf-8?B?bG1IdVRZWFY0WkM3S056ZjZmRlFFMnBianpHOWZjbEs0alNXVmdWeWNqQnpn?=
 =?utf-8?B?ZXhibXdyNHd4L05Yd0lCZk5JalZuWE9oaiswK25zc1k3S1EwRmFSTTRKUXFX?=
 =?utf-8?B?cWJEeEpLdDBVcHoxclFMZXJrdk1VaGVlQVhrTWltWnJaT3Qvakg5c2VpWk9l?=
 =?utf-8?B?Y0tyYktaZW9JVUkwSVJXYUFFcEduT0k2MC9wM3dpN0lndDhiOTduTmExcXRr?=
 =?utf-8?B?cTIzSTc2c0pPcFhqSExpdkVqS1dzQjQ5ZU84TFdyd3htLzNnL2VGUWt4clBm?=
 =?utf-8?B?WlMzcXYrOWR3ZzF3NTN5aFgvdEJVelhyRzVETXNmSERhNGpYa05uQnR4R0lZ?=
 =?utf-8?B?eDQ5V0xKVDc3bnBtRTZKU1NoSmQ4bWlPRDRTK3lsUGdsbFRqVy9EUHYvZFZL?=
 =?utf-8?B?OWNuc1k1QldYQSttVkRMaXlqdlhtblU4Z2VCTlVQVXZyT2NjekxPVUxMbDNM?=
 =?utf-8?B?Tm5RbGpsVTFkS1V4aXlPUmpuZnR6cGwzUTJ1WjF6N09tQTZVY1o3enA1cXR2?=
 =?utf-8?B?SkFRTk1IWTJqc3F0ZlVZNjc0OHpyYVU4VTJZS090Vk9kNXBTQ1VPTDkwMzVK?=
 =?utf-8?Q?vqXFhxbi/xjnIQ37MmLxgSMhM1PeLQ=3D?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DS0PR11MB8049.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(10070799003)(366016)(38070700018)(7053199007);
 DIR:OUT; SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?SjlTbGNnbjdobFUrajR1cSszaDZqVTY3Mmt1dlhiNEJYR0cyWFErNXBZTFpB?=
 =?utf-8?B?K0tXUUZ5QzNhZlpZN0NXNnpxK0lBR2o3VWRnY0NGbENDaHlxQU94TTF5WjQy?=
 =?utf-8?B?ZU9UVTQ0S0QzWXNRbENuMGZhL2pXYTNRbFQ1RU1Zb2JTZkNoaG9wd1Q5RDYr?=
 =?utf-8?B?TE4xNHA0bmhMT1BsbW5rRzJaeEp0QnpNMVB6cnZWbU8rZzVuMlJPVDlhbnI3?=
 =?utf-8?B?ZVlyWUtNYzFGNHVZd3RGbkh4b21CSXhJRVJaZXdIWXpDZFVHWlBJM3BTbGVC?=
 =?utf-8?B?WVdWeFFlRzJOOUFYWlRPN0dGSUczTlFDdVUzbHVDSC9KczhlRUVIamJJcUJs?=
 =?utf-8?B?TzJwY3JNWER2dGZncUZNQy9HRVRDWXUrK2VGZ042ekc2bmQxaG9IMTdBcGw5?=
 =?utf-8?B?ZjRCRWFDbkZDWkFMRDJ5TENFQTZQaXppcFZJK3V3dzdBRkZoNlhvamZkUlF6?=
 =?utf-8?B?TFdVcDhsNU5FclIvK2RMekxZVDBweGp2SExwMTl0aitibjdDQTlJcEFQOHJ3?=
 =?utf-8?B?OUthWWJLMVJPTEdMOGtvbmMwYStmNUt3TE9nOUYrN0thZTBOMG5wY2ZGUU5z?=
 =?utf-8?B?VDdLMmJ6SnUrMDdwdHA0N2RmWEs5Z0hzRGFKQm9JR2FnUzFtc2l1UlAzTzVz?=
 =?utf-8?B?SHIzM3lPT2h0SVliUCs2bUt2NEVrR21KUGc4M3hhYmlWM21KSFNSS2t2YWFi?=
 =?utf-8?B?Mmg4REsrQXoxUDNyVk1KQ2owTUkvZ3JYQ1lqTzY1eUN5Y1VYZTcvblhIUjYw?=
 =?utf-8?B?U3YrSUhlblU3ZG9VNlVIYnR2azB4Vld2ZndPcjRHcm01NWpHWlVMSSsxWjQ5?=
 =?utf-8?B?RUpWTG9SMkY5dFFxUWltcHcwWWk4YnlPTjNvdjFOT0ROR0JRSGxacjdVcDJF?=
 =?utf-8?B?bHY2K2prYlJSbXBmaEdSMlQ5U3Z5ak5EbWozVnpSMS9nQU5Hc0t6aWEwVGNl?=
 =?utf-8?B?K2FDL0p5cjB5b3VvdkdBTEhBRE1hdGt6TWpUdUFkQkUwc0Z3eW1yT0lmV2oz?=
 =?utf-8?B?VnZvbHVQNGJQWW5uV1ZqcHEwd09lN2RrTlRmK3R1dEFsdWtDMjhrUytVWFVO?=
 =?utf-8?B?QVBLa1ZaZEo3Slo0Q2RZYTNQYWFVRklGUWVWTFdMTktpS2o2cWd6dlFlMW5B?=
 =?utf-8?B?bXdHS1FvMm1veDJRNE54WWIzNVR5TmdyclVkWkN1MmRUbG5RMmsvL0xmMFdx?=
 =?utf-8?B?dmJjMCszRlVFVkpub2pxR2FjQ2swdmRQZkg5Q2xRekhRa1FyWGpGcnM1NGIx?=
 =?utf-8?B?c3RkL1Z6VGtHbTFhREdEbnhrZGE4bDdnaXZESWRhSmQ4TVU3VG5NdHZHY2J3?=
 =?utf-8?B?ZTM1azJBVlZGN0ZQNVZHYWhVZDhWcElDSnJsdCs0M0ZTT2pTQ05KRXE3UE56?=
 =?utf-8?B?MUdCVkVhTEs1WXQ0cU1rbnl5TGFqeW9YMHhNTHpBRjdrbVZ3Rmh0L2kwam85?=
 =?utf-8?B?d2ZhSjI5OHpZSCtHRVI2VCtVMGxFcVp1QlYxbEdjTVlIYWIvNGtlajVnRjBO?=
 =?utf-8?B?WE1FeG85UklBdVJ6UmcyN3RxTVRKUGRReGo0cDlzeGIxL094Sk8yYitxcGNk?=
 =?utf-8?B?VjRERU15aGF4N0w0eERMdjFJTm1kMUhDSzRHbjQ2cXFQQS9RTmY3cEJNR1BH?=
 =?utf-8?B?dGR6aU4yc2hWZHVWVU91VjVOdDhnMDRMbmJNSFBlRDhoa0ozd3RGcXkvemRC?=
 =?utf-8?B?Yll1Z25ZT0VCR2dKaE5CT25RaTBGbDRNRHh2N3djNWZGb0RHeXlTdEJ5RXp3?=
 =?utf-8?B?UTQxL3R6cFpOOUg0Y1JXS1p3b3p4a0tTM2hNK0dHMGM5TTlLcmsxUk0yMEVu?=
 =?utf-8?B?alBYREVxNjRqUkZhRFJuWTRFU0VueDhGYUFYMFhscUhLMCsxakJPZWNFcm84?=
 =?utf-8?B?SmMwNE9WNSt1czMzMWRuT2pEZFhicVovTi93Skp4eTd4d2UwZHVKcDVnbURp?=
 =?utf-8?B?NFpBdHducER1Sk9hamlVMkNWQnhNK2I3cjNqbFhCRk5RdEhNS1N1SEI0ZC9M?=
 =?utf-8?B?bjhWUk5FZHpKNDVhSGFpL3Z1eWZqT01DNncxM25RcjhxRzNZLy9yRGE4NE15?=
 =?utf-8?B?cDE2cDZXaXI4NkptblNNeG50a0FVWFk5VXFMa2l4Zmt0YVdPSDcvWTB3L01M?=
 =?utf-8?B?Q2F4Ums3VXl6VGt0U1FObDZXMmtKUFRQVGtqNEwwU3pJcXFlaEZQODFFUWE3?=
 =?utf-8?B?UEE9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: DS0PR11MB8049.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: d8195dcc-20f9-4462-c19a-08dd9c2feea9
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 May 2025 08:33:03.7649 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: kjs3Nf4TKrIMON3tkMv7yhqbL0p3/+PP816cH6v8wzQ3VhHj1VKIgZ6Ui4WDiKjgYFqYFKZd6E3vrZ/Q96DrQA==
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MN0PR11MB6035
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

DQoNCj4gLS0tLS1PcmlnaW5hbCBNZXNzYWdlLS0tLS0NCj4gRnJvbTogQm9yYWgsIENoYWl0YW55
YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU2VudDogRnJpZGF5
LCBNYXkgMjMsIDIwMjUgMTE6NTEgQU0NCj4gVG86IGludGVsLXhlQGxpc3RzLmZyZWVkZXNrdG9w
Lm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogdmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb207IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29tPjsN
Cj4gTWFubmEsIEFuaW1lc2ggPGFuaW1lc2gubWFubmFAaW50ZWwuY29tPjsgQm9yYWgsIENoYWl0
YW55YSBLdW1hcg0KPiA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFoQGludGVsLmNvbT4NCj4gU3ViamVj
dDogW3Y4IDAwLzExXSBkcm0veGUvZGlzcGxheTogUHJvZ3JhbSBkb3VibGUgYnVmZmVyZWQgTFVU
IHJlZ2lzdGVycw0KPiANCj4gRnJvbSBQVEwsIExVVCByZWdpc3RlcnMgYXJlIG1hZGUgZG91Ymxl
IGJ1ZmZlcmVkLiBUaGlzIGhlbHBzIHVzIHRvIHByb2dyYW0NCj4gdGhlbSBpbiB0aGUgYWN0aXZl
IHJlZ2lvbiB3aXRob3V0IGFueSBjb25jZXJuIG9mIHRlYXJpbmcuDQo+IFRoaXMgcGFydGljdWxh
cnkgaGVscHMgaW4gY2FzZSBvZiBkaXNwbGF5cyB3aXRoIGhpZ2ggcmVmcmVzaCByYXRlcyB3aGVy
ZSB2YmxhbmsNCj4gcGVyaW9kcyBhcmUgc2hvcnRlci4gQWRkIE1NSU8gYW5kIERTQiBwYXRoIHRv
IHByb2dyYW0gdGhlbS4NCj4gDQo+IENoYWl0YW55YSBLdW1hciBCb3JhaCAoNyk6DQo+ICAgZHJt
L2k5MTUvZHNiOiBhZGQgaW50ZWxfZHNiX2dvc3ViX2ZpbmlzaCgpDQo+ICAgZHJtL2k5MTUvZHNi
OiBBZGQgc3VwcG9ydCBmb3IgR09TVUIgaW50ZXJydXB0DQo+ICAgZHJtL2k5MTU6IHMvZHNiX2Nv
bG9yX3ZibGFuay9kc2JfY29sb3INCj4gICBkcm0vaTkxNS9kaXNwbGF5OiB1c2UgR09TVUIgdG8g
cHJvZ3JhbSBkb3VibGUgYnVmZmVyZWQgTFVUIHJlZ2lzdGVycw0KPiAgIGRybS9pOTE1OiBQcm9n
cmFtIERCIExVVCByZWdpc3RlcnMgYmVmb3JlIHZibGFuaw0KPiAgIGRybS9pOTE1L2NvbG9yOiBE
byBub3QgcHJlLWxvYWQgTFVUcyB3aXRoIERCIHJlZ2lzdGVycw0KPiAgIGRybS9pOTE1OiBEaXNh
YmxlIHVwZGF0aW5nIG9mIExVVCB2YWx1ZXMgZHVyaW5nIHZibGFuaw0KPiANCj4gVmlsbGUgU3ly
asOkbMOkICg0KToNCj4gICBkcm0vaTkxNS9kc2I6IEV4dHJhY3QgaW50ZWxfZHNiX2luc19hbGln
bigpDQo+ICAgZHJtL2k5MTUvZHNiOiBFeHRyYWN0IGFzc2VydF9kc2JfdGFpbF9pc19hbGlnbmVk
KCkNCj4gICBkcm0vaTkxNS9kc2I6IEV4dHJhY3QgaW50ZWxfZHNiX3toZWFkLHRhaWx9KCkNCj4g
ICBkcm0vaTkxNS9kc2I6IEltcGxlbWVudCBpbnRlbF9kc2JfZ29zdWIoKQ0KDQpUaGFua3MgZm9y
IHRoZSBwYXRjaGVzLCBwdXNoZWQgdG8gZGluIG5vdy4NCg0KUmVnYXJkcywNCkFuaW1lc2gNCg0K
PiANCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfYXRvbWljLmMgICB8ICAg
NCArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xvci5jICAgIHwg
IDczICsrKysrKy0tLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9jb2xv
ci5oICAgIHwgICAyICsNCj4gIGRyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfY3J0
Yy5jICAgICB8ICAgNSArLQ0KPiAgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9k
aXNwbGF5LmMgIHwgIDQwICsrKy0tDQo+ICAuLi4vZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kaXNw
bGF5X2RldmljZS5oICAgfCAgIDEgKw0KPiAgLi4uL2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZGlz
cGxheV90eXBlcy5oICAgIHwgICAyICstDQo+ICBkcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5
L2ludGVsX2RzYi5jICAgICAgfCAxNDYgKysrKysrKysrKysrKysrKy0tDQo+ICBkcml2ZXJzL2dw
dS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5oICAgICAgfCAgIDMgKw0KPiAgZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2JfcmVncy5oIHwgICAyICsNCj4gIDEwIGZpbGVz
IGNoYW5nZWQsIDIyMyBpbnNlcnRpb25zKCspLCA1NSBkZWxldGlvbnMoLSkNCj4gDQo+IC0tDQo+
IDIuMjUuMQ0KDQo=
