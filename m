Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C81AD10D6C
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Jan 2026 08:20:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8DA5A10E2DF;
	Mon, 12 Jan 2026 07:20:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BMMVmkQV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 38B0E10E2D7;
 Mon, 12 Jan 2026 07:20:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768202451; x=1799738451;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=AP3MLs0m7ju4yuZvwgt3NNVZQG47xiHbeUNp0ASFDIE=;
 b=BMMVmkQVsCPGx2zVIs5jWszvUCpm8D7qOXF+6Z0t7a4sCUEnRBi5kyLt
 euHMKHUvyCdDMGyYMRKYyh5snNVDd/4n29D/a89pFSapA1Ofb0HFSkjDd
 SxiFlzirrlq4eVCUeqp7TzW1wo00RrpP53QoRX5DqfpqhY+z5oPUAhEA0
 /GDFhea+IWGmoUDgLgCJKPaN/V8O7fnhRbYR0T/Okxk5yySFKwuyegWev
 wg7ExdxYA4y4M8XFz/WV+Y8Gi8sK8IfMyDIHXwtwcIpmwRNbFTFAdCVg9
 c2TMPyD0+bNg5SqWt3yRGdhXcn18Uprv95GcU8QEVJavpgwCNEk2RZlO9 w==;
X-CSE-ConnectionGUID: OUYhObL0Q8ixj4WAVxriLg==
X-CSE-MsgGUID: MNNQo7kzTCOafX0gCzkokw==
X-IronPort-AV: E=McAfee;i="6800,10657,11668"; a="79766168"
X-IronPort-AV: E=Sophos;i="6.21,219,1763452800"; d="scan'208";a="79766168"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2026 23:20:50 -0800
X-CSE-ConnectionGUID: QOFPk9rqRmKrs1WN7DPwgQ==
X-CSE-MsgGUID: Nn1wRpudRK+wSXWwag9keA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,219,1763452800"; d="scan'208";a="234717241"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2026 23:20:49 -0800
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 11 Jan 2026 23:20:48 -0800
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29 via Frontend Transport; Sun, 11 Jan 2026 23:20:48 -0800
Received: from BYAPR05CU005.outbound.protection.outlook.com (52.101.85.4) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.29; Sun, 11 Jan 2026 23:20:48 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=fl/+fMbCR/KCrLd7SAtIO8iIatG2L/HH7Nw8toXrRD/22zFbA+06IvH8IRGS7p7BQ6fhbDD92/gh98E49ef+uy3s315b1hfjMEajdelftoFloLFeyFPJRCZE8nJg/MfLtu4pFo4mjz2TzJKZMB+TAVhbb+HU+L6k7gWPmib7hKS9sGG7tY7jKoA/edW2m/GNJv9PqexLxm5uxtcAkJiUTFRi2vWh0zC5MoEhDMRT5nFX8Qc1+LHR0jJ2ZJ4qXRScgQTphAV/0WvOPkiNhe8Y8f+BbASZM3YUjcbXvTowoF/frra0E5bJLw9GvpBJRgQQh2lhevlB0dtspphgsI8OxA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=h1r1lH9WD/N+kW4k5rJM8ZJItJfxs/d0VWrTWpTyy70=;
 b=N4jAkoFPPplQsI5Mf31L+tR00e+cJ2yRfHufAtnpjsHQbfwAlZqQzvX2qAMiWqfzLzfP5BOPtOsSRT0lopsiwP5Wkj/6I8r0dfj2OVJbCC3npjrUaZAT8KL9bC5u5d1Q4EEpmsqY25YtmuV0KrMbuTXF0Fw0Tqr6yBhhgvKSvBuTmj4a+o413qD0mECeFeHxMbWM4ZpEr+dOt9sgHFU3xm6MvJW/Q2ymK6GfxRzL+X3Flr29GORK6zJ8uOhNMOuo8+Q08QGCe41wuKJE40lEGwO+pUD4O/0L/KhOjCuTxmGAiDpem/97JT37JSiyZx3dlNddRnE/D+gKOEKAuZf/jg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by SA3PR11MB7612.namprd11.prod.outlook.com (2603:10b6:806:31b::7)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9499.7; Mon, 12 Jan
 2026 07:20:41 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%3]) with mapi id 15.20.9499.005; Mon, 12 Jan 2026
 07:20:41 +0000
Date: Mon, 12 Jan 2026 07:20:30 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
CC: <igt-dev@lists.freedesktop.org>, Kamil Konieczny
 <kamil.konieczny@linux.intel.com>, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>, <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH i-g-t v2] tests/intel/gem_lmem_swapping: Avoid false
 failures from oom-killer
Message-ID: <hikkcyrelmy7dqijsamiwbgvozwapeg7flmwmeschvdla2snfc@sjilwgemapx6>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <20251219100218.334117-2-janusz.krzysztofik@linux.intel.com>
 <st6kgzhfy5j3axw3mc44ckzwpe3wdpjpztgoy6ksmmnh2ciqaq@imi27uxmupvm>
 <2248271.irdbgypaU6@jkrzyszt-mobl2.ger.corp.intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <2248271.irdbgypaU6@jkrzyszt-mobl2.ger.corp.intel.com>
X-ClientProxiedBy: TL2P290CA0005.ISRP290.PROD.OUTLOOK.COM
 (2603:1096:950:2::15) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|SA3PR11MB7612:EE_
X-MS-Office365-Filtering-Correlation-Id: a2457c58-1f48-4896-2c7c-08de51ab17ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?WGMrQ2RtV0RKOG92eDdjWEJpUmJRd3Y5ekhvelBoVW9TUmZ6cm14Nmt0Vkc4?=
 =?utf-8?B?b0llb0dzTmtYa0JaUGw3RWpzNVIxbURUV1VoMkhnaFk5alNTNldhTmpFejh4?=
 =?utf-8?B?cnJaZFFrZ1Y0aDBGUFZVUVdyMFRvaVo5Q3hBOWpiakJDWGFQT1AydHNSS2Vt?=
 =?utf-8?B?OU9nL1Q4emw2a0g1dXFLOGFPZ3hCRG9XMklRYVNxc1Y4ZldJeFV2QmpZdXNZ?=
 =?utf-8?B?NmJaL1lRa0hvYkFpcC8xbjdWOWFrN0hBSjJpMFA1TUlpTlg4ZEFzQ0lzSkNM?=
 =?utf-8?B?T1gvVTUxY04vU280T0N0UXJLd0g3VVVJcnhQSGxmc0oxbHRxK0ZhM25vUkxj?=
 =?utf-8?B?aXpsOGtPUktXZFljU1pNcHkwalNTdzBqOERGRFIzWUFHOU45c3l0NEh2NlRL?=
 =?utf-8?B?V3NYKzE3YUdnUXVxTEgxejd4ZU16WHVNK3NPR0doTHZqaXlmOTkvK3NlUmxJ?=
 =?utf-8?B?T2JmQ3QvbUdNZG83SzVUdEYrZmRrakRVZEhsWVVRTUg5WnoyNzhWZXRBVE8z?=
 =?utf-8?B?ZHRxb2JudmRNaUNzbjNQd2szQlMyZmRWazk0Wnhyd2ZoM0lSdExyYVY3SjF3?=
 =?utf-8?B?TFZLZjMvaXVnTjM0RmRLWXVSUW1POVFDN0ZtT0RJTERsTEtrc2VQaHFBRG5j?=
 =?utf-8?B?SWN0WkxqeU5rMUpnMXZVR0ZkY3VsSnVaUnVpN3hsWGsyZlZJWWtJaEhXSHZ6?=
 =?utf-8?B?Q21VTXBKZnNPWkdLaCtobVZiVkJ6S2V3T0swUThqbndIU1dFRjl4WkJuc09L?=
 =?utf-8?B?UGJ5T1FsVUgwMm1lMkd5YmM4eDI5bmZzZ2dTeHJiZWxLcTAvdjBlMVBjRXo2?=
 =?utf-8?B?R3lsM3FVU1pGSDYxWTVsc0dnTXNGd0tkT216QXVPdVRlMno3R1dQTWg5MHJG?=
 =?utf-8?B?RUNUTVlqdmo0U2NzTGcrczdqM0w2ZXY1L3pTTzBPOElMVC83UEFzRjZqNlBh?=
 =?utf-8?B?YkFEM0dWSFpRbzZUaGVqdmtoYlJRS1Y5ZzBIa1QxSWxJSko2M0lvZHNLUy9S?=
 =?utf-8?B?TmJJOXd4S1NJaUV3eG9nU3hLWFA2K3pXYWRDcldrc2xiL09wZXo4MnFKZWl0?=
 =?utf-8?B?MUVUWWkvU2lRd3I0ellGdWgvdTlRZlpXaDQrQlRNdEl1ZHlTbzVwbWRIek1j?=
 =?utf-8?B?UUNCbVlhMmROTWVTeHdCYUNTNUdmbndVaXhhb3B2OTVLYnZ1aXphenA5K3px?=
 =?utf-8?B?WXVUNDluSmFpNGtoV1R2cnhUM1pSY0F3V0FpZVZsMFZKYllGVmlWN1g0Mjlw?=
 =?utf-8?B?a1VJWHVJd21yMVJ4RHBqaCsxLzg5ZXZhT3V1cFBibTR4QkpsV0ZRWjhaK3lr?=
 =?utf-8?B?Y2JrR0Rwc09LWDNTYlZaazRmTlhWQTI3RmFKdTUwbFNlNGs3UDhScW5rcjBW?=
 =?utf-8?B?b3VTVXZ4TWVRYStJeUsyMDhFakY2SXB6WlpKN3RIVzNGRkFTenNCZWRuZHFS?=
 =?utf-8?B?dVVxSWkrNkRobGd4WkcrSWFnSXBYNmV3ZlIyaXN0d0x2dnQ1eVpjQ1BpeG9q?=
 =?utf-8?B?NzFUSVBtVGJXMDl5d0xPUG9Vdml3TjRQeDhiQnduN2pxNkpIVzVoMXdFZHl0?=
 =?utf-8?B?MnI5MFFJajYyQ2k5ejc0SmJzK09RZUdUZWdOM1JyRHk2cUxPL1AvaTNBeksx?=
 =?utf-8?B?bmpsMEFqV2xsMStBQ0tzZGdGZDZuVktQclZMVFlmVmp3RURPYysyTEIzOHpy?=
 =?utf-8?B?czUxUDVtZE8yWnNMZGc1bERRNGpXcU1VNXJDNWVNUUN5M211SUowYWxSUW5w?=
 =?utf-8?B?cHBWdWE2U29uakhBSCtGMzc0RXFOUmtrdm9lS09OdEo3VkUzZjRsd1Z0NlRu?=
 =?utf-8?B?SGxUMHVpYnlYMkFzQjUyYXBuZkQ0Wlg4bmFTMzFwRHZCaUV0LytQUk1KckxL?=
 =?utf-8?B?TnBFc3N6UlgwdzJyZmF0cWRhRis0QnNtZ0g1QVhhdUlDNXI5dnNXZ3RhSjM0?=
 =?utf-8?B?ODIvMms3SE5qVXd6VWM5UHB0d1lsRFRGSzVoRkFIRFE4UmJjb3ZEQnl0ck04?=
 =?utf-8?B?cXJCUDZvRVNnPT0=?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?S2JxK29LdjJWT29GbUNmVUljNHJUR0owTDAycUhDZXl1eXBTUTZ3c21rbXF3?=
 =?utf-8?B?NnlNN3pLZEFvTFFlNlVhaGlNNkhvVThlaTdjazNwN2taeDJPSEJNenRhTmpl?=
 =?utf-8?B?WE9NRE1jRXp0SW44NVBCS3pLTGRQWHNTanAzY2pmSWt3amVIbnAva3FNM0NJ?=
 =?utf-8?B?S3U3cWhONE1OTUl5U0ZlRzZaM0hKaDM4M2ZqbnprZHBnZFo1MlBqb29PU1BL?=
 =?utf-8?B?MFE0WS82N0FIclQ3VUNPVHQ1TXYwMytJSHNzcFR2Q0txTlNvYklrTThtUWoy?=
 =?utf-8?B?S2pFSXVQVWNHbE5LZXpqS0RuZEZ6eUlOQmptVEp4NXFYcEc4QnMxRXZZM3BC?=
 =?utf-8?B?TGFFZitPcmNiN3JvaWkyZ2NpS2Q4Wk5VdlBiR1V1RDFNaStka3BMZlhiRnJ2?=
 =?utf-8?B?OVlxQkpLYnluR2piWi9FL1dUamxyVW5SSiswSHM1Y21pOXk5cHhTTGQ3UEhM?=
 =?utf-8?B?ZWxYV084b1E3dDVjMTlJVVYwanJjUE1aTzNUaldVQ2tOZHpIQzgrdnE2VTdU?=
 =?utf-8?B?SUx1aXV6MnloSHh5OVYrclYveDUwN2djUERRelhvSnppL2tEQXAyOUJ5cTRB?=
 =?utf-8?B?MVFzUlZMbEhMRXVkMG5SSDJyNHdrUlkweXNid0pVU1ZLVjRwd3dFTHpVbkFw?=
 =?utf-8?B?WGJGaEdRODFFbWpXMWg5Q1JzeUZIRVFJVnFham5OZlNTRXdzK0J5SG54Z3ND?=
 =?utf-8?B?SmM0NzZFZ1NWbGVuNTBQb2M0UnNTbnJrZ2NYdTJtUlgxTFlmRDZMRXVTN1NV?=
 =?utf-8?B?L2YwcWo0d2JYOStrelRZSE8xWVhKMksrVGhXNjV2bm1qWEZkOTU0ejk4akZz?=
 =?utf-8?B?K3o1QkxqQ2dXWUZCNFhOd29iTWNUUzZabEluRTVvOXFPQmgxazFnbTNiOGdn?=
 =?utf-8?B?SjJtOC9pMFdzL2swdS9QcE00N01CRmN6eDV1dGZNb2VmMkQxNFh4eHRSWllj?=
 =?utf-8?B?ZllmT2pYK0x6bUVzb0xsV3NKQUl5MWRWaU5yZ2M4RUY5OHgwQ0YvekxTUGlP?=
 =?utf-8?B?RlZQQ1JvUkxXZ0o1VmU2UGtzMFhIK014akZCL0hSVnNYQnBudlhBdmhrRUo1?=
 =?utf-8?B?RVg0V25seFFqVHROZTB0N0JFbjFSalN6RTNJcHI5SGpxbjhUbnhJUnQrUHVa?=
 =?utf-8?B?SUcyY3F3MFVHS3prSGo3M0tvS29aS01YTm0zSTh2VVFxUmptR3RRMzhRVHVY?=
 =?utf-8?B?dzdzYXA1WnpuZEh1OGpqcGhHVVNJbnBoZ05pWEdhMUhBSkxDOWliQXZHUVNl?=
 =?utf-8?B?SkZ2ekZJN2s5VGxPWDl5cVRWMHJDN044YW5TOHF5MVV2MEZOL09NL0hUckpR?=
 =?utf-8?B?SVlRbVJiTDUrTUxSVGdRNWV5enQxWlU3S2R3ODVwM3ZBRmhWZEViQWR1V0tQ?=
 =?utf-8?B?WE9lejd2NXdxRm5sdEs5Y0NDRFdESjZJTEtjTFp5UzVneTZjZXdZYk1raWl2?=
 =?utf-8?B?cUhnYUNZdDE5cVlxRERqWmE0ck9CV1FsQ1hKRWxIdXd1TXFtWHhuUkU3bndK?=
 =?utf-8?B?SlZKakFiQk5FdER1ZGdJUmxWYldxSkJyS2NNdys2SUc0YjZJMlFYZnBlMk5N?=
 =?utf-8?B?OHg4dWIrSUI2aGlkRXNzTWlmNm4xOFkvVTQyMVM3eU5ZYVNWbDIvcU83S0Js?=
 =?utf-8?B?THljbDVvTjM2L29ENmhtdzI4VEJTckIzZWNyTmRiMXF5OTBXakdYTHJRa0pV?=
 =?utf-8?B?Si9XWWhpNWRuZVl4Yk9qaDZhejVnR0JKZVJQN1lEaVpCeUNzU2pQalNzM1Aw?=
 =?utf-8?B?U2ExNElPOFcrb0lJeU1pVUVSL20zN3YxVDRpOVdKdkFaNG5mbGY1clV0WTND?=
 =?utf-8?B?cGQ4dFRwUUxVRWY5bEFTVG9yNU4yOVEwNlh5K2txZEJSZEdoL0tIam54a0x5?=
 =?utf-8?B?MFFPdUIzVzJ1SDBmcVU0S2FqRXhrTDcvbWREQU5QRFNXMm5nUGpETkFWNXhP?=
 =?utf-8?B?ZExqeklVek41eEhuOGxVd1JwUjhLUHpmUFZWaTJJZHNzNEZQejlreVE5R0Nn?=
 =?utf-8?B?b0ZTbGRqdFFMWlIySVdYd0llWlpEOHJFK2pDV2tsYXRBRk0zVHJSTlRGVk8v?=
 =?utf-8?B?SXY0T3c2VEtubmVOcGZYRHZLV2FQenV3NDA2aGRsV2Z5azdoN2ZkVkhMUCtO?=
 =?utf-8?B?dWwxa2c0c2V6bFRwaEZGT1ZkaWFOWmhmTkJLMDlGcGt5NEg4aUtKVTFDMTNJ?=
 =?utf-8?B?ZmhjK3l1L2F3UktpMlN3bWtTa1FnMTg0SDUzUkhFTkpwcEVXS1ZaNzZqSjF0?=
 =?utf-8?B?V2JrQnRtMStZck5jVXZNRG52UW91Nm8yNDdkUWZKWXR5dFJWT0JtMXEwSnF6?=
 =?utf-8?B?eVkxZHNNQVNjQlUzYjA1QzVZYmY2SGViTXVOZ2N3dm1DQ0QvRHhuNmxzN1cx?=
 =?utf-8?Q?BWNyboSmApYyUicA=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: a2457c58-1f48-4896-2c7c-08de51ab17ce
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 12 Jan 2026 07:20:41.4983 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: uuc9yqLItDCxK9/hKQKjnShJj0i38ENUnwZiew3iKOGJYDdAggQ/5V+oGcfGf8otFrtGg+DpVCjKsoBaCyRyAOCC7iLxZ+h7IDWS5mcXARs=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA3PR11MB7612
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

> Hi Krzysztof,
> 
> Thanks for looking at this.
> 
> On Thursday, 8 January 2026 09:58:34 CET Krzysztof Karas wrote:
> > Hi Janusz,
> > 
> > [...]
> > 
> > > +		FILE *printk = fopen("/proc/sys/kernel/printk", "r+");
> > > +		int console_log_level, default_log_level;
> > > +		unsigned int i;
> > > +
> > > +		if (!igt_debug_on(!printk)) {
> > > +			if (!igt_debug_on(fscanf(printk, "%d %d",
> > > +						 &console_log_level,
> > > +						 &default_log_level) != 2) &&
> > > +			    default_log_level < 6) {
> > > +				rewind(printk);
> > > +				igt_debug_on(fprintf(printk, "%d 6",
> > > +						     console_log_level) != 3);
> > Will this not erase the remaining two values held in printk
> > file? I mean "minimmum" and "boot-time-default".
> 
> No, it won't, see https://www.kernel.org/doc/Documentation/core-api/printk-basics.rst.
> There you can find an example of only the first element written.
> I've also verified the same rule applies when writing two elements.
You are right, sorry for doubting your solution without prior
verification. I also played with the printk file and it works
as you claim, so I do not have other issues.

Reviewed-by: Krzysztof Karas <krzysztof.karas@intel.com>

-- 
Best Regards,
Krzysztof
