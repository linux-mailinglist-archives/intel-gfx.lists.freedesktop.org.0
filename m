Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C3DCBC069F2
	for <lists+intel-gfx@lfdr.de>; Fri, 24 Oct 2025 16:10:15 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AC11110EA9C;
	Fri, 24 Oct 2025 14:10:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="VQ8J6U4w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C33F10EA9C;
 Fri, 24 Oct 2025 14:10:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761315012; x=1792851012;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=blB1XS4kebebPysL4T+6SQk9u7ZfxFOLYDQ1dfJ9K4g=;
 b=VQ8J6U4wxFdxysvfSQ3fqevwQQD6y4JRE7wVUJ7ABfwyi3F6qOGVYfAc
 D4wCjEL/89A/PzTkMLKMillWppNsAVhWMwUYRsIPL7qJhYaNkZ/f/q701
 uBgCjQWbsYT9Gr2ohCxAdpVwm7rZTO5YH22izX4Cw1vEpLd+FVSyo+7Wv
 fFW1ggreKRLnTV3RURq45bUuvRml73mhf08GMm4qwbjzLVxcOx/3lhP9d
 Zz5A+5Qo+vqKpPqVsPhgq3TpgFaD6mgWECbYolAaIUmUGy+tqvq3jXHn1
 oOv0akDLf1TzQHmJfzWbB7552DeyQHnV05sdI1M0X0p+pkWT2ZGVwnirB g==;
X-CSE-ConnectionGUID: DK98yPDKTsCcgxYR3ajHBg==
X-CSE-MsgGUID: AW69lCnsSUqKHlrnvsJ8kA==
X-IronPort-AV: E=McAfee;i="6800,10657,11586"; a="66112418"
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="66112418"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:10:12 -0700
X-CSE-ConnectionGUID: xDOLOLv4SUWzdFGy55ZXCQ==
X-CSE-MsgGUID: OGulH1ZqRmOoKRmjAwhGnA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,252,1754982000"; d="scan'208";a="188500166"
Received: from fmsmsx903.amr.corp.intel.com ([10.18.126.92])
 by orviesa003.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2025 07:10:11 -0700
Received: from FMSMSX901.amr.corp.intel.com (10.18.126.90) by
 fmsmsx903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:10:11 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 24 Oct 2025 07:10:11 -0700
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.8) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 24 Oct 2025 07:10:11 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Uts7di+nHCav4vfOJA7dW5k4+BFI0iiFTvJlCK3YeL9Vg3bFiLHAje+IbkNTqoZJP5S0cn5plmQgQcBDHZW39PJLb5kWNJluhdJD9HaM2kV6yb8RszrjHzuPi6ckAssKdf1ULMpxlU+Uoi9nilnpBwl7l1a17Po1gearHzw8/WMjvYc+iFtc1nU001DqC/zlygmnxXqm2Fxg0BDiFitbC6RLeENTi7ArQe25kmnN6Il+ueh2ZTarnRP3cOioZJ4W6Kk7of/h3M3enblsw6LlbT6YeSR04ML/LWQwlAZaoNx2LgqtJM7BM9v+md3h5bUmbqZrjfwlbcOBU+EncpgiMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Wna/f6/rppZivRNq8tQMTpT8Tbg5vz0gPzeE9Yd65xU=;
 b=i/KCp0Ksqj8c7a746qqVQS9OOe3pIaJ2eUwWAv2H9PSztyyLTQ5JYvEjjdXBhQBNGBysPOW1A1Agb2gpHpSEvYemDbMv1RrxH65750EiYu/zNjfsZhdmxOVZOWuFAWZcSvfN6/zEJ7A3I7SzFz0KjYTGAj+2xleF0RmlzmMsARcZ6GKu+ScRwE9i29faxZMoD28Xp4MjwveekErAXTx7HwTFojFnjB4MmMxRY5L9C+nZqkT8wxSWlo4Xvw+dt+Wp2IDpQsqPRpwuGNBMnyQ5x6JN715ggzO1ohGoCmh504WV5FFgThKWuVNeXlxe46kyoL1eoPW3+7Ph3O6nTFKqPw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ5PPFBC9025319.namprd11.prod.outlook.com (2603:10b6:a0f:fc02::84e) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9253.13; Fri, 24 Oct
 2025 14:10:07 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9253.011; Fri, 24 Oct 2025
 14:10:07 +0000
Message-ID: <42d1e448-bfc0-45ee-b0fd-66e81f45fa6c@intel.com>
Date: Fri, 24 Oct 2025 19:40:01 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 13/22] drm/i915/vrr: Extract intel_vrr_tg_enable()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <intel-xe@lists.freedesktop.org>
References: <20251020185038.4272-1-ville.syrjala@linux.intel.com>
 <20251020185038.4272-14-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20251020185038.4272-14-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0171.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::17) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ5PPFBC9025319:EE_
X-MS-Office365-Filtering-Correlation-Id: 86495586-4022-47cc-b696-08de13070913
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bTJ3TFE4enlpbzdZbUUwNTBYeDBKVnNqL3lsK2dlRkUrUmQxOEkxM3VEaU5p?=
 =?utf-8?B?TitJbFJrbnhiVFVrMWFkWXA4WExvTG9BQlV4bFdHYUs1QlFqRW9ad0VTMzkx?=
 =?utf-8?B?eENoS3dBeTBvOGJ0Qzd5WHg2ZURuWVczay9KZzBONmpmWkh3TGFjbnY0Vjdq?=
 =?utf-8?B?bGhLT2NmZE4rVjhZck1UeXB3Vk1VclpTL3BpZHM1U055T1c4TWFxaGhPcTlG?=
 =?utf-8?B?NTh1N3lJdjB4YWJsbWRlWFNVZlRzL1diSWNEUDNuNE9xbXIrL09RTkhtVDFI?=
 =?utf-8?B?QWFtQlR0RUs4VXRJQmRrZTFuVzlBRHVlMGNYbERiQTlmWjZvR3V3K0Q0Sjkx?=
 =?utf-8?B?T1NZeXA1aXNxWG5vcVdacVlWVEwzclh1Tkc1S1FyRmtjdndBVWxiekc0NVpP?=
 =?utf-8?B?S2dqZGoreHR2VmNxU2UvcmNqSHAvNnFIakZreCt1OXdlWGN5a0RxR2l5RkUz?=
 =?utf-8?B?TUFxd3BJM2YwUnJVcGlqZnZzbHBUU2ZCSHhhVk5ZZXRNUmsxK2l5Wkg4WW5S?=
 =?utf-8?B?UW9JaDJET0RxNXV3L0lzK0JnQVpyemRwMFhva29oaVIwbTZTYWpLV0Rhek1U?=
 =?utf-8?B?Z1BBdmZ5MGhodDU2dnJiTmtIRlNjN2FJakJGcThJOHVtUnptdzY4RWNjaElj?=
 =?utf-8?B?cHRHT1k3T294cVNVVW1hb2JaSmh2TWE1QzkrbHlNeVphQVJFdmtyYktFcHVQ?=
 =?utf-8?B?bXMwdnpGa1VvTk0wdjBrRisyS0hBYWg1Vjh2cTU5MEpLMHBPNTJCYjJld3Jz?=
 =?utf-8?B?c3N3R1V5cTVnYmhvUXpJR0JvU2E3UGVyT3IrbDFWeHcxajY1eFo2SVcwekEw?=
 =?utf-8?B?Z0k0TUxsSFhPeElTSkdXR0ROWkNrMVpJUG9WOWg0QXlRWUpqcWZORTYvRmp0?=
 =?utf-8?B?cVBXdG51UjBFWGJjUFV4M2FBM3IvTmQvUWZkTXhFNkE0MXdVSHZnL3dKaFdJ?=
 =?utf-8?B?ODNpZTBneER3V0M4cWxWZXhubHdOWE5ValBSY0p4N1JxOFhsOVkzYTBiYXE0?=
 =?utf-8?B?UDA0bjZVcHlzYlRaSFRObXVwZkMrMGNsQWUxMU5EN1RjUjBFbmRVdGMvbmR5?=
 =?utf-8?B?cVQ1NU9GL2tScHZ2WllSWXk1TVBVZ2lUcVZCWkpPTnhCNmFuU1hreW9TWXJE?=
 =?utf-8?B?Q2IxZ0lTdHUzTnJJRUFTWW00V1U2cm5FeXVjQWhCOC9iUitZSHk1YzA0NlFu?=
 =?utf-8?B?Yi9ZcHVHUXpyYjNlUFV0UHZHKzFrQy9BallJYkt6TEV6R0NiaEdqQnNseWNB?=
 =?utf-8?B?ZVJlc3lzdDY5QzByRVE0d3FueEZKMzUydlM0WXAyeGp1RzBXSzR1Y0xTcDR6?=
 =?utf-8?B?ODR2Q1NHeXJsbHRFTzJsN0YwWm43N2RXUmFlNW9RcHpIUmtXL1NodmQ3ODk4?=
 =?utf-8?B?bVJmZWtOYUVMU0Rxc1U5UXRDZUFHZW04NU1OcVV1QUNmZk1xaklyQVg4ZXhJ?=
 =?utf-8?B?djFrWmRnQklLUUEwenJZTEdIZmtWMGlaeEhUdHNacmlpMlFyTnpaQitTaDVh?=
 =?utf-8?B?S3ozcEk0WmllNWVOSGNNbEtEc2FuK05rcE9iWEpjRzF6Z0NlRGFoVW9JbUZM?=
 =?utf-8?B?SE5QMUtYTkhteitUYjNzTWdsZEFPcjdBb2t6b3JoZ0VQdDlQenRJRjg4eXJz?=
 =?utf-8?B?d3h2dmxySThpTG5NendMSWtLbG1ETlhBTTlGeFpTSCt6VkZIQTdJb0pRVTJG?=
 =?utf-8?B?NFFoSVJWbXBSL1RoaE5Ec1h3UkFqUVY0cGY1SDF2WW8wWVRnSkljeG9ic2pa?=
 =?utf-8?B?OC9TSjZvSmlxZmo5TEhTVkJDUnREWG8xNjVNS2tjeXNpZFZIeEF5QlYzeTlN?=
 =?utf-8?B?dkYvNmtBSHVSR2JYT2xGOG1tVENwT3lxZUgzL0JIc3VLS2RueVp6R0EvWlgr?=
 =?utf-8?B?L21zbXVyUlRubDh2QzViMEtCSDRpNWM0dmJZZloya0dqRk82aXcvNVVobEJr?=
 =?utf-8?Q?gO1klr8Zo+gvi+sdgdWCVzoPrF+/csbU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dXVCcWZvblZjR2tlT3FGRnQ1WkJ0S0JHNWtrS0psWnRLcjFKTkVVczJubFY4?=
 =?utf-8?B?TVczWlJDanZTUmpOS2NxOEMvL0Nsdzl1OUJpWDJPR1RHWDMrK1BaTzIrZ2JN?=
 =?utf-8?B?R3BWRHpqVVY5YWJZc2pvRmxxb0ptb0Z5NTU4Z25WRHR2alQ0NTlDeHlsYVUw?=
 =?utf-8?B?ZGhMQzQ2ZFM3VjFFaC9RSXZCV0RBcXY4TGxWZzhFdzE0azZxMk9wVEdCenNE?=
 =?utf-8?B?ZFFTY0g5N2hWOW5YUjJsdm5HaE5hNkZyY2FZQm1UY2VCNlQ3T0tsekdWZkI1?=
 =?utf-8?B?Wm5Ca1QyRWYzMytsRmgxZm1XV2hhMlhHMUxSa29JVVlkOW80MVN5d1FScVNE?=
 =?utf-8?B?ZTM2RlJtN3Rza3VWT2Jvc3hEdzJManYyaTRmdW81RUc4OHN6T0FFZHMzcmRy?=
 =?utf-8?B?RC9WM3V5VkI2Wk9Qem1pOW1MdFk5UmhoWlhuZEVRazFZZ05sY3ZNRDV3TzJ3?=
 =?utf-8?B?RnFqZzNKYkYxalQ2TGtzODE2d29MRFNmSDJrODhqUUdkVnV1T3EvTmtZcGFG?=
 =?utf-8?B?K1NKTVB2cFpSQUhiR3A3NlUwY1FIaWpVMWVrRUt6MFNxcUZFM05mVnREUUZ2?=
 =?utf-8?B?b1I3dFpOODFwem1mQ2FpVG5KMUZnWnA5ZE5XamhlTWdwdzBCcUtTRHpiV3ZV?=
 =?utf-8?B?bzFXeG8wVWlSRHkwQmc4bzZ4Z0NKQ0NBcUpCQmd5RHZTSXRKS1Y4V2VuNjM5?=
 =?utf-8?B?UHpKbGhONlp1bTlwbmNqTUdRMjAwbkZxOERVRjhaaE1aaktHN21wbEdGVlZm?=
 =?utf-8?B?bW51alJnNldXajhCM1JTNVVUYVNTNWI5RjNDV0pzaE5ITFY5L1NjR1dFeTRZ?=
 =?utf-8?B?Vkpvalo3M3lGaCtsbnZIUGhNb01KRzlpNjYrTVJaeHJIVDVEOUhiakN3UmRW?=
 =?utf-8?B?T01WTzV0VkU5eEtmYXlxWFRVUlNqWFl3a0cya0NVV2RkbGhZT2tsenU4andU?=
 =?utf-8?B?K3ZtYitjZVRDNjdQUmVQT2k4eDJtMUo2OXBLaXhiZzUybHBhcDJjdU5VMy9V?=
 =?utf-8?B?Wm5QQnlsRnNqaW1FWFFkZGoxaFRNbEwyWWo1Q24yVjhLUW1ocG9xNlh1UTRT?=
 =?utf-8?B?dTh5SDFEZVpweFFIeWxyNE4zTHpzTFhadFp2cEhKMEVOb244MnFtQUhYZHM5?=
 =?utf-8?B?eHB1MFhBTnY0NUNqckJnODJxbi9VSnV1cGhTTVB3SlRlN1hBVW4wK2JZNFkw?=
 =?utf-8?B?bE5QTFByL0dybW1BSkg2a25RYmVmMlR6c1ZDd2QzaWZjeGdKYnJrMmlDc2ky?=
 =?utf-8?B?aDdWWDVtYUpVZUtPVHJxQmdaUThNMDg4TWFiazBQS2twMUFpcmtjMnhWcmVS?=
 =?utf-8?B?S2Q3ZkMzbld0K3Y4ZkdRZTBHV0FlS01qbEhSL3Nlc3RBZzU1aGRMNlV1ZFJn?=
 =?utf-8?B?Mk1zNkdFUWhpQ05kR0o0VmZ2V3NId0ZWTTBFVERuY25yNDFSUVJkYkdNSXhu?=
 =?utf-8?B?WTBTUkpacW94NTVtQ0o0RWxSUE9XMjFWRDdRck1ZbWo3YUlxVlE1T0M4WWxa?=
 =?utf-8?B?WWkyOXF3eFpGWlYvaldyMk5ETVYyS2JrTWpxOG5CT0t0TlFUak9KSFViYkNm?=
 =?utf-8?B?V1pXdG9vWWhzTURXZzNrS04zRFJEL2NqbFRDRmlrUDJrNDg2dkxoWE51dWFj?=
 =?utf-8?B?OFB0aGRBWW1nalAxVC9UM0tiRmxCZVZaS0wwK3pqaW1pU3gvcXZNVlArZU5N?=
 =?utf-8?B?VExuc0pmSlVqSURPMDh4dUl5NXRhOUhjWGtOelJqWVVCdjcrQWl2cWp1L1JX?=
 =?utf-8?B?cUdoQ3pmdnJpcjFpRkprbGtpQmhJbzdnWmZuS2hqSjdMNGdyZWJvQWEzU3Zw?=
 =?utf-8?B?Tm1LcWxhUU1LVjBpcWczbVV2SitPM2N1eVBvQmZkdkZneC9LSmgrWk1BZEt6?=
 =?utf-8?B?YUZWU2J0ZUNhTzdmZWlhS2IwUldwaW5aUHpudEpxRFU4Z2NxbERNdkc1YWpN?=
 =?utf-8?B?TGpkeU1zNnowcGVudHNvWk5oYm44MjlleEkxSFUvenBRdVQwRlZabUErNWNi?=
 =?utf-8?B?THEyL24rMkJ5SThMdzNHVU80dDczN3NRcmFPNnYzTEs0WFFvbkF4dUVvSGNj?=
 =?utf-8?B?ekgwdVFmbnZOTmxRQzFtUFVnbGlCc2F3TngrOWtNY0YwOG1CWTUrVWQ3TFJB?=
 =?utf-8?B?MDJKdjBEa2lSZmgyZVpycS9MT0JtUnlNZHpLQTRhOEltSFgxU2NISC9ZQnUw?=
 =?utf-8?B?NEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 86495586-4022-47cc-b696-08de13070913
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 24 Oct 2025 14:10:07.5243 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: +xJ6PefjvLtXPNm5wMvZF9iHzKB0Qm+2JKj9aY9d1jT9zZWA3+Qzz51XCTFRFsylftArtUHfhZdJcDSRnMGpF6YvdX81QrrEiPQURqC78m0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFBC9025319
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


On 10/21/2025 12:20 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Extract the VRR timing generator enable into intel_vrr_tg_enable(),
> as a counterpart to intel_vrr_tg_disable().
>
> Note that the CMRR part is probably broken, but so are other
> things in the CMRR implementation, and thus it is currently
> disabled.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_vrr.c | 44 ++++++++++++++----------
>   1 file changed, 25 insertions(+), 19 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 3ed6a56fb779..b49121b2676c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -692,6 +692,28 @@ static void intel_vrr_set_vrr_timings(const struct intel_crtc_state *crtc_state)
>   		       intel_vrr_hw_flipline(crtc_state) - 1);
>   }
>   
> +static void intel_vrr_tg_enable(const struct intel_crtc_state *crtc_state,
> +				bool cmrr_enable)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	u32 vrr_ctl;
> +
> +	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), TRANS_PUSH_EN);
> +
> +	vrr_ctl = VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state);
> +
> +	/*
> +	 * FIXME this might be broken as bspec seems to imply that
> +	 * even VRR_CTL_CMRR_ENABLE is armed by TRANS_CMRR_N_HI
> +	 * when enabling CMRR (but not when disabling CMRR?).
> +	 */
> +	if (cmrr_enable)
> +		vrr_ctl |= VRR_CTL_CMRR_ENABLE;
> +
> +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder), vrr_ctl);
> +}
> +
>   static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(old_crtc_state);
> @@ -711,26 +733,14 @@ static void intel_vrr_tg_disable(const struct intel_crtc_state *old_crtc_state)
>   void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>   {
>   	struct intel_display *display = to_intel_display(crtc_state);
> -	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>   
>   	if (!crtc_state->vrr.enable)
>   		return;
>   
>   	intel_vrr_set_vrr_timings(crtc_state);
>   
> -	if (!intel_vrr_always_use_vrr_tg(display)) {
> -		intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> -			       TRANS_PUSH_EN);
> -
> -		if (crtc_state->cmrr.enable) {
> -			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -				       VRR_CTL_VRR_ENABLE | VRR_CTL_CMRR_ENABLE |
> -				       trans_vrr_ctl(crtc_state));
> -		} else {
> -			intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -				       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> -		}
> -	}
> +	if (!intel_vrr_always_use_vrr_tg(display))
> +		intel_vrr_tg_enable(crtc_state, crtc_state->cmrr.enable);
>   }
>   
>   void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> @@ -763,11 +773,7 @@ void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
>   		return;
>   	}
>   
> -	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder),
> -		       TRANS_PUSH_EN);
> -
> -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> -		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> +	intel_vrr_tg_enable(crtc_state, false);
>   }
>   
>   void intel_vrr_transcoder_disable(const struct intel_crtc_state *crtc_state)
