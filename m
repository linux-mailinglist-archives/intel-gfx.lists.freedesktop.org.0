Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 76ECCABEE03
	for <lists+intel-gfx@lfdr.de>; Wed, 21 May 2025 10:33:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 74AC310E6C7;
	Wed, 21 May 2025 08:33:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YgzDx62c";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 507F510E6C6;
 Wed, 21 May 2025 08:33:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1747816405; x=1779352405;
 h=from:to:cc:subject:date:message-id:references:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=atCZs5DmcCGxnliBPvm8RJMtoW5OHLLeRb/OXJ0pIDM=;
 b=YgzDx62cgJv3ckuKg+HZRe146Q/pjtWXcfVpB+ZCsfTorADpsZYVNQAw
 aT/kOjryd38KbWAq9DlHNHNsZlwaWm7jKFqINg11r+ygaKalKsK638GSA
 TAFaDmeoRTDds7M8XUnlsRV1FunQK1O5dYqTDK/6XcjO/Yy3wnwogsxHu
 qkZgSvVMahn9OyEGknLrA0KISWMmbZ5kjI+pwyMF6AQALKneG25/6/Ba/
 2iFhKTCAuHqBk5RdzzhB11+HU8PumfAUpTGBSS+uSuA+s1TvVveeOkfeW
 uLrTHyaBDzr8DRp7CQ+ljC5A1S+Or0MzPRXgmhT8JvC8vtLGuEO6qH+Sg A==;
X-CSE-ConnectionGUID: d9fVdx5JTYGQfXzn5BYPQw==
X-CSE-MsgGUID: Aay1TbIBS2mmSxy0VuSSzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11439"; a="49919660"
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="49919660"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 01:33:24 -0700
X-CSE-ConnectionGUID: 7Fi9C3j5TaK8poQ/cW3UqQ==
X-CSE-MsgGUID: fZnuits/Rz+YmVgLzl6PYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,303,1739865600"; d="scan'208";a="143956576"
Received: from orsmsx902.amr.corp.intel.com ([10.22.229.24])
 by fmviesa003.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 May 2025 01:33:23 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX902.amr.corp.intel.com (10.22.229.24) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 21 May 2025 01:33:23 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 21 May 2025 01:33:23 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.173)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.55; Wed, 21 May 2025 01:33:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=I+cXKE0Ab0i5AOmZ9h2IHgjAbfpgGyoqaByB8uj92JOS5zumtg2ko7Kc2MHepHRZlhKO+W7I9H98jjNHjRNzAa9UQelzMMQek2On+cFqnUlE4q0mFHJZAWvI3SqoUF2zgTIiP6ucxBT9kfJ9Ovn6xqS1/p/gLzCsNBgJiDQkQlWzlri8M1qd7gzdjUdPrw1H+hLP9t2PfgG+8liGFmEPYkr5w6JzhAS8dzJBlnyA/dFQh+xPOligY7jIfc5AUCU3MIISwdW2g5M4iFH6nZVIvySZibMuyJwiGMD5IVYlxdjTKogvshGQCv10MqgfNbjrgRc2E/FYlxliea7VAuxudA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=atCZs5DmcCGxnliBPvm8RJMtoW5OHLLeRb/OXJ0pIDM=;
 b=HOYBV8jb8ctbgarfMmpqK+yLAeEX+cCcWdqAQ+BD/Q891xOWO5vVMi7LSsRUqVzksyKEdyukIm3L/RFNCFhaFbsrwOzsHLeM3TpQhwNMwzzZmRmyTPRDh0ZNKwhSGHkVaeHZuV9+xg8P3A2fX67du6UeAbNBbJHSZVqWNZw+FyfKKfQx0pIMgxrM+/QhQMstyeGHoWfFKAuqp31wqE64v+zZuLWhDyYo74Z1tUU8/qh1ZpjOv6WDJDH1ZG7qwHK0DByGdyBZ4QhKxaGZ67zF9uPiEtVrixFwDR27Nfr+VAlWBPvdDTaY81s8U+6Xd2I0VgupsJVrnKzyiBEK459pKQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by CH3PR11MB8590.namprd11.prod.outlook.com (2603:10b6:610:1b8::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8746.32; Wed, 21 May
 2025 08:33:21 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::21c3:4b36:8cc5:b525%5]) with mapi id 15.20.8746.030; Wed, 21 May 2025
 08:33:21 +0000
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
CC: "ville.syrjala@linux.intel.com" <ville.syrjala@linux.intel.com>, "Shankar, 
 Uma" <uma.shankar@intel.com>
Subject: RE: [v7 04/11] drm/i915/dsb: Implement intel_dsb_gosub()
Thread-Topic: [v7 04/11] drm/i915/dsb: Implement intel_dsb_gosub()
Thread-Index: AQHbyV8ygeRLrhqsSUi9RQb4g3vpDLPchCaAgAA8pFA=
Date: Wed, 21 May 2025 08:33:21 +0000
Message-ID: <SJ1PR11MB61293BC278197BB20FDD2FEFB99EA@SJ1PR11MB6129.namprd11.prod.outlook.com>
References: <20250520075537.4074010-1-chaitanya.kumar.borah@intel.com>
 <20250520075537.4074010-5-chaitanya.kumar.borah@intel.com>
 <DS0PR11MB8049E482880E254B344A655DF99EA@DS0PR11MB8049.namprd11.prod.outlook.com>
In-Reply-To: <DS0PR11MB8049E482880E254B344A655DF99EA@DS0PR11MB8049.namprd11.prod.outlook.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
x-ms-publictraffictype: Email
x-ms-traffictypediagnostic: SJ1PR11MB6129:EE_|CH3PR11MB8590:EE_
x-ms-office365-filtering-correlation-id: 1cc5fa30-3cf9-4726-7496-08dd984224e6
x-ms-exchange-senderadcheck: 1
x-ms-exchange-antispam-relay: 0
x-microsoft-antispam: BCL:0;
 ARA:13230040|366016|1800799024|376014|38070700018|7053199007; 
x-microsoft-antispam-message-info: =?utf-8?B?dzJHMGxwRVZZaGpmSG1KUisvVXpmS0htcnN1Z2ZiNnVPc3hDVy9XRmprUis4?=
 =?utf-8?B?cFh2Q0EwRGNuWnFqYUtIVkowSXd1TEppY1pzNFpudENWbFIyS2JHTmx3WDRO?=
 =?utf-8?B?aG0wU25HUnR4djdTaG5UakVJSzZ5bmVKKzByZ3hGK3ZFWUMzWWVDUDF2di96?=
 =?utf-8?B?Qmt1REpxYU0zSmlqL1F6ajdXVk4xL2pyUS9HUlY5M01uRTR6UXNGdVBYSHdT?=
 =?utf-8?B?RWtNNCtBSXV4VDRQaVB4aW91MkFXTk9WR012a3JhbWNTRWJnd3BYRE9rQzNH?=
 =?utf-8?B?WEcyOHFXbVBBY3MxMEJOYVBBNWZ2bU4vY2cvTHIyT0hYTkxQeFFtbVo5eFNQ?=
 =?utf-8?B?Q2xXelBpbFJoSTVGcnA4SVJDQk4rOFZDczFsa2tkWnJJQzVLdTc1djJiWk41?=
 =?utf-8?B?RTFUOUVXU0Z1aUFBeG0ycTBCQkV0N1h1K1VKdmVxV3FHb2M0aDVESGpSdzRv?=
 =?utf-8?B?KzEvdkhJU1hPcW00cmQ2cG15V1J5QkgwT3pvZmVYOWkxUkdrL3lhaDdDV2tP?=
 =?utf-8?B?cEc1dm1keUxGaDFsRlZYekVINjlWMURtRExBdFZNTEhtUThpRHlpS1RBa2FS?=
 =?utf-8?B?MVQvYlZNWkJzWWFuUENCd3BETG1mVE1PMkNsdk1pYVRIOFpFTU4zSTcvMDVD?=
 =?utf-8?B?bTB2SGtlZTFJZUFya3pzajZDNzZNdVhPazZuUXF6Q0w5akFydGtXU0FscTcr?=
 =?utf-8?B?WXBhNEJwaHNna0dxSDJqcW1Iblk3K2F0UFZKY3BoS0JRWVR1WnVxYk5rQ2FU?=
 =?utf-8?B?M2FaMkRRU2RTZjZUNWQxejM2TjhySjM4VVMrNkN6eU1lZ1YzcXc0cjcyTllQ?=
 =?utf-8?B?TmhJazl4a3JsUlkxMVp3b2RPRGdzbXdaNnhqZzhVNmQyNDloTkdWVmVtWmZH?=
 =?utf-8?B?WXlrNnloZXE1bDZHeFBZYzNDdzZKOFBFRmFXREpmaTFNcmthbVB0RHFqblZQ?=
 =?utf-8?B?bVhZU2J0V3UwSlVNb2pvcnMvNGJ5U3l1ZGY2dENZQVJwTDFaSEpBdjBjYVFU?=
 =?utf-8?B?ckE3SnlnR3N1ZnMvYzZ3Q3pIQVA0MFQyTFdDV0ExeXNybXpvVS9QdmNyejBO?=
 =?utf-8?B?QytKdjVVdmlxUFg3QnVNODA0UmJ2U3BmMUx5YlRFcEtIcVh5UWVESmtpU3dt?=
 =?utf-8?B?R01NclZ6VlZ2WHNIYVZabmVpQWZscWxaSDRieUYvUWJ1enRtVTc3RnBQbnAr?=
 =?utf-8?B?T3VMUXlXUmJKZ2tSQlFWUHhwaGt2MXpRWnBhNVdSa3YyYVZFYmREaDZYaVBy?=
 =?utf-8?B?RkxuSWxla25DTDBFRkkrQXNXNzBmTVVRS0NibGwwZ3VJNkN1UVZTSG5UTjM1?=
 =?utf-8?B?OFlEQ0VETE5tSHRtaUExUTg0OTh5QUlTM0JjbVBETFJDWG5laFFoN0YvSlB2?=
 =?utf-8?B?RFZyV3Z3SjdSYVJPT3lzT2ZybDluVUI3NGdKbGRDUUN4VXZ1UDlYU2cxWWpL?=
 =?utf-8?B?S1VXMWNIYUphc01oa042cWhFbVBRNytaVng1cHdpRWVHZW9mSzdNN3RDTks5?=
 =?utf-8?B?MEdudmVHdlRxM1c1Ti9mbEtBSTMrVTdNdTdyK3VWa3JRSktOcjFXUnRVS3J0?=
 =?utf-8?B?dGFJZmdGTzZSZjgvU3pLTlk4VmtpaXR1WUxHQy9VclFSTVoxbDFSOXhJakU4?=
 =?utf-8?B?NnVDbW9XSWdCRVMzUzVQNWFGaG9MZVJTL0Z5TDhtZW1WUnFlZDIyZlRPSHZG?=
 =?utf-8?B?UmpLaHBsWWNXVnNMM1hpKzczL1B6T2lsM2JnOUw1SUY3dlBPOUZEdkpRcGxE?=
 =?utf-8?B?MU9FeTJLZGxCZ29jOTZrcVU0SzFpZnBuRCtmOEI2UC94TG5EcDFYZmRzYkJv?=
 =?utf-8?B?MTMrZWsveGZyM1ZMcGpjTXJXeHJ6K2U5SW5zT3lES1lNeGtYR0puZWxUeWx2?=
 =?utf-8?B?SVV5WkdNcHVoa0FybDVpUm9rWXM1YTNGaVVFamx3Y0VCY3hCblpiYUIxYjUy?=
 =?utf-8?B?NVN3aGpJcG9uVXZwZjM4blNEc09FK0hkQXg5Vk5nbjNoa0lVMnlrREpRWERp?=
 =?utf-8?B?YjhNbmVTQllRPT0=?=
x-forefront-antispam-report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(38070700018)(7053199007); DIR:OUT;
 SFP:1101; 
x-ms-exchange-antispam-messagedata-chunkcount: 1
x-ms-exchange-antispam-messagedata-0: =?utf-8?B?YkUxV3FIQUlZZ0g2VFlkTG1zZzRLYUE4NHNIM20ya1BpT1lvRncyV3ptVVFR?=
 =?utf-8?B?SjdYTStCZGsrM0FiNEE4cEhYY2pVYzRDZU1JdDk2WWx2dk5iNFhQaXFGY2RY?=
 =?utf-8?B?OUExd3FrdHcwTWxaeG1JU0VEeHdxY1FwbHJVL21uVDJoTmxSS2VUNEEwR2c4?=
 =?utf-8?B?aUNPNWVVNDBDSXBRY2JvUTk3T2F2Q3BlUW1jRzB2QUpNN0RSbzJKelFQOUZm?=
 =?utf-8?B?SEEzUjFQSGdtZllXSkVyYmJScHM3SWpjRVAwQW0vSDVJREVjdTFJVWtMakg0?=
 =?utf-8?B?bVZncWI1L0svWStiKzF4aW50ME9FbWhnUklqcngxM21KM2NmSnBOeXp6ZCs1?=
 =?utf-8?B?SmkyaFNIeldDa1ZBZXJkYS92V2RCWkJDNVBRdXdhQnJqRkkvcVJJRVdyRFFm?=
 =?utf-8?B?N2VWa29YZ0VnWTkyekdXSitZd0dLUlVUOFFYL1V6cWRiS0g3SDZ1Mkk0YVlI?=
 =?utf-8?B?SE1UdGRvNUpaTTAzYjNDdCtiN1Q4MkJyQVVaWWl1TUxCZzBkVGdlanJqZjY0?=
 =?utf-8?B?dkVXc2h0VjlWVTQxZFFtKy80aTNvRUZNRG5QNGVQY2dMcHJFZlo4WkZRT1pk?=
 =?utf-8?B?aHZ2KzRWNFdEdFd2UEx3WTdnVG5BRUs5a2tLSWdxL3BudTlFNTlEWWJKOGFV?=
 =?utf-8?B?bUlwblR1NTZUUVdyYmUrM2RlcXhweTZVKzRTOW1lNG0yb1JVSGd1K0EvV0lP?=
 =?utf-8?B?YnVaMXBxNkpqNWR3TDBUR3o2S0pwWFRhVUdDMTI5eEoram9BMWk4Z3RKd01m?=
 =?utf-8?B?aVNwYmh0dnZTOEVBNVo0ellGUXRvOGJ1YS9aQ0J3SHBESUowemExSlVaQk5l?=
 =?utf-8?B?SUJya2xQTHF2SytaZ1EwY2Vod2F6MWpFNnM4K2ErU2ZtWUhzQWJOOGw3Y0Rk?=
 =?utf-8?B?bnZiZEFmMnBIZ3pVNlVXSTVhV01ieUxzdGNGRzQrc3BxdFhzOXVySG82VTJp?=
 =?utf-8?B?ZS94azRNczlJV2FxMDNkbUl1VE1kZFprdnJiWitISW1kZXVhaEhwWSs4MExt?=
 =?utf-8?B?Z01JYVJwODA4MTJITXdwSzRqamIzUG9PUzBXWVhrNDlhS0kzcXkxQ0krWm1h?=
 =?utf-8?B?ME5ueVE4RjYyUkFDd3dtUkM4RU9zaWxwOU5GQ0VqOGdhZWU1U0tTQ3lzeU1n?=
 =?utf-8?B?T1ZqTHRRbXNDY3AwOXJtbFVzdmZKdnI5dG50MkwvUUg0bVc0MnJtcDZYOFVq?=
 =?utf-8?B?STh6c0UvQ3BZdkZzcFdZblNlbmR4OC9XTk1qdTd4RXQ3bG5xZHAxWUtsRkVQ?=
 =?utf-8?B?SHEwR2w2L1JZQkdhT2gvWlFzc1J6RDc0WVhoRENrN3o3U3BwM3ZXOGtURk5i?=
 =?utf-8?B?bGwwOS9nVk5HdXBMckVHdlZSQlV0TGxrWW9qUE1Kck1RZzdSVXA4a2R4SGpv?=
 =?utf-8?B?WlB3SlBJQU5tVnZZcENQZVo5UGRQMktSSys3eVBCK29aTFVpZEhyWCt6a0tq?=
 =?utf-8?B?d1VVTDluV1k4Vk9NOXBLdVJsNU1tVll5bEFxZWNxWHZkcFdNanNRTnV3cjB5?=
 =?utf-8?B?MzdSUm1YMEJZaDZ1eXljYUJScjc2akNCaHg4cmZyc0g0THUvUkVuYWtvQnBH?=
 =?utf-8?B?aGR3cGFObVBRMDNMZldXb0hrV1M3V0ZzRzVERURvQmNKYTZ2WE42VGY1QTVl?=
 =?utf-8?B?M3JIaFRkMnc4bTRrd3cvVGYrV3RNRnBLcEpLT2htM0x3OGdHQW1adU5WZk9N?=
 =?utf-8?B?TDF0OERkaVRHaVJRRDVLcU9FM3N3YTFaNjltODJJMzY1NU1Oc1MwbUpHdVZ4?=
 =?utf-8?B?TVl6RHIvSHozSWFNVmRoVnYzcHpwZ0lZWEdsdVlCSThZUFNQb3RoNi84Z0VR?=
 =?utf-8?B?aTU0MVNYU0J6TXhkTlFuVWc1QU43S3kwMG9FOGp5TVR1K2hzU3dKODl2T1pG?=
 =?utf-8?B?bkhIN0kwZElzcEMwQXRQbHNUQVFlY3Y2NzdkYjdMWUlMVVk1M215UTN0d2w1?=
 =?utf-8?B?YkFNcHdJU2RRTDAvdG01ekJXMnQ2eG1zNWtodXZKdWVWT3l3MVgyR0pGa2d6?=
 =?utf-8?B?Q2UrZndYa3VRY1gwRUIrWFRoNjB2aWhJSHZGcFgyYjlSNStWVjQ4V0ZVa1Ny?=
 =?utf-8?B?anVxS295RHovMWpFZnhwMXorbkZJdTBpRitIa2NJa1dmd1RHc2lSMDdsZG15?=
 =?utf-8?B?bzNBeVBIUDBYcnhRd3o0NGlGL29RRldBVzNXdDlUci95QjJmeWZyU0JncFRM?=
 =?utf-8?B?N1E9PQ==?=
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 1cc5fa30-3cf9-4726-7496-08dd984224e6
X-MS-Exchange-CrossTenant-originalarrivaltime: 21 May 2025 08:33:21.0428 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-mailboxtype: HOSTED
X-MS-Exchange-CrossTenant-userprincipalname: yQYJOTnVqnJxzJrsaDs3wHdFl/KSdpFei+Agekatdvje+Ql2pol/pDQZ7YdR+9ACuKn/tIfns1GoaxeU3s/NKY0ZovIqs7lpwcj/mE037r0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH3PR11MB8590
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

SGkgQW5pbWVzaCwNCg0KPiAtLS0tLU9yaWdpbmFsIE1lc3NhZ2UtLS0tLQ0KPiBGcm9tOiBNYW5u
YSwgQW5pbWVzaCA8YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+DQo+IFNlbnQ6IFdlZG5lc2RheSwg
TWF5IDIxLCAyMDI1IDEwOjE3IEFNDQo+IFRvOiBCb3JhaCwgQ2hhaXRhbnlhIEt1bWFyIDxjaGFp
dGFueWEua3VtYXIuYm9yYWhAaW50ZWwuY29tPjsgaW50ZWwtDQo+IHhlQGxpc3RzLmZyZWVkZXNr
dG9wLm9yZzsgaW50ZWwtZ2Z4QGxpc3RzLmZyZWVkZXNrdG9wLm9yZw0KPiBDYzogdmlsbGUuc3ly
amFsYUBsaW51eC5pbnRlbC5jb207IFNoYW5rYXIsIFVtYSA8dW1hLnNoYW5rYXJAaW50ZWwuY29t
Pg0KPiBTdWJqZWN0OiBSRTogW3Y3IDA0LzExXSBkcm0vaTkxNS9kc2I6IEltcGxlbWVudCBpbnRl
bF9kc2JfZ29zdWIoKQ0KPiANCj4gDQo+IA0KPiA+IC0tLS0tT3JpZ2luYWwgTWVzc2FnZS0tLS0t
DQo+ID4gRnJvbTogQm9yYWgsIENoYWl0YW55YSBLdW1hciA8Y2hhaXRhbnlhLmt1bWFyLmJvcmFo
QGludGVsLmNvbT4NCj4gPiBTZW50OiBUdWVzZGF5LCBNYXkgMjAsIDIwMjUgMToyNiBQTQ0KPiA+
IFRvOiBpbnRlbC14ZUBsaXN0cy5mcmVlZGVza3RvcC5vcmc7IGludGVsLWdmeEBsaXN0cy5mcmVl
ZGVza3RvcC5vcmcNCj4gPiBDYzogdmlsbGUuc3lyamFsYUBsaW51eC5pbnRlbC5jb207IFNoYW5r
YXIsIFVtYQ0KPiA+IDx1bWEuc2hhbmthckBpbnRlbC5jb20+OyBNYW5uYSwgQW5pbWVzaA0KPiA8
YW5pbWVzaC5tYW5uYUBpbnRlbC5jb20+Ow0KPiA+IEJvcmFoLCBDaGFpdGFueWEgS3VtYXIgPGNo
YWl0YW55YS5rdW1hci5ib3JhaEBpbnRlbC5jb20+DQo+ID4gU3ViamVjdDogW3Y3IDA0LzExXSBk
cm0vaTkxNS9kc2I6IEltcGxlbWVudCBpbnRlbF9kc2JfZ29zdWIoKQ0KPiA+DQo+ID4gRnJvbTog
VmlsbGUgU3lyasOkbMOkIDx2aWxsZS5zeXJqYWxhQGxpbnV4LmludGVsLmNvbT4NCj4gPg0KPiA+
IEFkZCBzdXBwb3J0IGZvciB0aGUgbmV3IEdPU1VCIERTQiBpbnN0cnVjdGlvbiAoYXZhaWxhYmxl
IG9uIHB0bCspLA0KPiA+IHdoaWNoIGluc3RydWN0cyB0aGUgRFNCIHRvIGp1bXAgdG8gYSBkaWZm
ZXJlbnQgYnVmZmVyLCBleGVjdXRpZSB0aGUNCj4gPiBjb21tYW5kcyB0aGVyZSwgYW5kIHRoZW4g
cmV0dXJuIGV4ZWN1dGlvbiB0byB0aGUgbmV4dCBpbnN0cnVjdGlvbiBpbiB0aGUNCj4gb3JpZ2lu
YWwgYnVmZmVyLg0KPiA+DQo+ID4gVGhlcmUgYXJlIGEgZmV3IGFsaWdubWVudCByZWxhdGVkIHdv
cmthcm91bmRzIHRoYXQgbmVlZCB0byBiZSBkZWFsdA0KPiA+IHdpdGggd2hlbiBlbWl0dGluZyBH
T1NVQiBpbnN0cnVjdGlvbi4NCj4gPg0KPiA+IHYyOiBSaWdodCBzaGlmdCBoZWFkIGFuZCB0YWls
IHBvaW50ZXIgcGFzc2VkIHRvIGdvc3ViIGNvbW1hbmQNCj4gPiAoY2hhaXRhbnlhKQ0KPiA+IHYz
OiBBZGQgbWFjcm8gZm9yIHJpZ2h0IHNoaWZ0aW5nIGhlYWQvdGFpbCBwb2ludGVycyAoQW5pbWVz
aCkNCj4gPg0KPiA+IFNpZ25lZC1vZmYtYnk6IFZpbGxlIFN5cmrDpGzDpCA8dmlsbGUuc3lyamFs
YUBsaW51eC5pbnRlbC5jb20+DQo+ID4gU2lnbmVkLW9mZi1ieTogQ2hhaXRhbnlhIEt1bWFyIEJv
cmFoIDxjaGFpdGFueWEua3VtYXIuYm9yYWhAaW50ZWwuY29tPg0KPiA+IC0tLQ0KPiA+ICBkcml2
ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jIHwgNTcNCj4gPiArKysrKysrKysr
KysrKysrKysrKysrKysgZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuaCB8
ICAyDQo+ID4gKw0KPiA+ICAyIGZpbGVzIGNoYW5nZWQsIDU5IGluc2VydGlvbnMoKykNCj4gPg0K
PiA+IGRpZmYgLS1naXQgYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5j
DQo+ID4gYi9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNwbGF5L2ludGVsX2RzYi5jDQo+ID4gaW5k
ZXggOWIyZGU0ZTdlNjgxLi5kYWQ0ODNkNGIxY2YgMTAwNjQ0DQo+ID4gLS0tIGEvZHJpdmVycy9n
cHUvZHJtL2k5MTUvZGlzcGxheS9pbnRlbF9kc2IuYw0KPiA+ICsrKyBiL2RyaXZlcnMvZ3B1L2Ry
bS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmMNCj4gPiBAQCAtOTMsNiArOTMsMTAgQEAgc3RydWN0
IGludGVsX2RzYiB7DQo+ID4gIC8qIHNlZSBEU0JfUkVHX1ZBTFVFX01BU0sgKi8NCj4gPiAgI2Rl
ZmluZSBEU0JfT1BDT0RFX1BPTEwJCQkweEENCj4gPiAgLyogc2VlIERTQl9SRUdfVkFMVUVfTUFT
SyAqLw0KPiA+ICsjZGVmaW5lIERTQl9PUENPREVfR09TVUIJCTB4QyAvKiBwdGwrICovDQo+ID4g
KyNkZWZpbmUgICBEU0JfR09TVUJfSEVBRF9TSElGVAkJMjYNCj4gPiArI2RlZmluZSAgIERTQl9H
T1NVQl9UQUlMX1NISUZUCQkwDQo+ID4gKyNkZWZpbmUgICBEU0JfR09TVUJfQ09OVkVSVF9BRERS
KHgpCSgoeCkgPj4gNikNCj4gDQo+IFBsZWFzZSBhZGQgYSBjb2RlIGNvbW1lbnQgd2hhdCBpcyBz
cGVjaWFsIGFib3V0IEdPU1VCIGFuZCB3aHkgdGhlIGFib3ZlDQo+IGNvbnZlcnNpb24gaXMgbmVl
ZGVkIHdoaWNoIHdhcyBwb2ludGVkIG91dCBpbiBwcmV2aW91cyByZXZpZXcuDQo+IE90aGVyd2lz
ZSB0aGUgb3RoZXIgY2hhbmdlcyBMR1RNLg0KPiANCg0KVGhhbmsgeW91IGZvciB0aGUgcmV2aWV3
Lg0KQXBvbG9naWVzIGZvciBtaXNzaW5nIHRoZSBjb21tZW50Lg0KDQpEb2VzIHRoZSBmb2xsb3dp
bmcgdGV4dCB3aXRoaW4gdGhlIGludGVsX2RzYl9nb3N1YigpIHdvcms/DQoNCiAgICAgICAvKg0K
ICAgICAgICAqIFRoZSBHT1NVQiBpbnN0cnVjdGlvbiBoYXMgdGhlIGZvbGxvd2luZyBtZW1vcnkg
bGF5b3V0Lg0KICAgICAgICAqDQogICAgICAgICogKy0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsNCiAgICAgICAgKiB8
ICBPcGNvZGUgIHwgICBSc3ZkICAgIHwgICAgICBIZWFkIFB0ciAgICAgIHwgICAgICAgICAgVGFp
bCBQdHIgICAgfA0KICAgICAgICAqIHwgICAweDBjICAgICAgIHwgICAgICAgICAgICAgICB8ICAg
ICAgICAgICAgICAgICAgICAgICAgICAgIHwgICAgICAgICAgICAgICAgICAgICAgICAgIHwNCiAg
ICAgICAgKiArLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLSsNCiAgICAgICAgKiB8PC0gOGJpdHMtPnw8LSA0Yml0cyAt
Pnw8LS0gICAyNmJpdHMgICAgLS0+fDwtLSAgMjZiaXRzICAgLS0+fA0KICAgICAgICAqDQogICAg
ICAgICogV2UgaGF2ZSBvbmx5IDI2IGJpdHMgZWFjaCB0byByZXByZXNlbnQgdGhlIGhlYWQgYW5k
ICB0YWlsDQogICAgICAgICogcG9pbnRlcnMgZXZlbiB0aG91Z2ggdGhlIGFkZHJlc3NlcyBpdHNl
bGYgYXJlIG9mIDMyIGJpdC4gSG93ZXZlciwgdGhpcw0KICAgICAgICAqIGlzIG5vdCBhIHByb2Js
ZW0gYmVjYXVzZSB0aGUgYWRkcmVzc2VzIGFyZSA2NCBiaXQgYWxpZ25lZCBhbmQgdGhlcmVmb3Jl
DQogICAgICAgICogdGhlIGxhc3QgNiBiaXRzIGFyZSBhbHdheXMgWmVybydzLiBUaGVyZWZvcmUs
IHdlIHJpZ2h0IHNoaWZ0IHRoZSBhZGRyZXNzDQogICAgICAgICogYnkgNiBiZWZvcmUgZW1iZWRk
aW5nIGl0IGludG8gdGhlIEdPU1VCIGluc3RydWN0aW9uLg0KICAgICAgICAqLw0KDQpSZWdhcmRz
DQoNCkNoYWl0YW55YQ0KDQo+IFJlZ2FyZHMsDQo+IEFuaW1lc2gNCj4gPg0KPiA+ICBzdGF0aWMg
Ym9vbCBwcmVfY29tbWl0X2lzX3Zycl9hY3RpdmUoc3RydWN0IGludGVsX2F0b21pY19zdGF0ZSAq
c3RhdGUsDQo+ID4gIAkJCQkgICAgIHN0cnVjdCBpbnRlbF9jcnRjICpjcnRjKQ0KPiA+IEBAIC01
MzMsNiArNTM3LDU5IEBAIHN0YXRpYyB2b2lkIGludGVsX2RzYl9hbGlnbl90YWlsKHN0cnVjdCBp
bnRlbF9kc2INCj4gPiAqZHNiKQ0KPiA+ICAJZHNiLT5mcmVlX3BvcyA9IGFsaWduZWRfdGFpbCAv
IDQ7DQo+ID4gIH0NCj4gPg0KPiA+ICtzdGF0aWMgdm9pZCBpbnRlbF9kc2JfZ29zdWJfYWxpZ24o
c3RydWN0IGludGVsX2RzYiAqZHNiKSB7DQo+ID4gKwl1MzIgYWxpZ25lZF90YWlsLCB0YWlsOw0K
PiA+ICsNCj4gPiArCWludGVsX2RzYl9pbnNfYWxpZ24oZHNiKTsNCj4gPiArDQo+ID4gKwl0YWls
ID0gZHNiLT5mcmVlX3BvcyAqIDQ7DQo+ID4gKwlhbGlnbmVkX3RhaWwgPSBBTElHTih0YWlsLCBD
QUNIRUxJTkVfQllURVMpOw0KPiA+ICsNCj4gPiArCS8qDQo+ID4gKwkgKiAiVGhlIEdPU1VCIGlu
c3RydWN0aW9uIGNhbm5vdCBiZSBwbGFjZWQgaW4NCj4gPiArCSAqICBjYWNoZWxpbmUgUVcgc2xv
dCA2IG9yIDcgKG51bWJlcmVkIDAtNykiDQo+ID4gKwkgKi8NCj4gPiArCWlmIChhbGlnbmVkX3Rh
aWwgLSB0YWlsIDw9IDIgKiA4KQ0KPiA+ICsJCWludGVsX2RzYl9idWZmZXJfbWVtc2V0KCZkc2It
PmRzYl9idWYsIGRzYi0+ZnJlZV9wb3MsIDAsDQo+ID4gKwkJCQkJYWxpZ25lZF90YWlsIC0gdGFp
bCk7DQo+ID4gKw0KPiA+ICsJZHNiLT5mcmVlX3BvcyA9IGFsaWduZWRfdGFpbCAvIDQ7DQo+ID4g
K30NCj4gPiArDQo+ID4gK3ZvaWQgaW50ZWxfZHNiX2dvc3ViKHN0cnVjdCBpbnRlbF9kc2IgKmRz
YiwNCj4gPiArCQkgICAgIHN0cnVjdCBpbnRlbF9kc2IgKnN1Yl9kc2IpDQo+ID4gK3sNCj4gPiAr
CXN0cnVjdCBpbnRlbF9jcnRjICpjcnRjID0gZHNiLT5jcnRjOw0KPiA+ICsJc3RydWN0IGludGVs
X2Rpc3BsYXkgKmRpc3BsYXkgPSB0b19pbnRlbF9kaXNwbGF5KGNydGMtPmJhc2UuZGV2KTsNCj4g
PiArCXVuc2lnbmVkIGludCBoZWFkLCB0YWlsOw0KPiA+ICsJdTY0IGhlYWRfdGFpbDsNCj4gPiAr
DQo+ID4gKwlpZiAoZHJtX1dBUk5fT04oZGlzcGxheS0+ZHJtLCBkc2ItPmlkICE9IHN1Yl9kc2It
PmlkKSkNCj4gPiArCQlyZXR1cm47DQo+ID4gKw0KPiA+ICsJaWYgKCFhc3NlcnRfZHNiX3RhaWxf
aXNfYWxpZ25lZChzdWJfZHNiKSkNCj4gPiArCQlyZXR1cm47DQo+ID4gKw0KPiA+ICsJaW50ZWxf
ZHNiX2dvc3ViX2FsaWduKGRzYik7DQo+ID4gKw0KPiA+ICsJaGVhZCA9IGludGVsX2RzYl9oZWFk
KHN1Yl9kc2IpOw0KPiA+ICsJdGFpbCA9IGludGVsX2RzYl90YWlsKHN1Yl9kc2IpOw0KPiA+ICsN
Cj4gPiArCWhlYWRfdGFpbCA9ICgodTY0KShEU0JfR09TVUJfQ09OVkVSVF9BRERSKGhlYWQpKSA8
PA0KPiA+IERTQl9HT1NVQl9IRUFEX1NISUZUKSB8DQo+ID4gKwkJKCh1NjQpKERTQl9HT1NVQl9D
T05WRVJUX0FERFIodGFpbCkpIDw8DQo+ID4gRFNCX0dPU1VCX1RBSUxfU0hJRlQpOw0KPiA+ICsN
Cj4gPiArCWludGVsX2RzYl9lbWl0KGRzYiwgbG93ZXJfMzJfYml0cyhoZWFkX3RhaWwpLA0KPiA+
ICsJCSAgICAgICAoRFNCX09QQ09ERV9HT1NVQiA8PCBEU0JfT1BDT0RFX1NISUZUKSB8DQo+ID4g
KwkJICAgICAgIHVwcGVyXzMyX2JpdHMoaGVhZF90YWlsKSk7DQo+ID4gKw0KPiA+ICsJLyoNCj4g
PiArCSAqICJOT1RFOiB0aGUgaW5zdHJ1Y3Rpb25zIHdpdGhpbiB0aGUgY2FjaGVsaW5lDQo+ID4g
KwkgKiAgRk9MTE9XSU5HIHRoZSBHT1NVQiBpbnN0cnVjdGlvbiBtdXN0IGJlIE5PUHMuIg0KPiA+
ICsJICovDQo+ID4gKwlpbnRlbF9kc2JfYWxpZ25fdGFpbChkc2IpOw0KPiA+ICt9DQo+ID4gKw0K
PiA+ICB2b2lkIGludGVsX2RzYl9maW5pc2goc3RydWN0IGludGVsX2RzYiAqZHNiKSAgew0KPiA+
ICAJc3RydWN0IGludGVsX2NydGMgKmNydGMgPSBkc2ItPmNydGM7IGRpZmYgLS1naXQNCj4gPiBh
L2RyaXZlcnMvZ3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gPiBiL2RyaXZlcnMv
Z3B1L2RybS9pOTE1L2Rpc3BsYXkvaW50ZWxfZHNiLmgNCj4gPiBpbmRleCBlODQzYzUyYmY5N2Mu
LjhiMmNmMGE3YjdlNiAxMDA2NDQNCj4gPiAtLS0gYS9kcml2ZXJzL2dwdS9kcm0vaTkxNS9kaXNw
bGF5L2ludGVsX2RzYi5oDQo+ID4gKysrIGIvZHJpdmVycy9ncHUvZHJtL2k5MTUvZGlzcGxheS9p
bnRlbF9kc2IuaA0KPiA+IEBAIC01Nyw2ICs1Nyw4IEBAIHZvaWQgaW50ZWxfZHNiX3ZibGFua19l
dmFkZShzdHJ1Y3QNCj4gPiBpbnRlbF9hdG9taWNfc3RhdGUgKnN0YXRlLCAgdm9pZCBpbnRlbF9k
c2JfcG9sbChzdHJ1Y3QgaW50ZWxfZHNiICpkc2IsDQo+ID4gIAkJICAgIGk5MTVfcmVnX3QgcmVn
LCB1MzIgbWFzaywgdTMyIHZhbCwNCj4gPiAgCQkgICAgaW50IHdhaXRfdXMsIGludCBjb3VudCk7
DQo+ID4gK3ZvaWQgaW50ZWxfZHNiX2dvc3ViKHN0cnVjdCBpbnRlbF9kc2IgKmRzYiwNCj4gPiAr
CQkgICAgIHN0cnVjdCBpbnRlbF9kc2IgKnN1Yl9kc2IpOw0KPiA+ICB2b2lkIGludGVsX2RzYl9j
aGFpbihzdHJ1Y3QgaW50ZWxfYXRvbWljX3N0YXRlICpzdGF0ZSwNCj4gPiAgCQkgICAgIHN0cnVj
dCBpbnRlbF9kc2IgKmRzYiwNCj4gPiAgCQkgICAgIHN0cnVjdCBpbnRlbF9kc2IgKmNoYWluZWRf
ZHNiLA0KPiA+IC0tDQo+ID4gMi4yNS4xDQoNCg==
