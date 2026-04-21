Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gIHTFl6K52lY9wEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 16:31:58 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8073F43C136
	for <lists+intel-gfx@lfdr.de>; Tue, 21 Apr 2026 16:31:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EAA0510E8C7;
	Tue, 21 Apr 2026 14:31:55 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GtE/Higb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6DE7B10E8A8;
 Tue, 21 Apr 2026 14:31:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776781915; x=1808317915;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=F9lT/Q45ddv/6CmpmfgBaH0JYjYVuXgZF6WncZBQeP8=;
 b=GtE/HigbYPVar8UQcUKSZB/Ez6692W35/8eF3iDho533zVYuxCnJ13t2
 ddjKJ3HbDEVPSsIwmYcqffgO6VUVRD3PNtpH5HEP6/G6gnFh8TuicjYqh
 a0OWSn7xDe+j2w7VUzNezlp42Y/0AI2qXp+bJkDRNL5yMcr6xuN2xAvUM
 d245iXLwDqQhvVlFlkSaHtqTet83xOAshfjnx1n877WmOhEIzZkTjMOi1
 siIe2UvfAwIsbJJALQRBGQSKO/V+bEgwpb/gB5IfXkFj4dGL7NG4Z0Ehs
 qppA1XQIt0lAXENXs1miyJCDIsmNcCdD1kTpZWHMpYlhzKH3Q811MIGBi w==;
X-CSE-ConnectionGUID: ifz2qhKrS/KoFbgHFZ3jlg==
X-CSE-MsgGUID: 96so6oaPTxe4y4B+CoWqpw==
X-IronPort-AV: E=McAfee;i="6800,10657,11763"; a="95124597"
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="95124597"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2026 07:31:54 -0700
X-CSE-ConnectionGUID: CdiwyMKFTZypbNXfGZEUlA==
X-CSE-MsgGUID: QVrsw7azQU6igkB3Y+1TOA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,191,1770624000"; d="scan'208";a="232334098"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Apr 2026 07:31:54 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 21 Apr 2026 07:31:53 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37 via Frontend Transport; Tue, 21 Apr 2026 07:31:53 -0700
Received: from SA9PR02CU001.outbound.protection.outlook.com (40.93.196.54) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.37; Tue, 21 Apr 2026 07:31:53 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NqKjO3zgN4TfPXAD1/4jbHopEQJhCff25L/HXx0vlHHW0xrbxhAArZqw6cfmKVyITu5tUSYI7KEfOm2UWRG0cDB7DfI5GRbfCXwLo1+wbpDgfREgAfUoHANBn1Kl38aGCidlKnOsFQghbI/AyAUr9fU5EZiwjk+2KtIYcytS95Ptt7OGyTG1atmHC7og7aB1YJIGN8r8xhKJZG/E7EMdto/qMqBlCyoyIwnDO4hqTuFH3HUHhd7S3OCXWJFcSzywEpuYzPCDFT6A7U37MmUUaXgkGhcxl9BsA6dr/Us+XMp7wptCMR0TGU8AbhLPu/AKKl5KcJS3mz3u5LPw0Yxt2A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=P25IxNMvhaAGdaa9KrrT2bom/lXteskQbVA6z9w6JD8=;
 b=FQqcw5vwAHFmmVIRyT/ZQUsl67z2Wb5SLWF19xd+7Jhbk9/qEvkDnBbKdhMvrj2Ng6ZZQkQnuzLKlX3CSHSL/aCxteiWRJFV6hUAjsspj4JbTNgiDXzUkU4o2q70kADejTbAlMP2WF+1xSNS8MAZur7EHwHGu7RTla33dYsQFR6706GoGCLv3oQbKam1Ri0PZ1TpFeWgjgwqjL2I3OiSJ0+k4zdsl6XH3Wq4TY99hxcu95OnCMGKJI3gEDpnKp9n/hWAYhXtl22yM76MoGI2SzUOKGsstcPps4WQbef94vTHzxVeCH5/Z7fCOEGNV0sfwS2HQUQNYWWihQkndZ+SJA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com (2603:10b6:a03:488::12)
 by DS7PR11MB7833.namprd11.prod.outlook.com (2603:10b6:8:ea::11) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9846.16; Tue, 21 Apr
 2026 14:31:51 +0000
Received: from SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b]) by SJ1PR11MB6129.namprd11.prod.outlook.com
 ([fe80::45f:5907:efdb:cb5b%3]) with mapi id 15.20.9846.016; Tue, 21 Apr 2026
 14:31:51 +0000
Message-ID: <d5b882b8-19a9-4e83-b6a0-ecfad3e61522@intel.com>
Date: Tue, 21 Apr 2026 20:01:43 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: Regression on linux-next (next-20260324 )
To: Peter Zijlstra <peterz@infradead.org>
CC: <willy@infradead.org>, <linux-kernel@vger.kernel.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>, "Kurmi,
 Suresh Kumar" <suresh.kumar.kurmi@intel.com>, "Saarinen, Jani"
 <jani.saarinen@intel.com>, <ravitejax.veesam@intel.com>
References: <af005996-05e9-4336-8450-d14ca652ba5d@intel.com>
 <20260327163100.GL3738010@noisy.programming.kicks-ass.net>
 <20260327164353.GM3739106@noisy.programming.kicks-ass.net>
 <df391df3-3a3b-4a65-b3c7-ffe3ab50ee83@intel.com>
 <20260330195037.GW2872@noisy.programming.kicks-ass.net>
 <20260420130318.GD3102924@noisy.programming.kicks-ass.net>
Content-Language: en-GB
From: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
In-Reply-To: <20260420130318.GD3102924@noisy.programming.kicks-ass.net>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA5PR01CA0036.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:178::8) To SJ1PR11MB6129.namprd11.prod.outlook.com
 (2603:10b6:a03:488::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ1PR11MB6129:EE_|DS7PR11MB7833:EE_
X-MS-Office365-Filtering-Correlation-Id: 49dace5f-b86c-4768-75ec-08de9fb2b9f0
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|18002099003|22082099003|11006099003|56012099003;
X-Microsoft-Antispam-Message-Info: xWPyaWZR9KB3Fz2Iy8Utpfg0toziJDvgYdxBok0he17mY6bojEYQnfyG55BTMJzt/2OU4z5Y2M6SkOIaVRFYyrbkKztRNnjzjJiJ+iB9ziC2LHjMxjN/uiatrCjNAIbANzCZlBN8v2D0g/uqfODrYeY4J8YM6R4W1HuyPq2IfTAah9lppVV0zUOKMf8rSBvkfxmkSc4j6/w4DVX4UpwXyy0k4KKsxreigFBq8fLZ3YUU2Hxz+2Grl0cHIEw0dEFQPe20IQJDW7huYtBREqAoEVRWTADUZd0kb7zFmS5uaL02JC7qHEEysFytmZF3fS7raZpCK0SLOl/2jr4/JGxJVTtS7W8onVwBGIWiHZJCi4GCI9ma3C1wtMMzh+a8P0ZRK3Xhmn22Rn18fWgCuoXq/HDGXNbu450uXyrbByqGXRS0E+smXNYOSzAkoxbiICo1kYBEHZN8PjT3piZ+43nAAAR024OCFDIPsS5oFxmZry9uoX9Ua2tczwd0qaETW3wpjUtXhq4Ai1gW4WBgyL3ruuUnJLOISMLdueoTAlzvyDVVC63gAx+alvukxbxAFR/h1AzAVAdEOJuePhRhBudmitYtwClhpX7TtJgkXLv82YU3iF9QpBNIkka2w6Xbqofd9xnL+W89SnBKI1wIKBntXR/swRmDZEbbOlS2UFHxiSnWLtV+LFGQiHRyag4BrSrgnJIOgw81jcGDCzF+xWoM7+btnyJQWZGCnVJpL1+lmMA=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ1PR11MB6129.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(18002099003)(22082099003)(11006099003)(56012099003);
 DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?cFc2aVBWYThWRUQ2UEpzY095Smd1N2grVnRpdmFxQXhnQms5bnVPNElGa1Fp?=
 =?utf-8?B?SVpvRXByNHpkM2hrOWJhcWhkcUwzZ3FPdFhybVFtdkhMclhPa1Fld1o4SWhV?=
 =?utf-8?B?TVk0TzF4RDYyTkpZYkFUM1pBUzE4MW12M0RsUjNaVzZRTlMvOVFZMkN2YkZW?=
 =?utf-8?B?WlcvbWcwZXE0ZllqbGhKSEZkcXhJS0UreXFXREtmVzdzbk1RSzErM0FXTGQy?=
 =?utf-8?B?dzMrZTRaV2FxQ2dQc09UK2ZzZG1aakxtdDRVSUlvaXNHVnA0QndlVTJ6c05n?=
 =?utf-8?B?Qi8wRENXR0IzK3BhclJkWGZoTXZERlRuMHRlNUlwR1c4VmFoTDhkVEcyQ2Zx?=
 =?utf-8?B?L3BpSTQ4WXRJcElXQ3lIZnhTSTU2ZE9manZCNjBZNXhLL0ZKU3p6SnUxSlVo?=
 =?utf-8?B?aUhudCtDZzQxRStLSWpibVJJV1p3MXBhMzFScml4Q1ZXWUdWQ2R5NXgwaEov?=
 =?utf-8?B?UmR1UkJCWklQbjdZRi8wQ3pDTmpQWWR6REI4SEUrSExFVUxZa0JUUGRWajZ2?=
 =?utf-8?B?dXpyb3dUZWpEQ3J4NXIxeDdZRkg1K2xlRUZoZlA2YkxSazlmOXZTenZwdVRm?=
 =?utf-8?B?enhSNW9VNlVwRVZoNE1hMTNBN2p3OHVucnQweHl3OWVhNmIxTkVkK3JKb0xt?=
 =?utf-8?B?MFE2b2dydlRXZWtrOG1GVzAyRGlDOThuNjFjNDRHWG8xbWdYL2FRZ3haN3Zq?=
 =?utf-8?B?eUwwVklrRHR3ZytZdTlhK3hrbDZSNW5LKzM5NHJlZWg2TFBZU3c5UUJVYW9C?=
 =?utf-8?B?aFhoQ3hpTnNvakh2bUx1a21xZy9zcUxrcTVtak0vM2FFSW92ZlltSTROVDJu?=
 =?utf-8?B?YmlpbUdPVGMzUXJHbUpHRlVLL0NQN0V5RjEvMXJLaTRqdGM5MjBVemtzY2Zy?=
 =?utf-8?B?UHBneVJ6M01OQU9FQi9QYzl3M1BJRDljbHd2aWNGTGR5amJwQzNnS1ZwajAz?=
 =?utf-8?B?b2pubnlHYjFXQk1iSnZCN0daN2tTZmxvRUd2bFhPcFRvd2tOc1NacjJxWTkv?=
 =?utf-8?B?NWdVRHN0UDJGVXc4WHlJY0FvbkVCWWlKOHdDMmVqOXoyeHpsbGVTTnR6Z2tq?=
 =?utf-8?B?YmtUQ1E2NkhzUERmbk1JNnlNaS9TSHpqN0JFWWtmMm92Yk1uZlYrbnRsTSt2?=
 =?utf-8?B?ZWVtYXdTck0rdTV0VHloUjYyTUNzblloNlBYM2JNL3duVEowS0RZZ0xiUTFF?=
 =?utf-8?B?L1ZrL3JNb255OW1Na3cxczhrSVdxRFNuVkNETjAveFFRY3VQbFo1NVMyL0Rz?=
 =?utf-8?B?dHZuelZSdGxrVlN0dWtFcWJEUllFQUFQME9nMXFqZUVUUDk4M2xORGNzZjZ1?=
 =?utf-8?B?RVRWVGI4U2Q5SXlGTm1GVzFGQXdyWUhoSFprdjNGRGRjRU5wRnJTU3AwYWQy?=
 =?utf-8?B?MXl1ZXExb3hsdlgwR2E5aHM0eWYvamtBL3Bsa2c4clFkNkx3d3RWVDRsYzA2?=
 =?utf-8?B?eWVCYlg1eG12U1I5dCtCTlNaazBkQkxydEVhSWduTS85N2pJNVF2cm9sb3Fy?=
 =?utf-8?B?V3puOXBzajVkcVM1TUNIZUxJOElqSXhEdWpKS044eUp3RXlKMlRYRnVvUnI3?=
 =?utf-8?B?Wi9uYmN2d2FMVFhXb1JKQ0pHc05ZcFcreHZpRFJJZGdJdGZSUGViS04wRFNx?=
 =?utf-8?B?bHk2b0xEak4vMHVHbzdPOWxleHFhV014eFV1VjBKNlJnMnFaUHZkVWtxNTVT?=
 =?utf-8?B?cFE3bTRBVE4zTmRhVHk1N09Wa05YeVFON0IrTVJLVU83azBzSjc3emwzWVNF?=
 =?utf-8?B?VlZDWnF2N1VwNWhPVXFNc01nZ3d5clZzOEQzbDdFVWRiSzVyOWRPU20yWnRG?=
 =?utf-8?B?ckRVS3kxNDhLVnluaG90VHBpV1hiQ2M3U25lbXh4alVNaW9jVkMvQkxEbmQw?=
 =?utf-8?B?OVFZR2JOQm1mUCtyRmV2TWRCaXI2SHhaQWE4SG9pYjR0MXllZytHUWhMc0VW?=
 =?utf-8?B?cWF4M1ZLWHdDWUErVTgrbkF1b25VN3d0eWIySklRL05RMitGR3dmVjRSWHRY?=
 =?utf-8?B?NkJyNk9Sc1BoZzZSbW5rNm1xZU5rRVBrVVA5bUtkV0xFK3lwd2o4Zlg5dEpK?=
 =?utf-8?B?OHRDUzgzNDV4a01iTjZKZ3dqMjRWV0t0QWhJc1ZPTzdBL2VJR1NzNU9ldEdB?=
 =?utf-8?B?OWpPSCtkWHNCdDRSbFdHWE9DMnZ6QU1EL0dvYjRiSjVvNlBRR2xWRG5JTndO?=
 =?utf-8?B?RFhudFdqMWh6VmQwR3Fod1EvbGo4MVYvQUhveTkxcy95UXMvMUhvOU9lWmpZ?=
 =?utf-8?B?RWpldk9jUitCaHJJekkwZWxwcEpNbzNwak5CSi90dktkYnYzQTcrNjNVSkxr?=
 =?utf-8?B?dDQwNXR0cUR1N3ArcVVzckwzbVd1aHZ5Ny9BUHh4WXd3UnFFMUVGQ0VaZVFS?=
 =?utf-8?Q?4uV9Q6+lLBrU1jRVdH7NVvG4MVpXo9SLVW0j6?=
X-Exchange-RoutingPolicyChecked: YU2pSEEd3OsbiXQyBXPmYP4kxUjFMy8KWsQtVeun53xA9WNHsl3G1RYC9atH27ly0F095msnGxT5vKf4I7e4/ReRnH7femrB0p9Ghk0rMYx4bgkWl6/SrotWc+2yp3HNNXux0g9nzmk5JIHKHlXvx3tXNQpVKT+30w8ae5mNv0ffqq0BeWSA6DAMmTtOtDEqirzVLnb3LOz2j7uugGe0TcMM9m1yQVSTO+l4gyGGbUP814Zg+gXvlNMilVZjiIXNm8HEpoQL5pJFmJ9IQe2rLVJSIZz6523vkXBtLZkqUxvDReg5psNJd+gXDUWX88BjDRoDA6Z/wbqBmrR7YWqYbQ==
X-MS-Exchange-CrossTenant-Network-Message-Id: 49dace5f-b86c-4768-75ec-08de9fb2b9f0
X-MS-Exchange-CrossTenant-AuthSource: SJ1PR11MB6129.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Apr 2026 14:31:50.9616 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: mF2sJT9S+Mf2qg3cv3UfvU3W7GPCBMcfKjqqktHb/6WAu8Z/YzSnoAs5Ts2Ql+XNkejlhiclGgey5/ToUYNv93KL7sU1bC1bxffIEJRfXm4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS7PR11MB7833
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
X-Spamd-Result: default: False [-0.31 / 15.00];
	ARC_REJECT(1.00)[signature check failed: fail, {[1] = sig:microsoft.com:reject}];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_EQ_ADDR_SOME(0.00)[];
	DKIM_TRACE(0.00)[intel.com:+];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	FROM_NEQ_ENVFROM(0.00)[chaitanya.kumar.borah@intel.com,intel-gfx-bounces@lists.freedesktop.org];
	FROM_HAS_DN(0.00)[];
	TAGGED_RCPT(0.00)[intel-gfx];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 8073F43C136
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Hello Peter,

On 4/20/2026 6:33 PM, Peter Zijlstra wrote:
> On Mon, Mar 30, 2026 at 09:50:37PM +0200, Peter Zijlstra wrote:
>> On Mon, Mar 30, 2026 at 01:56:33PM +0530, Borah, Chaitanya Kumar wrote:
>>>> diff --git a/kernel/locking/ww_mutex.h b/kernel/locking/ww_mutex.h
>>>> index b1834ab7e782..bb8b410779d4 100644
>>>> --- a/kernel/locking/ww_mutex.h
>>>> +++ b/kernel/locking/ww_mutex.h
>>>> @@ -42,7 +42,7 @@ __ww_waiter_last(struct mutex *lock)
>>>>    	struct mutex_waiter *w = lock->first_waiter;
>>>>    	if (w)
>>>> -		w = list_prev_entry(w, list);
>>>> +		w = __ww_waiter_prev(lock, w);
>>>>    	return w;
>>>>    }
>>> Thank you for the response, Peter. Unfortunately, the issue is still seen
>>> with this change.
>>
>> Bah, indeed. Looking at this after the weekend I see that it's actually
>> wrong.
>>
>> But I haven't yet had a new idea. I don't suppose there is a relatively
>> easy way to reproduce this issue outside of your CI robot?
>>
>> My current working thesis is that since this is graphics, this is
>> ww_mutex related. I'll go over this code once more...
> 
> Since you've not provided a reproducer, can I ask you to try the below?
> 
> ---
> diff --git a/kernel/locking/mutex.c b/kernel/locking/mutex.c
> index 186b463fe326..a93e57fc53b1 100644
> --- a/kernel/locking/mutex.c
> +++ b/kernel/locking/mutex.c
> @@ -229,10 +229,8 @@ __mutex_remove_waiter(struct mutex *lock, struct mutex_waiter *waiter)
>   		__mutex_clear_flag(lock, MUTEX_FLAGS);
>   		lock->first_waiter = NULL;
>   	} else {
> -		if (lock->first_waiter == waiter) {
> -			lock->first_waiter = list_first_entry(&waiter->list,
> -							      struct mutex_waiter, list);
> -		}
> +		if (lock->first_waiter == waiter)
> +			lock->first_waiter = list_next_entry(waiter, list);
>   		list_del(&waiter->list);
>   	}
>   
> diff --git a/kernel/locking/ww_mutex.h b/kernel/locking/ww_mutex.h
> index 016f0db892a5..875b303511b3 100644
> --- a/kernel/locking/ww_mutex.h
> +++ b/kernel/locking/ww_mutex.h
> @@ -6,6 +6,32 @@
>   #define MUTEX_WAITER	mutex_waiter
>   #define WAIT_LOCK	wait_lock
>   
> +/*
> + *                +-------+
> + *                |   3   | <+
> + *                +-------+  |
> + *                    ^      |
> + *                    |      |
> + *                    v      |
> + *  +-------+     +-------+  |
> + *  | first | --> |   1   |  |
> + *  +-------+     +-------+  |
> + *                    ^      |
> + *                    |      |
> + *                    v      |
> + *                +-------+  |
> + *                |   2   | <+
> + *                +-------+
> + */
> +
> +/*
> + * Specifically:
> + *
> + *   for (cur = __ww_waiter_first(); cur; cur = __ww_waiter_next())
> + *     ...
> + *
> + * should iterate like: 1 2 3
> + */
>   static inline struct mutex_waiter *
>   __ww_waiter_first(struct mutex *lock)
>   	__must_hold(&lock->wait_lock)
> @@ -18,23 +44,21 @@ __ww_waiter_next(struct mutex *lock, struct mutex_waiter *w)
>   	__must_hold(&lock->wait_lock)
>   {
>   	w = list_next_entry(w, list);
> -	if (lock->first_waiter == w)
> -		return NULL;
> -
> -	return w;
> -}
> -
> -static inline struct mutex_waiter *
> -__ww_waiter_prev(struct mutex *lock, struct mutex_waiter *w)
> -	__must_hold(&lock->wait_lock)
> -{
> -	w = list_prev_entry(w, list);
> -	if (lock->first_waiter == w)
> +	/* We've already seen first, terminate */
> +	if (w == __ww_waiter_first(lock))
>   		return NULL;
>   
>   	return w;
>   }
>   
> +/*
> + * Specifically:
> + *
> + *   for (cur = __ww_waiter_last(); cur; cur = __ww_waiter_prev())
> + *     ...
> + *
> + * should iterate like: 3 2 1
> + */
>   static inline struct mutex_waiter *
>   __ww_waiter_last(struct mutex *lock)
>   	__must_hold(&lock->wait_lock)
> @@ -46,6 +70,18 @@ __ww_waiter_last(struct mutex *lock)
>   	return w;
>   }
>   
> +static inline struct mutex_waiter *
> +__ww_waiter_prev(struct mutex *lock, struct mutex_waiter *w)
> +	__must_hold(&lock->wait_lock)
> +{
> +	w = list_prev_entry(w, list);
> +	/* We've already seen last, terminate */
> +	if (w == __ww_waiter_last(lock))
> +		return NULL;
> +
> +	return w;
> +}
> +
>   static inline void
>   __ww_waiter_add(struct mutex *lock, struct mutex_waiter *waiter, struct mutex_waiter *pos)
>   	__must_hold(&lock->wait_lock)

Thank you for the patch.
This seems to fix the issue on our CI machine. The diff turned out to be 
slightly different, pasting it here just in case.

diff --git a/kernel/locking/mutex.c b/kernel/locking/mutex.c
index 186b463fe326..a93e57fc53b1 100644
--- a/kernel/locking/mutex.c
+++ b/kernel/locking/mutex.c
@@ -229,10 +229,8 @@ __mutex_remove_waiter(struct mutex *lock, struct 
mutex_waiter *waiter)
                 __mutex_clear_flag(lock, MUTEX_FLAGS);
                 lock->first_waiter = NULL;
         } else {
-               if (lock->first_waiter == waiter) {
-                       lock->first_waiter = list_first_entry(&waiter->list,
-                                                             struct 
mutex_waiter, list);
-               }
+               if (lock->first_waiter == waiter)
+                       lock->first_waiter = list_next_entry(waiter, list);
                 list_del(&waiter->list);
         }

diff --git a/kernel/locking/ww_mutex.h b/kernel/locking/ww_mutex.h
index 016f0db892a5..875b303511b3 100644
--- a/kernel/locking/ww_mutex.h
+++ b/kernel/locking/ww_mutex.h
@@ -6,6 +6,32 @@
#define MUTEX_WAITER   mutex_waiter
#define WAIT_LOCK      wait_lock

+/*
+ *                +-------+
+ *                |   3   | <+
+ *                +-------+  |
+ *                    ^      |
+ *                    |      |
+ *                    v      |
+ *  +-------+     +-------+  |
+ *  | first | --> |   1   |  |
+ *  +-------+     +-------+  |
+ *                    ^      |
+ *                    |      |
+ *                    v      |
+ *                +-------+  |
+ *                |   2   | <+
+ *                +-------+
+ */
+
+/*
+ * Specifically:
+ *
+ *   for (cur = __ww_waiter_first(); cur; cur = __ww_waiter_next())
+ *     ...
+ *
+ * should iterate like: 1 2 3
+ */
static inline struct mutex_waiter *
__ww_waiter_first(struct mutex *lock)
         __must_hold(&lock->wait_lock)
@@ -18,31 +44,41 @@ __ww_waiter_next(struct mutex *lock, struct 
mutex_waiter *w)
         __must_hold(&lock->wait_lock)
{
         w = list_next_entry(w, list);
-       if (lock->first_waiter == w)
+       /* We've already seen first, terminate */
+       if (w == __ww_waiter_first(lock))
                 return NULL;

         return w;
}

+/*
+ * Specifically:
+ *
+ *   for (cur = __ww_waiter_last(); cur; cur = __ww_waiter_prev())
+ *     ...
+ *
+ * should iterate like: 3 2 1
+ */
static inline struct mutex_waiter *
-__ww_waiter_prev(struct mutex *lock, struct mutex_waiter *w)
+__ww_waiter_last(struct mutex *lock)
         __must_hold(&lock->wait_lock)
{
-       w = list_prev_entry(w, list);
-       if (lock->first_waiter == w)
-               return NULL;
+       struct mutex_waiter *w = lock->first_waiter;

+       if (w)
+               w = list_prev_entry(w, list);
         return w;
}

static inline struct mutex_waiter *
-__ww_waiter_last(struct mutex *lock)
+__ww_waiter_prev(struct mutex *lock, struct mutex_waiter *w)
         __must_hold(&lock->wait_lock)
{
-       struct mutex_waiter *w = lock->first_waiter;
+       w = list_prev_entry(w, list);
+       /* We've already seen last, terminate */
+       if (w == __ww_waiter_last(lock))
+               return NULL;

-       if (w)
-               w = list_prev_entry(w, list);
         return w;
}

==
Chaitanya


