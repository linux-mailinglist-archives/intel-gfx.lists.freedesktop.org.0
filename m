Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E174C874A7
	for <lists+intel-gfx@lfdr.de>; Tue, 25 Nov 2025 23:14:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EA5510E488;
	Tue, 25 Nov 2025 22:14:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HG184qHv";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 81ECD10E488
 for <intel-gfx@lists.freedesktop.org>; Tue, 25 Nov 2025 22:14:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1764108846; x=1795644846;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=fvXTJWcBvbEjG/m5PNzKJHyCuXiry17unEMGmzE5POY=;
 b=HG184qHvVGUEavoC8aLFGKY8qOxRrOpZWKw/HQxM+LoGT4BlbAijun66
 38OmkXXVzkyqA4x7K0M6zq6LkdFEcLmsGtindiQiLewKej7W0I0/jUR9W
 lK3QHmF0xiHQRkHR5p2pgCI1xS6EpZPR8cM+jQGAjWmUZKu8rsEgAYVY0
 4FWIQHvJbNacR/GcpjT+68KGjJdiHvBRoW95O84xMRvMjhJjWCqLkZGp6
 HU1Hi3W3rDJCxTJaPYtsBZQbeLd2aR1eTRVRW2u24upzexfi6CJNkAsgs
 us+8PWzde1TCwjqk4mxgyekrW014JCSlwzERyPwXOr+07K7ObkthIFmfX g==;
X-CSE-ConnectionGUID: XI2WgiqjRMi23mEI5CoAug==
X-CSE-MsgGUID: 3qIc8zJrRSqVSbdu6e10tw==
X-IronPort-AV: E=McAfee;i="6800,10657,11624"; a="66297489"
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="66297489"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 14:07:59 -0800
X-CSE-ConnectionGUID: 0Ybzn2XDTCCGOlj1MOGKAg==
X-CSE-MsgGUID: BldyDWjsTd+MmCXfzAlp9A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,226,1758610800"; d="scan'208";a="197708189"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Nov 2025 14:07:58 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 14:07:58 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Tue, 25 Nov 2025 14:07:58 -0800
Received: from PH8PR06CU001.outbound.protection.outlook.com (40.107.209.8) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Tue, 25 Nov 2025 14:07:58 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=CpZE/QkwooRaBX3s/B7h8JJ6ChjEwGBP44Z5NaPobonEtAk1Xvzj/LOpZJxTiEMY6wTacUcBs7Yrjnttq+EsCQ3lSmQJM2dvytSRu+a8Lc2gPNoUnMh+AR4+AcGeLzYPSX/LR9c56YzKw6vlbvUByMQfG7y9y/IcVhWduwLxWhRnJIuhxUNJN0AWtWb3yeRcmAApEdTiDBm5Bj/QmdZdRbf54KjXy2JQjUjVdJTFDwUssZimU+8/SFGxM38IN6ypeux9i7QbfNM74OYEci/HR+FI9ZobmqoRylcxYrUYCdoGt4szrJ5zW7bTthzNaToNd+hWR5LXn+LDa+cXnEruiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Ag2ksVTih+D05mEBbs9eB/NrSQrNXVAI7MQXYQ9713U=;
 b=ptvptbMjeV9Qw7494H7SL9galfd4z6ZVBoP7632dVvSTg9a+fkicQjiGOozgpofZWr1UqDxawYETZxjzsVO1/vQ58o0/L/c1tGXn/GoPMkzb4yMNcpoA4qJFkejoF+U1iAMsPdZ38o9bzWdjaaMonju2l3csT/oC9bpIUexRX3Yvkx+Mtc2gP9SZyo5uXVmv6Dp/+cdnA62QTfwVOpF8o6ajs0a2LG43paHngO9zVyyZoL6krhzWEAzTz33QBdiWB9tFe5c/5rECdJX6srhnUxPhASUUSgq9FLr7ZzuB4GwEeongXItj2Z8eH8O6tHsPP3SSHStDhTTRusGxDvqUew==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from PH7PR11MB7605.namprd11.prod.outlook.com (2603:10b6:510:277::5)
 by SJ5PPF7DCFBC32A.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::839) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9343.17; Tue, 25 Nov
 2025 22:07:56 +0000
Received: from PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::48d7:f2a6:b18:1b87]) by PH7PR11MB7605.namprd11.prod.outlook.com
 ([fe80::48d7:f2a6:b18:1b87%5]) with mapi id 15.20.9343.009; Tue, 25 Nov 2025
 22:07:56 +0000
Message-ID: <37ad3dff-8383-4c40-b27d-2ed77dd788ec@intel.com>
Date: Tue, 25 Nov 2025 14:07:55 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/2] drm/i915/pxp: Do not support PXP if CSME is not
 available
To: Jani Nikula <jani.nikula@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <gregkh@linuxfoundation.org>, Valentine Burley
 <valentine.burley@collabora.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Alexander Usyskin <alexander.usyskin@intel.com>, Alan Previn
 <alan.previn.teres.alexis@intel.com>
References: <20251114201431.1135031-4-daniele.ceraolospurio@intel.com>
 <20251114201431.1135031-6-daniele.ceraolospurio@intel.com>
 <aae6c3f4466e0f52e4f1f482c14dba68d8d04c0e@intel.com>
Content-Language: en-US
From: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
In-Reply-To: <aae6c3f4466e0f52e4f1f482c14dba68d8d04c0e@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: SJ2PR07CA0022.namprd07.prod.outlook.com
 (2603:10b6:a03:505::24) To PH7PR11MB7605.namprd11.prod.outlook.com
 (2603:10b6:510:277::5)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: PH7PR11MB7605:EE_|SJ5PPF7DCFBC32A:EE_
X-MS-Office365-Filtering-Correlation-Id: 9f7de429-5b18-4d60-bebc-08de2c6f1628
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cUZ4TmNKc2lPdGdIRE9YbVVGU1R4eVVRQkxTUytlOVp4VmVmYm9LWklieW5E?=
 =?utf-8?B?bWtuS0RwcU5PSnFrWW1OS1B3a3c3Vnd2aUV3dGt1UUFmMm81amNXakQ3V0F6?=
 =?utf-8?B?d1RWSzV0S0NHaE1vTjVOTXVUQmFrMnBmTWVld09ibmVYSXQyVXYzZ1RXanNq?=
 =?utf-8?B?RE1HVUlqdktPUCtNY3F6RHdMS3pOMk1yMVpkTlQ2UXNwcm8vVENNZ1lJY1Jp?=
 =?utf-8?B?a00vYVBnTHVkQU5uZStVUkJWZFZpV2JSRnNLUnZwWWdGNXltNzF5YW9EVTVm?=
 =?utf-8?B?dllocWowNnRCRjNXVFJVZmI0Ni9BN0VDRU0wekpxWTB4STB2c0VBV0NTTTli?=
 =?utf-8?B?SUdnWjhxUG9yd3pCTDZOT1ZZcGVoWmlLdko4dlhHS2RPVWJTMkVlakN1OFUv?=
 =?utf-8?B?bVh6K2hYOFlVZE9JOWJDMmVkWUpyaWk4VndodkFBd2dmb210eGJBTGxDVCtr?=
 =?utf-8?B?c29vNVY2aFl4eWRaWUQzU0hQcm55Wi9TUlNYdklZWFk1cVJKblVkMVNnU2lJ?=
 =?utf-8?B?ZXpqamJOYjJxWlZIUHA0L2JYSjF1VWNkeW5qMDc2dU0vcTB5eVBkbkR6K0tP?=
 =?utf-8?B?c0hyMjI2dkFSWmhKVUNqYzlmc2lMeWZ1RE4wOE45RkYxdUJpMitUOEFodU43?=
 =?utf-8?B?K0NvblBYdVc3bzBYbkxtMzgzTS9uQjlkcDJPTUZLVThtazFmNk44SWFSQ2FP?=
 =?utf-8?B?WUhkcXIvTzNRR1FhdkFML0VENldrQ1FxZUdBNS8vZEdxSVZYMDJ6ZXh1RlRy?=
 =?utf-8?B?Mnh4VXdZeENramtkSGw1cFFUdTB4Wmp1ZUJ0S2ZKcWtZWmV6MlpPUnl2VFZ3?=
 =?utf-8?B?dkpNRE40R21iYXlRTHVHT3JHMi9lWHYvVXlyU0hld0R5d0Y5THljVFI5VlR3?=
 =?utf-8?B?ZWx1UUhrb2lyNjV5Rlg1SHUvVWQydDJwaGJxZlRYdjY3cG1KdUE3V0F5VTNI?=
 =?utf-8?B?UUpMVE9WQ2pxbXdsL3hJdm5ZdXdRR3VWWGpsOW4zelZYeXZySU40OENrSnpU?=
 =?utf-8?B?YUkvYmxvQnRmN1lTN21Oa1h4WHdhZjRiYTZMUGUrWi9sd2JDVFpxRWk1Z3Zu?=
 =?utf-8?B?VnhvcS9pUU5DaEFwNjFSR2pWbEoySXNGMjdxQWVIM2RQZHRKTEJiV3M4SHk4?=
 =?utf-8?B?dWxsdStjbDZnY0F0SXhnU3Nab0JaYWo5eno2V3NJU2ZycW55cGJEZUdRbXNl?=
 =?utf-8?B?WVB3YXBVK3VZTG9DeW9OeExNSnZVMUhVV3REQzdTMGZHeWxBdEZGU2VzbHI2?=
 =?utf-8?B?M2xmY0dTWmxkMDFGN2ZseGtRa002UnRzRGNNeFRVcm96N1NTczU5aFF6Q1lp?=
 =?utf-8?B?MzRHSXR5eFRMenRjSXhwL3FHd2tGWmtSZlRkempFVTR2Y0thTVo2bnVacHMr?=
 =?utf-8?B?bzJFUW55bm9zNTJSK2VXWE9Gb2hRK0xWc09qWlR3YXpsUk9NS0ZzSFRMZ2lH?=
 =?utf-8?B?a2w5SFNYdUxjdzVJbUxyZkc0VzVDZFowN1FyaE9VWUl3SXp6UU5KSFIzOStO?=
 =?utf-8?B?NE5TVEwxekxJVzk5R0tualUyUVBMaW1uelByVVFWVllFQ0NSRUhuK1dFRng0?=
 =?utf-8?B?RTFXbTZzc1BYbnJxbXRlbHorQld4c1RNRXBVcEZFVEZXVVBkZzhUOFExNFlV?=
 =?utf-8?B?bU5aUW5Jd3kzMVY2UVJiK2tQTlNJNlE0UVdIWXZiR2pZZ01iUldNc1FHNmh6?=
 =?utf-8?B?ZXQ3VnFSWEhoYzNSbWxEdmVKakVJTmZIVkRmSmE1cHlCV3dHNlh2b09MR3VS?=
 =?utf-8?B?S2xkd0YvTjhZMFhrNmZlTlVjU3FSYWp2UVRPaERJeFVraHV2QThiM1NwVWVY?=
 =?utf-8?B?RVFuT1ByM3BVRUsvWmZsOEsrMHJvSDR1MkxmU2xHYk5pZDAvaWtZQzBmZjFR?=
 =?utf-8?B?Wk5Ma1ozZVFGaFZ3bVZEUnNURkwxdVFaem5mbXJqMlB0NVE9PQ==?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:PH7PR11MB7605.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?bG5NOHVPL3Z4VFczQ0JZSmxNTTg3cjNtMzBjeUoyNTVvVEFidTNBUUNyOHJZ?=
 =?utf-8?B?K1FraGIyWGJJL2lRTEtiTzk3T08yZTN6VVVEdnVtdkRyd2dCMyt5eUtWREtu?=
 =?utf-8?B?Tzc3VmpVaVhQM3M5TzFRYVliVWNBeXdJZFVDN0RoYXhTT0FYNkZaaDNNZVF1?=
 =?utf-8?B?S1Izdk15aHloYU1RRVNzd2NRQVlOMWZHbERqQnZLOVFUaENCOW5kRTB2QUhz?=
 =?utf-8?B?a0JQZmdYaDhVTFBJWGk4Zm9HT2d4SjhGZ3pmWG9Sc08ydm93ajZMTFcvNDc0?=
 =?utf-8?B?MFRHOHhwVGZnMHBzakFodE5XVnFVUjN1Q1dJazlYSis4Mzh5Tk5qaStCdnQv?=
 =?utf-8?B?RWk3UG8zaXRHRklZblBGUGI5UzZIOTVFdEFDNDBxT1JuWkpJTmJHaFRENndY?=
 =?utf-8?B?RjVlTFd1Tnlxalh4R3ZORlhXa1plazRmblFaNU9zWnV5cHd1ejNMa3FVZVRw?=
 =?utf-8?B?aEd0SGt4M21ZWVQrQkFLZ2VkWXRIbTBQcUFGWkEyRDg5WG8zMkVIdldaWkd1?=
 =?utf-8?B?Wit0ODVqK2kwVHJSanM2YjRYb3M5MUkxMnVRZ1Buc0YvZG1MRHQvdVo4aE1M?=
 =?utf-8?B?N29tc0lxWkp0M2doSm1lcFYyWktTczNxRVc3RDVxQ1k4Mk4xTVl5YXhYU3Ri?=
 =?utf-8?B?VUVobFNMZGVYU1J2ZW1YWU9ZSjBDK0IwdWY1UXFCN0xMajlnT1B5V3QwMjdu?=
 =?utf-8?B?Rm5pbTBLNjdGTW41SVJIbkRwMmdCL29LZUo4ZUtxcmRia2gzaDhRYlFYUTRL?=
 =?utf-8?B?OGRZS0R4ck02M2hJWnpBVVp1L0E0dHkzREtDTXZLcnpGTTF2Q3NjSFo2MnZj?=
 =?utf-8?B?NmlRcHZjMG5ubXQ0WTNRK0dLd2tRWUhobmxVKzloRE9zOG1ZUSsrdCtIalNU?=
 =?utf-8?B?ZWc2N1VONkgrR0c2QjZJWGRkUEo4VW1lREkxamtRMFJiRmUwbmFXOTFRblRy?=
 =?utf-8?B?NXVNN1ViZ3hzaVk3OEJrVFhvS1pQRnoxQ2w0dlF3cEkzeTZET3ZoeExsNlk4?=
 =?utf-8?B?ODhQR3ZrNWxPVjNvOUxCSDd4Zi9FU2JxUDN1QzdTczFGbDNkVXFGU0JRcEZh?=
 =?utf-8?B?dGNWUlZBeHNEeENqUmRRZm9pMER3VEpBQnM2UFZOSExkenh0T2pFdElaVXVS?=
 =?utf-8?B?c0V6OTZxbXdYNHYyUWVPUENFTnV6cTIvQlFadlFENEhLNlpOaEhkak4xN3k1?=
 =?utf-8?B?RnJCTE1mMmc3dzh4NXFIVklkcURJZEUwai84YWRQSkN6RzRyQ0JzK3JtUXg0?=
 =?utf-8?B?UDlMdll5SWlyTTUxNTM5RlIyUlYvakhKcWFzY0RWQXZRQjVmVXh3L1NSdWJm?=
 =?utf-8?B?SzZPaC9mT2xHQk84UVBLVmJMN2lSVE1lMVc3ajJQL3pXSEtuUjBWNk14SU96?=
 =?utf-8?B?VHVWYmxESjJoQVVRN1M1clNZd0psajlMR2FndUFlZi9pbTB2cXR6aUdzb1RT?=
 =?utf-8?B?NUVrYVRiNk5SdCtEZFJVb3R0cXZQSXprdXhEMEFDa0R2ZzNKV0hoc0NMRDcz?=
 =?utf-8?B?cHZPN2xwSmVUOTJrbWhGZTRFbHExTHF6RmdTamsvemtzcUtVbS9IVFpaRUFp?=
 =?utf-8?B?NjRVRFNOWmRKY3JsSDBpTm5ETWhZczlTc1BjVE5XeGczNHpYRFJOS2xNRldt?=
 =?utf-8?B?ck5vQm55Mm9pMDR3b3FwRGhTdnlNckJwUmVlNTJZWHNxWDB2NVY2MmVYV3hm?=
 =?utf-8?B?U1BkWVg5TjFDUk1iNDBPdXlXWjIxanZncG8wV1Q5cCtkM3lIU1ViSzJYL2pE?=
 =?utf-8?B?WkhERnlPeVhucHdpRit4VmtMRjVRVWxUVXRGQXpUVFpIRXBiTVlVWU1rZzlH?=
 =?utf-8?B?Um8wMFdxUGxUUUVvS0FrNHlMZVVURHBQOERxSmJnNkZsRUQ4M3VLcjNCTjVp?=
 =?utf-8?B?QWJ6QUJrbzB0anRSTThqN3cxc1pNd1JiSGpqZC9sdzBZVkZ5WDNzTnJIdyt2?=
 =?utf-8?B?NmpaS1MwV1Q4Q0xUN3gzc3BmYUVybW5FWFZyV2NCNUJiUnJQeXZjeHFsT1Q0?=
 =?utf-8?B?NDY5S2pQSEwyZWdWNEJSbUVVaE5KUThCN3JkYVR2QXdYTDBsdXRaSTloRHlw?=
 =?utf-8?B?M2tXRTVQbnJ6SWJOeE92eFJrWlVYWlNSWTJwaUw2d1hiM2lzYU96T0plK1dh?=
 =?utf-8?B?MGVQWGxqWmZMb1pmTTVYRDdTRTJ6TW5jN0lyc25DNWJTVGRQWU9CVzl6TEJM?=
 =?utf-8?Q?YttpOlsXLLpCBZKvGsW+4bA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 9f7de429-5b18-4d60-bebc-08de2c6f1628
X-MS-Exchange-CrossTenant-AuthSource: PH7PR11MB7605.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 25 Nov 2025 22:07:55.9539 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: zWNxyvJBw4SEBMYAUtwvffA/I0QRfRydZ4+CWaufwFCa12fnyneMigoE+3UIYJ004soxm1XconMxG5urd7LDppiLliVK66gzcR0/FXyityw=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPF7DCFBC32A
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



On 11/25/2025 2:28 AM, Jani Nikula wrote:
> On Fri, 14 Nov 2025, Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com> wrote:
>> The PXP flow requires us to communicate with CSME, which we do via a
>> mei component. Since the mei component binding is async and can take
>> a bit to complete, we don't wait for it during i915 load. If userspace
>> queries the state before the async binding is complete, we return an
>> "init in progress" state, with the expectation that it will eventually
>> transition to "init complete" if the CSME device is functional.
>>
>> Mesa CI is flashing a custom coreboot on their Chromebooks that hides
>> the CSME device, which means that we never transition to the "init
>> complete" state. While from an interface POV it is not incorrect to not
>> end up in "init complete" if the CSME is missing, we can mitigate the
>> impact of this by simply checking if the CSME device is available at
>> all before attempting to initialize PXP.
>>
>> v2: rebase on updated mei patch.
>> v3: rebase on exported pci id list.
>>
>> Reported-by: Valentine Burley <valentine.burley@collabora.com>
>> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/14516
>> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
>> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
>> Cc: Alexander Usyskin <alexander.usyskin@intel.com>
>> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
>> ---
>>   drivers/gpu/drm/i915/pxp/intel_pxp.c | 25 +++++++++++++++++++++++++
>>   1 file changed, 25 insertions(+)
>>
>> diff --git a/drivers/gpu/drm/i915/pxp/intel_pxp.c b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> index 2860474ad2d0..26e7c5c26bac 100644
>> --- a/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> +++ b/drivers/gpu/drm/i915/pxp/intel_pxp.c
>> @@ -3,6 +3,7 @@
>>    * Copyright(c) 2020 Intel Corporation.
>>    */
>>   
>> +#include <linux/mei_me.h>
>>   #include <linux/workqueue.h>
>>   
>>   #include <drm/drm_print.h>
>> @@ -197,6 +198,15 @@ static struct intel_gt *find_gt_for_required_protected_content(struct drm_i915_p
>>   	return NULL;
>>   }
>>   
>> +static bool mei_device_available(void)
>> +{
>> +#if IS_ENABLED(CONFIG_INTEL_MEI_ME)
>> +	return pci_dev_present(mei_me_pci_tbl);
>> +#else
>> +	return false;
>> +#endif
>> +}
>> +
> I think it's just ugly to have this in i915. IMO the function belongs in
> mei.

That is what I had in v1 [1], but there were concerns from Greg about 
the state changing after we check it and the relevant required locking 
to avoid that. In i915 we don't care if the state changes after we check 
it and therefore we don't need locking, so I moved the actual check to 
i915 with an explanation (see comment in the code below).

[1] https://patchwork.freedesktop.org/patch/664208/?series=151677&rev=1

Daniele

>
> BR,
> Jani.
>
>>   int intel_pxp_init(struct drm_i915_private *i915)
>>   {
>>   	struct intel_gt *gt;
>> @@ -205,6 +215,21 @@ int intel_pxp_init(struct drm_i915_private *i915)
>>   	if (intel_gt_is_wedged(to_gt(i915)))
>>   		return -ENOTCONN;
>>   
>> +	/*
>> +	 * iGPUs require CSME to be available to use PXP. Note that the
>> +	 * availability of CSME might change after we check, but we only support
>> +	 * PXP in the case where the CSME device is available from boot and
>> +	 * stays that way. If CSME was not initially available and appears later
>> +	 * we'll just continue without PXP, while if it was available and is
>> +	 * then removed we'll catch it via the component unbind callback and
>> +	 * handle it gracefully. Therefore, we don't require any locking around
>> +	 * the state checking.
>> +	 */
>> +	if (!IS_DGFX(i915) && !mei_device_available()) {
>> +		drm_dbg(&i915->drm, "skipping PXP init due to missing ME device\n");
>> +		return -ENODEV;
>> +	}
>> +
>>   	/*
>>   	 * NOTE: Get the ctrl_gt before checking intel_pxp_is_supported since
>>   	 * we still need it if PXP's backend tee transport is needed.

