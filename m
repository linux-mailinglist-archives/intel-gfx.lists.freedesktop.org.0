Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B0164D2E612
	for <lists+intel-gfx@lfdr.de>; Fri, 16 Jan 2026 09:59:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4DDAD10E839;
	Fri, 16 Jan 2026 08:59:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FFyxlax7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CC1EF10E838;
 Fri, 16 Jan 2026 08:59:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768553976; x=1800089976;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=yYh/mAkD0TqGNDCrPSZsJDhAsnar1g6NL5EQlvuNpkc=;
 b=FFyxlax7H3Qa6PxNkRp7XRb6wLpVvPzZOdGFKmJxNa3RGDNasliznkEo
 PKkILu5DYb8EdkbprCkjCSSqMOiEokHrOLXossOyTw/vif8SbKzHYJ4vm
 Bm7e3kXl8GlVCGv6+iI6kEoQz66Gnl02G/UIPtcu6y3QN7PVWLVhzE7B/
 E8jhtn8xQ0k0mMriBPvK0aPB/Myk9GbSRbpnCRwVpHKC7zS6ZvTLOWN8N
 wOOVj5TpPhCDRrGQrS5inzle9yUM/JNI72qCj8m7q+VgoOLdzGZoMukfo
 g4bd747Cnd1RABPXVRLmic7kgdCVs0nD/fwmvbWWEfc7iku3MF6k3ecJb A==;
X-CSE-ConnectionGUID: BMUx2+aaRD+R+4yi1/VEXw==
X-CSE-MsgGUID: JNr4sHnIQbeiUu04u56Pcg==
X-IronPort-AV: E=McAfee;i="6800,10657,11672"; a="72454649"
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="72454649"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 00:59:35 -0800
X-CSE-ConnectionGUID: d6hUaU97TIa4eBzcYXazpw==
X-CSE-MsgGUID: d/vdpk1nRfm9tOxF4rviPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,230,1763452800"; d="scan'208";a="235883195"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jan 2026 00:59:35 -0800
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 16 Jan 2026 00:59:34 -0800
Received: from fmsedg903.ED.cps.intel.com (10.1.192.145) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Fri, 16 Jan 2026 00:59:34 -0800
Received: from CH1PR05CU001.outbound.protection.outlook.com (52.101.193.35) by
 edgegateway.intel.com (192.55.55.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Fri, 16 Jan 2026 00:59:33 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=SvW3mF0SYN9buJI+n6uQDSGKfxSwsBfitQBvfzYCOWS/drGjra6gZgbTq83VkvwJmCHH+N1B3nrIhhB7QhjT5doOBKAX4SO19SX0//bu21LjbjoInYrBn/W3/q8jrzS784SBZ9YhQs+H8zRPK3nBdEAC2rlvvx8Tarm2Su7Mrn/DgNEa+qy1kbfPHTdTkONqUL0dZM9TGTC38/r9s/kyrJjATS6cC2k673MRuFiFr7cxg7YOYIgQ/9IgLJBpeq1CcIM2zNBmEgmvhy93sqvVnbEP0TDGJY2SVfwtYM3b/yl9TipMkIO0D0pMY8oqqSxHJNb8x2NnYMgvsJbOwKZVPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=GTnom/+306uuNS3jf4y5wiTD0e5CcKRLTVyElh9BT9g=;
 b=Pp4/VQnuKYvwsC87JW/vHsbE3ZtqpRWzDXb6H1ii2HbBr3QxS+ay9ldKmpSBFzErZ8x6YJb39+7woGtAlnA/GqPfh8HfsOQ8xPgeKld+mxqYG2zhb0eb2xuUbZfh9EO/DOd3HBZFkhlBTGijcF366l9FFjgByVGeFB39BXYVvfLawiyePuiCpcOYfHVnuKTrX2YMOVxFCss/Jw56goWlKo94xs0xKOK/qpn+n51K6P4LiJ63m3kljOqpSW9gLJsng/h9gcxtXlcUoi90j8qRiB8zU1qq0ApnwJwwkvmL0tO2rYPduJoJVVIN33LjjlXJI4X+j38cdlbJ2H8RgOMgng==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA1PR11MB6824.namprd11.prod.outlook.com (2603:10b6:806:29e::8)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Fri, 16 Jan
 2026 08:59:26 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9520.005; Fri, 16 Jan 2026
 08:59:25 +0000
Date: Fri, 16 Jan 2026 08:59:15 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>, "Kamil
 Konieczny" <kamil.konieczny@linux.intel.com>, Andi Shyti
 <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v4] tests/intel/gem_lmem_swapping: Avoid false
 failures from oom-killer
Message-ID: <womtom6enhpcmhprwfo3ocillbs3qtshn5srfsfeuqk4cnpeqk@cvzafe6pltdv>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20260115184334.1025817-2-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20260115184334.1025817-2-janusz.krzysztofik@linux.intel.com>
X-ClientProxiedBy: LO4P123CA0691.GBRP123.PROD.OUTLOOK.COM
 (2603:10a6:600:37b::19) To PH0PR11MB5064.namprd11.prod.outlook.com
 (2603:10b6:510:3b::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA1PR11MB6824:EE_
X-MS-Office365-Filtering-Correlation-Id: a2038a90-a471-4f32-d62a-08de54dd8bf4
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|376014|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?dDdHQ2FsQzhlQXVTRXBwSHlTSktRM1k0RVkzbGErMnc5eE9rakpnRlF1eFZE?=
 =?utf-8?B?UFg2YzNFamhEdnpUeitMSU9vUzJxQm1zSlM0SHJqMXFvYjlTeTZteDFPc1pS?=
 =?utf-8?B?bzJzTWZQWlIxSjU3UEV2enN3aXRHQVZ3ZUxTVHc3TDN1bGJWb29yY3dWQTgy?=
 =?utf-8?B?OFIvUEF4ZGVoRUpyVkVKbHRJTTBzZTJEWHdFS1lXc1ZZSmp6ZEhLQkNKbXhP?=
 =?utf-8?B?OGI3aktBZm1STXBIYklnQlBJWlYwV01rYVY1ZUMyaVhNOHhCVC9yN1NYK013?=
 =?utf-8?B?eHN1Sno4a3p0NzhFNUh3bmRRT0ptcVZ4MWNIdTZ6N1R6YVBPbFRVT3NVV3VC?=
 =?utf-8?B?d3VseGd3VUliT285YlBrVHUzczlvOFhocytDc1lQc2w3d3ltVXFmcGVEdGI2?=
 =?utf-8?B?VEUvSHZGZ3lONXFKSUcrZTQ1aTFzdnk3R1dsY1hPeVRDS2l5UFZJUXhHLzMx?=
 =?utf-8?B?OE0xS0NHa21rU0xjVHZ2UnBlcFZBbWVyblBwcjdTMUtBcGF5UkZ0ZmFzdTZl?=
 =?utf-8?B?NkgzUnFsN2pSUUFhdlFhdFluSVMyNEErdHJNZG9TcjdyVG56TTB6UUhEU051?=
 =?utf-8?B?ZUNydXBMbis1TzY2MllBWGUxK2lZWmhWTWV1Z3RVKy9ZM0s4VmhMVG1KWXV6?=
 =?utf-8?B?eWpIaWtYejdCR1ZGdExFbGNUOTRiK0ZnKy8yMkRJSXlZRTVDc3ZNb3Z4Uitp?=
 =?utf-8?B?MWVwK3dNbE1Xa3FDRVNOVVFzcDQwTmVuWHVsemhVT3RMckdOU3NZU2t0UFR1?=
 =?utf-8?B?bllrSlZsVHI3YndvalZOajRlaXpaZDE0d0xyeXJhRzN0dG9BT3ZRU1lPR1lT?=
 =?utf-8?B?YWd4NDY0S3c1eSswbDRSM2R6S1pPSURJVnpkNjNvMHZ6ejdVZjhwRVgvQjZ2?=
 =?utf-8?B?a0haSnlMUnVYdEtTWTcwR3NXb0EwL0U3M2Z1ekR0Y3kvaGNVaDJZNFd0OU1U?=
 =?utf-8?B?NldxdXlMWUJMSFo0TnFYWWNWbythUXhoQnNXSzRSY3I0NTRaUG0xVEV3TWRR?=
 =?utf-8?B?NEMzS3J4a1VmazYxcHRBVTNmTnN6OSt4MEdDQkhEUG9CUXVQYWl6bkFtRWtD?=
 =?utf-8?B?L0VSOCtkd2JPOUdSa3pFOFpzUU1EOWZwejNWQUhvcHdHSVIrOGVHSTcrMEdV?=
 =?utf-8?B?eDZuVnRRaUlQVDNHVjlTc1hnckNndFVlb1pjYTBhT0lJNFFwc2N2L0JJZzVv?=
 =?utf-8?B?L1lVSWRNYWZWSUt1REZTM1VXUUQrbmhzclFOWXo5YlBZc3FxcXJidzNRQjZq?=
 =?utf-8?B?RHBhbFJsVmQ5UCtqUzRrazVVTFBDR05KVDY5OVkxdDBoU1R5djV3WW1HdHZ0?=
 =?utf-8?B?RHZXMWdDWUVJVWY5aFRFS0MrWnhYWFZEUkhnajkwdTd4cHNCeWljOE13bmtH?=
 =?utf-8?B?M1BMaUFWRGgrN3NiR1NOeVBETmhhbVRlczlkU0wxNDdMNVRiU015VmMwcHJj?=
 =?utf-8?B?TTlKNWpIMmJIWFBuMW1vbHBPNVlkR1BrNmpaN3loVi9UMEVxdzJ6clNMb1N1?=
 =?utf-8?B?M0VrUzgrcmxrdG0wTm5WbG9velZDZ004U09ON3MwVDhEMUFYeUFXZW0zV0xm?=
 =?utf-8?B?cEJsUjhrenlaTUdSTHFKMWRwQ3d0NGxJelplZ2ZOcnR4NjYzdk9MMnJScEhl?=
 =?utf-8?B?L2UzVGo0MnNIcmRWd284aEhwWngyUWk2SDNxN1pudWxFVTIwRGp4U0ZjTFFp?=
 =?utf-8?B?ZkNTdkJmMFRkTXNnVFRFWXQ2a3BNR0lzcWVLM1l6dFNGOVRWMWhvT09tZG11?=
 =?utf-8?B?Y0xpM1IxdHlKSngwaGkxRVVQTEhDQ1RFS0JuVmdwRWFuUE0yMHYwcklrRnhY?=
 =?utf-8?B?cE5FMlJLL0JmSExnYlhxUW1HamNEV1R6SkRZbGp6bmtmS2gyalN0cE81Zmc0?=
 =?utf-8?B?VWxvOUxCb0xrdnYxemUxcFl1alN1cS93ZmM3QlRJdk5idWh0T01hRXlOWE5z?=
 =?utf-8?B?N1lCOWhWK0J5bVYzL2RGN2dpUXM0WVNWa0FiUlBtWW1vL01hWkc1VkhNUHVC?=
 =?utf-8?B?TUxIYnNzbjRNSzRleXZDbUEzOEk2aWdpMEtySlUvZU1QTjByb3kvYWh1TkZu?=
 =?utf-8?Q?4Psxcs?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?RVZyTFV6QzA1MVNhai8wdHBBTnVlQ3Y0cmxabjJCb1NjWlhRdFZuZDFFaUg0?=
 =?utf-8?B?M2FTb1NQQmdiT1lESDFaNDdtVmF5Y2dRYzNIVFdOdjVoRklhMTNkc29NZTV1?=
 =?utf-8?B?RW5kK0JobktmNG1ZeHRmTW1lUmttN1Zkb2tNV3MzV1ppR3l6dWNMQ0J6bFZW?=
 =?utf-8?B?TEJZNzBiOFUvNWMvTEpzSTNUUk9wdHR5K1lzdVNDYXFZY2FoZ0gwMVlRME1w?=
 =?utf-8?B?YXlYaHRmU1JkRGNYYXpRTVFQTFM2T2kxRTZaSDhLTkJQVUZkd3pIRjNvQVQ5?=
 =?utf-8?B?RUdiYlFmeDV4MWJDRWtpMlhRSy93NWlpVFJFanJTWEdRanZtYkFyQkRCc25P?=
 =?utf-8?B?U09WRkdsNTBiT2s0MFFXTTQ5Yy9ZV3Z0V2VhbUozMHM2aHhwV1V1dmk5UWZl?=
 =?utf-8?B?R2dtY2lNWjZIWUo4S0dkVFhPdUNzZEFhNERld0lJNlFKTXMrcng5eVo5c1p1?=
 =?utf-8?B?SmlLT2ozVmRGZDk5MU9GaHRHenVwZmRjdFhwL2tFM3AvZjFiU1QzSzNqS3Zi?=
 =?utf-8?B?SUl1eFlzMTNRaTJOOXEvd2RhWWp6SmVRRDVjQkpPTC83cCtHVkIxb3h1SFhB?=
 =?utf-8?B?eEpSaHB2QXkxOGpBUkNhb0lyWDVKclZCUGZDaWJ4enVGVjY5MGJnWjJ2RmVx?=
 =?utf-8?B?RnVjMEpVaWxMVWY2aXFKdlh5K2xOaW1oRUViOVkwSUJsWVJ5QzF6SUlOeXRp?=
 =?utf-8?B?VzgvL3pwN05HVHRHaS9VbGdGU1FvZ05hWmEvWFBndG41UUZiSThWODdsc3Z5?=
 =?utf-8?B?KzJPOFdPdXREY1dUVCtoV1lTakJJSlV3b3VxTnF2UTRwRTlPTVBqVitDc2Na?=
 =?utf-8?B?eFlaRkNxTWdURHRnb2o1SWtiZUtQaU00VTZMWjVFajhwL3ByOUZkNUVZUjlw?=
 =?utf-8?B?dDNVTUNDZXhITE1nOUw0SkZ3Q2VocWEyVUVzZXAvRHRxWFA1b0F3eUwyclJI?=
 =?utf-8?B?TEZQNHY5bHRZYXFRaGl0MFFEYkNsZmhXRnhrZk1EUGNpaEx1czhUMi8yMkU4?=
 =?utf-8?B?Q09YbXo1UFdjWEF6aWN4MFNPaE5XNzR1NHFCZWw0TGZDdENPYXE4NXhTWVBo?=
 =?utf-8?B?c0tTWlErUjM2MTVSQThrY0tKODdHejVRMWYvMW53VVlXS0FNMURKcThJV05J?=
 =?utf-8?B?a3dxV1hHVUp5RGs4d0o1N0l2UUR1SWxaZzVYekYvV3pOdjZpREt1KzEvbGRa?=
 =?utf-8?B?NVVXaDVkSEZVM2pQY2tnZm0rTVQ3NVoxelYrb2pmOWJqZ1FZY3crNUhhTkc1?=
 =?utf-8?B?b2N1dmhiNzVIQlErU2ZGSldENGZUblJkZnUzK2dzdGVhTW40YXZsRTI2UjZi?=
 =?utf-8?B?NGd1cFgrWkxmazhEYlpVeEplbXBGdTh0OFIySyt5MlpGc1psNE5HVkRPVUVi?=
 =?utf-8?B?WHdXS2lWZ0hoMXNEOTltNVBPK2ljZ3dubThXTGs1SUUza1p5UlBRQ1czdUxm?=
 =?utf-8?B?dlBCSTcxWlRFL0JIZlJsS1lzandUaERVbTJOdStmY0VMcklnUlJOOGhUZDg5?=
 =?utf-8?B?Tkl1THUxQ0tzdDUwdVlXUWhWelMvSmw5NUZZV3NHeVdxTjJ1NjZ6SmIzRno1?=
 =?utf-8?B?VUF3WFRQeThic1RQVVpkbUJXY1ZGMHo5N2wvU2wyRlhxcFZDWEF4VFI5N1dO?=
 =?utf-8?B?UHRQVk1Jb2hZeDlmNnN4OHV6emI1Qkw5SExiMzlHbFRSTkZlUVlSd2xKYU1N?=
 =?utf-8?B?ZUNZREh5Q1VXZ1ZYZnppOGRmTy9pbnI4d29MQlM5MlNnT0kxaHdmRnZ3K0RM?=
 =?utf-8?B?RW9GdVRmRGRUQW9iNW01dDdaNmdlckxUS2FORDhXaFJWajNRNzBoYU0yTTNn?=
 =?utf-8?B?Q05BZU9uS01TWC85bjUwQ3dOVWxDZG1teHg2aUhuTmhVdDkzL3ErWDkwSGRu?=
 =?utf-8?B?Qm5GcXRwdmFTK1pJU1VKSXVIcVozdE5tNjNQdGpoKzFOK1M2N29LVUJydGgz?=
 =?utf-8?B?dGtIaGp2aTVOZUhsa1pUd2tKbkphNFpEbjBBN01BZE1jVVRjTmRvUHEzT05s?=
 =?utf-8?B?dnd4NTNQRUp1TUFDTDlzL2tVWG91VUJIVGNBVFZYUm5KMWNmZ3lpYjJ6YVNx?=
 =?utf-8?B?Q2tpRlNIb1p0Y1MzZ0RZbFl1cjlETk1TcUhXa281bHRFcW14Zk1NUmdTeGlk?=
 =?utf-8?B?cFltNHcwRTdQQ1ROMEMvRTVxblkrZnE2eEhmMXJzK25CZmdoSnpIaGtPMm1T?=
 =?utf-8?B?SXMvRTZxS0g0ZnRtYjY5dE9jZTZST3BEeGU5ckRyajZ3cGozOTVnbUxnNFdG?=
 =?utf-8?B?ZlFySUNnK1gwTlRLRUJPMUhMYTk0RGkwbkVhVmkxY05ITTNOWnZ3djlEbHFI?=
 =?utf-8?B?ZnprTFFKclhjM2VjTTdnYnZYWCtleFJnQVIrQ3h4cGxFMnJRQ3BWN25icXBO?=
 =?utf-8?Q?IXuRt1TVUy51aGgc=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2038a90-a471-4f32-d62a-08de54dd8bf4
X-MS-Exchange-CrossTenant-AuthSource: PH0PR11MB5064.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 16 Jan 2026 08:59:25.5120 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: a4akepFJNkV4hE/UZa5i83xCRV56IpCDQS/5w90FktHhpcZT5jWhO0TkmRr+8pMRcdb/vBhEQCDmHfx6KYSQmbUEF0C491sS0b/HMvSPRg0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6824
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

Hi Janusz,

> The smem-oom subtest can expectedly result in oom-killer being triggered,
> which then dumps a call trace from a process that triggered it.  If that
> happens to be a process that executes drm or i915 functions then the call
> trace dump contains lines recognized by igt_runner running in piglit mode
> as potential warnings.  If severity of the call trace dump messages is
> NOTICE or higher, which isn't unlikely, then a dmesg-warn result is
> reported despite successful completion of the subtest.
> 
> Fortunately, severity of those call trace dump messages depends on kernel
> default log level which can be controlled from user space over sysctl.
> 
> To avoid false failure reports, relax kernel default log level to INFO so
> those log lines are ignored by igt_runner in piglit mode at an expense of
> call traces from real issues potentially detected by the subtest not
> contributing to the igt_runner reported result.  Since those call traces
> are still available to developers, only submitted with reduced severity,
> that shouldn't hurt as long as the igt_runner still abandons further
> execution and reports an abort result on a kernel taint.
> 
> v4: In the exit handler, restore the default log level with a simple
>     write() from a formerly prepared buffer, and abort verbosely if that
>     doesn't succeed (Kamil).
> v3: Move cleanup to an exit handler in case we are killed (Kamil).
> v2: Move default log level setup inside subtest smem-oom (Kamil),
>   - move cleanup there as well.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
> Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
