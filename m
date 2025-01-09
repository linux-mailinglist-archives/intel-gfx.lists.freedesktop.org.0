Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EB87A0804C
	for <lists+intel-gfx@lfdr.de>; Thu,  9 Jan 2025 19:59:22 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D008710E381;
	Thu,  9 Jan 2025 18:59:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="IhvyFq8i";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9FFF610E381
 for <intel-gfx@lists.freedesktop.org>; Thu,  9 Jan 2025 18:59:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1736449158; x=1767985158;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=JByEyRkIrjEZwGU8Ki84kVD3yqU71pkeno441FOxsjE=;
 b=IhvyFq8iTbnLxXYvPP3TlUV8ESTIGDUmITZvXX5hDXLlFQmd7HdQ8tYj
 bJ4eM5u2fy53yPymxvMq//+ArSs4gbTK2I9P8ORhyLKkSvQs8uFVyqW72
 FVraTU0sylBXJMgmWSPrNS+vb90/yRdsUipjvKsW1fWBQUGu/ZNS/I9Cd
 E8/76YovLMjAbQoNaCc2NRE9p5DWOWxJcEHwMdRptye0TKTypkpcv5gSU
 qXmEPmSC5gwhmLMw2lmOi4ru5tTSP4/UvLmptLvGNwXNY1Pr0+gqMXJQ3
 WQZAC0Ggn4NUdlTn85pIKnsxo3QSkJEhln8zKTPTWwg3uZ6be6lQHyW9K g==;
X-CSE-ConnectionGUID: AZQBKYXiSpqe7QLnHkok3w==
X-CSE-MsgGUID: 5B6brLG4RVSd4zE/VaEh3g==
X-IronPort-AV: E=McAfee;i="6700,10204,11310"; a="36013294"
X-IronPort-AV: E=Sophos;i="6.12,302,1728975600"; d="scan'208";a="36013294"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2025 10:59:08 -0800
X-CSE-ConnectionGUID: uZjUyFPwTdOw8p1oTygLiw==
X-CSE-MsgGUID: z0ubYhwZS6O1vkGK+U5jvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="140806806"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa001.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 09 Jan 2025 10:59:09 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Thu, 9 Jan 2025 10:59:08 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Thu, 9 Jan 2025 10:59:08 -0800
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.169)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Thu, 9 Jan 2025 10:59:07 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=QwlHO5Afdmom5R0egmY5xR5U2mRTEDbdW2uKpSeXkc4UkEgKyn0x8BpksA+8kBVZVw9EE6iNfeCYMObGm4P9XGisbdCzn6H5fTBnmj1fLbAthCjp31aYZejg3cEOgfIQpuw+keMv7I+dW9cdBoE+z22F9zp6mPKM9XS+xjlJQ1VQONrprysxBbCodrdr4zkTL2IFyXHKGffOhq7Gq81aBNE4UvZY3fkrO4wg568dSn2HKYM0jhzgb0Y1E1CJ8lpek/gLuwk8K2FnKK381PF+oeJvtlyVu/eUPqOgY5086pFduqgZb3q3oXX1UKhS0JfHVoVyPOkD1dfNta+7RMYAoA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=sxaaFsgME2DclzR01JztCLDE66GpsaOvfFB51ZT/jQI=;
 b=ggVDczizubigN6nbYv/RqJS4Gjkx1b8g86bv3q26d8rSYPYSsZchSLMZeSHe+mrOommXmhLci5EoQEuKZrwwHLglngKk1sFKb3CaMozrZi7bZQ11dRogMl8IMnvt3zv/CxqL4vHg/QAO25ly5WqTJzIXhLVyOIaEiK0T12FJ7FA+0YqrfYYdJfeovmorY5illPENT76z6l70cYf/WdX9hlvmuxi0+Rgh/WKbd1tsKc605yY9eCcK0okc8i3j+XePKRekDgYNaKQNbh4zC38X97ro7sZcaCK5IhgN+OkKnvzQ9MAr4kZIf48AdObIfRbCpwTm2uOQNGlpgBBhQKzQIg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB7757.namprd11.prod.outlook.com (2603:10b6:8:103::22)
 by PH7PR11MB6673.namprd11.prod.outlook.com (2603:10b6:510:1ab::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8335.10; Thu, 9 Jan
 2025 18:59:05 +0000
Received: from DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1]) by DM4PR11MB7757.namprd11.prod.outlook.com
 ([fe80::60c9:10e5:60f0:13a1%4]) with mapi id 15.20.8335.011; Thu, 9 Jan 2025
 18:59:05 +0000
Message-ID: <265c3f1d-ae44-428c-bd41-d0ff51878285@intel.com>
Date: Thu, 9 Jan 2025 10:59:02 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1] drm/i915/selftest: Change throttle criteria for rps
To: Raag Jadav <raag.jadav@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: <rodrigo.vivi@intel.com>, <andi.shyti@linux.intel.com>,
 <anshuman.gupta@intel.com>
References: <20250102110618.174415-1-raag.jadav@intel.com>
Content-Language: en-US
From: "Belgaumkar, Vinay" <vinay.belgaumkar@intel.com>
In-Reply-To: <20250102110618.174415-1-raag.jadav@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ0P220CA0006.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:41b::29) To DM4PR11MB7757.namprd11.prod.outlook.com
 (2603:10b6:8:103::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB7757:EE_|PH7PR11MB6673:EE_
X-MS-Office365-Filtering-Correlation-Id: 4c11b343-17a6-4657-a648-08dd30dfb038
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VVZjQ2wxYklac2xVbkFYN1NSRHlkei80QjU0SHQ1dWFrTW41Rk15TE5FaEp1?=
 =?utf-8?B?eEZzNWxVWTZFaTNDbWx5eWhpdGVGODRreGlwVElRUFJPWjlOUEpJcUYxTDcz?=
 =?utf-8?B?TjFmMEZPZjJOcEMxQ1lWSmlWcGYvM2YrZ2twcGtyRU93NnErWFo0VSs2Qjg5?=
 =?utf-8?B?ZHVDMy9xUytrejFaWGk2N01pWUc2cS9CeUxNNUFJV05JWHN4dmNrdVJSOEZ3?=
 =?utf-8?B?R09seThrVTUyTmh3UnhiOVlVTDZOVmZyb2FBOC9ZMUt1UW0zU1dJN09ZdXF6?=
 =?utf-8?B?RXhlcmZ0VEV3bGFuOGpNeVo3SDJURWxwVHpqNk1UWElUbXJNblpQSjcxZ1V5?=
 =?utf-8?B?ZEtoK3o0OG1HWUFOOHVWVGpvU29ETTNaWUJ3THRHWUR2VXR6T1dUNE4vUTFj?=
 =?utf-8?B?b1pLVjI1d3dzVzU2TzE1N0I5Z0RjY3NnQWtJdW52V2VXSzlCWEdFeTB3WllT?=
 =?utf-8?B?Vk8wcTk4ZFg0Qk1HMjNtMlMzNG0vcUcvVmluMi90VkUwQlhERVFTTFJLTlVz?=
 =?utf-8?B?eFNmeHN6d3ZURmZzdk14NmFzeS9meTRrTnNmc2FuZkF2Y2NrajlRY0NiZjU0?=
 =?utf-8?B?REdPVWRsbkptS0hUajBCeVdyUzJiMkU1dmQ4bTNZOElzcFdNRS9GV1I2VUt1?=
 =?utf-8?B?bEhVL09XSXNDT01xOXI4S3BXeXQ5R0w1dVFxSlY4aXZ3ZDdaWFdXSEdhUUE2?=
 =?utf-8?B?L2drclZLNCtlZlNFL0R5S2IrV3NDZmdmeWFBVlZNZm1HU29jV3BwbEdvR0Js?=
 =?utf-8?B?MUtvbVp5cW1ZZjZTaTNUWFB4ZFpBemVraTYrcklyT1pzM29ibjhTNlVSMWJp?=
 =?utf-8?B?cTk2c00xSGl0Q004YUNyaDBlelhnOXhTcE12TG9Oa3BsZjNSRWh4dUY1cDJ6?=
 =?utf-8?B?MnM3bG5RSUFsWEVnV204MXhaeHJyZlVodnVvWndGelNodFpOS1pEcTRjVUJM?=
 =?utf-8?B?b08xd1NsUENnMVZzUE43M3V2aEhnbTRQMWpwUXhJQ2FTeEFqQ1ZRODc3OE1E?=
 =?utf-8?B?NWZtVXpKRDQzMnBQTVlmQnNtVW1ZdS9VeHZsYlgrUnlCd3RsdXpHVWw4OWxq?=
 =?utf-8?B?TUd2Mlh2N3JWdjZLMjhTakxSWnRsd2lKUURvN1pwK21xRnJ5RzUrVXhUOWdO?=
 =?utf-8?B?SVYyalk0bFZwY0xNNGpFRTNxSzVoRE0vQzZObzhoMVM1UHQybXFWOUVmdzJS?=
 =?utf-8?B?U09RSm9xSzBoRGlibkpCaHFrRE1hV1hvSlVIR3FlYkc4UnZWeDlnN0FSMXAr?=
 =?utf-8?B?RFlWRElpOUhUMHVoR2xNcVpoZjlSOU1LUElSWVcrZ2dWQlVnQW4zVXVTdGNx?=
 =?utf-8?B?SnFxL3BYUVJ4cmp3RFc3Mk1sdnZWOGNsRURabTM5K294d25nQXJjVDZ3NUhz?=
 =?utf-8?B?VTZscWFFbjNtSTBFSVVFRExkYnMrRUVJdjRWYWNjMU1tVTFZOVFDc2ZENG85?=
 =?utf-8?B?eTEzU3JaRjFCUTU0bnpCemVCMzdYdzYyRTE0YnRxaWJNQVJiWldOU0Z1ZkFD?=
 =?utf-8?B?VGtCN3c2aXpkd1FRRmtWZDQ0ME0wdUlLVG1qU0tQcGp4SHpLd3N1ZDlkS283?=
 =?utf-8?B?OEFXbENRanN5UVpqRGd2SEc1eXlVUUZ3OXc2bjY4Sk5nNE1MeGovZ3F5anRD?=
 =?utf-8?B?bGFOVU1oWitUa0pVTEhNWjdya3RqRXVsUW1rNGF6MjdxYi91Q250Q0dTRHRD?=
 =?utf-8?B?UzZPYzNySFNoSjVHUVhRd0QwZ0tJZmxTR3Iva2FFMSsrZzNEZ1VmVyszdzND?=
 =?utf-8?B?Z0dMK1dlQzd3bUVmRkNoMmtGMm1ONWNsSkEzMUpFY1hoSEt6YkdVK0lneVV0?=
 =?utf-8?B?c1NjR3V6Z1p5WENFNWNzYnNXVHpPMXJteGRweUlGVDJwMVFMRzA5V2RkbUpv?=
 =?utf-8?Q?ypa9K8ckP9Q+b?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB7757.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?R01YN2VqalRMRlZRNXdPUmJ2Mmw5YnQ1Ti9CTmdYNEVhaUxpWENqemFtMU1i?=
 =?utf-8?B?KzdYT084ZEcvd1NoWXJFL01yY2xMcGtsUElFd0doK3lsdWxRdkVaREM1aDM5?=
 =?utf-8?B?Lzc4eEhVR0tnR3BDb0RURDJpV1k4SGNOVWIrbEFjR0dnK2ZXRVoxZ2RFMzdw?=
 =?utf-8?B?WmMvVmE1a2xtRWYxclBrWm83Rm9HVG9rR1MwYXBwUnpWTUw0WVZRekJMNHZN?=
 =?utf-8?B?OHdYSFZjdTZINEoxMmh4Q1AzTWhBTzFBWEpLVkU1WU9lUG5vdnVIekNuM3Ur?=
 =?utf-8?B?V0tJak1OTE1JS0tjK0E2Y2tzYXhOd0pKRXlLTFV3MzVPdENMTjAzZDRiR2ZU?=
 =?utf-8?B?MHZHdnM4SmpMY21MQUhXamh3ZHBDZTZjbnFXeFlqRWR1NW5uZGdIdVZHUE01?=
 =?utf-8?B?Q0FKYnkxQkVjUE9HYnFCR0g2b3BZbG5ERHlzbUcwUXRKZ3F3a3p4YzVGM1VT?=
 =?utf-8?B?bWFLY2Q2b2VKbVA3dG1tS3NkbE0xWFFBWE8xZmNXajJ0c1VBV1N1dXpWVHE0?=
 =?utf-8?B?V3NJNmIybVd1WGM0L0ZmcTYyelVoMVo1UmkwekdReTErTm5KbDdJdXdiM1JT?=
 =?utf-8?B?NzFrRmJLVnE2dWFHbFI1QWdXcnN0bzNSc3E2UU1seS8yQUVtQVJKemFDbFh3?=
 =?utf-8?B?Q1pPM0RLeDd1dlNHT3pkNWduQVliSSt4Y05hOW05bjdHUFdsUEZzeDl4VlI2?=
 =?utf-8?B?VVpnZWpWWTBnNmJqTSt3K1ZjVVNKVUZkcjY1djRXaHVZNkIxRVJJZW5NZWd3?=
 =?utf-8?B?N2p2VjJvd3RWQk0xNVIvS29CMFcxOGRCMHpXYm9HaDN0WDFVcWVFVlNobmpL?=
 =?utf-8?B?Zkl0QmgrZ1JhRGxTRFZjb1VvNDVGTkRLVmJJa1NzSU96WkRMNnI2S05mY0hs?=
 =?utf-8?B?dkg3MlRyNCt4YWRMT3ByVm1yT3IvSnQvVFZHdDdUSmVTZHpkR1dDcGRjQy9B?=
 =?utf-8?B?OVlWWm1XVXY1Z3AyQmZ4dWtlWWRldllLZCtFTlJlZWxQQnpkU0pObXdna3N6?=
 =?utf-8?B?ckwzWlBSczNzWkdtaG1yWHJvdUlXdUtZUGZFb3RTbmxUeWsydnpySHBhZ0N4?=
 =?utf-8?B?VEdORFJSNWdCNEtEMXVnRmdMelJhOVpDVEFPTHdXZkNGR1A2VUd1N1ZkOS82?=
 =?utf-8?B?aFdodkpSQU9KUjY0ZXlyejZyb3MvNEN5cDd1UTBndGdTZ0NkOW1YN01MUmZ1?=
 =?utf-8?B?VHRVa25OL1owbXRRR3JGS2pCK1dXUlhBUGFpeWxJQXRSbnFrN2l4NU9oWUNo?=
 =?utf-8?B?QkF3di9nVjk5UW1VUGxsRHNKdHBUYkZRSFF0TjI0QnRyV0E1VkYwd3ZDQi8z?=
 =?utf-8?B?TldIVGpsTnJRK3diR3lyVkt5VkZ3bWJoUVNEbGMvcG1lK3UwY0dNWGhkRFhL?=
 =?utf-8?B?VWJ5azlaTkcxTmpmSzRVdEk1WnBoZW9OaWtBdTdCOGJhZXdDdDB0WmRVVTBO?=
 =?utf-8?B?bjdYeFRLdFdvWktNdHo1MFp2SFNTWWVSWW9PWnNRYzZrVWF5YWhYdFhzYlJ4?=
 =?utf-8?B?OFZDbERqRlZ4dlNTWHFzU3lCdDlSeW9Vckt2WGNIdjBHM2w1dVF0N2JxZ1M1?=
 =?utf-8?B?eDh3ZVpzdUNsNVFHZ2RId1Fnc2VqV09JNis0cmVIQ0ducE9aZ2ZHTkl2ZDUz?=
 =?utf-8?B?Ly93QnZRZ1dJd1NHM0ZSeUVNQXByaW8zaXY2YTVld2s2SHVDMGhLY3czN0JX?=
 =?utf-8?B?RlQ0MkxwR2pCVFR0SHpzdFplWnEvWFI4bTA1bm44TkpPNFA1S094OEVDSVh3?=
 =?utf-8?B?RTc5MURud3IrcVd5Wm53MHdjajZiTW55WFJRcmdGcldiOE9ZUWZKM2J4dHVh?=
 =?utf-8?B?WjFYT2NRNnNYOERrSEZITVNDQzJnZUVSandsRzNVc0NtenpGQ04xd0pyRUpu?=
 =?utf-8?B?LzUySEo4U21jY3lLbk1IRElQRGRmS0lXMGlMaWpnZ1JETTlPakhmdHg3ZTdW?=
 =?utf-8?B?UnA5dnY3QzRBeStaNDRWeWlPcHNtOHNsZWR5QjEwZkY3K0tIY253NEp3UjBO?=
 =?utf-8?B?RmN3TGJmazZkVmhKMFFQa0p6V2RQbCs4b0htOUdWQzZzcWlTWkNzc1JNR0t6?=
 =?utf-8?B?U2ZhYnFJMEFBZHF6NTRrOWJhVitzV0MyMFd2S0xIWFozMEdQUmVsYjlpMXJv?=
 =?utf-8?B?MGdFZlV4NWRaUFVUNmVvUGpMT01FMWgxQjFIVkJwSWR0aVVEdkV2M3hqVXdL?=
 =?utf-8?B?aWc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4c11b343-17a6-4657-a648-08dd30dfb038
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB7757.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 09 Jan 2025 18:59:05.0612 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: tBnO7OWesnzaoArb99pMVnwLI2B0hAVGNumf1ppW8B593doyPxeeladLNQxiYwAI/JhIqJNv2zSpTkKoqCplrFC0XH2L8a5BKhEzqCkZ2vc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH7PR11MB6673
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


On 1/2/2025 3:06 AM, Raag Jadav wrote:
> Current live_rps_control() implementation errors out on throttling.
> This was done with the assumption that throttling to minimum frequency
> is a catastrophic failure, which is incorrect. Throttling can happen
> due to variety of reasons and often times out of our control. Also,
> the resulting frequency can be at any given point below the maximum
> allowed. Change throttle criteria to reflect this logic and drop the
> error, as it doesn't necessarily mean selftest failure.

LGTM, CI systems are especially susceptible to thermal issues.

Reviewed-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>

>
> Signed-off-by: Raag Jadav <raag.jadav@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/selftest_rps.c | 11 ++++++-----
>   1 file changed, 6 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index dcef8d498919..7aac90c1679e 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -477,12 +477,13 @@ int live_rps_control(void *arg)
>   			limit, intel_gpu_freq(rps, limit),
>   			min, max, ktime_to_ns(min_dt), ktime_to_ns(max_dt));
>   
> -		if (limit == rps->min_freq) {
> -			pr_err("%s: GPU throttled to minimum!\n",
> -			       engine->name);
> +		if (limit != rps->max_freq) {
> +			u32 throttle = intel_uncore_read(gt->uncore,
> +							 intel_gt_perf_limit_reasons_reg(gt));
> +
> +			pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> +				engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
>   			show_pstate_limits(rps);
> -			err = -ENODEV;
> -			break;
>   		}
>   
>   		if (igt_flush_test(gt->i915)) {
