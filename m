Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EF85A0865E
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Jan 2025 06:10:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0A56410EF9A;
	Fri, 10 Jan 2025 05:10:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="YBkNPsFN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8ABDD10EF9A
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Jan 2025 05:10:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736485805; x=1768021805;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vZ9W9K8YNW77i14+GdClDHCBGqJYaKkyLPTYVO6A87k=;
 b=YBkNPsFNZR/uRBe2i9lGIQofDZ9yq4lLAqaGMlLha6FwFWut6BZ9nY3g
 zCxLgYs5roje4oeVFhSrTOsxuDnmSJdfJjaLLjm3dYJIjFWJKFRaAzbUR
 FHG3yHPyMjVNI0AaT/dF59R42pnPuTnZrkA0rkOVVG3gSTLH71JtCzoAY
 i+BoI/7qnyQRrPP1JkilbWRgohYsdczevYoblVAuXjL6Q0Iy/b3dfIHQ4
 PZIEXaD8KNyMxSmSZ4zgzs3WEUgraiWcFb0DYzURUGxyk5W3c+iI5Kgi1
 Kv61xI5NyF80GK7EFBd6BBs6VKcdtWCDk+PitsaLqlRg0kMjwR75j12lL w==;
X-CSE-ConnectionGUID: HrtqhhoDTUKbJiS3tpRrGQ==
X-CSE-MsgGUID: oLfQdMbsQZ67zgyZjtvMog==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="47268131"
X-IronPort-AV: E=Sophos;i="6.12,303,1728975600"; d="scan'208";a="47268131"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 21:10:04 -0800
X-CSE-ConnectionGUID: /+JWvR7ESv+Srn6JtabVzQ==
X-CSE-MsgGUID: ooNmfL58RHSWMhhC9yzNXA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="107678553"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by fmviesa003.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 21:10:04 -0800
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 21:10:03 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 21:10:03 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.170)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 21:10:02 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=brqGQMcD+SHLI03IR/mr9QU2PEZp7yRl39wPZrcPwVuFF3f+B5Mpf9yyzTRDlxX3uGXw6BHc9fUpDS46LWiDPfD/UvASmHwlj30R26bOJGKB7Y4vQZ9cBNynpH19mkeNwkIQh2UlYr0SotFqln2iq0KhtLu9Hhy3g/jQMDxlzrXDRDct9ks2XpKu35OenvwVt5fbAfehKcMg3eVzRwg+/Pfdiy+K4tTas4Ans9FlfSC3FjylDMwHnDYY4RsJrVHa+dalCt7QteUXsL8NnY8vGWUiwFe0FiAIpzdRbyOsweNIm4p+e12+mySTkiWjVpUnhl3zqvzoJJhTFBaBUbvsmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=R5w1J2jdGewZONjtEv9jlHo/HwfhabNSI9vrcY1IHNU=;
 b=nsnyWkkz251mVvyu9/PkFwTUnGACuUYR3d2gj+m2Qz4YY5lIU1Oau6/J5vFowdSEqMi/i8wf7aVhgaRhkR7lzS4xW4LaUhYJzW8yXY7cFDZxpj1y3AoJfgF974GF6ZlHl4T4q6H5D7Wykt0uNUVCPujTa5I8vo20tyU+/+fzZJC+5wLKWyoBhR5M3W7szpmFQ/zjfsYCDjEFwfH7l4oTmbGh3oZLSMMf6Y/7rCNpHauFcP679rjUkQATHICVbA0ooeyPTTHH4c/bt8HIj4FfoNhnVL3fAf4FCYfSAo9C9QPNp+Q/NMQ6RR9COyCDgFonXVw+U9ZyTTYTU2ZQdUfQAA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH7PR11MB6379.namprd11.prod.outlook.com (2603:10b6:510:1f9::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.12; Fri, 10 Jan
 2025 05:09:59 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8335.011; Fri, 10 Jan 2025
 05:09:59 +0000
Message-ID: <0115f73d-7a8f-45ee-aadf-960b5253a5a8@intel.com>
Date: Fri, 10 Jan 2025 10:39:52 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 01/18] drm/i915: Extract intel_crtc_vblank_delay()
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-2-ville.syrjala@linux.intel.com>
 <b09efa6e-3ff6-4ce5-9e34-c717dd749bce@intel.com> <Z3_usEDf9GYMPgFo@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Z3_usEDf9GYMPgFo@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PR01CA0198.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e9::7) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH7PR11MB6379:EE_
X-MS-Office365-Filtering-Correlation-Id: 58d86d03-b5a4-48df-2199-08dd313507c9
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?SXpBL1ozY1AvQlZra1RORWZLWFRIUFJWM3dLcVBkeEtxaFM5VFBjRzR5dUhz?=
 =?utf-8?B?bUJRZHU1RkY5YnRFSWpYNTJzTENtQXNkN0p0TldiKzZIMTZzdm56RGRtY3pB?=
 =?utf-8?B?STliSGJIYWV2bUpnWkhqUlBVNFM1aldlMkRQNkxBTGVlOWNVbzVCVlBVQjR3?=
 =?utf-8?B?L3RUaDkyM0ZTR0x2RlNhbWIrSUNGWUZQNkJZWW5RMW9oR0pqeW9WcjNEZlBB?=
 =?utf-8?B?cHN2c243L21CeTFtdzlRK29jdVRXWlcyU1d1eGt2cnFnaG5wRHFzcDBCM2Nh?=
 =?utf-8?B?VDluYXkrUGxzTmNzTUQ2UDYzVVNXcnJFSHZHNC8wK2krT2ZRaGVQU2dGdzdK?=
 =?utf-8?B?aENhYXYxOUJDQTdkMFQ1djlXVUFvNjlGWnIrOTBBM1hpeGZncXlhNEtzbk1i?=
 =?utf-8?B?RkJULzdZa1NKMGZlWHhLWjgrNTlMRlo1T0hteDQ1ZnJPMy9ycVh1clNOZ3hP?=
 =?utf-8?B?OVdRNDRWcUhZaStYSWhHV1FlQkpXSzhRd1IreklNZ0h1V0lEd0xXcTR6bkh5?=
 =?utf-8?B?eEV3YUFwSVVXTmFIWXJQOFJQSnNBTzdrSDRNb3gxQTFzVzhEeE9jSGxVbmx0?=
 =?utf-8?B?OVhwMnE1YXRuV2J6QXZHeVZEai9McUN1NndOTndFdm1SdEZyOCs4VElkN3Rj?=
 =?utf-8?B?aGtZLzl3bUdITUZXOXhwYStzUzhielVVdmV3N0VLd1FpMVZ4V1Y1YUZOL0k3?=
 =?utf-8?B?QnZUZ1VrZDJFNm9QeTBTTGY2djZaOGE4YTIyRDRMR2FNaE1ZcGhFWEo3MzFQ?=
 =?utf-8?B?aFlCNjlSNEJaeDF4aWgya1NFRS9DaCtubVB6ZG5oUnVSUXVJL1laa2lwWE5P?=
 =?utf-8?B?US8wRlNUOFBMSnBCU2NobHFJNjBZTG9naVJValplTlF4bjVVRWlzN3J3TUdG?=
 =?utf-8?B?QnU5K05nQzJDMzd6bDhRMENZNXBHT2x6czA5Smw3N004Und1M3JUY0U0VnJO?=
 =?utf-8?B?dG5OZzlqR1hHd045dGFvWWI5UHI2UEJGdElsZGdBUDhCWVpSNUxsbjhpRXNK?=
 =?utf-8?B?OGVwbEpMY21mVjVqSUJMR2t0aXZ1T3FmNEhIV3orcS9jRDBiK3ZJbDZRaURR?=
 =?utf-8?B?RzJsWGJUVW1JVDZyZGEvWm9ucDhtQTMxS1J2dDZYaHJVaTc1TDFsSG1NblBq?=
 =?utf-8?B?OUI2eUsvSHBSV3ZTbmJqNGF4VGJ3OGExdVhaaEVtOElGcU9PYnlrZEFXZXJN?=
 =?utf-8?B?cG9nL3pxNEhCSWNPRjNLYkxZL1hWb0JLbHJuSk1jVkxRV3lZazQxbEVVWFVE?=
 =?utf-8?B?Qm9MbTVSbE1RN0tjNGdBK3JTSlg3MjQ2b3BEenhSbk9senBlZ3dEeGE0aU92?=
 =?utf-8?B?QmNVeml1YmVsVTIrVHVodUtYSURuZGxqdW1lODhRMEdoYXp5UWRUUDdLTnFE?=
 =?utf-8?B?U3J6dHlLVVVJN2NFSkRzL2tOR0kwOFFOWWZXUVdNaFZIRDcrRkdvaDBTUk1x?=
 =?utf-8?B?SmpCQ2VISE9xU3hHZWJ4SkJwMkZ2akNTTldKQzVQV2Y0MFdlMmhtNzFwU3Jt?=
 =?utf-8?B?L1VoL1pwUE16L0xIS3JwQThqU1NJbUJrdjF1bFRrKy9CT0tJM0tJS3kwMVdn?=
 =?utf-8?B?SVFCZlVRZGpySzFBQ0tHdWVHQ0tvaVhCY3NzTk14b2VUTjIwRHlMWFg1QlJ6?=
 =?utf-8?B?MFdZUEMrOFhDOHplTHJac29yWHBidCsrT1JDdmZFSUs5TUZzRlVIK29NbEdh?=
 =?utf-8?B?Tk4zQXl0RGxpRVc2bWdEZDc2ZXczN3F4TjRUNkNsV1h3Z1lhRm5kaUIxYy83?=
 =?utf-8?B?ZTljeHZqcEZXL0x5RDhsM1JqOWhUd0IrZmE4Q2dGc0Vla3RWSk0yZ3doaEdO?=
 =?utf-8?B?NXdmOFkzM2lXdEhXeFB3cmhqK0JaYmFzTng1d0thSzhiOWhTM1dwSmRIa29n?=
 =?utf-8?Q?FKw4DJLTsG6/O?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cXVvUGY5MTVNUFloaWErNGY4Q0kyOHNUT3V2ZytMM3JJWHZSczQ2NWtETGdk?=
 =?utf-8?B?c2pjME9iS0JJaWFWcEdCQ2QyYjN6NDd3dFM1M0l5dGlpa2V5SkdSWmFlcVFC?=
 =?utf-8?B?OXhPbUZuQm5iUUNnYjc1dmdZSkh1U3dEQy80SWNOTHRyRFcwTGNJS0FsZERX?=
 =?utf-8?B?RjJISWl5UytyMUVQU1FhR0Y3RjZFL2RTZnhRU21PM1l1UXZVdXM5bmEyNWxJ?=
 =?utf-8?B?bkNhbDVkMVo5dzlwZW1qZG1JcjcvZkVybVJWU2I2M2FDZStBSGxiSFJpQWhT?=
 =?utf-8?B?U2szeWNSWDB3U3dteStna1ZjdlEzaFQyWlR3YVhyMTFsKzU3NUNEQjVzZGRQ?=
 =?utf-8?B?UG5rNWFiRlJ3SVJCTnJVT3VBRmxSNTlsbFBuMDJCNlhYNHlabFRWbVpObXhr?=
 =?utf-8?B?cEF6QVR3bEpCcnhaNmtya0tma011UnZJSzVtM1JPWUpwL2ZzTldBbkorblNh?=
 =?utf-8?B?UHpiaXkwMzZJQnhhR1paSFk3UmUreE9wOGtENnY5ZFoyTjErZTV6U1VSQ01M?=
 =?utf-8?B?bDNRMEQ1dXVJRWpyQU8yd01YSGdiUXB3SVoydWRyUzRDa3BpMmZxQVA1RVNt?=
 =?utf-8?B?Yk9CbDhrcjJ5YWhsbGdhSGVrNHk0WHdvKzBzOVdOa0M1bkRraWFWYVd0cC9P?=
 =?utf-8?B?bzlsNDh0QkpEUzhzK01wWVF5QmRTMEs4SXJQY3RJeWtRcm5hM2YrOEYwbFNI?=
 =?utf-8?B?UW4yYjhvMXY1QXY4MUkvYlIrbVAzR0xSTldMdnl3RGVyeXcxT3RVV2NVVmNO?=
 =?utf-8?B?cFFDZEkxblhNN2RIYWthZ3pNWnZkMjBrVVBKT0hQMUUvdmhpWGlOTytwc040?=
 =?utf-8?B?bFg1M0NWV1pBMVdJdHlpRVNTUStuN0ZKSnMrcEQyeCtVOFJDVFVndVR3V1R0?=
 =?utf-8?B?QmVTYnRzVERURms4dDRSOHRUMEdoL0IwQ1BmOHRJTWU0NlBQRk9MTENrRlZt?=
 =?utf-8?B?cDFxenNvazI1czF4MndYN2VjLzk4K1ZqbDVyOFNkYzY4WWk2V0ZXTzBjbVJ1?=
 =?utf-8?B?c0xHUnAyYTZqeGxqVGdYK3lDSXduWE9jN21UNC9CTGxGVHduYXZTR0tXd0JM?=
 =?utf-8?B?Ym5yWTJXU0FLRGh5OFFYdndXWUNIa1A3c1J4QVdsazAzYklRQ2RGU2x3NVlX?=
 =?utf-8?B?MHN3S29ZRXNqWTFOTUFRV1B6clczMkhHWVFXQ2tpeGczSmFEUGVoNjZib1dv?=
 =?utf-8?B?SUUwQmJjbWVUclJ6YS96cEVXeERFaUJEVm9mOFZVa0R5NDYyclZkYitaUHN4?=
 =?utf-8?B?MXFRNVYvNTlDQVJOOGUwblpVaGcvRHRIMTZQVEZQSlZONG1YOUd4cHBRR1pM?=
 =?utf-8?B?K3IxNDZybmRqRzBWeDNveUgyVTl1NE9sT1A4d0QraDI5eXNXMUg1U1Rvd1lC?=
 =?utf-8?B?bDdCZ2hwRU05QXZLcTJTakVxT0Z3VlI5OENMSzRaTWE0NVpoR1ZoS1Z4OTFF?=
 =?utf-8?B?bkkvRzc3KyswY3EvYllHeW9OWWVLdnpwU2NIRDNLdWpaczI4ME1HUTVyOVVO?=
 =?utf-8?B?WVdzM3U0a3ltQVhIYVp4aVIzNGdrWk1mMXc3RUZDQURDWlFOTlZXV1hIL1ZP?=
 =?utf-8?B?R25rZWZGVTdqd2ZOSGxJYmc2WWZCVkU1QUViNlVMNkJlQTZIV2tzVjNMM0tj?=
 =?utf-8?B?Lzh3bzR5WjFBYkFuaEJadExZbGcvSGN4ZVowMTlrayt0d1BIcDJaWThwVFhU?=
 =?utf-8?B?VTV0cXJITTlmZnMzVmpFeThzcjNjSWFXM2EzdWplOEhsL29ReksxZW5SL1Ur?=
 =?utf-8?B?Mlg0a2ZWRDVCZ0UrMVJxUHE0LytoVkJDQzllVTNTUE1Tc2hNQkFWd3V6UHhI?=
 =?utf-8?B?WnNXcElqT2dONzlsRW1qOEZHV2JiMEhRMWhHZlpwTUYvd2xQbXkzSWZNWTV1?=
 =?utf-8?B?UEkvN3U3NzR4YVRGdktzNHBHQ2t6VE0waGFmY3d6eEoyeGQ3dDFhSExPQVNi?=
 =?utf-8?B?N3NDeDZ6TDJET2FudDhFRDFNTzRJeFI0WmNoeVdZcnBHeFlNek9uWHBzYnRt?=
 =?utf-8?B?WHltZGhKOXd2MXhqWlFkYXhxd1NnOW9Bd21PeGRCdWNCeHFXVUEzU09FQUox?=
 =?utf-8?B?THliQ3RqYmxEa200TUpVQXlvc09KUEdVbEcrTDdZakcyL25aVWRlWE4zMFFK?=
 =?utf-8?B?VElwYUhOQTRsWkNFUTdMU2xNMm5SOEtrQkwvVHBkRVdNQ1pLNEwrdG5odmEz?=
 =?utf-8?B?ckE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 58d86d03-b5a4-48df-2199-08dd313507c9
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Jan 2025 05:09:59.1479 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: iB7y3N6rLxTZNE77vyJdirgO/1X/w0zK+dpl0CWrjuNExy1Iv6Qj6pMewkZmnLvGdRacLZia0WBRs7bL8lCh9QNndTeVexx5MysGE6qbsxk=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6379
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


On 1/9/2025 9:13 PM, Ville Syrjälä wrote:
> On Fri, Jan 03, 2025 at 04:54:53PM +0530, Nautiyal, Ankit K wrote:
>> On 12/11/2024 2:39 AM, Ville Syrjala wrote:
>>> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>>
>>> Pull the vblank delay computation into a separate function.
>>> We'll need more logic here soon and we don't want to pollute
>>> intel_crtc_compute_config() with low level details.
>>>
>>> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/display/intel_display.c | 24 +++++++++++++++-----
>>>    1 file changed, 18 insertions(+), 6 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>> index 8e90e99a25d6..ff907afa6451 100644
>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>> @@ -2610,16 +2610,29 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
>>>    	return 0;
>>>    }
>>>    
>>> -static bool intel_crtc_needs_wa_14015401596(struct intel_crtc_state *crtc_state)
>>> +static bool intel_crtc_needs_wa_14015401596(const struct intel_crtc_state *crtc_state)
>>>    {
>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>> -	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>>>    
>>>    	return intel_vrr_possible(crtc_state) && crtc_state->has_psr &&
>>> -		adjusted_mode->crtc_vblank_start == adjusted_mode->crtc_vdisplay &&
>>>    		IS_DISPLAY_VER(display, 13, 14);
>>>    }
>>>    
>>> +static int intel_crtc_vblank_delay(const struct intel_crtc_state *crtc_state)
>>> +{
>>> +	struct intel_display *display = to_intel_display(crtc_state);
>>> +	int vblank_delay = 0;
>>> +
>>> +	if (!HAS_DSB(display))
>>> +		return 0;
>> Is this because W2 window is configured to be non zero only when
>> platforms support DSB and DSB is in use?
> It's only a thing for platforms with DSB, and there should be no
> need for the extra delay when not using the DSB. I was mildly tempted
> to even check i915_params.enable_dsb here, but that can changed
> dynamically via debufs which would require us to reconfigure the
> vblank delay on the fly (and that we can't currently do).

Alright, it seems this check was missing earlier.

Perhaps can be mentioned in commit message.

In any case, patch lgtm.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


>
