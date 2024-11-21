Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 724279D493B
	for <lists+intel-gfx@lfdr.de>; Thu, 21 Nov 2024 09:53:56 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DBB9010E8BB;
	Thu, 21 Nov 2024 08:53:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="fAmriGva";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E66F210E8AF
 for <intel-gfx@lists.freedesktop.org>; Thu, 21 Nov 2024 08:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732179234; x=1763715234;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=P7NeDjCRks1p9Wuk8P7MtYKA0aQnbd1yoCu1hY3F9+8=;
 b=fAmriGvaX036P4uNyyggivLdArLdvVjb4+oVwMWinwW2BhGz6Vdi3kaZ
 CuV7ldVUcXOxw0lFkoLFBIWBzh/tyncl0hgYRSEAExKVb8xWLpqhyJgL6
 L1UTrm733pDyrwzHSrAfnsWlXQOwYF9qrjHnJGQuDI9IOfYp55g/m5aCb
 vE1oMmEufEUe3I+9EbiZlwhLY5ccjqNweJL6O4TFvOJNO74psbR8NqJ+b
 ZDLlOW6pU2h8uRYXxxOsWpIByyjVlSR/JqEydcYqY0aerNjsmySweM550
 4FQDqzU8rJYz/n4cnfCHayliWBLNOwMSH0TjcTXebYpU+YytMYgkvhm6K w==;
X-CSE-ConnectionGUID: lIEwi1XRRpeuaO0uY/T1KA==
X-CSE-MsgGUID: 4uHbWheSTqia6/Xl3361iQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11262"; a="36189986"
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="36189986"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Nov 2024 00:53:53 -0800
X-CSE-ConnectionGUID: XxZ442bpRnCvC9lA8L4x0Q==
X-CSE-MsgGUID: zeXnVABxROGOnPN1pmZy4A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,172,1728975600"; d="scan'208";a="90002667"
Received: from orsmsx602.amr.corp.intel.com ([10.22.229.15])
 by fmviesa007.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 21 Nov 2024 00:53:53 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX602.amr.corp.intel.com (10.22.229.15) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Thu, 21 Nov 2024 00:53:52 -0800
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Thu, 21 Nov 2024 00:53:52 -0800
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.171)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Thu, 21 Nov 2024 00:53:52 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=HC1/gCXCDuH5ZCZf+FxKq2MD3oYu3v6K1eh5b/ZDn9+QUelBWeSlu61QwUlSJl7q02CJEIVQPX1aVeN6fnhAPi6vPfkDQ9509R5Vt5/NW14HdFkQrpmMnJXJwe9LO3RUtjbTTRBO/99gHOTWQw/AEXXErF+SZm53U2RoZeshfBhpgndB4kGjhfLtCy3V2d19CRZvwzPJEXt/FSYpBZQRifPFqhgp1NSYYGnwRxhjr/mLaRv3dNWWPuvBuKYTmTgzcmKUGZjwzSAQ+aQd0Niu94CgJS8EzbepD7lb4vdVD5SILTMbNWmtDZQLTh9WkapAEm0rmnn77Kv6n/9UXWQYRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fXxGEvmgtISJKNuGVOOjAKlO3NulIfMw2hULu3FzLRw=;
 b=qXBN+3IDHYt7+j2y/k8ivNtkdblH3bTE87dNeW/w4+EZHZl1QzFrdqOtgtuUzl4FxubOgItAw54/avL5mwriQV+1+L+74HML3sp1H9UbBbkmS57I9YUmoq1xQ+b0wTBAZCRgOaOtdSYuUBK91LzE3QDLj6Gif7b8wUkI5EuBhyfyo0LUV0JtM/HngxYpKyGgNnQDR7tbqoToVFRtfWoOVDCCFuH+U9k5nrlzJnLLssbm3J29WGIIK21+2eqh4+Z45ZQt0xOzdB6jyYtx7f8mhRAqvUC9bKJtf0a5ncoLlculFHe4YKlTAZCNnOX5OWj9JcoGx3Z/xpp6EZTON6qOqw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by PH0PR11MB7446.namprd11.prod.outlook.com (2603:10b6:510:26d::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8182.15; Thu, 21 Nov
 2024 08:53:49 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::4610:6d6c:9af6:2548%7]) with mapi id 15.20.8158.023; Thu, 21 Nov 2024
 08:53:49 +0000
Date: Thu, 21 Nov 2024 08:53:39 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
Subject: [RESEND] drm/i915: add GEM_WARN_ON to remap_io_sg
Message-ID: <g2d547gsiadgmcjqh5rgsqhm4diwk6fmd2hnic5pkatye2zpei@3sjc6v6qj6ex>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <fzn3jb4cdylc7fj4og2hgy73onelzurxmmsrzqix6yswms4ite@d74hat7krnm6>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <fzn3jb4cdylc7fj4og2hgy73onelzurxmmsrzqix6yswms4ite@d74hat7krnm6>
X-ClientProxiedBy: MI1P293CA0004.ITAP293.PROD.OUTLOOK.COM
 (2603:10a6:290:2::13) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|PH0PR11MB7446:EE_
X-MS-Office365-Filtering-Correlation-Id: d54ae8d8-ec6d-4c26-0f06-08dd0a0a043c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?K2g4cm5QT09lakhNSkJKYml6eEVVSUZQenVIQ0lRUWxic1B4K3d1YUhhOXVm?=
 =?utf-8?B?NG03TlNRL2g4RmZLcEJKektMVDF3SW4zQzBscUdKTVo0ZWExSHdZVnF5bGhi?=
 =?utf-8?B?RjJ2Tml5WE5EMm5JZmVWeWlwMTR3RGM2SkpiNnhvUzBvMCtyNFQ0eWpUWXdJ?=
 =?utf-8?B?RU5UVnY4bjdOZ1E1S2VKa2FRTVVlbDZzY1FNc1c0NjdkN0VmS1NtYmh6MzdV?=
 =?utf-8?B?K1dhTy9IMmZVYTVQMXlKRC9HWTd1ZWUyYnFmTWx2WTBYZ0FJQ1pRRzBtelNM?=
 =?utf-8?B?Tmt1cFl0NHRNd0g0d0N4OHVId1VNcWZsVnltenc1UlhTL0VFMXVEdGtBK2NF?=
 =?utf-8?B?bVlnOUxsTnJWL2EyV1c1V2lmSU9zcVdPVmFRWElkZmJJOHljb1hSMjhXRW9S?=
 =?utf-8?B?WXYrMFhUK3V1ZnB1WTJHQ05laWZPREdCMGVFUVF5eUljVlpsK2J2NTZyWkhB?=
 =?utf-8?B?MzVyRmg0TE9KclFqOGJsMDArNEpwUUhHanZleWpqOWJKalZORGNCZVgzTWsy?=
 =?utf-8?B?cjQxcy9kd04xRGdKdGo3eDVnaFNBUVBIQmxsQkdQcFFEOTRJRFRkUWR3UzU2?=
 =?utf-8?B?UEdJWkNLMytFTU9HZDR0ZEpkclA4WjNvell3dGV5cE5JazY3OXZmWnJFMkxh?=
 =?utf-8?B?M2cwTFVBTGFuWWZPbTBFYTFtcWtjcWNrb1pXL0dnRE5teVIxbm9mMXZUcmhx?=
 =?utf-8?B?UzBsK0FPMGpWMjUzT3BRWWVvNVlXeDJTVm81WFhLWkpIaDdYY0JoUWhSTXgz?=
 =?utf-8?B?ODJOVlpiRUhHV05KekZqSGttSDFsYXZncjJmTHNxdmpMREN0KzlHR3dFZnRp?=
 =?utf-8?B?L3JHNU9wQkhvSDJrV2VTb0EyNzVIVzlYc1h2bWhJRmFTb29tN29pNE5aalRR?=
 =?utf-8?B?NHZud2dqQXpKdWNNTk1oRmplWTRvZkt5S0x3YytKL3lpSzJGNzl2UnZYblZU?=
 =?utf-8?B?RnNXNWdGNkQ4cGxOc0ZxbXBzRnp6c0NqandHbXdYbVJqQ1NlTnlHeUdZUTJh?=
 =?utf-8?B?M1pCdFV5eGg0TkpvT1RnbVlIQVh0aEs3THAyTkZ2NTlLeVgxYlRrdklTQlJr?=
 =?utf-8?B?TWtnaXlQZE5NZ2d6bldoSDk3M3RISmxTVG1BbUVyWnh4YXRsRm9WTUE2YmI5?=
 =?utf-8?B?aURXYVhSMUdidWU0N0FRSGtNWFdQNzRRRCsxSjFxWDZ1anphRlNtTjhpdkZK?=
 =?utf-8?B?TkJTWDFHdE4zSktRNVhhekxPNUw4LzhPNFgxWkZyc3ZLemIwV2o0R0Vzb0ZH?=
 =?utf-8?B?M2krU3gyeGtva29BalBhNFJ0cS9rUHZHOGVXM2t6SFZ0MmJ6VU1RWC8ralZY?=
 =?utf-8?B?K1p4emx4b2YvNmVHYitiTEdyTGIzK0NJS0hPRERHNFBVT0RlTEVMRDJNbFhh?=
 =?utf-8?B?MURHU0V3TkdNcnNaZzdPNjNtU3NLOGFYK3NzU0g2cFJVcFV5Uk93TTRtNXlK?=
 =?utf-8?B?Wm1EcmVsMnVxTVFTalRuMDVlbERpZWNCNXNBc0N0RGUrK09Fd1g4ejRKN0lC?=
 =?utf-8?B?R0R5SXB6ZFNWcEhtUTRMYVJFb0MvdXpMd213RjlKaXRoS0M2SW1ZWW51ZWZO?=
 =?utf-8?B?ZTFhNWZhOVBBSW5lNXFSS0dQK2ZmUXVDYU9CaVo2N3ZjWEFwL3ova2JLamRk?=
 =?utf-8?B?bFpRbkNTYVNSSzNSbWFaVFZKVUVzRExVTjMzVHJmWUhqWkxkSEs0bkw0S0F6?=
 =?utf-8?B?Qkhzcm10UmU0VXVUZC94SmEvdG5vOXBOazk5ZG5kY1JYOGFHNWRBK1FKc0tO?=
 =?utf-8?Q?Hg1qNYLtAIrO7mA8d4mVrYeZAxIvHmpsiQGwcBB?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MHFYUGNhVm5qdHVNaXgyNC8wRCtVQjdTL1huUHpBeGhrWEMxQjlJTUluN0wx?=
 =?utf-8?B?L0lqczZ0UC9heE10QVpjdDZzc3JocU9tTUducDVYR1pGdzA5YWJGR0dmRWhU?=
 =?utf-8?B?YklzWXNMTHBxS2pYTGxVNXhZNFQvL2kyK0l4Nis3SENsYW1XSHdUSTZYdzhs?=
 =?utf-8?B?bW8ydzI3ZTYzdGhNTU5GSWhTd1JkdnNSTHk5eFZ5MFJQQUxuelpvK2JNUFBq?=
 =?utf-8?B?UmlOYVYzaVZhMXR1SzFuNjRpZUtld1ViVUtoNjFQaGRSUVBqcjlrY2pxbDla?=
 =?utf-8?B?WW5YTGdyQi9VY2pKeGtMWHJ5Zm1NbnhVMzR4cGMzMkYrSEw2K3F4Z0dVNllW?=
 =?utf-8?B?Z0ZOUHJjQ0doQjN3cFBiaEx4eFIzcVc4R1ZxOFl4S1FmRUVkK29udFpBNlRY?=
 =?utf-8?B?aFdJOHFBRkg5MFNPZGlSQ1Ivc3NZZlBmZTRMbGZ6RUhFQzlOMk9iZkNYYmJZ?=
 =?utf-8?B?MHBVS0FvQ21VSGNqNDVlcUk2Rk5oOWxhZU41QkdzcWFib01QLzdHWlcxZzEx?=
 =?utf-8?B?M3FNd1RkRFpDNFArMFUxQjd4SlJBbnkvdnR4bVNoQnVHSFJoWVUyancwVldI?=
 =?utf-8?B?MldTbG1pWnRsMkptV2tiZjgzYkZRWWZXRHdlRk43SFVheG00MmVYZCtjZWlo?=
 =?utf-8?B?eHlRdmVWRDc3RXZaQzhhSG53dkVuckxtL0h1Rm9FMldZeDM3emZUU0ZTbUpW?=
 =?utf-8?B?cHN6YURUemNtc055SkJ1Sm9FQ1NQa3dFaE9na0R4U1l5SlRlU3FTN3Y5a0FE?=
 =?utf-8?B?NXBxNW1uVk9VcUl2ZFZERDNoUjhjWHUrMmlGZlhSYWJYQjlKbVp3MHcyeXJs?=
 =?utf-8?B?dEdWWmVzS2NwK3Z3K1ZVWlNSNTRkQzFadFNtWCt6elZLakpmdkwzQng0aWNJ?=
 =?utf-8?B?aGFWL1Mwa1JqbVFTZ0ZKOXgzRkg3S0xXMnBuMmd1eGIrU3NVaTdkYTlaSzZn?=
 =?utf-8?B?bXJpaGtXVDduQ1FpNWdQcXZlK0h3QkJ3cFdsamRXbEZqQWM0Z1JaNGdzcWRX?=
 =?utf-8?B?c2hMbjNVT09sNENKM1pkeVBlV05iMHRzcURkMVAvZ01SN3NPS3VMR091N1oz?=
 =?utf-8?B?c0pKeHI0eU5MNGppa0l4M2llTVU3Ulh0U1l2ZVZKdUt0ZDMveUNCUGdTcExH?=
 =?utf-8?B?ZnFoZk95eWJhamlrQ1ZodC95VDQrdFkrZzhVanZXVmhmT0MvQUhpYnFwKytF?=
 =?utf-8?B?WC9HNitJVGJTSnVyYm5rcUYzTmtIazdZdS8zaFlQY0lDdERoRUpQaGJVWGkw?=
 =?utf-8?B?b0huRHp3Um1XZUtLTS96SjBXQ3c2RmdwOTZqbVVIUnZxb1gwc3Z0c1hvbnEy?=
 =?utf-8?B?WUcvclRXSzI0RE5iREp4UHFIVW1WNlEwamNWNmZjVkd5SlF2UC9HSjRsV0xN?=
 =?utf-8?B?d1RTdHhENSt0TGlpd2pDUTNpaXhaK2ZKc2luS0s3MzM4MlloY3pwbHlkZDB1?=
 =?utf-8?B?bWovcGwvQUNnV3pMOVh1aHJvK05oQUZacElBaUhINUVHRS9QdVRDd0xKLyts?=
 =?utf-8?B?VnV0N0w3SENvOUd0V1lPV0Qrc0hIVWROaVRxWElrdUR5d045YnlyOXNmcFhL?=
 =?utf-8?B?THVWc0hYcXhoNUVsYitKT2NPY2ZwSmxGdUpsanFaQjR3elNHcTNWYmVxbXpz?=
 =?utf-8?B?aVk1bStISlcyeVFVZ1VwQkZOdy81aEhBalFVdTQ1TTRDVHVhYk9xaHlMblZM?=
 =?utf-8?B?VkpuWkVJTmtFMGpleUlITW5iVVJOSlVMbGtqNmdSQ3BMSSsxUnFhSUQ2Yllj?=
 =?utf-8?B?cFg1SkxLVytYMEZScDBReTcxdWo4dlVxRWx0N2pNanM2VTZaeVNyRTBhNUow?=
 =?utf-8?B?NEVMOWZsbk9vYkE0ZUt3d0xwRmZTNnFPN3pGcCtHdm9KdGJvdUMrTXF2bXJW?=
 =?utf-8?B?WFQ1enA4N0pZT1lVVjl4U1hnLzA2czZwMVFyYXJ4MDlCNC9Ua21vTXVHZVdP?=
 =?utf-8?B?TkVYbHdOaVNXZXZGL3I1QUY1VFRpa2VwNGxDcWxHZm1aaS9qaHdycTZWd3Fl?=
 =?utf-8?B?RHNUS20wM3FTbnVXWEpzNDhxaHp5ZzdYZkZzZGkrRGU5SExsUTlSUUxVSDF3?=
 =?utf-8?B?RVViUTRRREVrWjBpeFlhV1NhZ25PUkVkcDlxdXFkVncvVy8wSGRGNlBqT0dZ?=
 =?utf-8?B?ZjRPdGlDK09BNk1VUGgwM3pwSXhPdE5iRzBJVHJONDU1MTVSOE5XcTdZYnh3?=
 =?utf-8?B?aEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: d54ae8d8-ec6d-4c26-0f06-08dd0a0a043c
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Nov 2024 08:53:49.4974 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: S08l6+VCaS9MKgsGt3xHTSXlN1FwzJHftEWKkFeZTYb7ggLE2GBBckEJdydHIVAqKnPqDMS/OOkZNVdKRQb5KvsjX/y9DOLxAX6GbGFQeA4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH0PR11MB7446
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

Since we already have that warning inside `remap_sg` we can also catch
this condition inside `remap_io_sg`.

Signed-off-by: Krzysztof Karas <krzysztof.karas@intel.com>
---
 drivers/gpu/drm/i915/i915_mm.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/gpu/drm/i915/i915_mm.c b/drivers/gpu/drm/i915/i915_mm.c
index f5c97a620962..8a2779191f18 100644
--- a/drivers/gpu/drm/i915/i915_mm.c
+++ b/drivers/gpu/drm/i915/i915_mm.c
@@ -146,7 +146,7 @@ int remap_io_sg(struct vm_area_struct *vma,
 	while (offset >= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT) {
 		offset -= sg_dma_len(r.sgt.sgp) >> PAGE_SHIFT;
 		r.sgt = __sgt_iter(__sg_next(r.sgt.sgp), use_dma(iobase));
-		if (!r.sgt.sgp)
+		if (GEM_WARN_ON(!r.sgt.sgp))
 			return -EINVAL;
 	}
 	r.sgt.curr = offset << PAGE_SHIFT;
-- 
2.43.0

