Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A7A20A19DD5
	for <lists+intel-gfx@lfdr.de>; Thu, 23 Jan 2025 06:01:52 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8E56E10E0D0;
	Thu, 23 Jan 2025 05:01:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ChIt3NGT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0771C10E0D0
 for <intel-gfx@lists.freedesktop.org>; Thu, 23 Jan 2025 05:01:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1737608509; x=1769144509;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=5pg3ITQmaLGshJ9lOzy3PzziTKOAgQZjZGTfKYvLBFI=;
 b=ChIt3NGTpV9C6HR8TCrGFcPSwOiG+//MK1QFVsVfyCVfBi4H+ZMQ2eC9
 OypwByqeuIOXjcqmdCmidz7THChLYNzEKuLAZ/5JoGgcgqCzlItLZ3CMY
 Uv+CqLT2iRKdv/MTFOxmrL/S17kld+B+tuJRj95wGSNz/FhOKzPE1yZgx
 ydGXQiViQPxKyu8T/v2R/S8gVrGMl/QkzvpKMnXZvIwzUCdVEXE354rop
 CYO66iEePx2P1xIDvNmFlj+/IDQE/ZHrqnOxgIEg4W0EkdMgcItGyd3ON
 dTl5zFxm/eX9oFtkt7R4yr0JmgVqWhv5SNN4JMe2mmCqjCzoLCE5e1hXP A==;
X-CSE-ConnectionGUID: wDZu6Nv6T9+HvoLAMyqz1g==
X-CSE-MsgGUID: E5QpgzV0QVOy44y7xFBwXQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11323"; a="38008572"
X-IronPort-AV: E=Sophos;i="6.13,227,1732608000"; d="scan'208,217";a="38008572"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Jan 2025 21:01:48 -0800
X-CSE-ConnectionGUID: hZss12c+R2aEKfnRIHl8Pg==
X-CSE-MsgGUID: gj6JvbMeRTOG/7ZjrSRVDg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,227,1732608000"; 
 d="scan'208,217";a="107347053"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orviesa006.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 22 Jan 2025 21:01:48 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 22 Jan 2025 21:01:47 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 22 Jan 2025 21:01:47 -0800
Received: from NAM04-DM6-obe.outbound.protection.outlook.com (104.47.73.47) by
 edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 22 Jan 2025 21:01:46 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HV9LTJMZ04+QFa5GKnBDLwzaBx7N5rw78k00vT6YazLRX/4IdFjvO/3Nx1p9a0xjg5zaofd52a6SESyu1b0alciVzAsNMy9jtucv9OJ5IuZ5GL9oiS/AoJrnqWR4EHLwxJjrFcApF1oJJnUrX0wCwuSpNLkYQwP9Fx3KfmPKG0mitKXowSQZKvSszhn2U/haF+t7gTyoDsEPoGX76j035rJ1yzSpsLjxFKbVgKBBNCz814pJF8JqHFWk4ndCEjc3yQa7KAAWIaeWJ8xN6JRXwA7ItXdcUDxejMyD1ubRE7Kf8csUj/TMOuRPueRUmKlAiQekhJ3N+BedEQL0fsJThg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=WuUZj0UzLaxvvni7mloSkD161Fu4IdcZ8GqOjFaL8l0=;
 b=pol2s6uqUhnB0CWpuG+D8Cft3jDbn6eSYLznd4E8aWO+vNkmyQPoUBlizcq20N+Gs4E6uPpKgrvhQFlW1zJl+nhy3dWPdYP//ySPLkr1D705UsY7r4ULeq0KFuS1SiVSHWeT3qlHoqkyC+yCMlTxb+2rjJAf32OMiKoay1stEwLOWNbWGABDhplybYDCGDjy+nozWQhIdttbO3y0HeXgxgzUJeyp9KC0cJhqMFulhI/K0VhvBVS5+DasOtIpd4s16NZnmVzKPVghJ/iS10O9Lc6+hUcaO0KhA9RJzJ2giU9/vZc6JHAccNLrCJHhBjlD9t6035RhufUwMsFQ1ZeVyg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ2PR11MB7670.namprd11.prod.outlook.com (2603:10b6:a03:4c3::18) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8356.20; Thu, 23 Jan
 2025 05:01:29 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%6]) with mapi id 15.20.8377.009; Thu, 23 Jan 2025
 05:01:29 +0000
Content-Type: multipart/alternative;
 boundary="------------GvPQfa1Ynpg1qUof00o3iVzu"
Message-ID: <34024f8c-b2e7-42cd-b690-2038adf5aff1@intel.com>
Date: Thu, 23 Jan 2025 10:31:24 +0530
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_i915=2ECI=2EBAT=3A_failure_for_Add_HDMI_P?=
 =?UTF-8?Q?LL_Algorithm_for_SNPS/C10PHY_=28rev5=29?=
To: <intel-gfx@lists.freedesktop.org>
References: <20250120042122.1029481-1-ankit.k.nautiyal@intel.com>
 <173756822073.3153572.16272969157935084401@b555e5b46a47>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <173756822073.3153572.16272969157935084401@b555e5b46a47>
X-ClientProxiedBy: PN3PR01CA0130.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:bf::19) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ2PR11MB7670:EE_
X-MS-Office365-Filtering-Correlation-Id: 07405d5f-56ef-4068-a274-08dd3b6aff62
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
 ARA:13230040|1800799024|366016|376014|8096899003|13003099007; 
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cVJDM3lrUmtQWDlUYUhHQXJGak9sNnM3cG5FS2dJVEcwbk5QYTY0Y3d4VU5K?=
 =?utf-8?B?SFNkR3lKRUNnQTVSUkxJUlp3ekkwUTBidCswOEJEbkk1R3gwcTY2YW5NUEht?=
 =?utf-8?B?Ti9YMGJIb204WEtMV2tvRUNxTjlxK1d1bWZzVlJuWFl5SDJKQ0RRQk1GbDE2?=
 =?utf-8?B?OVZaa0NyYWFaaVFpanVuY0pDaHJmeWtERVNTYjBQR3ZzSkczQjk3Skplazhs?=
 =?utf-8?B?MHFybnM3SzBndjdyR0NmZU5hV0l3ZmNvQUc3TUovVnE4Vk9yVUFoVEE1dEUx?=
 =?utf-8?B?S1JqK0xYN2tLNkhINzNHMlVIa1ZyODVxVHlpcnU1ckdheGNjQjdyN0FaWEhx?=
 =?utf-8?B?eDVtUjV2SU14NTlsY3VkUFlOeFhVTTdzTC9lTm5hbXh5cUtYTS9KQWRYMjBm?=
 =?utf-8?B?Nk95NmRXc2R5RDVsMGZqOXdYNGlyZ2dHalVMSUVJOXhnclMxT0dPQTlydVdt?=
 =?utf-8?B?WFhJQ1pySjRMbDh1d09JTFdnZlNqSHNVOWY0TlpnSG1aLzlmV1RwZklWMkJ6?=
 =?utf-8?B?MWh5aFhkRzQvNUhXZ1NlVUdvaEUvK3VxVCt2TmNaVXRDb0xjTVZlNlkxcDFl?=
 =?utf-8?B?ZlBCS2o5cmNqSE9DMEo3MTRqc0Y3SEtmOFlZS2RwSDRZQTZwUlk2MTNBSmtt?=
 =?utf-8?B?UXgvclg1WC8zOGo1Y2dGNFpSOE9KMjhxbUJGVzE1QmRhN2ZuTHFuN2JwcE5a?=
 =?utf-8?B?QmRBV1NTSW5NWWVhSWFkVkc2dTZ6YlpJTzJmVlYrMmg2dnJuZ0tWWHBjSm91?=
 =?utf-8?B?aDFXYkpqbmlaWENLRTR6dzJ5K2ZUbndGSTNpZ1VuQVJMVWtyNGlUV2lOUkZs?=
 =?utf-8?B?UUxmbVY0dkJPTXYrTDlwMGEvY0tna09Gckx2Y3ZOeURtT0twNVQzT3lDT0hz?=
 =?utf-8?B?RlNscnowWElqMTNEMEZZaXZHWGZJamVIUWljSTRNenNJeHNUWTU3c2tqc2ZH?=
 =?utf-8?B?dFAxV28zMmhKOGtIN2JtenJuazlTY1c3RG91aURONjViV0dGd0VVcSthclFD?=
 =?utf-8?B?Rnh1VjNLVm9UOVRHQzhqQ0ZmRXhTcGFOMkVwdWFmNC9LanVJd2NPa21Zbkpa?=
 =?utf-8?B?dVkwRjduUjFpOHVLOCs4cFV2dFU4cUtuL3JrYmxsRHBIQTNNSk1rOEZOczZj?=
 =?utf-8?B?TGtkeTY4aFBPTWhvVFFMVW1EaHBGd3lWaFpGbnAwNFh0OEswRGxEUVVTekF2?=
 =?utf-8?B?Sm5NeEgvY1ZOUTJaSG1GMGJYQmIxN2ZSNlhydndtak9RaVN4SmVrRTgxZnY1?=
 =?utf-8?B?R2JNMGJoVnJRaThpaEZnODNTM0N0eS9IenU4amxDUXlNajdVd0xJU3kzZzNv?=
 =?utf-8?B?RTV1dTROZEs3VHFJVWdJM1NNdURaYlRVSGhlKzZkNVI5VlNmRE5xekF6bFpB?=
 =?utf-8?B?QmdMTE9LUGFCeTFqeU1qcmxCOUhFSjFEZ29FRTlwOUFSajFJMG5CNTRtdHNi?=
 =?utf-8?B?YUdsbThYK3gxdzBBWVkzYldnM3ErdlpRNnQySytLQUNXT2FPWjdHeE4zYWdH?=
 =?utf-8?B?MGx4STBrakRPTWdXRy9DVUhzOWJpS1ZTSWtldlRRWjFQRFVaNVp2MlRzV0ZN?=
 =?utf-8?B?MlBGK0lyblhjMjdURERIdXBiQ3doWWZJcThZQU9wVmRqRkVHQjF0Q0VadzZa?=
 =?utf-8?B?ZUZ2TVp2R0tkR1ZUOXBDdmdnUXBFQXVsUGdaSmVUbnd3aTBnTDRNQkwrekJl?=
 =?utf-8?B?NTZQUUJod0pLekNkWEtFVGFHRUJvWUJhanJCYURuZzQrSURENFhua1RrcGZs?=
 =?utf-8?B?Wm9vbDZBZ2pVVEdvMW1iSWM5eTBLaElXWWxjd2ZyaHBBOWE0VjExQzl5Unhh?=
 =?utf-8?B?UEVvc3orUStTa2NBcTUyZz09?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014)(8096899003)(13003099007); DIR:OUT;
 SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?TGNzZ1ovQ3hXVjRpUWdVNDJyR2Y0UjA2RGM0STlwdnI2V1ZUSTc2UWg0Q1Fo?=
 =?utf-8?B?dExNdmh6TFJvejZXNTA1Um9CZ3cybFEvd0ppZE9BVkhVdWg1VTlCdVNCWVNI?=
 =?utf-8?B?ZDNyeXp3TXRnNStrU1pRRktOcXFSOWczWmZPaGxQOUxWaU5jNDBpNUxRTCtU?=
 =?utf-8?B?VVRtaHduZmpzeGN4dllGL2FDcWhHbnlRUnREeHZpNFpDcEY1S2t5ZnkwWHFO?=
 =?utf-8?B?U3MxNkp5NkVud3RMcVZhM01BcHNCdnpLSUVtaGhmeXpWK1MrWEoxK29Kc1lG?=
 =?utf-8?B?dmFoTU9Qdnd1M2JmQUVWT2RBRWNuQm5wMWxQWVhjelJNYmc5VHBxTS81Y0tI?=
 =?utf-8?B?S1B6c0hGTklndGJjVm50Rk5kSGJneTd4dklNUkwySi9IRTVlengxK0F1V1RR?=
 =?utf-8?B?TTQ2RnZHUDExTlh1U3pZb1lLY3hMdDFCRUFIZXkxVGVmd3ZvLzQwVnNOTXFt?=
 =?utf-8?B?LzRPK2lFVTIxTllFU3JZRDN3Z1ExckppSzdld0pjcFgvMmtFcDVlcDdYdFNU?=
 =?utf-8?B?YjZlS1NHTDIyMWIwcm12WW9kZ2dxZnpkZlo2UEJqZ2hpcUxqc2dhYUxoMUp1?=
 =?utf-8?B?QmdwRWx5RlhBMkxnbGV3ODdPS1pXNUJha1UrN05PcUM3a3JlZkRmd3lrZjVM?=
 =?utf-8?B?MVdlSkVOckxPNVYvckIweldyOUJiVDQrMXhlek1qak9OZjg0T1g1S3lsV0Ir?=
 =?utf-8?B?a3lPN3dNbXpOY29wL2RHU00wSjJYbmJVLzRuYTFZeDZ3L2ppbmh6WVJwcmY5?=
 =?utf-8?B?Tnl1a1lKYkpNZXgzNVNQRTQvZDlVSDZ5TWNCQXU1anBNTWtVZVVWdmZBK1lL?=
 =?utf-8?B?NmJXakhqVFhmUk1Ed1pLN3MrMjdCRXVUSWNYWGJIVS8zWW9xcDM1bG9WQmZW?=
 =?utf-8?B?MDVXVFlOVk9Wem9aTWZYY3k3eTNBZFYzZVdhVm0wOVJKVEZqSm9kQ2RBTk85?=
 =?utf-8?B?NTZkeEJ0UTJuMTBFd3YxWDNCdDQ3UWV3d3NqbERUY1hBdFVZUmtGMlhQQ0lZ?=
 =?utf-8?B?STNBam9Rd3dtTzVUTDQ3Y00wTkVRQWNSMmZXNlk1MllrL1FiaG1EeGFwVldM?=
 =?utf-8?B?Nm5CR29sS3U0ZnBmY1lRZ3liY1ZxKzVjMnFhY2NsWUEyWWp3WCtLUmZSSHdZ?=
 =?utf-8?B?dGJDYzNUNUs5a0hlY3N4cjF0elA5bitSZ1BTaTNMcFB6cmxwTDRyRi8wb2hO?=
 =?utf-8?B?RGdsTVpqMGJmbVBFZDUwMVBKSzJZTG83enNKbWF5V05VOHVNYWdwYW9OQjEy?=
 =?utf-8?B?T3FnWkx3MjIrWm84N2dOUkl2OHhCRldwaGtOdWVoNDZRNnY1ei9Rc0pINEp2?=
 =?utf-8?B?UXcwU0pTWXo2WldBeW5icmhva3NnR0tXSjJ6T1FQMUFCVzN3R0d6NDVhSW9m?=
 =?utf-8?B?eEFHeDV4MUpzc21kWXQ4aHJTYXlEM0JTTVRXRnlOYWo5M204ZEhHL09RZkwr?=
 =?utf-8?B?Z2dpekZWd0NHRkJnL1R0RzdRRS82dzkxZkxCUVlyU0J6UkoyclB5aDVlRlhH?=
 =?utf-8?B?bFBHcVRzbFlGRDRaVEprWEU2Wk9pUVg5U2JpRFFkVGpJM3o5bHYxQk1MQ3Fn?=
 =?utf-8?B?RFZJd3NJd05ycTd2WDVJSzRUSVhlVjVpdU5yaktWSUNaKzZ4K21wc2hwby9y?=
 =?utf-8?B?VUNZUWpJK2JwM3pRS29IQlBJOSs1N1p0ZXY0YXRITmJ6NXQwTFlRaG5YREVu?=
 =?utf-8?B?bjl0RGV4YWFmS3BwQVBYbG5aUHkweDVYSWQ0K3VGN1lCdXYrSHEya1pBSUNW?=
 =?utf-8?B?aDN0T0R4bGwxYnduRTlNaDJxZmJPQnFaSTRNQ1UwMFA2d3Zia3h6ckRFZ20x?=
 =?utf-8?B?bWlWMVAyNmNNR24rS0w0WFJjejRUdktzL2NpZCswOExpUDZiUzR0cWZOcEc5?=
 =?utf-8?B?WUcyTEVYWUZ4M1lwRVgyZ3ZBSmJjbGZZR2ZkUXQ1RlZFaGtrV3ZSNFZKOFZL?=
 =?utf-8?B?SnJFVXZBdjljUm9leVNBOXFaNWsyaWNaZXRoekpUOGpFcXIxTlVyK1FBZDV2?=
 =?utf-8?B?WUhxNWIzT1NHc3dQQVZ6WFJJTU1IZHhaUytMUGJaNEZWOFlsS0w1eFMvMkFY?=
 =?utf-8?B?ZnUwVkFELzFwQ3doRFJEUlkra3BtNTZvYU5rR3huTkV0K08vK3R4Q3RCYzRP?=
 =?utf-8?B?WUprQXpkQ3l2V3RLbXA2YmdsYmRxUmFkNWRzK3ZXbWw3Zit0Wm1kTUw3QlZs?=
 =?utf-8?B?Q1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 07405d5f-56ef-4068-a274-08dd3b6aff62
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 23 Jan 2025 05:01:29.7232 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: sLZkwk3IQGP2yIIG/NMrAiDBQfkuUdEIYoC36yynu29Xi/yO/x2j0f1LRNMP9EYP2VbLDV5a3BtYO0/jytzf//QKD1K/WjBLKpbUqrKKYqc=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ2PR11MB7670
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

--------------GvPQfa1Ynpg1qUof00o3iVzu
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

The below failure is not related to the patch series.

The test was passing in previous revision v4: 
https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v4/bat-adlp-9/igt@i915_selftest@live.html

The v5 is just a minor change in macro in patch#2, sent in-reply-to it, 
so both versions are practically same.

Therefore, went ahead and merged the series since BAT and CI are already 
clean for v4.


Regards,

Ankit

On 1/22/2025 11:20 PM, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	Add HDMI PLL Algorithm for SNPS/C10PHY (rev5)
> *URL:* 	https://patchwork.freedesktop.org/series/135397/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/index.html
>
>
>   CI Bug Log - changes from CI_DRM_16001 -> Patchwork_135397v5
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_135397v5 absolutely need 
> to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_135397v5, please notify your bug team 
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
> External URL: 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/index.html
>
>
>     Participating hosts (45 -> 44)
>
> Missing (1): fi-snb-2520m
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_135397v5:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@i915_selftest@live:
>       o bat-adlp-9: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-adlp-9/igt@i915_selftest@live.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-adlp-9/igt@i915_selftest@live.html>
>
>
>     Known issues
>
> Here are the changes found in Patchwork_135397v5 that come from known 
> issues:
>
>
>       IGT changes
>
>
>         Issues hit
>
>  *
>
>     igt@dmabuf@all-tests:
>
>       o bat-apl-1: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-apl-1/igt@dmabuf@all-tests.html>
>         -> INCOMPLETE
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-apl-1/igt@dmabuf@all-tests.html>
>         (i915#12904
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904>)
>         +1 other test incomplete
>  *
>
>     igt@gem_lmem_swapping@verify-random:
>
>       o fi-cfl-8109u: NOTRUN -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html>
>         (i915#4613
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613>)
>         +3 other tests skip
>  *
>
>     igt@i915_module_load@load:
>
>       o fi-pnv-d510: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/fi-pnv-d510/igt@i915_module_load@load.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/fi-pnv-d510/igt@i915_module_load@load.html>
>         (i915#13203
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203>)
>  *
>
>     igt@i915_pm_rpm@module-reload:
>
>       o bat-dg2-11: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-11/igt@i915_pm_rpm@module-reload.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-11/igt@i915_pm_rpm@module-reload.html>
>         (i915#13401
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401>)
>       o bat-dg1-7: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg1-7/igt@i915_pm_rpm@module-reload.html>
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg1-7/igt@i915_pm_rpm@module-reload.html>
>         (i915#13401
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401>)
>  *
>
>     igt@i915_selftest@live:
>
>       o bat-arlh-3: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-arlh-3/igt@i915_selftest@live.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-arlh-3/igt@i915_selftest@live.html>
>         (i915#12061
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061>
>         / i915#12435
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435>)
>  *
>
>     igt@i915_selftest@live@gt_mocs:
>
>       o bat-adlp-9: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html>
>         -> ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html>
>         (i915#13399
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399>)
>  *
>
>     igt@i915_selftest@live@workarounds:
>
>       o bat-arlh-3: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-arlh-3/igt@i915_selftest@live@workarounds.html>
>         -> DMESG-FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-arlh-3/igt@i915_selftest@live@workarounds.html>
>         (i915#12061
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061>)
>  *
>
>     igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:
>
>       o bat-dg2-11: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html>
>         -> SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html>
>         (i915#9197
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197>)
>         +3 other tests skip
>
>
>         Possible fixes
>
>  *
>
>     igt@i915_module_load@reload:
>
>       o fi-cfl-8109u: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/fi-cfl-8109u/igt@i915_module_load@reload.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/fi-cfl-8109u/igt@i915_module_load@reload.html>
>  *
>
>     igt@i915_pm_rpm@module-reload:
>
>       o bat-dg2-9: ABORT
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-9/igt@i915_pm_rpm@module-reload.html>
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-9/igt@i915_pm_rpm@module-reload.html>
>  *
>
>     igt@kms_force_connector_basic@prune-stale-modes:
>
>       o bat-dg2-13: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-13/igt@kms_force_connector_basic@prune-stale-modes.html>
>         (i915#5274
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-13/igt@kms_force_connector_basic@prune-stale-modes.html>
>       o bat-dg2-9: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html>
>         (i915#5274
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html>
>       o bat-mtlp-6: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html>
>         (i915#5274
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274>
>         / i915#9792
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html>
>       o bat-dg2-14: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-14/igt@kms_force_connector_basic@prune-stale-modes.html>
>         (i915#5274
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-14/igt@kms_force_connector_basic@prune-stale-modes.html>
>       o bat-dg2-11: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html>
>         (i915#5274
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html>
>       o bat-mtlp-8: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html>
>         (i915#5274
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html>
>       o bat-dg2-8: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html>
>         (i915#5274
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html>
>       o {bat-mtlp-9}: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-mtlp-9/igt@kms_force_connector_basic@prune-stale-modes.html>
>         (i915#5274
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-mtlp-9/igt@kms_force_connector_basic@prune-stale-modes.html>
>       o bat-arlh-3: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-arlh-3/igt@kms_force_connector_basic@prune-stale-modes.html>
>         (i915#12648
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12648>)
>         -> PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-arlh-3/igt@kms_force_connector_basic@prune-stale-modes.html>
>
> {name}: This element is suppressed. This means it is ignored when 
> computing
> the status of the difference (SUCCESS, WARNING, or FAILURE).
>
>
>     Build changes
>
>   * Linux: CI_DRM_16001 -> Patchwork_135397v5
>
> CI-20190529: 20190529
> CI_DRM_16001: 6834acba715b85cbecfeb660b9695806e98c9a0a @ 
> git://anongit.freedesktop.org/gfx-ci/linux
> IGT_8206: 48d7780a026179e5de232142df3ac59fec6487ee @ 
> https://gitlab.freedesktop.org/drm/igt-gpu-tools.git
> Patchwork_135397v5: 6834acba715b85cbecfeb660b9695806e98c9a0a @ 
> git://anongit.freedesktop.org/gfx-ci/linux
>
--------------GvPQfa1Ynpg1qUof00o3iVzu
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <p>Hi,<br>
    </p>
    <p>The below failure is not related to the patch series.</p>
    <p>The test was passing in previous revision v4:
<a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v4/bat-adlp-9/igt@i915_selftest@live.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v4/bat-adlp-9/igt@i915_selftest@live.html</a></p>
    <p>The v5 is just a minor change in macro in patch#2, sent
      in-reply-to it, so both versions are practically same.</p>
    <p>Therefore, went ahead and merged the series since BAT and CI are
      already clean for v4.</p>
    <p><br>
    </p>
    <p>Regards,</p>
    <p>Ankit<br>
    </p>
    <div class="moz-cite-prefix">On 1/22/2025 11:20 PM, Patchwork wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:173756822073.3153572.16272969157935084401@b555e5b46a47">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>Add HDMI PLL Algorithm for SNPS/C10PHY (rev5)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/135397/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/135397/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_16001 -&gt;
        Patchwork_135397v5</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_135397v5
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_135397v5, please notify your bug team
        (<a class="moz-txt-link-abbreviated" href="mailto:I915-ci-infra@lists.freedesktop.org">I915-ci-infra@lists.freedesktop.org</a>) to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <p>External URL:
        <a class="moz-txt-link-freetext" href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/index.html">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/index.html</a></p>
      <h2>Participating hosts (45 -&gt; 44)</h2>
      <p>Missing (1): fi-snb-2520m </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_135397v5:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@i915_selftest@live:
          <ul>
            <li>bat-adlp-9: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-adlp-9/igt@i915_selftest@live.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-adlp-9/igt@i915_selftest@live.html" moz-do-not-send="true">ABORT</a></li>
          </ul>
        </li>
      </ul>
      <h2>Known issues</h2>
      <p>Here are the changes found in Patchwork_135397v5 that come from
        known issues:</p>
      <h3>IGT changes</h3>
      <h4>Issues hit</h4>
      <ul>
        <li>
          <p>igt@dmabuf@all-tests:</p>
          <ul>
            <li>bat-apl-1: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-apl-1/igt@dmabuf@all-tests.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-apl-1/igt@dmabuf@all-tests.html" moz-do-not-send="true">INCOMPLETE</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12904" moz-do-not-send="true">i915#12904</a>) +1 other test
              incomplete</li>
          </ul>
        </li>
        <li>
          <p>igt@gem_lmem_swapping@verify-random:</p>
          <ul>
            <li>fi-cfl-8109u: NOTRUN -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/fi-cfl-8109u/igt@gem_lmem_swapping@verify-random.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/4613" moz-do-not-send="true">i915#4613</a>) +3 other tests
              skip</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_module_load@load:</p>
          <ul>
            <li>fi-pnv-d510: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/fi-pnv-d510/igt@i915_module_load@load.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/fi-pnv-d510/igt@i915_module_load@load.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13203" moz-do-not-send="true">i915#13203</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@module-reload:</p>
          <ul>
            <li>bat-dg2-11: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-11/igt@i915_pm_rpm@module-reload.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-11/igt@i915_pm_rpm@module-reload.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401" moz-do-not-send="true">i915#13401</a>)</li>
            <li>bat-dg1-7: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg1-7/igt@i915_pm_rpm@module-reload.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg1-7/igt@i915_pm_rpm@module-reload.html" moz-do-not-send="true">FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13401" moz-do-not-send="true">i915#13401</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live:</p>
          <ul>
            <li>bat-arlh-3: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-arlh-3/igt@i915_selftest@live.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-arlh-3/igt@i915_selftest@live.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061" moz-do-not-send="true">i915#12061</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12435" moz-do-not-send="true">i915#12435</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@gt_mocs:</p>
          <ul>
            <li>bat-adlp-9: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-adlp-9/igt@i915_selftest@live@gt_mocs.html" moz-do-not-send="true">ABORT</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/13399" moz-do-not-send="true">i915#13399</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@i915_selftest@live@workarounds:</p>
          <ul>
            <li>bat-arlh-3: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-arlh-3/igt@i915_selftest@live@workarounds.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-arlh-3/igt@i915_selftest@live@workarounds.html" moz-do-not-send="true">DMESG-FAIL</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12061" moz-do-not-send="true">i915#12061</a>)</li>
          </ul>
        </li>
        <li>
          <p>igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence:</p>
          <ul>
            <li>bat-dg2-11: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-11/igt@kms_pipe_crc_basic@nonblocking-crc-frame-sequence.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9197" moz-do-not-send="true">i915#9197</a>) +3 other tests
              skip</li>
          </ul>
        </li>
      </ul>
      <h4>Possible fixes</h4>
      <ul>
        <li>
          <p>igt@i915_module_load@reload:</p>
          <ul>
            <li>fi-cfl-8109u: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/fi-cfl-8109u/igt@i915_module_load@reload.html" moz-do-not-send="true">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/fi-cfl-8109u/igt@i915_module_load@reload.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@i915_pm_rpm@module-reload:</p>
          <ul>
            <li>bat-dg2-9: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-9/igt@i915_pm_rpm@module-reload.html" moz-do-not-send="true">ABORT</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-9/igt@i915_pm_rpm@module-reload.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
        <li>
          <p>igt@kms_force_connector_basic@prune-stale-modes:</p>
          <ul>
            <li>bat-dg2-13: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-13/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274" moz-do-not-send="true">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-13/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">PASS</a></li>
            <li>bat-dg2-9: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274" moz-do-not-send="true">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-9/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">PASS</a></li>
            <li>bat-mtlp-6: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274" moz-do-not-send="true">i915#5274</a> / <a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/9792" moz-do-not-send="true">i915#9792</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-mtlp-6/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">PASS</a></li>
            <li>bat-dg2-14: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-14/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274" moz-do-not-send="true">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-14/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">PASS</a></li>
            <li>bat-dg2-11: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274" moz-do-not-send="true">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-11/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">PASS</a></li>
            <li>bat-mtlp-8: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274" moz-do-not-send="true">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-mtlp-8/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">PASS</a></li>
            <li>bat-dg2-8: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274" moz-do-not-send="true">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-dg2-8/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">PASS</a></li>
            <li>{bat-mtlp-9}: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-mtlp-9/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5274" moz-do-not-send="true">i915#5274</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-mtlp-9/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">PASS</a></li>
            <li>bat-arlh-3: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_16001/bat-arlh-3/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12648" moz-do-not-send="true">i915#12648</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_135397v5/bat-arlh-3/igt@kms_force_connector_basic@prune-stale-modes.html" moz-do-not-send="true">PASS</a></li>
          </ul>
        </li>
      </ul>
      <p>{name}: This element is suppressed. This means it is ignored
        when computing<br>
        the status of the difference (SUCCESS, WARNING, or FAILURE).</p>
      <h2>Build changes</h2>
      <ul>
        <li>Linux: CI_DRM_16001 -&gt; Patchwork_135397v5</li>
      </ul>
      <p>CI-20190529: 20190529<br>
        CI_DRM_16001: 6834acba715b85cbecfeb660b9695806e98c9a0a @
        git://anongit.freedesktop.org/gfx-ci/linux<br>
        IGT_8206: 48d7780a026179e5de232142df3ac59fec6487ee @
        <a class="moz-txt-link-freetext" href="https://gitlab.freedesktop.org/drm/igt-gpu-tools.git">https://gitlab.freedesktop.org/drm/igt-gpu-tools.git</a><br>
        Patchwork_135397v5: 6834acba715b85cbecfeb660b9695806e98c9a0a @
        git://anongit.freedesktop.org/gfx-ci/linux</p>
    </blockquote>
  </body>
</html>

--------------GvPQfa1Ynpg1qUof00o3iVzu--
