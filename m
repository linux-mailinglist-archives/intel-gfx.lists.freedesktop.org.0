Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C74BDA9800B
	for <lists+intel-gfx@lfdr.de>; Wed, 23 Apr 2025 09:06:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4043610E40A;
	Wed, 23 Apr 2025 07:06:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ffCgwkUz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A7C8510E401;
 Wed, 23 Apr 2025 07:06:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745391966; x=1776927966;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ViwzhqzDViKfI5L5AGLM8rjNci0JuBFpQyDwlvzBSkU=;
 b=ffCgwkUzZ13AXai/7MaAyW3jj5+UePWts6duZcIjS+Ej4ujlyX+2aQjA
 QxfNV3/NRyRZV389YbVRA0FUWjUrb2NESNx2WWOKpor4vEvmphPSFopsk
 fp1tz6Q0D27V0cDW57pgxIP1Oh20xjR1nEgCGqatx97GfDWVLbp+LLeSL
 ynGGuoV44hjL6qGSjP5xlvAniT+yB7B6k5Vy/mKNmh0Ue087BVxELhpFg
 vMSHbr5P1YV5CF08K0QRqYpK5Xpc/GCkkGOHMjbj2nUvXGW1cX8Y26qh0
 jvKvi/WYwFsEkIQ1XX/wL7M2YGk4lYT5lQIAG4yidW4zE1QiKS7TRfycz w==;
X-CSE-ConnectionGUID: X/avyt4+QjOZ2BuyXvIPcQ==
X-CSE-MsgGUID: b1RitF7qR8a/j74yb3TpjQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11411"; a="47101893"
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="47101893"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:06:05 -0700
X-CSE-ConnectionGUID: 9brpRLs+Q+q1uuDJVjesWQ==
X-CSE-MsgGUID: LuFvm6YyTWqjKk5hLqDadQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,233,1739865600"; d="scan'208";a="163284184"
Received: from orsmsx901.amr.corp.intel.com ([10.22.229.23])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2025 00:06:05 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Wed, 23 Apr 2025 00:06:04 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Wed, 23 Apr 2025 00:06:04 -0700
Received: from NAM11-BN8-obe.outbound.protection.outlook.com (104.47.58.172)
 by edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 23 Apr 2025 00:06:03 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=oR2QeAthGjqd4vRFYxxqatWc8Up70dXkmPi/FkskfwW5ZPYRYgRpGB0WWU6mGNlbD5O+VmOaip4SZJwApP10eycspzmZObSScCBKYKewsLyKPz/Rvnnbv5WF1KCCaXHjJFy8v2VE6V8+7YMhV9LdzlmGsXBv5MloZCXawOYHsheP9D/N8aTrBRWZgVQKmzsHaGdigFNgj5MnTi7ATUY6ljT8zdyAxq47RpRF/rc+MOy98rbTbSDYF+ig6nzB9qTsXJ2hO/dA/GYYAhP5MUFd1EI8HEcyilUrHr+JhCUQoCbRc1JMW3YgKZKvbu1k0npdoWRFHI1iKtOu2byxqE4CJg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=hFvPvvv4BprfL21ZZHb/3qH7O+pnfgIXlWRcVRwtXj8=;
 b=b9VUfQhzeOl0EnqlpgnJIGXcpJzYhbEpDZGSw56Fd/CfbLw3jGR8VaqEaqfsROWYd1zcvP9XFNOg+hvklsf6EPaN8Ju0YsDaAm6kjkYN1Z5MszehXCKhgjh5nfR6l8rjUuRFJnal5GDTCZRmWbYBDqy5YAL3cFVYiiuo3sf0J/lyNgSHVStjkyvSmWDPpqO/60J2CaQqJ2fIO4uExUoNF0lWQXiIcoNBETqa3uj0CQKGLOgnP42i4JYH1JmgM1y/8WM5Pd0heIpE6qT3dmYLsnmVvhuLq9ugagXLtOPEqLJxiQqZYDd/v5bt4GSbfffpWMIbEjU8h6drcfpuaR6AFQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB8183.namprd11.prod.outlook.com (2603:10b6:8:161::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.35; Wed, 23 Apr
 2025 07:06:01 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8678.021; Wed, 23 Apr 2025
 07:06:01 +0000
Message-ID: <add9e1fb-7323-40c7-89dd-fb9a7817e6a7@intel.com>
Date: Wed, 23 Apr 2025 12:35:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 05/13] drm/i915/vrr: Add compute config for DC balance
 params
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>
References: <20250421154900.2095202-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250421154900.2095202-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20250421154900.2095202-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA0PR01CA0009.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:80::20) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB8183:EE_
X-MS-Office365-Filtering-Correlation-Id: f888e2be-0461-4f74-28f7-08dd82354df1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dlJmbWIyNmtEU3RqRk5oSFVXNStJL0k5c0E0aXBKbkpncllWRXA1S0YxZ3Ax?=
 =?utf-8?B?V012aUJNZGlmN0xlbHpVcW9BWjhTNUtLUmNXUDE0Z3Q3V0NXU3JUTXNuK29N?=
 =?utf-8?B?RzA0ZFFzYTVMUEl0UVBOQkVjQytkL3RycTh5V0xOdWl4SDJocmFZcnY3VU1w?=
 =?utf-8?B?Syt1V3FqamZDOWhNUEF2SitTQnM0VE9rKytoOGNvaCtRMGRwbjYzN3BrYmtX?=
 =?utf-8?B?dGFWZDZ3d1F6ZkRrRHdoT2NrNzhqTXBsZTIzbzJNZEd4ZjM4SStOQ1JtV1Jy?=
 =?utf-8?B?dlJxc3BEQ2ZodFdLRHArNUEyS20wdHorZXFNa2RTTHZHY3BZckxGaURqVWI0?=
 =?utf-8?B?cnMwbzFmSENsNU1WTnRMYVZRUXUrbmpGcWdqd1NzbWxTR1V6R0M3eVRHT2dM?=
 =?utf-8?B?TFFCcWM3U01IMWNzMWM2VkM0aWFNakhYSGViOUpjZ3d5TkI0VFh1MTNsNXgr?=
 =?utf-8?B?c1A5NDdkQ3FxN1Zrd090c3VYQXlWaXRaNVkxR25Xb3dkYXVkaENxZndsb2pi?=
 =?utf-8?B?ZEE1Mm9OUHBWNGZ4bGdpSmo5S2Y3bk94OWpnRzZBNWhqeURCdTJPWFJUWHI3?=
 =?utf-8?B?bVhhSC9MOHN0OWQzaUJxVkFsOWRMQVAvSUFhSFNYbG9yMUFJU3VickNDRU40?=
 =?utf-8?B?NXV0OHVPd01GVm9BbWhpZmVLNDJtN2hUZ0N2VmIyaGJNOGhOSmRIMS8ycDlp?=
 =?utf-8?B?bzVBc2ZtZWd5alpQMzNlUFI4dXo0UVl5bmYyNnFrL2dIQ05WWmhSRnpWQ24w?=
 =?utf-8?B?NjdsUjFuVElsK3B4QkpGWGsxWFFQQUQ2T3BxTnBsUjBWTUdPMEd5bUh0Situ?=
 =?utf-8?B?Y3hsTGlxdkhtRVkwL2sxVGR1bW9WN2N0UXJEUVVQRTVTeUtsVVJacHY0SDRL?=
 =?utf-8?B?QWJDSDdrdGFIR29uVnM1NXg2WkJqUUk2MEgwUmpSekd4RDRET1dZL1Q2MVNw?=
 =?utf-8?B?UksvOFQ3U0NyNlB5RncyYTJmb2hDVGp1bnlWcWM5SDEyMldHSnU4MVZNdFpT?=
 =?utf-8?B?MzJFU1FtSGVwSjdPVG9qSWpUTkpwV3dCR2N2TFFjQXdFWWUzRjF1c2xYQUNN?=
 =?utf-8?B?eWFPWFF5U2dhWXYxcmxTOXI5L1pKd1lodjhLaVdQL2FJSlRUZGRYVEcrY2Qw?=
 =?utf-8?B?WThQOTRKT2NUMTFZeHZORkpaZFY0K2drdVhPMS9mU2p3RXBIcnZJRnZGbUxp?=
 =?utf-8?B?WVRYaGxPN0lxVFBDcnppTHpmdGl4YXF3ZklUWGdkTVA0M1dBaGZwQTNLUlZY?=
 =?utf-8?B?K2NINTRKcmxObHBFcmtxS09iT2pUWXNPN0hxVExWVWlpM0lPU3FPeXdCT0NG?=
 =?utf-8?B?QUh4LzI2dFYwb3RUS2VmVUZqOVcwbmlvUkZPS3l2K3FmUzRCVW9xSkRFcjVN?=
 =?utf-8?B?YTUyK0dWbnRLdlFzN2xieWlwUG55QUFGNWVLSEZBSW85aGFHNTBUdEdnU2dh?=
 =?utf-8?B?S2pqa0QwRkxmSUZXUjZSRVlJclhNeHc2dk9VaGhqK0JWNGNZOEdiekdyS2lx?=
 =?utf-8?B?STV1VUtqWi9EaUtXczY1VjVpY3ZpZjY3VllYOThCSzhSYUhQNjB0aXkxNE81?=
 =?utf-8?B?bElVTnJIS3hpSVNuQ2tDT2Z0K09TWEh5d09UbVA3UmZTZ1o3eisybGZqZVF5?=
 =?utf-8?B?WDYwM0hmSnpkRSs5U09CSEpGdEVrTk9obDBSb25SMUtaN1JpUHFwYVB5Y1pR?=
 =?utf-8?B?UVc5NlQ0OHFWRUVlandIWElzNitwWEF0dUtqV3JpNXkwbWxianhMcm1Jc1Vw?=
 =?utf-8?B?TkNndm5udE1CMHYrWXZ5cHJUejk2K1htQWs1WldweUNxUG5PTXowQzhKWGhT?=
 =?utf-8?B?Y2srRC8xVHBzVVozV3UrZFhXOVhxdmJ4UzZob0lRZ2lLdENMNzFIS0dLeGtR?=
 =?utf-8?B?RWxPMHhkaHgzbjkvVEpmWGZic0lOVEtiSm5tWTJ0T3JzRk5leUhUdWFKU3Uv?=
 =?utf-8?Q?6NI1u7np4FE=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bE0rMlU2ekdNSGN4N1Y3S0RLWklFNU1hRjZBNVJxNkEzT2lyalFGdTVzUWRJ?=
 =?utf-8?B?N3BGemh3M2FZcnVyWktKT0s1U2FnclpJK1ZLa2xvL2Q3SWF2ekdyMTdvcHRZ?=
 =?utf-8?B?U0k0NUJWalBIQVJQdkx1MFowVGdCZnZ2U2hDV1Bqc0UxelhyV0pzUzZYR1RB?=
 =?utf-8?B?Sm1nWVZnYy9yc1hta0Uxem1HcWJuYnNQb0lwUnBZWVdDQ1I0ODFiUG5TY1I0?=
 =?utf-8?B?QTZOTys5di8waGVGRHdsZHBjMW0ycXJCUG5EK3cyUjJLSkh2Z1hkTGJQbGFK?=
 =?utf-8?B?elhUbWgwbFhuSVdhQko4dmN2MUNucHFMNlZOT2JZK0tTbXA0NXpEUHVoUWVW?=
 =?utf-8?B?Zlp0WlpPTWR4NUIvNFI4U3U0U0ZjS0RGdk5WczNqbGRwelRETFpkU0RsTzNC?=
 =?utf-8?B?T3VFZjBZa2Y0ektWZkV5UHllVEsyWTQ0eDliY0JSWWN6cWlZaDM0YnVVaWdo?=
 =?utf-8?B?NnJkNkYyQmZ6dDlSZ21yS0tWTkdHU3IyNDJ6M3gzMmxJb01sZTR6YldmMHI3?=
 =?utf-8?B?MTI3K2lVZ2llREJiN0dyb1BCeVE0MDJMOWlLdXdUQmZLMUgxNk0zRWwvYUNh?=
 =?utf-8?B?SHJuRVp4MysxNjR0NFpDMi9ScU56WldUSEhPTlBrWm5FczlkajJRZHpSb0ht?=
 =?utf-8?B?QUtBZzZjQmk1ay9GMEVvQlpnenZNMWh2SGRXNlpNQ0htZWY4RC8rZW1XWlRB?=
 =?utf-8?B?eDBqQndSVnorbG5LeEF6ZXNkSklJNnE2WjB1N1lMeHRIWmMrOGlZdzltMDJy?=
 =?utf-8?B?ekpLMWtBblhWVlhUc1JFeUxiS2RRTUhIMVFpNlNvbElXYmMva0xSY29BYXJo?=
 =?utf-8?B?ZEhCYjNUZzY2T2JScUxnZERFTEFFUkpHRGtuZmVHVWxERzkvVmlJeis1VnZy?=
 =?utf-8?B?MUk0eXMwSWluUDEyZVFMTTc2Yll1a2FaaFEzQVpTbEQ5Q3hmMW1id243ODFR?=
 =?utf-8?B?YmNvTDllMHp4eGhaMDBUZHdpMjB4V05SbzNEd28zYlFJOXRaMWJQYXhWZkY4?=
 =?utf-8?B?c21VVm5vcDNXbkc4R2VqYVhhb0JyeStSVUR0NnRiTFBiYlJZdUtzanJsR2Y3?=
 =?utf-8?B?bldKYm9KOGIzalhtTldySy9oN0trbXprNXg2RG1odnFOQ0Q5S3JVbTFCZ3dJ?=
 =?utf-8?B?WlZ2QVQ0UVdFU1J1UmxReCtKL2FTMTIxQVp1NlkwNFZlQndjT2g3WEJRSFZr?=
 =?utf-8?B?Y3NTRlY0UEJkNjIvZ3pOTDQyS0VTSUZEOEVCLzB6UWNDOSs4Z3hxcW1KUlp6?=
 =?utf-8?B?M0RGa2dIQXQ0cXhFS1lrMGs1ZVpWemdFVjZGdlFDRGNUekl6Z2lReUVsemg4?=
 =?utf-8?B?TVN6dlBIQnBSTTJSSnR3RTlrejdxSkQzNkhzVnFVV2RpdkNmMGVoRTJrRlJ0?=
 =?utf-8?B?NVhYNzdiV05YYVdLV1VQUGt5dWVKaEk4bGprNnV3VTh2Nk1ZaUpXU1I4d2ZJ?=
 =?utf-8?B?NktnclNUR2padzByN0NxQ0d4RkdOMzVDWnN1M1RGeit6ZU56L3FDdWJaSXhC?=
 =?utf-8?B?MXBIRUZ5aWhiK3JGR09QczRHMUwrWTc4clNlNTRtSyt0c0VVQ0JrN1dqeitK?=
 =?utf-8?B?ZEFnRnZoNjQ3U3czR1p0UVJvd2xyM2pkVEVNU1J3bHFIZUZlL0wxZUt5cFAy?=
 =?utf-8?B?UVR0M1RSY3cwdUtYUWNVRkR5MVB0eFlaVTI4Mkx1bktIVWtxbkM2OU1LbVF4?=
 =?utf-8?B?NTNOWk5vZ0ZqQTdLbDJaMU1Mb0tRVTEzUVBheW5TT1c5bk9jaVFaUFpjckVo?=
 =?utf-8?B?RGlvRVZMVzRpbjZUWEVxYUxPQ2txS0t4L28wSVJHaHhpZTBTendkYURrN3pu?=
 =?utf-8?B?UHJpS3hrMVdYVzBDRmxxMXpyVlJXNGVJdjFvMXREblNuREcrckdueDlKb2hn?=
 =?utf-8?B?bERwTENwRWpvdHA4OEJ5a3hHRzZtSXZXUTByU3QwSEllNUFCc1NHQjV1aGtz?=
 =?utf-8?B?M2IzYmJoS0IySkVoZDNuaTMranlnbURqV2xNbEtxTERCQjBMMUJWR2NNR3JI?=
 =?utf-8?B?SW5iVTdpcVBJY3RkTm5GR0Q5bmRmUGF1c0c4dDJxR3lXNWxhcnMvNTZ0SmRC?=
 =?utf-8?B?QmNuQzlVNXJiZ0d0dTYyV1BjcTNFekVDTmFLK3I4cUlHTC9hY0ZmbGQrT2M3?=
 =?utf-8?B?S2ZYaWtoNkVFMXhtbnA1TU5yNWRHclhDNFNvd25EVG9PSTJXRVkxcWVSUU1Y?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: f888e2be-0461-4f74-28f7-08dd82354df1
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Apr 2025 07:06:01.7034 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: Ak/a3IM6k3f7Vq/CDhEeHm47itUGjXqsHmMZgIcHNfgJMTwrr9UUcFgvR6t+LOpCvhVH1YPt8x44F6DKQzCgWS/IHwlJXMjs2bLXkurw3kE=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB8183
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


On 4/21/2025 9:18 PM, Mitul Golani wrote:
> Add compute config for DC balance params. This will be required
> to calculate correct balance requirement for DMC firmware.
Subject can simply be Compute DC balance parameters.
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 21 +++++++++++++++++++++
>   1 file changed, 21 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index c4fb78d86ab0..383024dc2784 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -16,6 +16,9 @@
>   
>   #define FIXED_POINT_PRECISION		100
>   #define CMRR_PRECISION_TOLERANCE	10
> +#define DCB_CORRECTION_SENSITIVITY	30
> +#define DCB_CORRECTION_AGGRESSIVENESS	1000
> +#define DCB_BLANK_TARGET		50

It would be good to document that whether these values are based on some 
experimentation or some golden values.


>   
>   bool intel_vrr_is_capable(struct intel_connector *connector)
>   {
> @@ -409,6 +412,24 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>   			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>   			 crtc_state->hw.adjusted_mode.vsync_end);
>   	}
> +
> +	if (crtc_state->vrr.dc_balance.enable && HAS_DC_BALANCE(display)) {

Perhaps check for HAS_DC_BALANCE() first.

Regards,

Ankit

> +		crtc_state->vrr.dc_balance.vmax = crtc_state->vrr.vmax;
> +		crtc_state->vrr.dc_balance.vmin = crtc_state->vrr.vmin;
> +		crtc_state->vrr.dc_balance.max_increase =
> +			crtc_state->vrr.vmax - crtc_state->vrr.vmin;
> +		crtc_state->vrr.dc_balance.max_decrease =
> +			crtc_state->vrr.vmax - crtc_state->vrr.vmin;
> +		crtc_state->vrr.dc_balance.guardband =
> +		DIV_ROUND_UP(crtc_state->vrr.dc_balance.vmax * DCB_CORRECTION_SENSITIVITY,
> +			     100);
> +		crtc_state->vrr.dc_balance.slope =
> +			DIV_ROUND_UP(DCB_CORRECTION_AGGRESSIVENESS * 10,
> +				     crtc_state->vrr.dc_balance.guardband);
> +		crtc_state->vrr.dc_balance.vblank_target =
> +		DIV_ROUND_UP((crtc_state->vrr.vmax - crtc_state->vrr.vmin) * DCB_BLANK_TARGET,
> +			     100);
> +	}
>   }
>   
>   void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
