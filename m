Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C8609AFAE7
	for <lists+intel-gfx@lfdr.de>; Fri, 25 Oct 2024 09:24:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7533410EA0E;
	Fri, 25 Oct 2024 07:24:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="F325M16B";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 674C210EA0B;
 Fri, 25 Oct 2024 07:24:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1729841095; x=1761377095;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=9E6Fa8+UgXvYxN2OF7TDzBuDk05KO6RsDl9ZrwlLSkg=;
 b=F325M16BD1ePVFLOB8txYfr4wbYfViIzKcviQI0LffQxepMF7GEht1Rq
 W3aQ8Lnr7aYcI9RCKLBERY3UzlVJLX9+hEaH7Ing5LEwrahfJjG3aEsdj
 58Em9PALAcZGhGROkzqPZNTIxubIY1rQaeDl9+b6/GQM/eo53pyO61Pzp
 RofIFVkDLA+udyA8QDqZyDavpR3PLyZ5nGkFFtgNNlC64IKY3bWSS8g5i
 LS9fQdxuOaLeu9vr7LGkEqn03+uvnNpZC/3IRrItLQ8AQ2nD8UR4QghJ5
 viPieVejI9oAKWWfpC5be8wofZsxz6AHiXb++kqvnwMsBrh5rmpJjcIgD w==;
X-CSE-ConnectionGUID: CtYDtje8S9mAGr5NJ+tphA==
X-CSE-MsgGUID: kpi02UmXT32KVk5HuC9bKw==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="33193935"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="33193935"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Oct 2024 00:24:55 -0700
X-CSE-ConnectionGUID: Z7cu3PHaRh6q2x0PqxNB8w==
X-CSE-MsgGUID: sJILPpkZRRSvZ60vsjEWYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,231,1725346800"; d="scan'208";a="81668695"
Received: from fmsmsx602.amr.corp.intel.com ([10.18.126.82])
 by orviesa008.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 25 Oct 2024 00:24:55 -0700
Received: from fmsmsx601.amr.corp.intel.com (10.18.126.81) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Fri, 25 Oct 2024 00:24:54 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Fri, 25 Oct 2024 00:24:54 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Fri, 25 Oct 2024 00:24:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=olObye/Q+v2xXd890s48oGnjqhjKAsQrvsGTkVzr92vxa4K0ykaAJnssYfF4prw65WDV1DaRYuYX3CC4IhnslVooluToYwWJWRwtJYpqL7qQGPUec1ysyLe8jPLXtMBwU8DQxJAFgLoMtwfwpNjLm48C0E7MB+3Vjf4aUYxOoJfEG+4Nm1Uwou9xMaoYcIa88JXW2Bm5Il1RjNlMoKwRQrELrL4xRZFAt12H7rYOcK5hDdi+H16KpSajkB5HTpFhnDjxEC6OBWOP1jycyRe0o0EacfRgecEboV1Vli1JHARY3P123YMh2/jb5LhzXirzCm1FNTs7vnzKCxkGRPMmDg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=01qbtoboFIsB8wqz1hdmYLIObq6UXjfKDGY025Q0/dE=;
 b=Bv9zaFVtQzLMhRa8lVaxiF5tNCGe68jpgWjXbM7gtq+J2l0pTQO9z3CIotFsQOqh21ORn3kifq2CdzcsnSFwWXgl9LZ857kcEdduARkaLl+vB8admjwiuiiuh1R7cHKyxg5/HuQKjZxBaMBZNjyxrO/sHHGPhvIrQDtLS1HHz/+Ah5UDGcUaFDM8tcyRmnU8qh3u/WR9x7h2gW6krPZd1XcFEpnSFuV/8bgVLD225NEin7s+5l6POtLKtrJpZlx0WYs4UfJhEqk/78Gl4qVICjALG+y/z8/2tMdxh6gGDvmDRliSDj+eyovdU8II5P5ODt/sZwY5cehaFDX4nJHwCA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by PH0PR11MB4807.namprd11.prod.outlook.com (2603:10b6:510:3a::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8093.21; Fri, 25 Oct
 2024 07:24:51 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%4]) with mapi id 15.20.8093.018; Fri, 25 Oct 2024
 07:24:51 +0000
Message-ID: <01ab01ee-8a41-404c-bd8f-548c4e7ee296@intel.com>
Date: Fri, 25 Oct 2024 12:54:45 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] drm/i915/display: Fix the plane max height and width
 limits
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>, "Suraj
 Kandpal" <suraj.kandpal@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 <matthew.d.roper@intel.com>
References: <20241025060136.9884-1-suraj.kandpal@intel.com>
 <20241025060136.9884-2-suraj.kandpal@intel.com> <Zxs40xP4Bo33fqe8@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <Zxs40xP4Bo33fqe8@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA0PR01CA0116.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:11d::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|PH0PR11MB4807:EE_
X-MS-Office365-Filtering-Correlation-Id: 073ad81f-8d1e-429f-4c2b-08dcf4c61d3f
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bVpPbUNSeHlEYkgzVW90emRZYW1hbGNKU1Z1NEliZnBmd1M0RXZBRUR1QnpY?=
 =?utf-8?B?WWowTkRDQ21PSVJLV3pTV0N0YXF1T0xEY2EyL3VsZjZkajl3c2hCOWttZkg4?=
 =?utf-8?B?OXFnRzlmcXNuWmNzQU9oZGtPN01sdjVyNldSeHRPcEhaNThDV09JV2VFUXUz?=
 =?utf-8?B?QWRqS24wNnF6dkpoSUZ6azhIMW5tcVB6bE1vVzN4ajlvYWxjVDJpcng5dVBl?=
 =?utf-8?B?NGc4SzZPU2ZoVEsxRkloeWQ1ZVFGcnNUZzJQeGo1SlFvUXVKK2pHUXpQNTNh?=
 =?utf-8?B?b3dsQ1dGNHVvTkJXWXdHNDBnVjNVVjJnZG4rcDJqZndIdSs4bzVMUk9mWGZz?=
 =?utf-8?B?WmZzWmRkOFZpcVhZYnUrQWhabDJQMHlUWURFc1JKb0d6cDdWYXhUSWRJS29t?=
 =?utf-8?B?K0hPNXdiaTZhYU5xeGVYcEp6bmdEYWJMN1k0SlR2TWExTWw1QVFBNVpTcURy?=
 =?utf-8?B?alZUc21JaHRzKzMxTVVPUVJMNmpCZXlueEsyZTlDdU5BNUJqMVRWQ1JIdWR6?=
 =?utf-8?B?VlpKM2xBcnZRZFBEb0M5anVhVndWTlFLOHFJTUxZbG9nTEVOWXpxQUI1Q3RP?=
 =?utf-8?B?WmQ3UkFPeWcveVM2bXQ0bEM3L3NuU3BMZmVmclhOd3ZPTGJNbGMwUHFHcDJ0?=
 =?utf-8?B?MlEwbG1TSm4yenZ3eEVUUWFHcGltZGRDYW96WG5TRkxiSEZCK0tYd1VuNkVI?=
 =?utf-8?B?RDMyKzZIOEltc0V5ZEdsZGJtQjl6Q1h1RFRLcEgzODBHT3JhdmVIYUZkK3Jm?=
 =?utf-8?B?aUs2dkFUQXppc2tPclJyR0V1STJNaWNlRWNZdWtLR3MxQ20rYlFWYzJXbkFs?=
 =?utf-8?B?dHVyTVJjckphSmo3TzhRU0hENlF3eEQ2ZDRncHFoeDhJMWVhcXhpNVc0bzYx?=
 =?utf-8?B?S1VSeHI5bjZTZEpQR2tKaHJ3Z2UzQTZacjg0ZHR6TkFJa1U0bTlnNWt3TXNM?=
 =?utf-8?B?SWJuNFhCbzQ2UGN1U0dQMzJjbTFSaXozVjBsL05idGZFQm53TmRzUXRoNG1Y?=
 =?utf-8?B?Y2pmVkxlYVM3R1prbEZVQWtPT2xlbUhUdVd1Ti95QUpxM0NIcTUrWTN2MGRa?=
 =?utf-8?B?VHNscnlIUlRaNCtkdUFXcVFVekNWck81Ni9VR3NZc3dJbHRTTFRDVkxLZm9l?=
 =?utf-8?B?RysxWVRYWmtwSy9RYjdzalkzeXBEZ0h6S1hMdzBtbXh2cU9qb3hHMGtiUkto?=
 =?utf-8?B?cTQzVUJFbGgvZUFRcDJPbHVTMStNOXQ0Z3NRSXFsQjNqTTdycFJjQ3ZhMHNy?=
 =?utf-8?B?RmJRMWhVa0tlWDh1MzkvMG1wWUd5aGZFdDVZZ1JpTllqY1NicmI0dk1tbnBt?=
 =?utf-8?B?SzJPMU03MFJyekg0VGZndHhuUUZvTHVNc0hqMXVwa2hMNytlSXFDZlRBc0hq?=
 =?utf-8?B?UlA1SUxGb0lwVEwxdi92Ry94M0lvVnB3RHY2Tm4rT2RWdGRYdWp6NHZmb0Jt?=
 =?utf-8?B?ZG9XemdtMENGM3VGTTFkTWFVMzVkQTZtSFMxb0U3emFTeUhGMFdyWWFoUGRH?=
 =?utf-8?B?ZTA5d1JhTkx4QW00anpEUnoxd1VKeEFJWVd4NWtqa0lBallIb0t4Y3dWWUNt?=
 =?utf-8?B?eTNxa01WelZFT2RpT2ZLY0NOQW9lRXJXb0k0UXpDWjVqanROSSt6NnhqSHBn?=
 =?utf-8?B?eFdDb2xSbjk0VGt2OVBPd0Jid1JaRVZlajNMMXM1OHY3dW5Nam5Ua1J4ODUy?=
 =?utf-8?B?djRncGM5QmhlQnN4YTFEbGJnb3B5M0xiV0xPM1Q4OW96VytQUXJVNmJ0MFBB?=
 =?utf-8?Q?nlmarw8BOg2pLdpzqw=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ZWdpblFPbk5TTnNIMktvdll5cFJhZ0J0UVgyU1RncW5iOFBnL1c1OUl1azVI?=
 =?utf-8?B?bWllTDV0eUpZVkEwcmsrM2NnUkozWHBEUFB0RFpBaGtHWWE2d2YyRjNnUXFi?=
 =?utf-8?B?NUtJejZwR1IyT2h1U1JYY2RWN0VqWmUwWHVoTHJkRWN3WnJRTHZaZmpjNzAx?=
 =?utf-8?B?eW5CSHU4dVR3MEFVVWpEV2ZPVVNsQnJvMlduaVdDSWNVeWR5dWdKakJmK2xs?=
 =?utf-8?B?KzlBcTg4c1Z6ajhvSFBlSXZNaUVhbWFHTnJmckdNUHg4T2ZzS2hpVno4RTZr?=
 =?utf-8?B?QXUzcTMwNnNxNkFpSGVwYUQzelRFZGV3MlRhQzJKSXVZVUZmT1VmTkxta3pz?=
 =?utf-8?B?dGNGN0l5WFFueVYyd2toTzRLRloxOXQ3SnduV2d6S0p0eVRndEJlQitMeFh0?=
 =?utf-8?B?SXEwN2E1eFpXREhtekMrTEtPYm1OTnUrNE5SSmlVWXdOY2dkSjE1L1h3bDB4?=
 =?utf-8?B?c0Z3US9icEpuVDd1djAvUUFwRGNqdkhHcnRma011ZHg5eXlpZjBRV0lQQzJs?=
 =?utf-8?B?MWtmYkIxMU8zL3l2ZHZpUE53VXE3RC9USUJ0WVRzVjdzbndpVmZKaTY0M3VF?=
 =?utf-8?B?dW5KYTdhRkc3aEY1cllBVFA5V1pmWXdTZWdYampiUHdaSTZ1WkZZY0srVmQv?=
 =?utf-8?B?M0o0OThlNjRXVHpwMitLU00wZTBDcWkzU29FNGpBV0dHTlEvZkFYRTJ5QlFY?=
 =?utf-8?B?WE9HVmZSS1BYQ04zVjltWTJxaEpsblIyWVUrb21WZmNIVHhFMUhiclJzMTl4?=
 =?utf-8?B?V3pFWHpOYklzTzNmRk1oN3FERXBISGYyOGJSS3E4NDh0VXNSUUJEV3dKOURu?=
 =?utf-8?B?ay9vcGl0TlZKUmljdGhDZjFxWlJMTUNWZCthSEVBWW44UzR1aDRvVzgrV1pS?=
 =?utf-8?B?Q3dBdGp4SHNDbGs3QUlCc29rS2lBeDRVa0tPaTluZ2I5TitUaGxTY0R5akcx?=
 =?utf-8?B?TTRBZHoxd0pNNnpZa3dmdTA2OXlkaVhldm4xWDRLVkYzQWlXS0RiNDNrbE83?=
 =?utf-8?B?Y3hZWkM4NDh0NWtGSE45VElxcmhKdklEMklMRHpzY2ZKcWVtaDFocXdqVW41?=
 =?utf-8?B?bTRGZU1lQzlpRHpvY1B2RE42VE1QMHpDQVhkbU1MZFZRWXkxeXRTSXp0QXRK?=
 =?utf-8?B?OTdXN3E5T2F6VktSR0tBTUtaUmxRSEtBdExKWjBxNzdRM1Nsb21vcldDNXh6?=
 =?utf-8?B?MzhsOVoycFZRTW16ZFVHVVE0T1RqQWNWSjRRNXVqa1RFS0tUU1AyeE11MVNC?=
 =?utf-8?B?WGl4dEg5bExma0EyYTFneXNyUEVqVkUrNXhEMStYQXE0Y3ZxQXZJWXAweXVy?=
 =?utf-8?B?dUJndXNadDJmTUxzK2JyRW82M2FkS0YxVlRxeEpsTlRDUE4ydk5qejFmN0cz?=
 =?utf-8?B?eWRyV0RiY21oOXplQy9xdkRSMHFRU1Bua3JuUHpXcUNVMjlhWXVGMWZCVENT?=
 =?utf-8?B?bjZwQ2hqd1QyZ2ZpdUNJTG1yOTZPbm9UVURQbWtSdUlIU3JCN3pDRy96OG9L?=
 =?utf-8?B?SXdUZFBWT2VtdFFQOFVvOUZvSUxnNkpqQTE2NEhHZTZpN0lHMlkvak5HYlZi?=
 =?utf-8?B?TWdLY2IvMWNPRE40YmU2eGlVUlcvTG1zR04vdmNaNlVXUmN6Sy9WYzRTOE55?=
 =?utf-8?B?MkpwanRnbUNRbW1wM211alF6ZE5VWFFBaThGbnk0UUwyWlhyVUNvWXZ4MUdn?=
 =?utf-8?B?UVlEZEg4RzFiOVdibDB2VjdIeEpVVjVocVZQMjlwYk0vVVJEdXBSMm94N0Zq?=
 =?utf-8?B?VjF4akFROW5WM1I4WXd0SDJLSjlhUDB0M3F5UDZmOURiMmpOTXJsRlk3dUJ4?=
 =?utf-8?B?RndKTmh3UG1jWnRZN3NWdElaSm5BZ1ZzaXZNQk53blgwUVU1d2ZOMXdGb3RV?=
 =?utf-8?B?OVdvMkZzUFVwV0RYd0EwL29QY2EzV21NVnBWUGNOUlBiYnB5RlhWVjhWdnA4?=
 =?utf-8?B?UDdEelY2QUJqS01sb1NVQStRdmxQZkZTd3M5Q2h2TkVOOXE4bGYxMzhMeUli?=
 =?utf-8?B?WjltV0lyWHBaRzRQakNxcjYvSkdRQ1d5MVNySXpqNldlbHJIejYxaERNQnBF?=
 =?utf-8?B?OFQ4K29Kb3lOeTBHVjc4Uld1QXBLcnVNdkNaYStIYjVLSi9JMHZBUENXc3NV?=
 =?utf-8?B?VjZxVnBOMi96TWVIYXBtZDVVN2UzOHJLVllPdFR6a1RyaWVUYldkSVB3T29L?=
 =?utf-8?B?SkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 073ad81f-8d1e-429f-4c2b-08dcf4c61d3f
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Oct 2024 07:24:51.4508 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: TvUOuo8DqIJ+hjtg/O1GjGHSZQ8N60cWF17tyHnPc4mnTxyNiA8Fl3TkHDT0nI3TCMinZxHYJkTsnEXplT4IWqNWyKTFZzSu666kLWMqxdE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB4807
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


On 10/25/2024 11:51 AM, Ville Syrjälä wrote:
> On Fri, Oct 25, 2024 at 11:31:32AM +0530, Suraj Kandpal wrote:
>> Fix the plane max height and width limits taking into account the
>> joined pipe limits too.
>>
>> Bspec: 28692, 49199, 68858
>> Fixes: 63dc014e37b9 ("drm/i915/dp: Allow big joiner modes in intel_dp_mode_valid(), v3.")
>> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
>> ---
>>   drivers/gpu/drm/i915/display/intel_display.c | 19 ++++++++++++++++---
>>   1 file changed, 16 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>> index ef1436146325..fc578af4f394 100644
>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>> @@ -8450,9 +8450,22 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>>   	 * plane so let's not advertize modes that are
>>   	 * too big for that.
>>   	 */
>> -	if (DISPLAY_VER(dev_priv) >= 11) {
>> -		plane_width_max = 5120 * num_joined_pipes;
>> -		plane_height_max = 4320;
>> +	if (DISPLAY_VER(dev_priv) >= 20) {
>> +		if (num_joined_pipes > 1) {
>> +			plane_width_max = 8192;
>> +			plane_height_max = 4800;
>> +		} else {
>> +			plane_width_max = 5120;
>> +			plane_height_max = 4096;
> The joiner operates on horizontal lines. Why would the
> vertical resolution change here?
>
> And this is breaking ultrajoiner now.

Yeah this will complicate function to check whether go to ultrajoiner or 
bigjoiner.

Perhaps need to have separate function for max_joined_plane_width() and 
max_unjoined_plane_width();

And the func intel_dp_needs_joiner() will change to something like:

bool intel_dp_needs_joiner(struct intel_dp *intel_dp,
                            struct intel_connector *connector,
                            int hdisplay, int clock,
                            int num_joined_pipes)
{
         struct drm_i915_private *i915 = dp_to_i915(intel_dp);

         if (!intel_dp_has_joiner(intel_dp))
                 return false;

         if (hdisplay > max_joined_plane_width())
                 return false;

         if (num_joined_pipes == 2)
                 return clock > i915->display.cdclk.max_dotclk_freq ||
                         hdisplay > max_unjoined_plane_width();
         if (num_joined_pipes == 4)
                 return clock > 2 * i915->display.cdclk.max_dotclk_freq;

         return false;
}

Regards,

Ankit


>
> Frankly I have a hard time believing that there are any extra
> limits on plane size imposed by the hardware for joined pipes.
> If there is some kind of maximum width limit then it must be
> coming from the joiner itself (eg. max line buffer width) and
> not from the planes. So I think this is the wrong place to
> handle that.
>
>> +		}
>> +	} else if (DISPLAY_VER(dev_priv) >= 11) {
>> +		if (num_joined_pipes > 1) {
>> +			plane_width_max = 7680;
>> +			plane_height_max = 4320;
>> +		} else {
>> +			plane_width_max = 5120;
>> +			plane_height_max = 4096;
>> +		}
>>   	} else {
>>   		plane_width_max = 5120;
>>   		plane_height_max = 4096;
>> -- 
>> 2.34.1
