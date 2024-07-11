Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8147792E3A2
	for <lists+intel-gfx@lfdr.de>; Thu, 11 Jul 2024 11:42:38 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 294B210E9EA;
	Thu, 11 Jul 2024 09:42:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bb7Kq5xy";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0544C10E9EA
 for <intel-gfx@lists.freedesktop.org>; Thu, 11 Jul 2024 09:42:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720690956; x=1752226956;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=80gkB1Tf/I1GDTbrcFtRjcG8gwXY3Ui1vstB/PSyRGg=;
 b=bb7Kq5xyP1HbXghkoG6niGz57G8H36n6EXcZWCu7mBjud5HmRqBY32x0
 dTRkPnJ9GAv2k4xDXC6fpzzSBBg+6IqCc3swlLrV+rXkAgxDBaeFdTd2U
 tPT0lxLF3O8mGSrAURh3RRGlFDn98qbtPJWYICRRY+/ankBwYy04RN+ed
 ap1M+h6En8wNhEuwVd1QS1cZjESOeKWVNv1j/nNFQ06RFXg7llLXeXhyQ
 3MlUV2c9aNlgJ/silEs7RoH2CoCzi695ZuuViVPV6YeKoimVP6MRwjvQu
 7VuOk1AMS4cpalghlc9AjqqkxH4cX7A5m2hBqhFIVA1BsPc939eiYEOwX Q==;
X-CSE-ConnectionGUID: IvU5/3jKTHGP758KIemqQA==
X-CSE-MsgGUID: B0rKR62UTSumhOSuORbu/A==
X-IronPort-AV: E=McAfee;i="6700,10204,11129"; a="21823163"
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="21823163"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2024 02:42:36 -0700
X-CSE-ConnectionGUID: on8K3IbISi2JVhtjwn/E4A==
X-CSE-MsgGUID: g9GPt69KTYWcnCiSKKESIw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,199,1716274800"; d="scan'208";a="48581939"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 11 Jul 2024 02:42:36 -0700
Received: from fmsmsx602.amr.corp.intel.com (10.18.126.82) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 11 Jul 2024 02:42:35 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx602.amr.corp.intel.com (10.18.126.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 11 Jul 2024 02:42:35 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.173)
 by edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 11 Jul 2024 02:42:34 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=NBhiXIFkueLYRkRwwy7PhJOzzZoOBwlMtmeEGD8pCbDGkKsyvUt39NiV269sNjW9KT5+c8rsm4yu5osRz69Y6KOD1Mr737FUG66P4ZvUkKbvAMr67Dc3HmU6+Rscq4B0Olk/RcRTQzXICI5rftvX2zpQLjR9pFoZG3JJfGtx7+BzD1BRmurIT1B88a7b4KxKgXzTijEZ9XK85fkgkZBnDYeiRO+W0uppfi1meE0d/5bB+UqFhBP5l2MW0kSpdiWD9bhdtIWk96SkGxJio3JhqivQSsMEchBZ+ntoabXhW9/jFDZWjOlGA2hZ3Tb2owh+JEKzgmyLn6V3PlRsnEv72A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=7tLj8wWW3ne9Ru/hU291SdoeFSKv6tRKnlIt6e/ZakQ=;
 b=qSDQOs1ZcKgZmMXZAEIVzBJ5hFbh/MWbU1wQ6YdjIWKKdfBwxZsUV31i0aiNULpQTFxyY5vJDaXnyDi+PeI8BlLcdE+uZEB6i5AwpF+FhdAMbt2iOGYVGEqZ+eeiRlYWRAuZfBVVEpjokMECDDK96xyT122xUcmPqMpC6ZKyOajjFcVz+cPVhcQ8dDlq+2fTYRLfwJDDW9WsDHSktfpeVTeq8X/lzearVQl5y4R//nc7N1YVQWaB7L7Q9uAPajqiE6k1Dk0MYBEsQ2U7E+O200guWcfbmGaJoTJ6EVQjCsGDcRqDk5yvlP0BPWHaam6aVqNpJb572mjlfHiJdMjrJw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by IA0PR11MB7934.namprd11.prod.outlook.com (2603:10b6:208:40d::12) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.7741.35; Thu, 11 Jul
 2024 09:42:27 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.7762.016; Thu, 11 Jul 2024
 09:42:27 +0000
Message-ID: <c05e9804-1fc2-451a-8a58-b5e94d54147b@intel.com>
Date: Thu, 11 Jul 2024 15:12:19 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 4/6] drm/i915/dp: Keep cached LTTPR mode up-to-date
To: Imre Deak <imre.deak@intel.com>, <intel-gfx@lists.freedesktop.org>
CC: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
References: <20240708190029.271247-1-imre.deak@intel.com>
 <20240708190029.271247-5-imre.deak@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20240708190029.271247-5-imre.deak@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0174.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::12) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|IA0PR11MB7934:EE_
X-MS-Office365-Filtering-Correlation-Id: 6041d5c3-733d-46f4-d050-08dca18dc681
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?QklpZUNQU24ydFhxWEdVS1F4dUJVR2VWck53dWkzZnNnUzVoNWwzR2w2TGRF?=
 =?utf-8?B?aWF1TUl1eXA0KzBkblVNd3Axa29pdi9ibkxsbG5PeU9sOHBPYWJ0QjlJbXI2?=
 =?utf-8?B?ckxNcUxBZUhiRVhQbU5zN01GdlplcTYzcjh0Q0RTeVNXbEErcXp1L3NRc1Zz?=
 =?utf-8?B?MThXSmRKandlVnhzZytrR25RcEVCN29BZno0ejBwcjZQZ3BTM1IvTGxlZTlz?=
 =?utf-8?B?YTN4NEZkV2ZlVXVka1pvQ09zdERGQ25TRkFqZUhZc2lxcHZzVndPU2kzVDMv?=
 =?utf-8?B?a3paRDBtSXJ2NHJHaEgxb01zc2lad1h3TjJRNVZsb2l1ZnhhQ2g0d1kwTjVP?=
 =?utf-8?B?U2lZSFRoeVAxUzZFbEg4TDFwQUM3cnNwRS9wWUwvS0JFK0ZwRHhhTlNiUXl0?=
 =?utf-8?B?QmpKRTl4ZGQ5amRIZkNHT0VaRmZZZGh1YTdrTDR2YlJoWHhNTE1mNWFyMTgr?=
 =?utf-8?B?V0dnTzEvRXJHb2VwWEFhSUJsODBuQ1FmdTZkb2dtSUJuTUVKQUVFa2YyaUlZ?=
 =?utf-8?B?ZDdadUtLazl2aWlma1VnalBBUkhRamVoNEROVVl1V3BjWER3MnBPL3BrdjQ3?=
 =?utf-8?B?VG4rSGJ5VDV3UldXWlZVeGJNZ0ZXbStKL3RmZjN4d2R5NVhzODBFVjh5QTFY?=
 =?utf-8?B?SEgvOC9ZaldUME1nYmZyQVRYRFNYZkx6emRJU2RncWg1dzZxdXFaZzh1VG9v?=
 =?utf-8?B?bE4yV2JUd3dOay91TWNqMlZ6Y2sybGswRnJTOUJsWTVYOCtvdWJEdExHMWpn?=
 =?utf-8?B?RlM0ekNWbXowbHAxVjRZVTFsOGgxN0ttQmpidG5PRGFuT0M5WGdKREVoN1Vk?=
 =?utf-8?B?aHFqMEJiQzR0ODIyMGVaT241Wk14SlNadkFpeGpJMlRZdHVUU09HYy9ZdEpu?=
 =?utf-8?B?R29nMXFzMENMOFBzQWtHek5SRnlWaStoRVBhcWJBTDg0U20vS3JuMFBTcDcz?=
 =?utf-8?B?RHJpWHJidUpvZDZWMU9YRjdCUWRzK1JXTlV5RnduYzdxaEo3L0lTa3pjUHpr?=
 =?utf-8?B?Smpnd29FeEg5U3NEbElZNEltQmVzTmQzaUlYWjZxQWtKejh5a0Z1cFJ6UHQ0?=
 =?utf-8?B?NGt6aXJ2a05aSHJQYU5VYXhsN1REMjJZaTBneXE2S01LL0pZQWRKUjVVMCtY?=
 =?utf-8?B?VmxFT0xtK0d1MVFnYmpXbDRNeXIzbjRMcW9QK25Sb0k0M1BJdndPbnRuc2hG?=
 =?utf-8?B?dVhicGVFZGsyNEUxTDE2bHhRbGpxUXg5NktVemRmVnc0NVJxRXd1S3ZwZWtr?=
 =?utf-8?B?QU44Vzd2M1VRRnE2dUxWc0l6UVFhVlEydm92aWdZbU9ySnJaTjA4bEtpOERn?=
 =?utf-8?B?cVcxcVlldXFTMFdZL3JrMlFSa2VtSFVrS09mdG42eTN4Yy96ZU5tcTVGeTRj?=
 =?utf-8?B?cytEVSsreElXN1lxb3Q1Qk5aZjRFRVZrWWg5cTFneWtpUEg0ZGlacHRlTHhR?=
 =?utf-8?B?OXBORmJncE9WOTNVaDhnUy9ja21qSjNpN3VpK0U3L1Rqb2Fld0hvOWJVS1U5?=
 =?utf-8?B?c3dQYURqUHdVZmlRRjE4N1pjSGc5RENmbW9nWkJTeHBqaHB4WDlzUWxKN1VU?=
 =?utf-8?B?Y0VTTGV4eEdBS1FDQjZMWkpOTGdMR3VPZCtIN0tyQjBtcTErKzlUTXV1cGY2?=
 =?utf-8?B?dkVRR0MvRTZWSFcrTDlZU0s0ZFJCVUErUDU0T0JHNTRtZGk4YWFGbm5ZSWJT?=
 =?utf-8?B?dzFNSUxITUNFVXRYM3JrQy83alpYWGcwaExPZjgvR3JmTWJrbGZYMFVIbFVr?=
 =?utf-8?B?WFg1Mklvc1BOellkNjU2b0FzMEFWNlVMemNHY040SU1TNFRKeFIxZmhKQ0Z3?=
 =?utf-8?B?RnFkRmNJWWNaTytRY0txZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?SXh5OWN0b0FReW5nbXF2WXVKb1dEcDd5TXp3cmV1UXdPRXZNWXliWXYrSlg2?=
 =?utf-8?B?cm12RjdSYmJ4UUFPeDYvZnpHRVNjNE84MXFpUERtWXFkQ29jTjR5cXJGdW9n?=
 =?utf-8?B?ZXNLZ1hIcTVVa1IyQnRSb3FtaThISXhadXl5Z2NqZHEwYmhjcnArMnpBSlpC?=
 =?utf-8?B?MTZUUWJGdFY2MVc0V3RHSkR4Y3YxVG0rYXNkU1hlMCs1ZDg2b2RLVXFwd2Yv?=
 =?utf-8?B?eHh0NXJ5dTk5S0Jnd0VFN3E2SnBjS05mKzZ3Q2czK1hBQkV1ekRkTytJMHEx?=
 =?utf-8?B?bnNjOHYwZ0pLeUFpTC9rcHlhNjhQUkcxQ25GajNEdUVLWnVwR2ZZVkI1cjlE?=
 =?utf-8?B?YWZ4S1R2czRWTE1leVdPZExua2JjZjdMOFpxMEMyZHM2RVh4d2F6eUVDVlY4?=
 =?utf-8?B?VzNaRkQxWVE2UmxNR1NmYlVvaEhpRDlkVG51RmZGY3htRnA1RUI0ZVl4TVRB?=
 =?utf-8?B?cDZuL1IwVlFDdXBTUFRJZ1lKTkVXeHdhN1hZbm10ZFlSWnlFVDVDblN3eFFa?=
 =?utf-8?B?NG9mWUlRMzU4U0ZwSlBIdWE1b1B2bGw2cTNsZldaNGJ3WnkxRmRxTkY5bWNU?=
 =?utf-8?B?NVNRYVBiK1QvTlJNRW45Z2FKS1dMU2MzVnhCbnFzanY2ckRxbjZvN2xSRzR0?=
 =?utf-8?B?MGRRcDlQaTZ6UGU3cHFzWGVFWkt1Tlo0ZHV4b2ZDcGM0OW9xRlhmVkJjanFH?=
 =?utf-8?B?bk9Kcm1LZmxkMTBMTU12b3pPc21veldiOUUxZ1VLOExCejlnMmtSOVhneXB6?=
 =?utf-8?B?VEwrNGRjaHQ2MkNVQWtDNGEybHdkTExMYWdmT2xrRFJMTHQ0NVBjWUhaVXB4?=
 =?utf-8?B?eEM4R2pUeCtUQ1Z5VUI5dk4wU09GYjIreDlmUGNXNiswNHFpMGxJLzdrWmZs?=
 =?utf-8?B?ZzFrR0VWenovNDNpOXczZXJkc3NjR25wQ05ITTdjOWp6SDBnMzVBYTlyMll6?=
 =?utf-8?B?cEJlNGxjN1J1MndKazRqUVNBdG9hZm56TkptRVR5S1o5RDF6bEdvVnZTbkV2?=
 =?utf-8?B?NE9RaWw3dWxrSFlJS2FRcEZCS0JUTm9EZDJhc0JuMlpPZmJHMklDR04vZUNn?=
 =?utf-8?B?ajdWWUkxYkJXWFJYaTRvanFOeUNUTE9IdEsxWmZqZkhlVkVzVXZCYVhXYkha?=
 =?utf-8?B?VExIOE50NXBGQ1VVdXpja1E5NTdiZXErVlkyVHQ4dlZNS01XcFV3N1lzYjF3?=
 =?utf-8?B?UUFjcWNwVzNNYXNWaEhEWGpRN3NtbDFKSEoxT2Fka2QxUWRIeEpyWDRYNVhM?=
 =?utf-8?B?NUV2K25FaG5jT2RqaUJpK3hIUklOeHNrNnBQRnU3YXd4OTNMUjRiaGpRQVEx?=
 =?utf-8?B?S0RQZjV0VEN5cHM2TmJla3h4WE5tcVBrblFZR0J1Q05kWFZpOHprL2VuU3hN?=
 =?utf-8?B?ZE11Zml3WVNaZ01QbTdEWEpiYVY4ekFZeHk0N3U0cWkvcXk5SW0xa0NvTVp3?=
 =?utf-8?B?UGlLNE92UUZwOXJiMThoVW0veEp2eHZ2TG05clVEbWN0b1lEVy9FYTllUVNF?=
 =?utf-8?B?bmNVWnJnUFVFRjBBL2R6a0pHQUdwL3hnbTFaeGpnb1lwVWdsNkVmNmRYMTdS?=
 =?utf-8?B?eGx0Rzh5VXJWd0hZS3JidkEvOGhiQUV3Qlp2elNjUlFIa25mK2JGWTRDMk5O?=
 =?utf-8?B?elZURFlkQjI3R3FzZ2VibjZHbnVrd1d6VVhPWXJNVGgxQzFPOU9VVTdNdW55?=
 =?utf-8?B?aXRwT2hxYW9OZG1BQWJ5MURKMFVwRUVGTkUxVE1vRVZSbE96eUUrNDRydGxC?=
 =?utf-8?B?MlV6VDhuS3B1azJJeThyNjRWSTRZTnFvZEwydDlhRGxDRWNjamtkUGJSWTFk?=
 =?utf-8?B?dzhqbEZDSnJTd0kzQ3Fpd3U1a3d2K1A0Wnc2UFFGVk1rUWkvTkZmZXhOM2Uy?=
 =?utf-8?B?R3lSTUErNlI5dmJPME1JYlZnSDB4a0oyM0RzRnJYNzVrTGVnUTNLelkzMFJY?=
 =?utf-8?B?amlON09tZEY3WU9jOEhJdS9IL0VaczhCYUsrVTRSR0JBbHJBTGRXZXhxOGp3?=
 =?utf-8?B?RndpL3oxbklhR2I5N3lhQUR6czdUMlp6dTNWY3pjNGE1ekQwNXpIaU5id1VT?=
 =?utf-8?B?ZHhOQ0Y5bW1QcjAwYjdjVjk5V0hpMDlwTlZUUkYzbFNSenhYZjlRekdlTGR0?=
 =?utf-8?B?eHR2cTFrTy9OZXJEMHNvbC9tU2k1R0lQQUVwSjFLZjIyNEZxc0liNkFXOS9O?=
 =?utf-8?B?YVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 6041d5c3-733d-46f4-d050-08dca18dc681
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 11 Jul 2024 09:42:27.5586 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: J4RkgHVd0gbli4vnsqsiVpLI1kwO52EBp3grCY6NjovQNPuVlnOOxa7lBanFegAAQH4/vCQMg/6lvxFTC6GAI2G9E1n05pMau7diLBjzWk0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: IA0PR11MB7934
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

LGTM.

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

On 7/9/2024 12:30 AM, Imre Deak wrote:
> Nothing depends on the cached LTTPR mode, however for consistency keep
> it up-to-date with the value programmed to the DPCD register.
>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Signed-off-by: Imre Deak <imre.deak@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp_link_training.c | 8 +++++++-
>   1 file changed, 7 insertions(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_link_training.c b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> index 56b9c5cb1254d..af0b71bdf1fcf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_link_training.c
> @@ -114,7 +114,13 @@ intel_dp_set_lttpr_transparent_mode(struct intel_dp *intel_dp, bool enable)
>   	u8 val = enable ? DP_PHY_REPEATER_MODE_TRANSPARENT :
>   			  DP_PHY_REPEATER_MODE_NON_TRANSPARENT;
>   
> -	return drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, 1) == 1;
> +	if (drm_dp_dpcd_write(&intel_dp->aux, DP_PHY_REPEATER_MODE, &val, 1) != 1)
> +		return false;
> +
> +	intel_dp->lttpr_common_caps[DP_PHY_REPEATER_MODE -
> +				    DP_LT_TUNABLE_PHY_REPEATER_FIELD_DATA_STRUCTURE_REV] = val;
> +
> +	return true;
>   }
>   
>   static bool intel_dp_lttpr_transparent_mode_enabled(struct intel_dp *intel_dp)
