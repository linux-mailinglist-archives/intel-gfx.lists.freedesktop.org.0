Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D0DCBDF801
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Oct 2025 17:57:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFDA910E2B0;
	Wed, 15 Oct 2025 15:57:02 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SQoL7zTg";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A469410E2B0;
 Wed, 15 Oct 2025 15:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760543822; x=1792079822;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=jFMVkcj+fxVdfU809nmxBhAyD/Hyx7ZZM/jMCpc+FoA=;
 b=SQoL7zTgjR+fSlQmtSIKWe3JhGd0OxF6JXDoItdLA5+wDgbvKqw2z3TQ
 uj1U3u6z783xuoBDwgFxN4NzEVC/Kw9HmngGIXfVaR3tp640hXxw9gjL0
 xUEMjzbemymZG+h4WycsCqT24ZW1mYQ5GCFq2U90AKe5A1cCcVgmngL8P
 7lQQ44uEAI+80iUaL2qCcuKtpi6ohIc5CuPzEEVtsEYq4CYwrIZAAygS7
 XT+56OgvBpxaYocWc9WbwKwDYDumgAu2o+CBViJP6anAFUS4xQvPHl/53
 2MVev0zDU+PMOhI28rsO0o/cIF1Y7XaenvFrb5YE0bKNEmAJ3tj+b4B2J g==;
X-CSE-ConnectionGUID: p1x93vXNTpyiHRb04SJYPg==
X-CSE-MsgGUID: hjcHoMXXTamHjTKsVEqowA==
X-IronPort-AV: E=McAfee;i="6800,10657,11583"; a="74062972"
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="74062972"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 08:57:00 -0700
X-CSE-ConnectionGUID: GTrWIHPuT/SJAc8BKBoCoA==
X-CSE-MsgGUID: /iKrHHS3SsSrUc5Omk2OqA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,231,1754982000"; d="scan'208";a="212819725"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by orviesa002.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Oct 2025 08:57:00 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 08:56:59 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 15 Oct 2025 08:56:59 -0700
Received: from BL0PR03CU003.outbound.protection.outlook.com (52.101.53.33) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 15 Oct 2025 08:56:58 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=mTHyazLOeEm1gZ4pHBPxOdqPc6Z22WUVTaVi9i7nWrEvoFGWxG+k5t/BMNjV0y2yIeUvU9VF0NqnxK9eyNfNj855l3isG7+w+dNtsKJHfzzjexx8HEAsZBdHCGIpVCT/ZasnA+EIBA5w4JyQMu0LKepQ2SFtOQ9gudGdwXjwBa5YUCEtxLoxcaFvkomuNgBmJ8fDkD+w48AzjamQYQ2NSRckrERrAh75H2hLyuqDaxvasiptCVIlER5/ylZFSGiDDbndeKM+vQI/cjaTRxekqICOHzHtcmB1cLK5Qjv9J49mBxN7QqKyk85d6tvs3xqpFsibYTH2o95HH8PV8EVJtA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=TfVvhJZVRAhYCNMs5hQbPlIbhmCkMVjO3ThjmLGevUQ=;
 b=Z/jVwIqMFyZ0Ygna/dOHS7uuUAM2HgVWh3abhRS10IHMJjiBRHZeiWn6+VqVoc5RDSee3HXAIiDKa7ObvXqDh7BWTvjJyyUx5Z0/cBo9aSo0e92mYCfIhvp4OyLoA7+4Z9acGxQG2C6rkJxT3UjDGgNSvFxa2GzPf1hbc028U43Vag1Oo+b6jAXgwYP8cVqKJXaQUVto46B8MRydGSx9BvzRnFkmTIslca6+J/o7SuHIC/rcGyPRzTa4Zh7dQuvaVZnYXgM05wGgOpizISwvofitx/KocxUVJlltngn11tIywPfNU/AJPFS9LFi+NuFwSSzt0yixAK3zSCWDJZCWAg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by PH0PR11MB5174.namprd11.prod.outlook.com
 (2603:10b6:510:3b::12) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9228.12; Wed, 15 Oct
 2025 15:56:56 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9228.010; Wed, 15 Oct 2025
 15:56:56 +0000
Date: Wed, 15 Oct 2025 08:56:53 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Gustavo Sousa <gustavo.sousa@intel.com>
CC: <intel-xe@lists.freedesktop.org>, <intel-gfx@lists.freedesktop.org>,
 "Ankit Nautiyal" <ankit.k.nautiyal@intel.com>, Dnyaneshwar Bhadane
 <dnyaneshwar.bhadane@intel.com>, Jouni =?utf-8?B?SMO2Z2FuZGVy?=
 <jouni.hogander@intel.com>, Juha-pekka Heikkila
 <juha-pekka.heikkila@intel.com>, Luca Coelho <luciano.coelho@intel.com>,
 Lucas De Marchi <lucas.demarchi@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Ravi Kumar Vodapalli
 <ravi.kumar.vodapalli@intel.com>, Sai Teja Pottumuttu
 <sai.teja.pottumuttu@intel.com>, Shekhar Chauhan <shekhar.chauhan@intel.com>, 
 Vinod Govindapillai <vinod.govindapillai@intel.com>
Subject: Re: [PATCH 03/32] drm/i915/xe3p_lpd: Drop north display reset option
 programming
Message-ID: <aO_ERb1cDgN3ACC-@msatwood-mobl>
References: <20251015-xe3p_lpd-basic-enabling-v1-0-d2d1e26520aa@intel.com>
 <20251015-xe3p_lpd-basic-enabling-v1-3-d2d1e26520aa@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <20251015-xe3p_lpd-basic-enabling-v1-3-d2d1e26520aa@intel.com>
X-ClientProxiedBy: MW4P223CA0019.NAMP223.PROD.OUTLOOK.COM
 (2603:10b6:303:80::24) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|PH0PR11MB5174:EE_
X-MS-Office365-Filtering-Correlation-Id: 2a8731c9-1566-4f96-39d0-08de0c037799
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?UE5Fc05vaHN1WlZ6UEZGeEpGcmxRS0NiOXY5NVZxT0xlMTJEYUJ6WDBORTF4?=
 =?utf-8?B?Vk03V2dWaVFGbm9FWnA5WFRvZFY1Z2FKKzQvZFRma29VTThWTUJ5bHFRTlQv?=
 =?utf-8?B?VmpDQnRPK0Z6bzhKQUk3STJHVGVyNU1JTWl0aXFJRklwRHFJUWtLcURqNFNE?=
 =?utf-8?B?dVFsUWFndkV1TWZIdFBmRmRXQ0xrVXp1SFVNOWo1cVl3WXNNUkdadmtQQWNF?=
 =?utf-8?B?bWdwdGo3ckhmb0pHRXFHTy9iWVQ3QkJ6aTZvTVpnUGpXUFFnQllyWXYzR2hV?=
 =?utf-8?B?MjEzV3dpQWJoU2xJZ09ycFlnRnpOVDBqTW4xOWxrSVh1eXZQcnUvKy8zMmUz?=
 =?utf-8?B?OHlIL1R2L2p1K3FYUXhWTWRUL2VQYTI3OFlIYVZPUEdlMHIreTNPcTB1QXVZ?=
 =?utf-8?B?V1ZTVFVVNzlMZVFsY0lWRWhMaHUrVzl3eXFNcmRWSVRoRjg1QXZYMzR5b2FD?=
 =?utf-8?B?MlFWLy9PcW5qaFhWODZ2U1VtUmpjbmR5QkNUcFBURy9RQ2ZQcEFKSjNuS3Z5?=
 =?utf-8?B?MmJZQkxBUEZwWmdJc2QvbEtCeXVPVVBZV09HWjBLREx6V0o2WGI4NGNsUVlJ?=
 =?utf-8?B?UU0zemNTRi9VRkZPOVRrU3RyVG12OGR2N1VKdFcwMFk5Qi9HcG1zWDRpV0Ey?=
 =?utf-8?B?eWNqZnFTQkt3a1U4RmJZbGtuYXZNVTF1dlZ6WEFlRDFaQlBTcUZKQmhyeHNQ?=
 =?utf-8?B?cmZGL3Z1Qm9zUjl0VHIzNXJENnlkUHZaRkM0Z3JZOGVHOEx4VUNUMlFlWkF4?=
 =?utf-8?B?ZnE5Z2JVb2Z3V2FNeW9YN1Y2Vzl2YXc0ZEVpN1B6Z3Eva2tnS2VxRWRaZk1H?=
 =?utf-8?B?d1I4MmYvRDBvRDZEbGNFYnorRVBpa1ZIQXN4WUQ3Yzlnall0dDY1U0JCcVd0?=
 =?utf-8?B?SHJMalkzTHcwRkJnUkxGTVd3V2dvZnR2bnBrS2FBN2pNWHpqOUFuMlNkWnNu?=
 =?utf-8?B?a1poY0I1TGxwQXc4Tld4TlVrVkdVMFQrNUM0bVRpUWNaSDBwK3hla0dLck9i?=
 =?utf-8?B?QllRazFwUTd3M2xzTWh2SjF0bDk2Z2s4Nm9zVHJ5WTROVHlUbUEza2VYenhu?=
 =?utf-8?B?a2RZSE1IcTNBYUQwRmFoT3hVT2JrZnB5djJjVW0xdHAvZVpJUVpuV2hqRXUy?=
 =?utf-8?B?VXVDVFJxT3kvUmxZUWc1SEoyQllPVlhKV1dhRkx6VHFOV1BjamFOTUx3MXdR?=
 =?utf-8?B?bVdoY1FBWjRlSU4vTmhtWndhMFNibUkyeFFGQlpvUXNiVW5TT0M1aGlCVFVr?=
 =?utf-8?B?anhyQ0Z6N3BtZVhhazhUTVdHdTQrS3RQOS8wNVp6ZkRNOHA3ZFBLK25YZHEy?=
 =?utf-8?B?bkhBSFdibGJUOFlHWjJ0cU9yZjZ2UHdLcTYwT2kvYXc5T01BVnFxeUZKL1Ex?=
 =?utf-8?B?QklrOVo0cys4WjFTVDU4ZGEvYWJLVUpDdWJDbUlSc3lEY0NYTWd4bk11TFht?=
 =?utf-8?B?c2pGalluRTJJL2dzcDB2cFZZU3dQZ1EyVDN6aVplTUxDQ0hMdU9Sb2pMVHRI?=
 =?utf-8?B?T0syUlRxdlpWS1pnQi9Mb09nZ1I2MmZuaGhtWEkzZnMvbUdBVHNPQStVS2VJ?=
 =?utf-8?B?c2toaEwyZ0J5eUo3T2hyVHk4K2dSZ3BmNnVsRW9iek1UelphUS8xWGVXcVNk?=
 =?utf-8?B?UFIxZU1TdjVGZVB0ck5HdWtlczVvZTU0K05ERWNCVmxHU1FiYjhxTW9UeTNK?=
 =?utf-8?B?ZCtMelhyUkxmNTQwdC9LN0MwbXRPTGJKbUlmUVJjWjYzTVY1aTVDWVRXalFp?=
 =?utf-8?B?cjA1dURGRW1FeEtDK0pTZlJEQXdjdHNiV2dqOU1vMzBoNE1MTUN6RTRBOG9G?=
 =?utf-8?B?MytLeFFGMTNJWmxDbXU5c2VwNkhmNUR3VTc2NkYydDlRWURnK05rT09TUEc3?=
 =?utf-8?B?UTJkd1ZJa1loendkOHEzYVF1b3NYZGtWSkcybGNzcHRVaXNZc3RpS1BzYlVO?=
 =?utf-8?Q?5G+REdKzMSRtL+vHrjGH78zzuiYVh8sU?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WGZTdTYxUVBTeEFxbTJHUW1PRFVJUysrT2hlRWlkNFc0cHpGNnBwT3lZRHZn?=
 =?utf-8?B?UkdsWDFXcWFMQkZSVHZRN29STkoxZ2xJWHZ6YWtFMktWQUFnUitSanp1VkFs?=
 =?utf-8?B?VlV3eGFhRzFLL3FlL3M1Mjl2TFczSTFlOUFEQWluNVJ6NTFEVHpPTXA3dHN5?=
 =?utf-8?B?dTJoR0lwbHQzK1VmMjVFcUY1VHIwTGRjN21kMDYxQTNiOXdsbnBnL0NXbXl3?=
 =?utf-8?B?dDNoYWhmRW9QSldhRk1wZGRwTmFTK2RjOXdITlJlbk16b29nbUE1N3YvV0ZT?=
 =?utf-8?B?c0FoUGtENzB0aW9JMW1kK2U2cGpLaVVUOUFnSW5KTEpYMHdrSkR4cHUxVkNP?=
 =?utf-8?B?ZHRPUGQrbFBoUy8wRm5ZdGtVdkpuU1k5Z0J3cHhSVVZJa3k4Njh5RHBKTFph?=
 =?utf-8?B?eklCbFg1S004ZVFTNjJqaDI0VS84QlI4Z2NISjAxa2tnUjc0TGdXbFN6U2lj?=
 =?utf-8?B?VEE4SHBHV1hZejQrNEFzenhYZGxvdXF6ZVZQR2ZjeDVtdTM4UWViTTRSUmdG?=
 =?utf-8?B?YTBZM2tjRXE0Y3RVRitrUHVtV1ZTT3VGeWoxQUVwZ1drZWlQVUltMmgxQ1Ja?=
 =?utf-8?B?dUR2Yk9DcFVTOUJDM0lrYkVwL1Q4YkxVTUc5TmdXOWprUlA5YWNWSXAxZEFY?=
 =?utf-8?B?YlRxbkxzT1JHVTNibUkrSkpyb2lhY1E4UEhJeXJnL3hQY0VBZkJENXpNQnh4?=
 =?utf-8?B?VW01YU1ScWFtLytUS1JORXFZenFXYXhkaGRTNzNUQVZkZjEzTVJURlZHNEdh?=
 =?utf-8?B?SEd5Qno1cDZhT0dmdmdzTm9vWTRoOE5oZGE3SSsyaHo5N2w5Z1VjNWpuSnZl?=
 =?utf-8?B?blVUWVFocXd0UGg3aC9Ic0R1NkZTUHVhOEtOQld2UkNhc2hENFduaEp4blZl?=
 =?utf-8?B?N3JUMFJqbXJjbkFWUlE1NmkvQkMvKzZxV1JEOXZueFNGYUdwTnQwWTdSVzdt?=
 =?utf-8?B?ZlJvUjVmMXFsM0tBb2JsUklWOGM2Ty93eXIranBHSm5IdUZyVlJuN3N0YjUr?=
 =?utf-8?B?QmN5OWszZm9BMnpNVW5zdVZHTWVxcmEvdTFZams2K1hCYmQ2bThSTlVQT1Jv?=
 =?utf-8?B?NG8rU1dIaUM2RjVaNC9mdjBkRVZoNFJ5T1R4aWtHODVLM1BxVzdHM29sOTFW?=
 =?utf-8?B?MjZKUXlqWXI5c2wwRnNub0tWYU5IUUcyVXpJQ2o4MjFCei81c0czaWRhMDZI?=
 =?utf-8?B?ZVFzS1dwQkdYZlEvTWJVaUNSVVJwSmRWZTU0VlpjamVCYVlsdXBkazc2TUFU?=
 =?utf-8?B?eEhIZlRDZTFPU3FTdDgzR0dPUGxldkZ6TitZSVBkRUpZVldENXc3WkhWNG51?=
 =?utf-8?B?NkwyR0l2Uk95K2NBYW90azc1ZUozMzZlaUwweU9HZDRwYzB4eG16TlVLckNi?=
 =?utf-8?B?SWJPa3NDZUhjS2RKcnFqL2dEZUxhUFE1bFV5bFMzcjlIMTdjbHV4WFBJT3Vx?=
 =?utf-8?B?enEwYUVROVRrOFgwMStwYVJ5dU1xYmZhMStuU0l0TUFmVlp1emxRWmg5ZWdV?=
 =?utf-8?B?UGQxSUpGK1FVc2xJdk41eGswOGFac2E3Zm0xVTk1cFQ3ZUMza3lseFRFV1RG?=
 =?utf-8?B?OEliayswTy9HV1Q4WDdDbTM1QkpwaXFKcER2dnpkMkpvZTl3TW5MNEJQMjBq?=
 =?utf-8?B?c0dkME5ZUm9nMm1BMGY1R0JOZS9hK3pnTUJKeG4yZE9iWGUvbU1NcmZTQzBq?=
 =?utf-8?B?K1lMRHpqVE1CSURvS0V1aWNtUTRPQ3pINitvbHl6dEpZQXZIRGVyVnozN0k4?=
 =?utf-8?B?cTJhTkRIQSt4OE9YL1JwOGJ4TmpYSnZjb2t6RForcjNZR0hlaG5rekhiSm0x?=
 =?utf-8?B?V2VCblBaTGV2Q015KzQ0KzR3RFhaMksxTEpzUWlmRHUvcGN6ZG5yOEl4b3cv?=
 =?utf-8?B?Wnd0Nk5KaStMblFXcjNHRi9Hand2eUdzanhGN3lCYkR0MVFQOTZuaTUyZW03?=
 =?utf-8?B?Nmg2b3g4Q3RQa01KcDdlcmpJVVRTaVdyTVdGRjUyRjJyZ0VSMStBTlAyNDV3?=
 =?utf-8?B?cEtOaXRxeUlKaTcyVU9NaUVpdGZLcWJubGNkUzBoRGlUNWtwQUJYcFJtcWN6?=
 =?utf-8?B?V2R4eE9sL1E0V2NqeFV0Rm9ic0FTWmdOUkI5S21DM3h3dkFYS0V4ekcyelV2?=
 =?utf-8?B?VjI4N0dIaEhzWHRaUkZwL3NLVjZLYTBKbHAzaTJnd3MvOUZRQ3ExQ0xDWk5u?=
 =?utf-8?B?ZlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 2a8731c9-1566-4f96-39d0-08de0c037799
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 15 Oct 2025 15:56:56.5948 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: bb4+KAXUvtsg0J9d8KcE7O+/TBFJwbS5p0J7sNDNrZGiBJS/E3WewTfB4SOT/ndTEWlPWhQPe+Pvf6C8QeU+6M3wuR+wJhZxkz+2rrQrq/4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB5174
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

On Wed, Oct 15, 2025 at 12:15:03AM -0300, Gustavo Sousa wrote:
> From: Matt Roper <matthew.d.roper@intel.com>
> 
> The NDE_RSTWRN_OPT has been removed on Xe3p platforms and reset option
> programming is no longer necessary during display init.
> 
> Bspec: 68846, 69137

Reviewed-by: Matt Atwood <matthew.s.atwood@intel.com>
> Signed-off-by: Matt Roper <matthew.d.roper@intel.com>
> Signed-off-by: Gustavo Sousa <gustavo.sousa@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_display_power.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display_power.c b/drivers/gpu/drm/i915/display/intel_display_power.c
> index da4babfd6bcb..821f5097e9c0 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_power.c
> +++ b/drivers/gpu/drm/i915/display/intel_display_power.c
> @@ -1436,6 +1436,9 @@ static void intel_pch_reset_handshake(struct intel_display *display,
>  	i915_reg_t reg;
>  	u32 reset_bits;
>  
> +	if (DISPLAY_VER(display) >= 35)
> +		return;
> +
>  	if (display->platform.ivybridge) {
>  		reg = GEN7_MSG_CTL;
>  		reset_bits = WAIT_FOR_PCH_FLR_ACK | WAIT_FOR_PCH_RESET_ACK;
> 
> -- 
> 2.51.0
> 
