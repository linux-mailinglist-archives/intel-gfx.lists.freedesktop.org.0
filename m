Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D138A941C0
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Apr 2025 07:23:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5642310E443;
	Sat, 19 Apr 2025 05:23:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="an8+/oNN";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 15CC110E442;
 Sat, 19 Apr 2025 05:23:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1745040198; x=1776576198;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=uE/mB6KeoDTjO9qjfr/XgWHUneCJ8zv+70VYzDQ3MgM=;
 b=an8+/oNNguiA8peU/g/BOlqLQ7cJsaH9g4nlx3Iw8wGzRsENa4hSw41U
 MagXPUoJXXwhfWMINHjL7HbExjMdGyxnzF+n9Q41h/UMuQnZjmTGzmwmh
 gHuaoxw0aJ+eiWBJIbs3KmorEGRp2JTVCd2LqWGFeKsygLKrw9DGSVQNg
 7kI1hdmHW4FCwjquAXh1gbs+5KdK9emulnCrQh+w939Kf0jTl8BzJq1lp
 N+vmSG0dCoIn2wg20nS0xsBdHUer47whetyx73LHCZm4f4M+Iy9voQK1I
 RlYNAF2WGZJUDRvj2dZpruNPJgfktWEVYwIH9dtEUO38QwTZQvHm+pQK2 w==;
X-CSE-ConnectionGUID: UU10E9n+SsO4sBhZvDUsYg==
X-CSE-MsgGUID: Pux7vQmDRSqkr4jZCVzv6Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11407"; a="58043887"
X-IronPort-AV: E=Sophos;i="6.15,223,1739865600"; d="scan'208";a="58043887"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2025 22:23:10 -0700
X-CSE-ConnectionGUID: uvtjVjHeSJWFe2EBPYXiYg==
X-CSE-MsgGUID: HJuUGwaXSWWt4JwpyBtuEA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,223,1739865600"; d="scan'208";a="131578384"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa008.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Apr 2025 22:23:10 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 18 Apr 2025 22:23:09 -0700
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 18 Apr 2025 22:23:09 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.43) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 18 Apr 2025 22:23:09 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=YIXnpCkB4at9nIvICI1zROsZ1e/QTXIKJOuVD2o+JDkCDfS0491oOfaxzcClgbluuc9dgGU7F+Jn1OqRjmAT5OyV4ZMAgK4pqDx0h7bH/uPjjGTPEPkc4E9KD9GBolxmJb162NeWr2ME4v226t+tLV9q80BM1vmk0eptexm6t9eMrBxFjBZIj0sX2Eev4zmq2S4aBBsUSx/PnXmt3Vp6Fwr7f9nxNcU3GYrR7sWq/W+ZjZeS0OL6bCG42yk3HhN825kXoNQCQxQjoHXa4TWt2CpA4VUVFO89oS2IAKNiXBHgSQWdpQpTgiAIpgcXTQ+OUx7qlmB6eAqB35rhFQCYLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=aXsfQbjK9cMgxr/BtbIN9AmfNfTLs0nFFFwoOTs/s6o=;
 b=jq8uha+qtGVH/PGM6e2Ukof7aw+QpoZD4O0WOcAhRJFqXQhiFPGHTBno0OvggChggIbHt8EV7EXNqsHm/GbC7ZZRDfno4ipa3pNJTMKa725+7bmgz/Zyyi11kOh5ga4DGesTCXHG96QCK8m+Lx6URYQiLuhq18OV1esj6u8Rm361gdAZRyM4feTBrtBFp75lFqu+tBSufSEh/k8iwgr0KyziDmGaYO+u5E2Mifo/88MB0pl/KRuu5xQs8Uzj2RCBbKCdspui6Y919MVK3siWDBzoLbQ6nAwk1sFYZbQPiOxusEVaZQCuP+3w4+og4jMjJaX7XSHAjF4y+OGp54uFog==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by LV2PR11MB6072.namprd11.prod.outlook.com (2603:10b6:408:176::14) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8655.26; Sat, 19 Apr
 2025 05:23:06 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%5]) with mapi id 15.20.8655.025; Sat, 19 Apr 2025
 05:23:06 +0000
Message-ID: <c15f14b1-7756-47ef-9d96-c4e5d28fed2c@intel.com>
Date: Sat, 19 Apr 2025 10:52:58 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [BUG, BISECTED] HDMI not working with Intel Arc GPU
To: Harry Yoo <harry.yoo@oracle.com>, Jani Nikula
 <jani.nikula@linux.intel.com>, Rodrigo Vivi <rodrigo.vivi@intel.com>,
 <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <aAIInWHmy17llRFG@harry>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aAIInWHmy17llRFG@harry>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: MA1P287CA0022.INDP287.PROD.OUTLOOK.COM
 (2603:1096:a00:35::34) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|LV2PR11MB6072:EE_
X-MS-Office365-Filtering-Correlation-Id: b3570fb5-9dbb-4a2a-3506-08dd7f0243ce
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0; ARA:13230040|366016|376014|1800799024|13003099007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?d25NQTJaZE5tNXdvbVZjSjlBS0tMT25pcWxtci9tdHNwL2hWM2Y0QmdmcDA4?=
 =?utf-8?B?YzhVKzAvVzdzcW1VaFU5VE9NZWM1NEtsWGVaVDNQSUdjaXl0TjY3UDJnS1FI?=
 =?utf-8?B?SVI2YUZwcmNUVXQzalk2cEdXY0p1d1phN0pIMGwrNkkwQlFDMGVjM1NaUlFW?=
 =?utf-8?B?ak8zN0dRNE1IMUlYZHl5Y2ltaWNnZEhsVlVCQmU2SkMyQ3JkT2owZUxBY3BL?=
 =?utf-8?B?clczUUR6dVZ1VnZwVFExSFllV00yaVNhcG5EUDJhYm5VbDNObTVuTk8yK2g5?=
 =?utf-8?B?Nml6bnRPczFTbzJNMUNWNElzMEtkdXloa1ZzZ2I2elcyZ1BOU281YTZ6OW5j?=
 =?utf-8?B?ZnlaTG1NNllEUWZacWFibkZXeGFYVHNmRHpDWTlPKzUrSk45TS9BbVpiSFpC?=
 =?utf-8?B?djc0K2hzTDg2clU0QUNleDY4aC9sdVZFYWdKTjljT2NOUWpoYmpYYmZoMHBk?=
 =?utf-8?B?R0IwZy8vdERrcnVlZnJJWnozTC9CSG5FWUlyY0VJbFBMenRvME9WMGN3a2NX?=
 =?utf-8?B?b1VSMHZnRldubFlYdFB4b1o1THgwaTJ6bTdQNFhCS3IvVnNPU1YzcjgxZktI?=
 =?utf-8?B?YjQwajZ1T2UyQWEvSWU1NGthbFJUU2pYTE11T3E3ZzAzVkV5eWd2MjYvQjJo?=
 =?utf-8?B?TCtBaE9oZjhtRHFmQXhINnhuckR0dEN2VjZNL2Y2M0o0NDNhWHRrK2FWMlRu?=
 =?utf-8?B?eDdSWnVvY3lsb09jUjBMVmgxbkxZcUlvTlV2UHhVblowQzdTRk40YTk1NkFk?=
 =?utf-8?B?cVRoQ2lYTnR0djd4V3VFejhkMjRIbkJNTFhaR2pidnNzek9vcnJZSTNxMXd1?=
 =?utf-8?B?ck9ya013WS80RUNvV0VPVVhDVUd6NFlocUIrbnJ6bVVHTTg2OHNkSkx0TmNB?=
 =?utf-8?B?ZFJ1TW9KOVZGaDljQW8zK2ZDVjVWY3E0eFdNdHNQS2t2Zkkvd2svcWpoS1Nh?=
 =?utf-8?B?OHJhdmxMbGpudG1WZUdJZi9haFJFT1dGQmt4dXVVUGJOcDNFYitlK2MyWWVJ?=
 =?utf-8?B?R2FaM0pqcWt2QTFWSktiQkZ3ZTBuS0RLdVhPajVhZmRGVVBCZXBjY1djNGxo?=
 =?utf-8?B?V3FXd0VVdTA1M1U3L0FXYUFpUjlndUhnVDZjOXhEWUM4R05VVDJjYTRKMS9v?=
 =?utf-8?B?YWJPRnJ0VDZ1ZUl2ZUI0My9iNnZ1bWY2UXJ0TmdSaVNwdkx5SkxMRW1JYWp5?=
 =?utf-8?B?U0RCd05SZldWNUxKdkc3RUVYVC9DcmdVWldGMGNTZDZ2MFJWdGNhZE81OFFP?=
 =?utf-8?B?Q0hiWHk4M2FZcjlrSTk5azQxbXI0SWdrenNaTFdDczFmdStrRkU2S3IzS3R4?=
 =?utf-8?B?NEhVaWcwNzB0eml3aysya3FTWkwxaFQyeStVTGNMbUVCVm9rekd1NVQ3S2ZU?=
 =?utf-8?B?cjQ5VVV5SlZvZi8wTWx0RldHY2NqU2tVSDBtdnAvYTQ5Q2p4NGh4L0t1L2NG?=
 =?utf-8?B?RGZ4SVR1OHBTTE40VG5FZFpyaXl6bER1ZS9MOW10TjJUbWFnazF2Tlk5aUVG?=
 =?utf-8?B?ZUxPTXF5NTBuUmdTK2NEdURHK2FUVTBrcjYrb0J4eFdEelA0NmgwaFUzb1l1?=
 =?utf-8?B?UXV0Z0VWb2R0a2RoWTFyb21VcGM2czMzeGw0cmFXZlIrbXFOL2s2STlwSzZj?=
 =?utf-8?B?Qm5jT2FVc2E0bkYyZG14TkVQc0I5M2RZTnZLVi9kaUZGNEE1RnRSRjRKWS9V?=
 =?utf-8?B?Zi9OV0J3MkhNd3VYRUszNmZ3aVJZQW1ndmxVZXQxZ3JLUFBwbDYyMGRyUlY4?=
 =?utf-8?B?bDRPQzFqSkwwZWVUSVFrSGFsNG9EOWZpQStlUFhMU0diZVhKVnJ6eHpkTlRu?=
 =?utf-8?Q?XMfMt8CSwzNRmGTATeAvcEHy7c+dQbJx+AJnA=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(376014)(1800799024)(13003099007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WHdyaTdnMHBHY01NQ01Qd3ZtOEU4NFJ5TEJkTGxNRnZXVVVzdUZYb1NsY2x2?=
 =?utf-8?B?SDl4RWF5UkU3RmFLVmpIMWpQT1p5SXV0Z1BiMU5wRHhzVEF4Y1hpU3hRelNR?=
 =?utf-8?B?VWVvTXF1aFB1SWJLbnBLNmpUeE0vS0YvdXA3RmIyWEpwdnNtNDF3WXoyZDZT?=
 =?utf-8?B?bGVjcU9DTVBrMmtUenVvQmE0L3lzRjBCTmpyZmpiY2hHN2xNSUdyTzd1dVUv?=
 =?utf-8?B?Vnc0SVRFR0t0dVVocnpHd20zUmdNeEI2dkVoL2pJRTNnM3l4QkNGWHNacVdB?=
 =?utf-8?B?MklMSlh4Nkt1ZHB4Y0FjT3VLVlJyeWExQWZiN1BxTWU1Wk1HbEV5cVZqSTNQ?=
 =?utf-8?B?ODBEYXZ1TXNLQWtzYVRpY2cwbHRvYzVPTWp3eU1mNHJlbHhyaVpRR2NwWHFO?=
 =?utf-8?B?Q0UwTFF5QjUwMUFzUmhlTllzTjZvajFTQ3ZxZ1M3ZUpkNDhTdyt4NkVzSk9s?=
 =?utf-8?B?YW1saUlScjVIalY2RXNFZEw0VTdPWWJEdWI2RjRzV0tuWkxNemVuUzdFajZh?=
 =?utf-8?B?TzBTYVdnTy9lSlhrSUgyakRnRkF6cmkrL012L1R1cTFLclF1Y05hNXlUdjg5?=
 =?utf-8?B?NXpQWVFoZEdYdjFJRlFKM1ZiS3k4elQvVmE3RVBYNThVTlBiUTdscXpBQjFu?=
 =?utf-8?B?RFdiRTgwQkhMNjZLTitVT1UwZUNsQ2dtUnptTVlaclUrS2RzR01iUllHNjNC?=
 =?utf-8?B?RitrZ1BRdXl0TmNXWVhQRUM4N1U4dHBlMU1nRVpyUytKeUQwRzZnSUJiM01F?=
 =?utf-8?B?SlFUZ3o3VTEyTkJxeGNQVE1GcFZKc3dhbnlneG1wZUREZ3p1ZWNNTWNVTkZo?=
 =?utf-8?B?TzZnQkMwQnlDcnFUbGVCRFdvaXQyNzZuZUxDUFErTlovMkUwWS93aE9URHkx?=
 =?utf-8?B?bm5kZG5MdC80dkxWMzc4NXNNRlRsdTFHVTVaNXpCRWcydXJMSmVQRFVWNnFl?=
 =?utf-8?B?NDdPZ3ZzeXJ6UkJySXRVaTF5VE4xSjdUVTFieXg4ZlVjYnVnMEpuMzJiSlNN?=
 =?utf-8?B?QVVhL2VaZDJlb25kNDhPMlRmNU9oZm0xY2hhTEZldmJweGRKcmVDU2cwOEov?=
 =?utf-8?B?WTZ4SnBGOWNmV0s2eG85YlkyYVFOTDB3Vk5nUlFDY2UyUlcvMnhBQSt0UEx4?=
 =?utf-8?B?MEZVbXcxM2sraWkvVDNaSFpWNCt2bHNWK2pEcFpINWh3MzFXcm9XSjZuazlh?=
 =?utf-8?B?bjB6dCtsTGdqYSs4K21sTWFEWkxMSWtmTktqazZBMWgzbzlsMDBqR25FNjV0?=
 =?utf-8?B?N1hFT0ZOTTFldzh6RUdIZHBncFRnYmRES1J4QUhOTVM1d2xaWjlsRTZkdEhh?=
 =?utf-8?B?TzdKaEE3ekZwSXJIajBPZjBCWE52RlQrMkFDb3R4NE42UmpzQkovN0R6b1l1?=
 =?utf-8?B?Y2FERktHMWJsdUhBaEZ3czFFcUtjZEw1UGREREsvR2xIUWw4d1RVZUJ4TTZD?=
 =?utf-8?B?K3liWi9vL0hXMWtKK1o0NytHNHRjR1UrQ3h2MXYwQ052c1FmY1pHQVpiRCt5?=
 =?utf-8?B?ZjNjV0VRb3RiN09lN2p5Q0J6Y0pnQnBzSEE1NGdnYUFTREVIS1lWaS96cEJG?=
 =?utf-8?B?ei9WdTNsY0tLcUNJcFhZK0Z6eGxocWloYUdOWDF3UTZieG5zM1I1TWh5ckVy?=
 =?utf-8?B?Q3ZkOGNtMmRhVHFtYmlxcDY5eVlIN0pVSWk1V1dwYXFwTEYrUmNQZVVIT3FE?=
 =?utf-8?B?UmpoZVRKNnJRVHBHM3cyd2RJMVk3VDNzN0xmVTNyNi9ORmZNajcxVmZLTnFY?=
 =?utf-8?B?QW9sU0tDT3hkZkk2UDM4UVlhOVdyL1lQN2dkNHNQSjZFYytCWTZaaUxPRjN6?=
 =?utf-8?B?Wm5TZzVyRlhJNXE1c2g5bHA5ajZ1T0I1b2ZyYUhWd3NUL2d6cXVtTnB6cXVw?=
 =?utf-8?B?eW0xYTVsemdYTXFRRFYvclA0THpoMUtyYllxOGFYUCtWUVZMNDdQNFNESXJy?=
 =?utf-8?B?d05UZGU2NDczOTZCZ2tRb2Vra3VxZm1VaHNPUnRGYjRkbitUOUpjekxDQlZX?=
 =?utf-8?B?YVBaN1IwZXZnSVZRcHdsbnM2VnVva0Q1RE5pamhzTlFUOEpZOVc2bkNvVXpD?=
 =?utf-8?B?WHRpSm16RWlJeUJiVSttVGJKcm1zQUwxSmRySzFYWE0ybkVIZlZNQ011MlR6?=
 =?utf-8?B?TGVseW9GQzJ4WFpQaE8rT3IyZEZQS1cwMjVPTGRsZVN1NDhFK1BjajV0T0sy?=
 =?utf-8?B?Y1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b3570fb5-9dbb-4a2a-3506-08dd7f0243ce
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Apr 2025 05:23:06.5080 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: VTUw/hGXQrZHbNBd372HxGdaDsrLkIENZXcNaJ25dp9mckFuKm7z00oH/o/OxyODscDeIOHrKh/W2ewScc3pJoGaQGbgklbAxNgdDV1EjHQ=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: LV2PR11MB6072
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


On 4/18/2025 1:39 PM, Harry Yoo wrote:
> Hi folks, I use my laptop with a second monitor connected via HDMI.
> After kernel upgrade, my second monitor became blank (black screen) and
> displays nothing. So I started bisection.

Thanks Harry for the mail and your efforts in the bisection, this will 
really help to narrow down the issue.

Could you please file a bug report, with more information about the 
issue, at this link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues

Please include the details you've mentioned, along with additional 
information like platform, display configuration, dmesg logs etc.

More details on filing bugs: 
https://drm.pages.freedesktop.org/intel-docs/how-to-file-i915-bugs.html

Thanks & Regards,

Ankit


>
> Here's my GPU info, the first bad commit, and the git bisect log.
> I'm really looking forward to seeing this fixed :-)
> I really enjoy working with a second monitor.
>
> $ sudo lshw -C display
>    *-display
>         description: VGA compatible controller
>         product: Meteor Lake-P [Intel Arc Graphics]
>         vendor: Intel Corporation
>         physical id: 2
>         bus info: pci@0000:00:02.0
>         logical name: /dev/fb0
>         version: 08
>         width: 64 bits
>         clock: 33MHz
>         capabilities: pciexpress msi pm vga_controller bus_master cap_list rom fb
>         configuration: depth=32 driver=i915 latency=0 mode=1920x1200 resolution=1920,1200 visual=truecolor xres=1920 yres=1200
>         resources: iomemory:500-4ff iomemory:400-3ff irq:234 memory:5018000000-5018ffffff memory:4000000000-400fffffff memory:c0000-dffff memory:501a000000-5020ffffff
>
> 1efd5384277eb71fce20922579061cd3acdb07cf is the first bad commit
> commit 1efd5384277eb71fce20922579061cd3acdb07cf
> Author: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Date:   Mon Jan 20 09:51:21 2025 +0530
>
>      drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY
>      
>      Try HDMI PLL alogorithm for C10 PHY, if there are no pre-computed tables.
>      Also get rid of the helpers to get rate for HDMI for C10/20 PHY, as we no
>      longer depend only on pre-computed tables.
>      
>      Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>      Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
>      Acked-by: Jani Nikula <jani.nikula@intel.com>
>      Tested-by: Khaled Almahallawy <khaled.almahallawy@intel.com>
>      Link: https://patchwork.freedesktop.org/patch/msgid/20250120042122.1029481-6-ankit.k.nautiyal@intel.com
>
>   drivers/gpu/drm/i915/display/intel_cx0_phy.c | 49 +++++++---------------------
>   drivers/gpu/drm/i915/display/intel_cx0_phy.h |  1 -
>   drivers/gpu/drm/i915/display/intel_hdmi.c    | 10 ------
>   3 files changed, 11 insertions(+), 49 deletions(-)
>
> $ git bisect log
> git bisect start
> # status: waiting for both good and bad commits
> # bad: [0af2f6be1b4281385b618cb86ad946eded089ac8] Linux 6.15-rc1
> git bisect bad 0af2f6be1b4281385b618cb86ad946eded089ac8
> # status: waiting for good commit(s), bad commit known
> # good: [38fec10eb60d687e30c8c6b5420d86e8149f7557] Linux 6.14
> git bisect good 38fec10eb60d687e30c8c6b5420d86e8149f7557
> # good: [fd71def6d9abc5ae362fb9995d46049b7b0ed391] Merge tag 'for-6.15-tag' of git://git.kernel.org/pub/scm/linux/kernel/git/kdave/linux
> git bisect good fd71def6d9abc5ae362fb9995d46049b7b0ed391
> # bad: [93d52288679e29aaa44a6f12d5a02e8a90e742c5] Merge tag 'backlight-next-6.15' of git://git.kernel.org/pub/scm/linux/kernel/git/lee/backlight
> git bisect bad 93d52288679e29aaa44a6f12d5a02e8a90e742c5
> # bad: [93d52288679e29aaa44a6f12d5a02e8a90e742c5] Merge tag 'backlight-next-6.15' of git://git.kernel.org/pub/scm/linux/kernel/git/lee/backlight
> git bisect bad 93d52288679e29aaa44a6f12d5a02e8a90e742c5
> # bad: [0f04462874e1228cf58e19a3d1710db9757dd695] Merge tag 'drm-misc-next-fixes-2025-03-13' of https://gitlab.freedesktop.org/drm/misc/kernel into drm-next
> git bisect bad 0f04462874e1228cf58e19a3d1710db9757dd695
> # bad: [0f04462874e1228cf58e19a3d1710db9757dd695] Merge tag 'drm-misc-next-fixes-2025-03-13' of https://gitlab.freedesktop.org/drm/misc/kernel into drm-next
> git bisect bad 0f04462874e1228cf58e19a3d1710db9757dd695
> # good: [80e54e84911a923c40d7bee33a34c1b4be148d7a] Linux 6.14-rc6
> git bisect good 80e54e84911a923c40d7bee33a34c1b4be148d7a
> # good: [80e54e84911a923c40d7bee33a34c1b4be148d7a] Linux 6.14-rc6
> git bisect good 80e54e84911a923c40d7bee33a34c1b4be148d7a
> # bad: [16893dd23f6d1e3a4dd6da272ef9960825da3ebd] Merge tag 'drm-intel-next-2025-02-24' of https://gitlab.freedesktop.org/drm/i915/kernel into drm-next
> git bisect bad 16893dd23f6d1e3a4dd6da272ef9960825da3ebd
> # good: [fb51bf02551958265b7116f6ba92752295c83c26] Merge tag 'v6.14-rc4' into drm-next
> git bisect good fb51bf02551958265b7116f6ba92752295c83c26
> # bad: [778be378be2a0e0528dd1ea44ed3dc9804950fc3] drm/i915: Move icl+ nv12 plane register mangling into skl_universal_plane.c
> git bisect bad 778be378be2a0e0528dd1ea44ed3dc9804950fc3
> # bad: [99f4cb4fb222b42703b43551d55c9ec2520d9d5b] drm/i915/dp: Pass .4 BPP values to {icl,xelpd}_dsc_compute_link_config()
> git bisect bad 99f4cb4fb222b42703b43551d55c9ec2520d9d5b
> # good: [68f3a505b367656a2db05406a62dc43fb0c50034] drm/i915/psr: Enable Panel Replay on sink always when it's supported
> git bisect good 68f3a505b367656a2db05406a62dc43fb0c50034
> # bad: [381ab12d483ea30af4ca52db51d23c947f2904c1] drm/i915: fix typos in drm/i915 files
> git bisect bad 381ab12d483ea30af4ca52db51d23c947f2904c1
> # good: [d49b485d1be3cb1b3b719cf4031f879dbc26c633] drm/i915/dp_mst: Use intel_connector vs. drm_connector pointer in intel_dp_mst.c
> git bisect good d49b485d1be3cb1b3b719cf4031f879dbc26c633
> # bad: [1efd5384277eb71fce20922579061cd3acdb07cf] drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY
> git bisect bad 1efd5384277eb71fce20922579061cd3acdb07cf
> # good: [5947642004bfd56436ce63d3e65d517b5be52549] drm/i915/display: Add support for SNPS PHY HDMI PLL algorithm for DG2
> git bisect good 5947642004bfd56436ce63d3e65d517b5be52549
> # good: [18176f56942a596c5d03ed69ef30ad72f67a7edc] drm/i915/cx0_phy_regs: Add C10 registers bits
> git bisect good 18176f56942a596c5d03ed69ef30ad72f67a7edc
> # good: [82ecaae2360776dcd0b9abf9ae6b947c28025931] drm/i915/intel_snps_hdmi_pll: Compute C10 HDMI PLLs with algorithm
> git bisect good 82ecaae2360776dcd0b9abf9ae6b947c28025931
> # first bad commit: [1efd5384277eb71fce20922579061cd3acdb07cf] drm/i915/cx0_phy: Use HDMI PLL algorithm for C10 PHY
>
