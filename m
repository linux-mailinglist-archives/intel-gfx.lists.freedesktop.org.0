Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 133B29D56C3
	for <lists+intel-gfx@lfdr.de>; Fri, 22 Nov 2024 01:34:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4CC1410EA8D;
	Fri, 22 Nov 2024 00:34:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hAWxGtw7";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AB4E510EA8D
 for <intel-gfx@lists.freedesktop.org>; Fri, 22 Nov 2024 00:34:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732235666; x=1763771666;
 h=message-id:date:subject:from:to:references:in-reply-to:
 content-transfer-encoding:mime-version;
 bh=oLf7ymfpCvt26dgUoC80Qg20pz4dfao+6xoBm0HHqwg=;
 b=hAWxGtw7EK9Dq/laYK2KwmlIYWwTJVwcm6eTejsmSI4e/5x5kEUDQ7ez
 mBhE4OVkjpX9FNNwz6f5YeNP+PDPSv0xvzXMYlkm+bbyhPXBg9DZZvvkM
 8e3Nl7CJQGyE+aGMB8nKZwK8R/Z8vYcAmRoHzmgccrQiH566Dw12488Pe
 4Y+7omQJrwYf5aIFaT83AbmC5QJUu5UGYfVAQDZDM3GJN/2kcyLKi2Rh6
 YSva5MRgBfS7P2ygVCb1OrYVXntHXmnWiqs0FNNliRBEx5faaT6G9p37C
 am6xaSe6ade+3Bw7acfNLiYLlF2W7gUcDS0fTIu0PEjAlcV9EDdePxEhz g==;
X-CSE-ConnectionGUID: VUN1YVaASuGO5A+GqK78Rg==
X-CSE-MsgGUID: 5xS9g4JIQiGX7dyiR9E4pA==
X-IronPort-AV: E=McAfee;i="6700,10204,11263"; a="36285561"
X-IronPort-AV: E=Sophos;i="6.12,174,1728975600"; d="scan'208";a="36285561"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 16:34:26 -0800
X-CSE-ConnectionGUID: Y8lchHOfQUCmVPueFlQMGw==
X-CSE-MsgGUID: FX6F/wOuTxmNZdUw2ejErQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,174,1728975600"; d="scan'208";a="94862958"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa005.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Nov 2024 16:34:25 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 21 Nov 2024 16:34:25 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 21 Nov 2024 16:34:25 -0800
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.43) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 21 Nov 2024 16:34:24 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=idU3pMl8J4cQsKgod59f4/AQzJvXrWi3xP2lr/DhuTKpowNaXJ6iJy9jNXxL2egFyNK+z297NiMSTbfx/SvxvCBF0sE8Au4uOyJbbQbbKeDmnMTG2+kqi9Ryb6Bv9q9drkGBVjToF2vIViVEggP70aTPft0jFSiUSxjrcNXJ94XuT+s5RUNePi71qjF0itEQEa8x6glqI9i6Wa3qISITlPBFfk8xqV36qanOoe63hpWCe+0rPnTr7tUgZ3pz76FgWPV5CTfqNoSvPsT7qyK6RYzA+wiK047CmcvxP5X5eN7nPtkfV9KROe/takK5QvwsfrBUdH0QHb3yv4t1uQ0qaw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=ynxyyXdKz+WJSBy61vxHTzLaDDcFnvQFN4WT6ke3NJ4=;
 b=WTswp4jC4NbPWpv+SgcW44iwErArvmTJlZxhgTDmpzRmKaT/Ue7YQxcaniNuMsveNDbsh0GeFF5LLRGjg/lNFH8Y5ZljNnBHOQs5VUybPGWfQRMdnfNbDhUw9/WdKHfCqHhSEPpkDw4F0v3Vm+JBd3H0k4ey+n9jRiAmllCt7xqXnCJOwrMpZJCzJA+xkWjNjC7NuJQDcZ2BUwgBQEhR7ez6w/onTx1NhTNFSYsZE7SfKCAgPB70KThjwb1nvX2C2XEL/mHiqQyqeUE9XVK5MJLwmcp+HYJ0SHuauhDMcW6pL08+g17ouFY92fA3H6vcVnSNePVYcbdDibmWtlr4TQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by BL1PR11MB6049.namprd11.prod.outlook.com (2603:10b6:208:391::21)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.17; Fri, 22 Nov
 2024 00:34:16 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%3]) with mapi id 15.20.8158.023; Fri, 22 Nov 2024
 00:34:16 +0000
Message-ID: <2194c21d-3656-46b4-bda3-76d82fa643d5@intel.com>
Date: Thu, 21 Nov 2024 16:34:14 -0800
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] i915/guc: Ensure busyness counter increases
 monotonically
From: John Harrison <john.c.harrison@intel.com>
To: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>,
 <intel-gfx@lists.freedesktop.org>
References: <20241118232223.53639-1-umesh.nerlige.ramappa@intel.com>
 <20241118232223.53639-3-umesh.nerlige.ramappa@intel.com>
 <a0aa30ba-cbb3-4e30-a503-1d2eb692499a@intel.com>
Content-Language: en-GB
In-Reply-To: <a0aa30ba-cbb3-4e30-a503-1d2eb692499a@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR03CA0354.namprd03.prod.outlook.com
 (2603:10b6:303:dc::29) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|BL1PR11MB6049:EE_
X-MS-Office365-Filtering-Correlation-Id: 2d65019f-a226-46ef-33b5-08dd0a8d6584
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?VVJseXBJU1poSk5jNm9lcklZdGpWSkhVbTZpOTdocVBuQzZZa3JuMWI5Rjlz?=
 =?utf-8?B?UFdaUm9JVFQrZW5DS1kvMHJia3poRXR0WHJOR3V3VnpvcnBvTDJ2L3RsVEhi?=
 =?utf-8?B?TE1DMTNmcjdFaXZWT01ORHJrL1FRSkdwQVQrbXExNExkdTkrRW5LLzRKTk5R?=
 =?utf-8?B?ampUOUdNRHVxUVNpcVEybzZFTHZpOUxBdUpLQUVaUVdtWTE0Y1ZndEhYY0lk?=
 =?utf-8?B?S1RIenZiM0VqTlFzWUZKdi9YdzJUaXFzY1ZCSmZDRmtlWVdwcnFubUExUzVU?=
 =?utf-8?B?b1VQdS9rSDRINU9wOXpHWittbldrNk85SEVrdGFWV0M0cFRTdmZxdzFDb0Jy?=
 =?utf-8?B?dnNxeXptZkkxVGdGRkwyclpkeStaMWcyb2FmOFUrV0FNOHdLVnNrUXNETk9x?=
 =?utf-8?B?Ym5PV29acFdsOElGaFpjUGhQTlM3OWwxUyszQ1dhNWhMVzVtR2xKY1hML3Na?=
 =?utf-8?B?a0FJZU96WldWWGI2RGJVTHkvd2JFS1hTM0lhaVB3QW51VCtvN2hiSFZpaE9Z?=
 =?utf-8?B?WU5Ea3prWlhNVlZSLy9RRXd2WmZCTGU3MWVQVjYydTU1Nys4QWVXUDNvbzVI?=
 =?utf-8?B?eFNsQktNYzhPd0pzeTRyQlFKNU1ZSjVnSTNZMGVjWDVSWnVqVzhzeUt4WFV1?=
 =?utf-8?B?aDM0ZHVhcFZmcFV3eWdsek1kMTdrb1NaV0VCUEdkRUhpMWFEdjNUWGZsL2RD?=
 =?utf-8?B?QXFoVDY3UjZFNklUTFliZEgvOEFUcjFadDlWeUZ3aEEwcGc0amFKRGJGMS9h?=
 =?utf-8?B?QktYU24xV3pjUGlOMEpSSmZFMUwwUDlWeFk4d2RwN0ZsNzlMYjlacCtzSGpi?=
 =?utf-8?B?VlJ2MHJZeEorTHZsY0I3MUM5WXBaNXlnY0JuUDRoeDNOMXNlUVJxYkU2SWhV?=
 =?utf-8?B?K2ZWblY3YlJtVGxVTnBDd0hwNTQwWWIxQjRJWGhrYWVKS2tSN0dqNmZqOWt0?=
 =?utf-8?B?eHFqYXF6dkU0cnozUXhsQWtBZFJ0R3d4MXJZUUlHNDV3U0s0RnZpZzZGODRJ?=
 =?utf-8?B?cDEySDNmeFBIRWhSdkxRNFpnSU5lbVBMbjFTQ2JRcGdMSjZjSjJJalp6K3Qz?=
 =?utf-8?B?cWhXM2Qvc1lsclphdkZma2pPRDdVRzZYSE84MkRRa2xqMFNHTzdEMEtuL0NW?=
 =?utf-8?B?NUswZzZTWDVBNnlaQWpFaG9WUjJ4djFXdnpTVjZPeW9ic2NIMTBpWHlKMjBF?=
 =?utf-8?B?NG1BWTU5OHFwNkI2Wmp3cjUrVWszYmZ3MTgxTlZyRUMxbTUxK2xMamhjUEZS?=
 =?utf-8?B?WVpCa29UTVlUTHFaU2FiYzFpZmJvemsxVWJVQzBFbitsL2g1dFowZXIzd2Nz?=
 =?utf-8?B?NW40RHJ5eUljbTc4L2FEeUtQRStEaTRlY2NQY2Rsa2dVQkd5WTc5RjVFaUNV?=
 =?utf-8?B?c1BlRWhubjhUWjhPSENkUkdsU09UZGdTY2ZoSVgreHNCQXZaeHhyeXRidHJW?=
 =?utf-8?B?ZXorWDErVklucERGa3Z2dE85a1ZZT3BIc2o0RHFzSmowR3ZLem1NVWhDdi9B?=
 =?utf-8?B?bjhkMm0rTnNtbFNNb1RmbnhJdGNlVlpWdkJ3VHhHZlJZMUVXS3RaemwyYWQ3?=
 =?utf-8?B?amNkYjU2UGFWSE85aFNuRUJ0cjQxZW5pTWc3NUN5SlpSdUZxQm5iSnRCVWlx?=
 =?utf-8?B?SXlMK3cvQWtQSGFnWWxPNCtkTDBMTFh4UUxQUXowOUFreVNxQk9YSGZmWC9m?=
 =?utf-8?B?NmR6V0hrM1IyNEM5NERXOEt3MGttMGtBTFVmbnJSUURsK0RDQk9hbnRTYzNq?=
 =?utf-8?Q?PUtlb+ppyQSpYRTyIPCMZvSixCclgqKmEak1dEV?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?L1lpNFhGTjMzdTJmU0VMMHY4anhEMzFkRW5aZFNWam1OSHJnM1hRODJGZVQx?=
 =?utf-8?B?SnhJT2l3VFd5RWVMWXJWUFYzR3BTektOZlRUY3VOakhjdTNDVldvRWo2Rkw4?=
 =?utf-8?B?d1pLWjVqTUloM09pZUpzU2dlVWF2S2dNK0o0ZUkzWTJTWHdLNzVyYzdXelVy?=
 =?utf-8?B?bzlHSTR0MjI5WlVlK0RLVlRiMTRDUy9sSk42bDRuNDRFTXRJOXQrcldiRzdO?=
 =?utf-8?B?UjVjM1RndG5RTHhLUk1GMjQrS0Q4RUhNRHZrM1VSY3lySmpqV1Z4S2hFOHcx?=
 =?utf-8?B?VmZWMHB3R0p1ZVl1djhKUEZpSjlwNzROZ2V2dTJMaXFTR3RBWXNQUWdpTHk4?=
 =?utf-8?B?VjUraXArUWxsTXpWa1FUTGlrQXY5OEF0Uko2b05JZTFCNDJqT2RSUXR6TEJy?=
 =?utf-8?B?UUU0WHZFMEpsdjYycXlLaWNTYlJlbXlkK3MwcGwrbVc1a2V3TWxKK1ptTkRp?=
 =?utf-8?B?aEhRc1pscEtVaytZamJGSklPUEFHSFh3eWFtb0pJQkwwRmpoeXlscWNxZ3NJ?=
 =?utf-8?B?Z2NGMzhRaFE3b1QwKzFPSEJuZ3YrS0UxNFhUOGZqLzFDRUdwbndwMDhQUE5o?=
 =?utf-8?B?K1pyVmx1RmdSVGEyNDVWNVErNkxqTmo3a1FZcnVYZnM3WXVFRTBPMmNqL2h1?=
 =?utf-8?B?OXk1OFp0US9XdHNUWFBRUUkrRjRlYnE1UndraWpqeWxXRmJzZEovUldEWFhY?=
 =?utf-8?B?S0R1Ui9LeG5hSnN3aEJZeUd2dStncnNFQzJnd1FiRFl0NXpScWZPSlh6UXN1?=
 =?utf-8?B?a0cxK0RqRjNJU3VxT2Nuc1BJTEoxYWg5WU01d01nbXM5L1UyYnliNzc3aTdH?=
 =?utf-8?B?WDNSclJPQUlyL2xNVE9iYUswZmxXSXlXSlBoV0hmM1dBUDdIY1kyNUZkd3JI?=
 =?utf-8?B?ZmhwOWgxa3ZyUzB6NTMvM1d4MjYyNkZYNVR0OXJWUVNoS1R1MW9aVCtwaCtT?=
 =?utf-8?B?UXpyMUFzUmpGN0JsSThFcjJRTzNNL1F1SE1INTNSZjdjMGVTOUM2UndtVWU1?=
 =?utf-8?B?SWVFb21mNEpqYVNaNCs5Ykh4emtOWmNPUFM4S3l2RDlveW9rVTdCV3MwYmI4?=
 =?utf-8?B?Rm9jejdTYXRhSEc3OVd4TkdvUEdmMUpKSGs1K0F3T1NrMnVHV2RneTFFdzJR?=
 =?utf-8?B?Zy9WRXJrNWxkVW9Kekh5VlJUbHFyMzdSdWIwYWxwc3pDZW1NODdTQ2sxUXBD?=
 =?utf-8?B?NXdMazk0Z3Z6ekRYNkw2eWR2WS91SWo1WXdZZWU0YVVQcTBublJ0dVJiNlUr?=
 =?utf-8?B?USswV3BuK2wyRmJmYXIyL1V5WXVpd1JHUk1VWFJVUXpxc3E0QU1yV2FUTlAw?=
 =?utf-8?B?NlFGNzNlL0Y4M1FkMXYzUzZxNEVhOWlwTTVJRTczS2w5dXpmYkRUMWszTWM0?=
 =?utf-8?B?ZUxWNnpyb21GYWRPUzJpcnZlL0VWVHFBR3hOZDhjNG5vK3JoZU16WU5wZnJi?=
 =?utf-8?B?eWtZNnhNWU9TV2JhTWJWcUJpTkRlZnQxUFB4SDhQbWN3NElubjJSRlpaZEdn?=
 =?utf-8?B?VG9BZkhZb2hOK0ZWSlJBZEdPVU9PM2phRERxZGJTWk5Lck5YaDEwN0EwV3BQ?=
 =?utf-8?B?ZzNrOHVZU1Y2RUxNWE5WVnoyRS9kS1c2SGFPRzN6enVMYkg3Y2FPWlpEVEl5?=
 =?utf-8?B?cW9jL3JFL2UzcjZJMnNrVEpmR09EL1dlVURHNjZnUldDWGdRRlVBcXN4TmlN?=
 =?utf-8?B?cUp6YkZpODlERzhiWTFXZ2xOajY1TUJ0My9ZNGJ1enovWXUyOFpNdVM3bUFz?=
 =?utf-8?B?a0JsZFlOK3ZoZnphZEh2bS9LZXRtQ01JdFZMejNtcExQR2pZTVZiNHF2OHQz?=
 =?utf-8?B?cTZJTmJVWWZPRWtIdmVuRHgya2srU0htbGJEcTZsWVhhOFVFMDJhaHFzZUVZ?=
 =?utf-8?B?bHdMLzNqSFM4bFBROGJhYzEvNXFQTmFsK3lqUFlhM3NuTkd2ZENHSWNveXdr?=
 =?utf-8?B?VHlBQUp2a0RyaWlMK2pJbTU4K3Z1YWg0MHNkVWhvc0ZzVnZOR2pLOTlEekRZ?=
 =?utf-8?B?QmFxVGMxNUUybHJQWWN0T1dVMzd4YjhOTFBPMnJPYyttQ0FCWWVvaS81aGdJ?=
 =?utf-8?B?NnVKbVRoYmNTbElKSTZ6cEpoV242QW9hVVhXV1FDYzdIcnZMaU5lQkRwMlJE?=
 =?utf-8?B?dnZKbVVmKzZNbDRpUWxpZm9hKzBjTE9ZRkZKNDVScVNHNG9DeThjM0VTbUpT?=
 =?utf-8?B?SFE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2d65019f-a226-46ef-33b5-08dd0a8d6584
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 22 Nov 2024 00:34:16.8012 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 3hrjGDnnKtno/1lVZEw34a+Inhxo0/3HGCNxja8RcgZtQd5phyAM3vBtx3nr0KQ9YRIOOIfdPEOv7tU1npRfRkNtxr6GpDsvzfIQA7dSFV0=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BL1PR11MB6049
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

On 11/21/2024 16:31, John Harrison wrote:
> On 11/18/2024 15:22, Umesh Nerlige Ramappa wrote:
>> Active busyness of an engine is calculated using gt timestamp and the
>> context switch in time. While capturing the gt timestamp, it's possible
>> that the context switches out. This race could result in an active
>> busyness value that is greater than the actual context runtime value 
>> by a
>> small amount. This leads to a negative delta and throws off busyness
>> calculations for the user.
>>
>> If a subsequent count is smaller than the previous one, just return the
>> previous one, since we expect the busyness to catch up.
>>
>> Fixes: 77cdd054dd2c ("drm/i915/pmu: Connect engine busyness stats 
>> from GuC to pmu")
>> Signed-off-by: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> Reviewed-by: John Harrison <John.C.Harrison@Intel.com>
Actually, does this need to be cleared in __reset_guc_busyness_stats()? 
If there is a reset and the live value is returned to zero then you 
won't get any more updates until it gets back to where it used to be.

John.

>
>> ---
>>   drivers/gpu/drm/i915/gt/intel_engine_types.h      | 5 +++++
>>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c | 5 ++++-
>>   2 files changed, 9 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h 
>> b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>> index ba55c059063d..fe1f85e5dda3 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
>> @@ -343,6 +343,11 @@ struct intel_engine_guc_stats {
>>        * @start_gt_clk: GT clock time of last idle to active transition.
>>        */
>>       u64 start_gt_clk;
>> +
>> +    /**
>> +     * @total: The last value of total returned
>> +     */
>> +    u64 total;
>>   };
>>     union intel_engine_tlb_inv_reg {
>> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c 
>> b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> index c71aedcbce43..56be9f385270 100644
>> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
>> @@ -1378,9 +1378,12 @@ static ktime_t guc_engine_busyness(struct 
>> intel_engine_cs *engine, ktime_t *now)
>>           total += intel_gt_clock_interval_to_ns(gt, clk);
>>       }
>>   +    if (total > stats->total)
>> +        stats->total = total;
>> +
>>       spin_unlock_irqrestore(&guc->timestamp.lock, flags);
>>   -    return ns_to_ktime(total);
>> +    return ns_to_ktime(stats->total);
>>   }
>>     static void guc_enable_busyness_worker(struct intel_guc *guc)
>

