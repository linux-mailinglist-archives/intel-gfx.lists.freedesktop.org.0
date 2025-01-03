Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 30055A008B7
	for <lists+intel-gfx@lfdr.de>; Fri,  3 Jan 2025 12:35:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B75D410E88D;
	Fri,  3 Jan 2025 11:35:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Yj5tBXgi";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1DB3810E88D
 for <intel-gfx@lists.freedesktop.org>; Fri,  3 Jan 2025 11:35:12 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1735904112; x=1767440112;
 h=message-id:date:subject:to:references:from:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=pL2VRKB+o4p/MvxLhMj0BxH/watCCP/CeFs+oWFaBYM=;
 b=Yj5tBXgiLL50WF+6HKP1qbcaSuJuxCQkGTT5ONKc696hJgwrEBgV+BXb
 AVBEmfTwDHiixCdph5/riGLw9fsIIHI7jvb+wWn3ocDEmnuP2KGsL2EIf
 m4dawsdIwwJvEAJ2bSAvo4kQpRCrFVpJEBigQqqrygYr4Oxl4bok2S71E
 ycQQ32RRLLiiSIRf+XXlSOnEi/Jdj6X6d/TRHr/h6mIGCyeH9Usx95C3u
 vXn55050xE3Z9g2N+CS2xAJPWZpILLZ/0syhC9jRz1h9aaiGuy+/kdod6
 avxFmMALT4EwIleFyr22GzsXVMFgL5EGuTZnTmFr5d5tce7y7UItgNdrw g==;
X-CSE-ConnectionGUID: wUIDXutKRpu70+qPUQiGzw==
X-CSE-MsgGUID: O5F1g0I/Suu0WDlj93mrkA==
X-IronPort-AV: E=McAfee;i="6700,10204,11304"; a="40078622"
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="40078622"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Jan 2025 03:35:11 -0800
X-CSE-ConnectionGUID: 9atRrbUFSpOlLaGacyhS+g==
X-CSE-MsgGUID: xevjYxhxQGe8ilTlfzPmSw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,286,1728975600"; d="scan'208";a="101963923"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa008.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 03 Jan 2025 03:35:11 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Fri, 3 Jan 2025 03:35:11 -0800
Received: from ORSEDG601.ED.cps.intel.com (10.7.248.6) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Fri, 3 Jan 2025 03:35:11 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.46) by
 edgegateway.intel.com (134.134.137.102) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 3 Jan 2025 03:35:11 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=GImrl537KUPOD5AsJyWXYyGvOqDGi4mLot5vv3s1w41xsDcl9VFsQfRvKNuNWcsnBVNqf6RWd9d/XY+clQoD0tUCdHD+9wbVbKQKZdYVw3u1rxBdlsux3fl4gPiDsML3lO7GGYvUBeJsw6AAdkUeW0i0LnSSZ8k4RAqoC9n5ugETuqpYjf1oMEC3CcCoy0m1yF8KNVw+P0eddo1M6VehZyu73HAUYV0QeV3A6HZEna+gXpUVJ0rykFy68g0zoLg0JC+8AYOlPuXwEA+HyRn9xzsipIIsRBGvyTrqXNHhUaf4CX5q6ZCMV37SB9CZc4wLQQBSOxjwmfbyzrOKpwAveQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=xtAqO2HWN8aHc/ptHjJb2sSD7wuYg9/YdpHn1gABfWQ=;
 b=Md9yobk1HPWOAhtngH7NPrb7dmm7Nt+TnLveI1Q36OqTkxTlRLCqFuo50oqkgz1QUqTyhNrBRzMIBzkdlzi8TZvj7TdGBRjdjR1COTFro3o0aEU9S0dV136OR31LwJhySMa/gYsYua5ta/qvYpZiUqqVIkM4LhTRGn/B9b5ltPxwD/sGmAnFHcLnzmEtYji60GvJBaegtTtkR25SXwu+c+R18tR4XXxFFfgAmZ1tX7DoNOoknMUcbICrDFzHVkHcwCXIpd3nnUSA0uLgLJm0LaM3S3aIGHwdoGAeJtjS6m9qndh64J7FCW2w4hwkytU+dy5HO+GeBWkbECltEhJ/bw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by DS0PR11MB6544.namprd11.prod.outlook.com (2603:10b6:8:d0::5) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.8314.12; Fri, 3 Jan 2025 11:35:00 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.8293.000; Fri, 3 Jan 2025
 11:35:00 +0000
Message-ID: <bfef31b7-3b9f-4761-809a-abfcd59705ce@intel.com>
Date: Fri, 3 Jan 2025 17:04:54 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 09/18] drm/i915: Extract intel_mode_vblank_delay()
To: Ville Syrjala <ville.syrjala@linux.intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241210211007.5976-1-ville.syrjala@linux.intel.com>
 <20241210211007.5976-10-ville.syrjala@linux.intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <20241210211007.5976-10-ville.syrjala@linux.intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: PN2PEPF000001AB.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c04::11) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|DS0PR11MB6544:EE_
X-MS-Office365-Filtering-Correlation-Id: 5abb89b1-0e48-4e79-30d7-08dd2beaa868
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016|7053199007;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?Nnhra1JHTWxyUFdEZnBONXMvaTlKLzNkc1ZUN3NNSUt5RFNMc2kzVit1MU5D?=
 =?utf-8?B?MDBNY29SVFZXcjVPQVhsa3NZLzUyTnI4UnVBTmt1Z0FVMEpRWFoyeEhTaTBO?=
 =?utf-8?B?YWxwSGQ1dnVUKzFITVdxZERSY2E1WWJhcUprQ080ODBsRnpVbjNqdktiY0l3?=
 =?utf-8?B?WlNPZWpaRVRlZmdxaXRBMmtBVnVTVVgvT0NFY2tNODdvM1FuS3VlSDEwL0dZ?=
 =?utf-8?B?TXhJUHFYdHBONW5rUDRyZUYwRVowNDBoUXVvMjc1THlaVnFwemc2Lzg1bWZP?=
 =?utf-8?B?U3ZHVGk0R1JIVTJrK3VOZFRKNm5VdHJvN25jbUU5RFlvUG5YdkZWdEo4NnV0?=
 =?utf-8?B?TXgyd0JyMG9HVU1FN2RBV1BrWnhDemVLZmU1WXJ5L0V5VERjK0M1ZXd2ZWJU?=
 =?utf-8?B?V3lrdjhLMlVTQ2xJKzcvbnRyekdTbC9UOXM2WDN0YTQ2OWwrbWtxNHpCVnUv?=
 =?utf-8?B?ZWFzM3VKcVo4U1IwMXFscDBsMllZd1ZXU3oyZW5ybUVDaklvWVI5UWVMcU1r?=
 =?utf-8?B?MFowWllIQWFFU2dBb1F2dk5ZaUF1TWloRnduN1JOUVpTUGZLTXRaTUd6S0w4?=
 =?utf-8?B?T2dXZXlYY2E3TGphSUhNcDN5R1YxV0Y5UVRBMUNnV1lQWVhEWDBxWWhPNEJ0?=
 =?utf-8?B?TXlMc2NYdG5LQzN1Rlh5MjdzcW5Zckw1UFlFODV4eFJ6MnpyRGZiOVFwWHI3?=
 =?utf-8?B?aCt3U2g0ZHBzVzNpaW5FeFl3dmxFRDZXUDJpaC9xYW9NWHFoR0t4dGdwZnZP?=
 =?utf-8?B?b2JmdGwxa0ZpT2JxOS9PQ1d4NUJzbGN1L3laVGtPd1hNTFJVQ1l3c1Avd2k5?=
 =?utf-8?B?Um9RSWtldUwrblFRTkpVQmlrbmdmdnVWRUwwYVJISndDTW5uZ2t3ZDFQSUxS?=
 =?utf-8?B?dC9qb3hRSllUKzd6blEvb1lUSWIxY1FYRk5sLzZNMnF1eUpNV01ScHBZUDUv?=
 =?utf-8?B?RVgzVElyaEhvQytIUHBKeGhyUGQ3QmNiZ0pzTnBCOEg2THZTcGw1N3E0NXZE?=
 =?utf-8?B?L1cwdlJCTm10ci9oWGxaWXJsMzE5dlRxcE5VT0dLcEpFdFkxVzRkekxlVlhW?=
 =?utf-8?B?QzVmeU1hRHV4OGZtWlQ0QmhSYlA1S2Q2VUZnWUNyMFBoM2VPS1A4SUNWUUg1?=
 =?utf-8?B?L041U1JKVWM4Nk5iWVhhdGlVVEs2RTMzS2o1QTUwSGM3NGM4TUpVQUZCZWVS?=
 =?utf-8?B?dmVxMm55YXNJVXNyUStOdm10UWZzOFUzaEw2Z2NxR3dGek5iOGpLdVk5UWV6?=
 =?utf-8?B?TXZ1ZStVZzVrZzhSYkU2OSthZ2FiUEFSTTNDRkpUVEFobVlTamdDejluVVlG?=
 =?utf-8?B?cmIrTFR0REQzWWliRTFLU2M3SGJsUHVtNG5ZQzRXWkZwT2xQazhqakVDS2w4?=
 =?utf-8?B?R2JNdzJneHJCYzgvQW1xMjR5K0ZkTHlnZ1NWay8rend0V2hrN1RqbDExUSt6?=
 =?utf-8?B?U2ZJQWh3SGx2OUhpVVZpTFpTNEJ2QTc2N01LZyt4RW8rSmRBbmtHUlZOOUdR?=
 =?utf-8?B?S0d2Z2FzYi9wdCtvK0FQKzF6Yk13dDU2UnRtbjUvcUlzS0RGblFpVnBVeFQ4?=
 =?utf-8?B?RmFXTTc1NnFVZlEvK2tVS3JLSHFBTzR1S2ovZERRSzhPbGs1ZVdWRlJzK21M?=
 =?utf-8?B?b0VBekFjT2o2NFZKT0VGNGIrMGtORXJFN2dRRXNTRkpVNlUzbnZYOTA2SGJj?=
 =?utf-8?B?UzRpaFE1OHpqYVY3UFpJUXVkU1U5a1lMSXlqMDcwZWNtRVIvaUZzQkhrMEhD?=
 =?utf-8?B?aVBCTmp2RVdPNmtiakVVRE5NMXFibTBqblBIZVNnTlhvWk1heWIxQ1QyanhD?=
 =?utf-8?B?dEdCSlE1cEFZbW9mS3Y5K2plNDI2S1g4OEpnTXAyaCtHVkVueHdnTjY1V1dD?=
 =?utf-8?Q?+2tCbFUbA7y2h?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016)(7053199007); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?eHZwY2FYcjVCOWp4OHBRTFlJdDBnMEk1L0QxRnR2MkRZc1JORTI2OGRRem0y?=
 =?utf-8?B?UURoblZMNmtzb3JDZFR1dDlxVVFpOVlwNXI3N0l3a1ZMVFBrRTQ3a3RjR3hj?=
 =?utf-8?B?T3VjQ1dEdS9tQ0RUa29GNWpZRUZzYy92VlZXU3ZmUjh5NU9pTWJvaE9iV2Ur?=
 =?utf-8?B?dXlWQWovWnFYRTRxSi93SmQwdy9SQTZwQVM0NHoyUmxlb3JZRitrckxQWGtt?=
 =?utf-8?B?YUlJZFdFZlZNYW5uS081aUdSRVZQWWtQYzR0N1dpeTdWVUtPYTZIekpsdHVp?=
 =?utf-8?B?cmREMFRPUjUwVlVyUE1PMjNwVHAzbTcwNnJKai9JUzV4SU5Xa3lUSi9Hek5z?=
 =?utf-8?B?UVhkeG1PMmxIVUFjclNXaEFCQndUMHVxMitqYWFyL09PN2VBMWpTbG9wT05D?=
 =?utf-8?B?ZFlUZytkVnR1RHNwOWloWkMxYWYrSVB2QnpydkpDWmpjazllMEt2aDhsNFU2?=
 =?utf-8?B?V2RtZHBhOVJ2YVZoeHJuZWhuTGhuS24reEM3eGZBcS90L2c0UTlOZVRia0h0?=
 =?utf-8?B?QWliTnNwMlJwVllLdkgrbW9hWUd3dUFyME9PbVowN3FmQ04vUldlNUMrZGZD?=
 =?utf-8?B?dEJBQjIyRmx3WStleGNaWGppOHJLOUdHTjF5cXRucWZmbjE1VkN3YjYvdWFk?=
 =?utf-8?B?bHBkdlpPMmNONEx5VmRyWHNOTTJBcjBKUUdjWTRlamVZOXdkUXFOVUlsVU5K?=
 =?utf-8?B?WFBXems3OUdkOUFibHNxcENYS2poR1BUeVVUTkdQQVZJaWt3dzNxZENVQkFp?=
 =?utf-8?B?ekptMjRsZExSMEVEckY1NnNtMXlnMGlSaGR3amEwL3ErclVOL1A0ZksxUDRs?=
 =?utf-8?B?R3NyTE8wWlJHdkRaTUphWHpkaFMwQTVIaVl1TFppYVhrbkN5RndXT2FRZEVq?=
 =?utf-8?B?S2tJR1l3b3RuS29hUS9FZnBMWXMyUHF5Q1VLMVNkUEJLQ1VsakFuMGtLSEFn?=
 =?utf-8?B?eWlJTUg2bzBqMGZEd29nRG5UdzZEWGNzVmp4NkVINCtYVm9SSFhPVjdJVVBm?=
 =?utf-8?B?aVVmR0o2Wk5peU9QbHVpMGtlVVB0MFFHc1NSbU1lQ0V0eW1mekorTGlPT2x6?=
 =?utf-8?B?a3BWS3ByTU9zWWNUM3N1QnREQy9HSVA2cDQ0bUcrelMzRVp5cUNraWpZd0dk?=
 =?utf-8?B?RU5jMGxIMWlMdWRFMHdERFRoS0R0dlpzSlRFaDRSU1VNQURVWVZFN245UjBH?=
 =?utf-8?B?OEREUjVRa0pYY1dpUkZIOTRGNmNMd3VWRFc1bmIxN3Z3N2hFWDY4ZUk1U3Np?=
 =?utf-8?B?TmFOWXNObGVqL2tOajlOM3MwU3JoTXpGSTNxbVpzcktMemRRYkp0U1B2b3Ba?=
 =?utf-8?B?Rk4vS0JzOEtreU56M24ydHh6ZjdUZ2p6RW01VE9IdnVhdld0YVJkUEVkUTRY?=
 =?utf-8?B?ZTJCRG45OUlzU3dyNXFHTU9kZ2ZXa3p3QXhOQmlZYS9zVG50M25LVjhoUUZJ?=
 =?utf-8?B?YWRuQThpV2hnenlLOEZxdTQ3R2xpUUpBVVlBQk5ISXYvYTFaU3lKZC9qUlpO?=
 =?utf-8?B?QjU5MGN0a0xkWFVIcUZCWk96SCtyaHlpY3hldW1vYk45dy9FcG5PWEV0S201?=
 =?utf-8?B?L0pVOGRWMndKdFdBeVl3SzNDT05NcWgzSFI0M2tBOUVmVDJwZkRMd0JzN0Mz?=
 =?utf-8?B?MG9sMmpBMWxJdWZ4dVlxYi9SbnA1ZWw5dWNQYjcyTjhjUWtYQ0Y5OC92cyt5?=
 =?utf-8?B?YzhDYVFBWVFlSU9nRDNzMFJqTDVoYVkvZXJhUnNNL2JXMmlZcjJSM1MwQnFY?=
 =?utf-8?B?TktuNnBCV05LRGJBZ3VyVzFBd3JDNUV4bWU4UHpyQXV6MEl3RG9uSzVJbkxX?=
 =?utf-8?B?ZmM4ZHp0MzFlYktkU0RtbnlQZGpQOW9XVXpEUW5VQkJSVWhDTzZtRE52dlpR?=
 =?utf-8?B?bDhwTjBFOHJRTll5OFVkUGtYbzN2OGZNdlNXUHlOV1BzOWJkTW9JV1NaZnZl?=
 =?utf-8?B?VGVkNDA4VHVXTW5WK0R3OGh6RkxYeXhSNkJKc3ZwcS8vTnFMN2J1ME5QUVN6?=
 =?utf-8?B?QnRkY3hPZjdPQ3B0clg1b1ZsMzM0aFlYWVllSzhpb1FqZkNkV1FCMEtIWE8x?=
 =?utf-8?B?MjZ4MXlWVFBaSXd2M0RGTVMyQ2UxRWZsWG56VDFZbWJjeDRVcVhOeDQyTVBn?=
 =?utf-8?B?Z3QveS91MkppUnpaM1l6Y3NGZFZmQVRVMGxLQUROTkZIRUdGRktGdWF1TWpE?=
 =?utf-8?B?RGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5abb89b1-0e48-4e79-30d7-08dd2beaa868
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 03 Jan 2025 11:35:00.7638 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: UmaaNTmcsAn5cNsIaoUf01AtxolCQyxY9PWEbAt/hMTJwS7u9GHEgs1zazA9sDG13Vcem7QslCDB9rmvM6wyuNU48J8Gjv77wshYPdbjFbc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DS0PR11MB6544
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


On 12/11/2024 2:39 AM, Ville Syrjala wrote:
> From: Ville Syrjälä <ville.syrjala@linux.intel.com>
>
> Extract the code that computes the hardware centric view
> of the vblank delay into a helper. We;ll need a slightly

typo: we'll


> different variant for VRR soon.
>
> Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>


> ---
>   drivers/gpu/drm/i915/display/intel_dsb.c    | 3 +--
>   drivers/gpu/drm/i915/display/intel_vblank.c | 8 ++++++--
>   drivers/gpu/drm/i915/display/intel_vblank.h | 1 +
>   3 files changed, 8 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c b/drivers/gpu/drm/i915/display/intel_dsb.c
> index fcb8bf9cb313..d755825edb35 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> @@ -130,8 +130,7 @@ pre_commit_crtc_state(struct intel_atomic_state *state,
>   
>   static int dsb_vblank_delay(const struct intel_crtc_state *crtc_state)
>   {
> -	return intel_mode_vblank_start(&crtc_state->hw.adjusted_mode) -
> -		intel_mode_vdisplay(&crtc_state->hw.adjusted_mode);
> +	return intel_mode_vblank_delay(&crtc_state->hw.adjusted_mode);
>   }
>   
>   static int dsb_vtotal(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.c b/drivers/gpu/drm/i915/display/intel_vblank.c
> index 6f0e0c64187d..ee33a49d9873 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.c
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.c
> @@ -597,6 +597,11 @@ int intel_mode_vtotal(const struct drm_display_mode *mode)
>   	return vtotal;
>   }
>   
> +int intel_mode_vblank_delay(const struct drm_display_mode *mode)
> +{
> +	return intel_mode_vblank_start(mode) - intel_mode_vdisplay(mode);
> +}
> +
>   void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>   			     const struct intel_crtc_state *new_crtc_state,
>   			     struct intel_vblank_evade_ctx *evade)
> @@ -653,8 +658,7 @@ void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>   	 */
>   	if (intel_color_uses_dsb(new_crtc_state) ||
>   	    new_crtc_state->update_m_n || new_crtc_state->update_lrr)
> -		evade->min -= intel_mode_vblank_start(adjusted_mode) -
> -			intel_mode_vdisplay(adjusted_mode);
> +		evade->min -= intel_mode_vblank_delay(adjusted_mode);
>   }
>   
>   /* must be called with vblank interrupt already enabled! */
> diff --git a/drivers/gpu/drm/i915/display/intel_vblank.h b/drivers/gpu/drm/i915/display/intel_vblank.h
> index 6d7336256982..12c8e1f829a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_vblank.h
> +++ b/drivers/gpu/drm/i915/display/intel_vblank.h
> @@ -24,6 +24,7 @@ int intel_mode_vdisplay(const struct drm_display_mode *mode);
>   int intel_mode_vblank_start(const struct drm_display_mode *mode);
>   int intel_mode_vblank_end(const struct drm_display_mode *mode);
>   int intel_mode_vtotal(const struct drm_display_mode *mode);
> +int intel_mode_vblank_delay(const struct drm_display_mode *mode);
>   
>   void intel_vblank_evade_init(const struct intel_crtc_state *old_crtc_state,
>   			     const struct intel_crtc_state *new_crtc_state,
