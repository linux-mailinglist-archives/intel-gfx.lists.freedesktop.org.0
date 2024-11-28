Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E489DB23B
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 05:39:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9E27810EC1E;
	Thu, 28 Nov 2024 04:39:23 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="j9KvKb3q";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7D9F410EC1E
 for <intel-gfx@lists.freedesktop.org>; Thu, 28 Nov 2024 04:39:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732768762; x=1764304762;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=ja1KyCD0wyVPtaAzj73smCBb0oIgOTybADdWHThRgB0=;
 b=j9KvKb3qc/j1LpLz7tn0/vC2hv5Oz+46lcol47XuIREL9QkGpZngmK5e
 28nVbj6NdDDoZMZgZy2o9kpaBLbeyC1NlNTHJRO4aH6j3OdTCDmzJqQ8Q
 lvnsveFO/1Y05gHYwVcTXKoCFBTlA5J84oSY0vemGAd+ZdAWRnbJ2N1VL
 A51+mWvmR6mtio9lGSWZaPPIf/41MvtD21vHYevEccffaUA8k5SnFcDwR
 hhtcnLEgnTrBwqgCs7d90of0vzDmhGGC2gpjkWu91lbyZUxSZelVGvF39
 6LR6QoOSNcuz38oUMtqPdna8chQh3LnjGPdbz8QC6lDNDeIKIBh25nQAt g==;
X-CSE-ConnectionGUID: nGT/KHLpT+qNzf+E8cTbvQ==
X-CSE-MsgGUID: D/k9VtPFRYOuB3A0wS0amw==
X-IronPort-AV: E=McAfee;i="6700,10204,11269"; a="43656641"
X-IronPort-AV: E=Sophos;i="6.12,191,1728975600"; d="scan'208";a="43656641"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Nov 2024 20:39:21 -0800
X-CSE-ConnectionGUID: bpm+m5mES2CMU+2sqAukyw==
X-CSE-MsgGUID: GJYziww+RliwH2BOAyR9yA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="97187924"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 27 Nov 2024 20:39:21 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Wed, 27 Nov 2024 20:39:20 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Wed, 27 Nov 2024 20:39:20 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.48) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Wed, 27 Nov 2024 20:39:20 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=K/zeYHur/gz/xtzkhafcRagVshA50sBWRon4chrQpvZ1CDiyO1yMJKjWqPsu94RX6RMb1nSUTgcdwvDckD50N/PSepZqHS45v26ngAh4nNMMiBeghVkkqy9+ctlNywlx/tUigejOuwqCpf6tFtHVy2fa0wGkzoViDero/IYOrZ6B/2PKo4oERuff6zdJB4EEB1bKzNVjgg5OGTeHYB1SjIb1hD3/pSpe0klgfnZLc9onedVmItquruM5NEAXAQUtYLOmpLZ325r0YNya2CT34t+BD9FO5sXVa8LeSiGVbeozQkHAFMDpjX92zjHwGjDYgzigZoxftsPb2xeYZmdyGA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=KnMQso1CY7gVmCbUJoO1+RN5kSwjAB+CC753nvvTVJ4=;
 b=dz5Qn9TgIhuByM+dj4FsBAQPP6jLM8hdUcxn2hilR8adbYFr5738XC4BzQhlNxRrh/bWZhE1RcaurGpIVy/x8IlA1CnuXgTCFuUIBdVVir8xWu060nbyexR71oxFGN7jhQAGJz3qdEhTR/GmCvfwGkLGbBb3teGvGPmQtiaYRloJOA+WKPS90vAaPfbRnfiWgi0me0AB1OHGWpCS50LY/G+1GdRp6LGP6Ysrvs7j5BezG5186Lma+YOho947aMvvB6oKlaklYBlXhxTSIctkUL3EPpTptlm3h88KwuyxRuMypsW3v2scUH6r0o0xjisUscdENdeld/NVHRUeRxuicA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV3PR11MB8457.namprd11.prod.outlook.com (2603:10b6:408:1b7::10) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8207.14; Thu, 28 Nov
 2024 04:39:18 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8207.010; Thu, 28 Nov 2024
 04:39:18 +0000
Message-ID: <43ecac3f-90f9-4f6c-bb5b-f8099b791989@intel.com>
Date: Thu, 28 Nov 2024 10:09:11 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/5] drm/i915/dp: Compute as_sdp based on if vrr
 possible
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: <ville.syrjala@linux.intel.com>, <jani.nikula@intel.com>
References: <20241120084948.1834306-1-mitulkumar.ajitkumar.golani@intel.com>
 <20241120084948.1834306-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241120084948.1834306-6-mitulkumar.ajitkumar.golani@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN2PR01CA0191.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:e8::18) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV3PR11MB8457:EE_
X-MS-Office365-Filtering-Correlation-Id: 4fb1fc7e-2ba3-426f-f915-08dd0f669e8c
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?TDhWNVZhL0RzU2VaOVVrVm1LakR3N3U4RjM4bVJkYlVlTkY2bGRNZ3gyRFlj?=
 =?utf-8?B?TVFIenk3QzgvM0srRWxjUU1jaEZydVZQUEdIeEJZSTBRajhvVkF1M0RRdjJ0?=
 =?utf-8?B?SjlqWnRwUytyU2xWOE93R1g1ejBPT1FqKzM2WjRUTFQxQXZFbmxmbE9kN1Vz?=
 =?utf-8?B?bEt3bG53MzNTZTc2dTVDSngzRUE3WWJNVWN2N3dPU3RZWUpaQ0tUT1FPMWNr?=
 =?utf-8?B?dzBiYmYyMlNvWkF3VWo2SGdxb2hUcTh6MXAzd3g5aEl1VlpMQnNYTjFiNUN1?=
 =?utf-8?B?bWZxOUlwVjd6T0k0b0pFZ05WTi9oZjZLck1zaXFDaWZPcGtsNVVQZHlleDZ1?=
 =?utf-8?B?a2hXQXRyOHVveTVjQ2ZDQ0VKYmo4NlBUSkJvNTBxZUlqSFdYdzlObHEvazRM?=
 =?utf-8?B?SEFLck9RTDJsOXg3cElHVm5CQnVKd2E2a2NSZm9wQUFqSWZoSGxkUk9Yd3o1?=
 =?utf-8?B?b3ZObGtzWGt4a21xN0VOa21VK3hkc3hxQUZDcGhid3VLOUdVdWp2c0o5S0tu?=
 =?utf-8?B?SzJnWDB4WEsvQlJYa0V0K2hKZ0lZdG8wbGRmV0k5VnZNb2tjaVBuaXptaStT?=
 =?utf-8?B?NElSVWxLN3VPdnFvK0RNT3IvK2R6cTQ0OFdSaFFSdzNmZFFmUlhxQlpiVGlE?=
 =?utf-8?B?Y2xOY3VWNkxuZlVpRWI3cSszRU1nZDZPU1dyMmRUNXI5THRGRmcyZjBGbnN5?=
 =?utf-8?B?dEdBd1h3NFFWbW5hWEpxZit0ajFZZm5JcXhtc0lWbjQ2UGpWNlRERjZwNzBt?=
 =?utf-8?B?ZUk3Snd3WmpvZjAwdkJ5TkQzanlkTG9qZE1wWmxpc3dHSDRHRTliNW03eXR2?=
 =?utf-8?B?V0Z5cE1VRkE0NUhvZUo3Ly9KSWlidnF0Ym1uOStGeUZzQVEyMXBkOFZQdDJ3?=
 =?utf-8?B?RmZEMjBKai82QmtiMTljTDJxUkhqWGRjTFAzbTlFdEdhRWhiYTlCaGlXV0NB?=
 =?utf-8?B?N284T2dWK0NENlBSM0xaVzl3RkNLc2xVeW1CSlRRU3ZjK0Rib2N1MHozTzNa?=
 =?utf-8?B?bm9DdHFSZmw4TVpVMWJYWmNsMVBBaktSRUUvYTM5ZWtxV0toZ2pnNlNSUy9E?=
 =?utf-8?B?ZElncHgvSmMvMFpoMzFDNHI4RFFEcXo3SU1NNjU3ZE9wTjFOdkhZTUk4RTFS?=
 =?utf-8?B?VGxtNU1qUGpab0VJa1owQ2dYUlZWNGgvRiszM3J3eGRLZFd0TTBac2dIbG9M?=
 =?utf-8?B?ckRsc28yK3gzMVdpbi9XbWgzUDZPMkFCYmZxLzJDWURqY28wcy9nWVB2Q2dU?=
 =?utf-8?B?N2krYmxwNDNna2t2dVYrRUkrSWZ6emhKUW91eXNJQjdoaktmNnQwQXJEMzBw?=
 =?utf-8?B?c1FhVTdnQncxZHBxTENvYzVaRWE1TWREa2c3K2hIYzQyeTEzS1AvdTlUQitJ?=
 =?utf-8?B?TmZOYUE3VnQ5c0J6MUFxNkZnVVFvUjNCVWJCTndaTTBIbDZxT1o2Z2NiRFE5?=
 =?utf-8?B?ek1hMjUyeHZ1eGVKeFMyVkxEWDZ3RWNCQ2VWa095eU91U09NbmtwT0ZlbjR6?=
 =?utf-8?B?YWlLbUd1NzZocVRScEl0NTVQNG5KcDVZVlVFeGt3eGNKVmE5aGFramd2K2xN?=
 =?utf-8?B?bFFFVEswYXA5WHF4cnNiY3lYd0pFaTRzdXVZOFgzMkRZSWpiZ201bDVzK1hy?=
 =?utf-8?B?c3IzNHU0ait0Rk5oZXRjTElTemcvRVhudUdDZnBZZzQvZHMydnU1WHZwRDh4?=
 =?utf-8?B?RlZyMEEzTDZYRVpMUUljUHdBalZoSWZtdmE4T0k2ZmRMaXRFRE1LNEhINzFO?=
 =?utf-8?Q?/3Gs0PCUDfpFWxnm2w=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?ejJ1ZkFUQm92azdnTzd5b0VzS0ZmUVpMUEMvS291YVIvQ0MwZDVWNGVXVXJ3?=
 =?utf-8?B?SU5FSndnTFlLdy8rRXBtQXRqSUl1QTFoT0ZHWjRkajlxZ28wNW9HUmg0MTZx?=
 =?utf-8?B?WEdhZHlobHZycDZ6VnVLWXE0U0hhNnRDSzJPbk5HUHlBdUFvT1NsTXV1Z3d2?=
 =?utf-8?B?bEMwMmRoZG9GNlpmZExJMTZ2OUg1QkQwL2VIZmlXd1h4ajlGdTVzV3VyckY4?=
 =?utf-8?B?TmhoN0dWRk5BdnQwT1NDYXNqZXk1cnhXODMxbU1PZDJHN1JWM2VnOTZPa1pY?=
 =?utf-8?B?SEpHM3o1bEtwUjlsRUVLZnlISzVicnp5djMrR3c4bDZNZGtieklRTXR0Qmsy?=
 =?utf-8?B?VVg2QlZINkhRczRwOEdmNCtKL2w2Ti9lNU52TWF4SkRKR1gyWFhwa2orR2NW?=
 =?utf-8?B?RFR2SlBBQmhETEx1K2YrMFZXNW5La3ZPTmRrTXdXZU5iUVJmR3lKY2dFZGdz?=
 =?utf-8?B?UWRwcGF4ajVqSWM2aThFOEViKzhYbFJrV2FnVGJsemtyZGFZbGJuVXZnMitE?=
 =?utf-8?B?MjlBR1Z0cFhHMmt5UktXd3QwQmNIaEcxa1poNWpIY3FQQzhTWnVKZDV0SkhK?=
 =?utf-8?B?bUcyb0Q1U01LcDNnclhuNGpYRmIyekk5V0o4eDRWbUZxTFVuemY0Y3psRmxQ?=
 =?utf-8?B?T3VrZEViRmNjOU15bFMyMHlJQU9ZN2FqV1RIZHJsWlZOQlZXaTB5NXJ3Y2tv?=
 =?utf-8?B?NGNGYTMvU1BKNFUxWloyb3pFekIyeERnN2xuRC9CeXhHRFpuOUdlU2xIOWQx?=
 =?utf-8?B?bHFlblplWG9xaEhlaHdQanVDeWpNYlpraTlaVm9JL29XRGZ5U1B5RStOWWV5?=
 =?utf-8?B?VlhTa2I4b24xK2w0K3pGdnNxVWYrbTE1dTZzQk1LRTQ2L2pnWEJjTmpjM3Fz?=
 =?utf-8?B?b0k3NXVvd1paanhML1B5L2I2bGVvczdxRVhQcUd5K0o4UTVKNlYvUGlleHJV?=
 =?utf-8?B?QVBHR2g5Z2pSRndSRHBMUEtqd2pzaXdieGlnanFScS9XQmVsVlIyMlBhN2pZ?=
 =?utf-8?B?ZTRuY01UeG1mVDBYb1NZYXU2Y2VRNE5GZjJaSUxBbjVzTHhkYWdnQWRMTzQv?=
 =?utf-8?B?aDF6YW9yVXlLN2h0SUZ0bkRqdTl3cCtYNUkyNmhSa3BSMUFQVnpuWjFQbVUv?=
 =?utf-8?B?aWlRdmlzdG9zN0NjYXlxM0ZqcGVTTkZzNlMyRjVlR2h5MDkyakZpMXV4VXFB?=
 =?utf-8?B?d0tDZWxLOTlVdThUQzJ5MmJpdnRGV2pQOGx2a0xzOVpITGtNcEpUMmJIZUI1?=
 =?utf-8?B?QVhOcVk5NFRLRW1LTmlWZ1pwQll3cUNMMzFjTmtXS09QQlhRbTJGaFJQdVhD?=
 =?utf-8?B?RVhkTlVkYVl6KzBTQURqbWRxQkZYaGlHNnZOY2I2SzVmeEdrY3c0Rm5YRzhW?=
 =?utf-8?B?b21wQVUwK2lVTmliN1c1RkpkQ2JRUU8zUmRWSUp6ZFhtem9oQUMzdm5WVHRa?=
 =?utf-8?B?cmlMN1FVNmFaNXlxNitINmJ3NGZEVEFqbWlxb0U2QzB2ZWF1MnBPbGlxRE1t?=
 =?utf-8?B?SFJzRXFLV2lRMVQ3YmtCazI1VVVLWUJlNC9HNXBCaDhBRUtiT1paaFdmSnNH?=
 =?utf-8?B?RUNOTUswaVkwa2h0WC9kWjRldGk4czNJR2h3V0ZxWVdIVXY3TGtmdU5MNGtV?=
 =?utf-8?B?MUxWNWh0K0p5a3lwSlFqR1dqaUZud2QrcmRtRFFnSnFpRkhuZDlvaVpUamtV?=
 =?utf-8?B?TXhQOGJ2ekZ6TWdxQXZQbXlvbjFhZTVYVDMrOVJZbWlpQWxiSEs1TThmWm9q?=
 =?utf-8?B?ZEwzWWxuODVNYkhQNzRFbS82Y1hYS2hxdURYTkV2VEtZSWY2OTRqNGc1Uisw?=
 =?utf-8?B?L2R3Ukh5Zm9zU3FIMW9TdmZqUmJGMDJYY3Z5aVJhaVVUOXpmWmtRSG9rQit6?=
 =?utf-8?B?ZGFNdlZ6Y2NESzFjeFNyWkg4M3V1UjlmelhNa1ZrMFYxeWxGNUtFWlZiNFBx?=
 =?utf-8?B?eVJFRnQvVUxDUDdpa1RNK0J4YVBKaEwvdy9yR2pnVUxJUWRjYXdmTlozNEhM?=
 =?utf-8?B?dWtwVzJ5K2w0R1B6a05XejhmcnBCb0NQckNVZGRjcEc4ZnBQaWJFZEFNNEtD?=
 =?utf-8?B?OW1jS1M2MU9aVkx0MGJGTG43L3FjRTlGWkgrZkFiaWoxSkFQeWhpUno4Y2xV?=
 =?utf-8?B?em1XWU8xVmZTZXRobXFKS01kSlJ4QXJZS0lKd0VYbklTSGpvYzRFaWRuS2JC?=
 =?utf-8?B?dVE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 4fb1fc7e-2ba3-426f-f915-08dd0f669e8c
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Nov 2024 04:39:18.0943 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OEpco4jawgCJk+WTKafvxIuiqUmYhgAGrJlFfILBsNGx6Pm/xqtnYAJTMFC96F7zXL0DRA3TWJ7Lv/S3HuC7E3KnDC4PLGowFvI1UFTA820=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV3PR11MB8457
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


On 11/20/2024 2:19 PM, Mitul Golani wrote:
> Adaptive sync sdp param computation, we can configure during
> full modeset as well when sink is having vrr support, where
> it doesn't need dependency on vrr.enable status and can also
> match vrr enable/disable fastset requirement.
>
> --v2:
>   - Separate the change from as_sdp.vtotal. [Ankit]
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_dp.c | 2 +-
>   1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index e39ae59370c0..bff9d2ec08e3 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2807,7 +2807,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>   	const struct drm_display_mode *adjusted_mode =
>   		&crtc_state->hw.adjusted_mode;
>   
> -	if (!crtc_state->vrr.enable || !intel_dp->as_sdp_supported)
> +	if (!intel_vrr_possible(crtc_state) || !intel_dp->as_sdp_supported)

I agree with the change, but along with this we need to avoid comparing 
for as_sdp parameters for fastset case as done in rev1: 
https://patchwork.freedesktop.org/patch/607526/?series=137035&rev=1

Without this, seamless switch between VRR to CMRR (and fixed refresh 
rate case, which is currently work in progress) will not happen.

Regards,

Ankit


>   		return;
>   
>   	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
