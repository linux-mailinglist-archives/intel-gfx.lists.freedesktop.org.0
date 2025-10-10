Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D9A18BCE9CF
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Oct 2025 23:26:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6051810E2AE;
	Fri, 10 Oct 2025 21:26:39 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TX1Jyss6";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 95AF910E2AE
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Oct 2025 21:26:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760131598; x=1791667598;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=oyZzYwrpQ5tTYCtXEhli8CCExElJOn+AXfNUFIhQbhI=;
 b=TX1Jyss69osiNxkKL92Jns0/ryMqWwixVCuTwDtiq9VIWuCUAIeQsXKY
 1fL01/4y8YKil+6WZFeGpLH2PE9QDkrdGDH1hOU2xxfxnKDIjofm3Qwmu
 p1N01As36DFZIi5M5VRCOmcjJxIpggUJuznxat6WTvg7NhHxdsT4JMWyI
 fr170XmvpR+mVFGmmIowLbvtq5FkdLA/R6G+xdAk2YoD0QTesWJ4kRrla
 e2eg+GvBQHqnc3nD3KKsmFMEKUHa52j6TZs726Xtn0ufUWlM5A8ioTncW
 AJEd8fTMXQ/SF/9FEH7+WWjUUVRe0D3ArnqyY25XthmIJiYDb1bLqjfMq g==;
X-CSE-ConnectionGUID: aPasCD+kQDiAmV2jvMk7JQ==
X-CSE-MsgGUID: MOCehhtIQGmF14jHyTlrfw==
X-IronPort-AV: E=McAfee;i="6800,10657,11578"; a="72610187"
X-IronPort-AV: E=Sophos;i="6.19,220,1754982000"; d="scan'208";a="72610187"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 14:26:37 -0700
X-CSE-ConnectionGUID: UVD6V15yRJip1iSjYLSG0A==
X-CSE-MsgGUID: 3GWKwkI3TQWEeif9cn49WA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,220,1754982000"; d="scan'208";a="212017700"
Received: from fmsmsx902.amr.corp.intel.com ([10.18.126.91])
 by fmviesa001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Oct 2025 14:26:32 -0700
Received: from FMSMSX902.amr.corp.intel.com (10.18.126.91) by
 fmsmsx902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 14:26:30 -0700
Received: from fmsedg902.ED.cps.intel.com (10.1.192.144) by
 FMSMSX902.amr.corp.intel.com (10.18.126.91) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Fri, 10 Oct 2025 14:26:30 -0700
Received: from SJ2PR03CU001.outbound.protection.outlook.com (52.101.43.27) by
 edgegateway.intel.com (192.55.55.82) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Fri, 10 Oct 2025 14:26:30 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=sS/BldUOO5jXnVgJysM3C1KYwVOIxqbZfw4nUEoNlfZavcu2jR0XD7ijaVJ+pKdCkhA0RrN7N3mTfEQ7XuJ8e1KllUJaKoxlrq+mVWFU2mw4W9LtvD1CS9PeiGvYOKGuJFj5gW8cK+Ci91vjmdfuhj+0JmuODA6CZqzCaZARjcejcEhFPzCmWPNeHNxEX4hQkKlDEzK/y90uFVZceCkjLAQv6MyIFfJ01A650YBmtPN2HER4aW6FGqgFnLkO8JWqP3lbWWQHVEKZgZ08CzPxoet4CXkD3x1sFPOH1qWR2dSkOyvhcg06mcc44VqQUptPkF7+p7DrSOXO3s6vSdiWPQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=CIvgqb0jPWn2OpKfF5kVuHmKf5Vj9aydZnBbVn6CTCM=;
 b=LOP5egsva8gggfbWUSfJpcRf0crW9VIKcI+okkVq+1dLQ6b1zeW4GC5YZ7SuyhnD4lGrbqy80gb7PE7JKh5mBpgV/6yRzr5bnYcqUifl7CvKhzOA26cW2MqEMb+NCnUI44lttlco6BPN2975bxfBUhvbCycd8KaUIPKTWL9QtgHwCgLKpQx3jtjqetGvVzolxis5i2L7UQPdVx2va6IK7ldiGZ/sV6n84kfjaYqAI65USVN7nsqPw8shq4l5desVFo+M2KrRk24dLtQ5ylpwMLu+IzgtwivyIT2BDja1cwsut1JfL612ryqFKsdjpi0jdATEo7F4MmbiW95QqW7NTw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e) by SJ5PPFF330187AB.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::860) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9137.18; Fri, 10 Oct
 2025 21:26:29 +0000
Received: from SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a]) by SJ5PPF89507EDE4.namprd11.prod.outlook.com
 ([fe80::d66a:6830:d9af:740a%6]) with mapi id 15.20.9203.009; Fri, 10 Oct 2025
 21:26:29 +0000
Date: Fri, 10 Oct 2025 14:26:26 -0700
From: Matt Atwood <matthew.s.atwood@intel.com>
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
CC: Jani Nikula <jani.nikula@intel.com>, <intel-gfx@lists.freedesktop.org>,
 <matthew.d.roper@intel.com>, <andi.shyti@kernel.org>
Subject: Re: [PATCH v3] drm/i915:move and rename reg_in_range_table
Message-ID: <aOl6AvsVUu8rRazo@msatwood-mobl>
References: <20251009215210.41000-1-matthew.s.atwood@intel.com>
 <e3b2b78e9acc4012b6755b3e1991c64f6fe1ed13@intel.com>
 <aOkH3NsPp8B0dTUl@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <aOkH3NsPp8B0dTUl@intel.com>
X-ClientProxiedBy: BY1P220CA0021.NAMP220.PROD.OUTLOOK.COM
 (2603:10b6:a03:5c3::16) To SJ5PPF89507EDE4.namprd11.prod.outlook.com
 (2603:10b6:a0f:fc02::83e)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: SJ5PPF89507EDE4:EE_|SJ5PPFF330187AB:EE_
X-MS-Office365-Filtering-Correlation-Id: 8ff7ab5b-aab3-4549-9467-08de0843ace1
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?cUNNT1J6QWJtbnpPQjY3MmdiOHZSNTdzSW9iTDNhSnVKcnNoRzR6WkpuMlhT?=
 =?utf-8?B?KzJ3eXRGTWFWWEVoSG5BcEZaQWNIdXRZK3E1Y0NNU0dvdjlWcTg5THRDem0z?=
 =?utf-8?B?RHR2aVZ2VklHejNtL2NWMHdYTXo4NWo1d3VOSlZPamFneHN2K2VOZU5QalRF?=
 =?utf-8?B?c1ZhOHhJNU83Wmt5UjhoYkpKbXZvdjIyZys2RUQ2R096RDdGRzVNTTl6NUMr?=
 =?utf-8?B?RTdMQjZEU29YbHJwRTJQckxvN0UzUml5TjN3anA0ZkMxazcyRy9rcE9LNTJj?=
 =?utf-8?B?aXVUL1F1dHFLTGVMaXY3bW9XdWdxZEFrMkxCbE11cU9LUHZHcDdUSGZFRmpr?=
 =?utf-8?B?dFpSQUlnSVpGNWNLZGUrWWlYYmlBSlBwTktGZHQ1R3F5Ynh1NytXZDl1cGph?=
 =?utf-8?B?RUxkVUJwU284dlFZZTAxTXBWY2d6THMrcHRKaXFySm5abmNzYjduQUdORkcz?=
 =?utf-8?B?Y3BaUG1XZ2s1aU1ZenZXaUFpczhRMDhTc29YSUhJc3hWaUMwSDJWY1lFSW1M?=
 =?utf-8?B?TXFKVXVHY1VYMjJQL0VFcTNuTVF6VDhWTk9wVDVIR0w2ckJ4RU1MVyt4ZXcy?=
 =?utf-8?B?YkRhRjJwc09ZUUV0TzVidk5SYlF1eUo5WVljaFN2NXBGZWsrZUR6YndsMWxT?=
 =?utf-8?B?SXlwMUpZdXZzOXJUcnJQV0xDS01NMDVKcXZOZCt0OHkyT2Zxc3RVTWExR1Rl?=
 =?utf-8?B?K2ZDWDAvTzdqUzhoWDcwdHIvNjdYU3JBZHUxVFRyZVpYS052N3R2SUxseFhR?=
 =?utf-8?B?NkcyVmZybE1SY3FCTXN6SUxFUE83NmUrWUZiTU9DWlJFWTBIRWRxQUp3bEgx?=
 =?utf-8?B?WHVtTkcvMldOY01mTyszNkJvbXVXUjJyT2RIUE9Ncmt3WkMrUVVKR0RCamVz?=
 =?utf-8?B?Q1lDU2pscTZHN3hqWXZUazIxVGZQMkp2ZUIyTUUvcERZTVNrV3ZTWXR6YlFD?=
 =?utf-8?B?cGlkNzQrRTF4Y0RTVHRRQlNyZUszS3V0RW5BT1pwMlVLTHBsZHhaRGs2Z0Jw?=
 =?utf-8?B?TkVYTm8xYUV4M0xxaWhYbEJ3V3B1bWVVdFBydnVUNThzdGQ5WVdWUzFna2JP?=
 =?utf-8?B?OWNUU0pUL3k2cW5kb2s1R0R1Tnk0aEZ6MVdlMG55MkVNZEEwKzFwYXJNMmFG?=
 =?utf-8?B?cWFBNGI2SEJVcUJFZFdTWXpTaUFVU1QxSlZRMVJNa3NIU1NYWkdlOGV0a0Fs?=
 =?utf-8?B?aERmSkdHOVQ0Ky82QUIyUzRacVZ6dTl6NDk3bUV2ZisvKzBUbXh6SmNTSHB1?=
 =?utf-8?B?ZndxbkRRdmRHVmVjcGJaaWl2Tnk3R2tiMXE4Z2J4MWxNWWUrdWZKdXlyNmtk?=
 =?utf-8?B?SW93b0trTnRpcUpuM1lYTlZXbGJyeGZra2NEVHRmVnBvcDNacEkyU01TanZr?=
 =?utf-8?B?TjZsazk2Y21VN0FvWGJsYkV3UjhqOW5Hak1mNUN2Q04rKzNPbmJRQUthQ2ZM?=
 =?utf-8?B?aHNqekV5U0FqWDdPeEd2YjFVNVhXWXpKTTRPb3FlR09BUytCSCtPSFl2eVpD?=
 =?utf-8?B?Vk5wbVhpWUVHWE4yY0NjdW44d1ZtTVRaZTYwQmdKVkxVNERxYU1rUFdCZnF5?=
 =?utf-8?B?WFVDdDBzMTdxNEVQaXRVL0NUYnd6bVprOHdPcXltS3V6U3JXU2t3eUZ1VXhI?=
 =?utf-8?B?SmNodG9xOTE0K2d3MTZ0clU1citUZzQ0bDJ4TUZSR0RiVUYyNFk1cWc1N3VV?=
 =?utf-8?B?T2tqVE9nSXJ2ZkhiSjhrSmpIbVZIL1lCSjAwbVZvclVvT0R0R24veTlPQmwz?=
 =?utf-8?B?K0pqc2VXMlQxVWNGbmVpRDhBUW02WlJZckZyS1hTZFN0RGdnS2lTQ1F2empn?=
 =?utf-8?B?NGg1RGVXc3ZuVElaSW56anhtUlNEamtkMEs5UTl0NUFMWk0yZm9tVXQ1aUJI?=
 =?utf-8?B?Y245aU94YjJ3RXF4Wk5KNlN1SnhXR3MvU25Fc25RVW84Zzl0Mzc3aVVIS1p5?=
 =?utf-8?Q?ifTdvs0a4/RCxe6Jj/833Lsk9BSm3MkS?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:SJ5PPF89507EDE4.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WE44cUcrWkR0NDl3RTJNdEo4dHVKS000b254NFFGeGlBaHNKbmV4ZnNOSlJ6?=
 =?utf-8?B?RjZkSU84b0FVSi9rdFV2ZVJ0NmFZU1RlVTNUQ2xiUWNFR2VlWkFkbUF3VWcy?=
 =?utf-8?B?SlhLT3Y1dk9YYkdxVkxUOVR6dk1kMmdUdHVjREcxU0pROWRNWUNYOVZzdCtw?=
 =?utf-8?B?YXNpUFNOWkk3T2ZMamdraTgzenRHVHV5SjdXaXk1T3FsSnRiMUE4ZTlJY3Vw?=
 =?utf-8?B?SzJ1Z0wrUEZFbEtoTkdST1h1eXplNUZETHdDNnBFRVZ4LzdkR28rU0RsUGxS?=
 =?utf-8?B?MEJBSWF4Tk1ZcXhTcXhxeU1vV0l1M0RjQWhFblduVnBaMUJDQlAwd0RqV0dN?=
 =?utf-8?B?ZkZydjI3Z3NrNW5Bd3NKeERUNE13ZGtWRDF2dk4vR1hsYVlRa0FXalUrQ3px?=
 =?utf-8?B?azRWSXVHcmRZZnFVR1JCbmJ0c3g3bGdkbmZCdEZtTi9WcWgyQVhtdnhsUGRX?=
 =?utf-8?B?M2NnbDZ6bUJwNWljVmNEd1ArYzI5Y01LSDVYWnk2a2szWnZQMElGZVRuU2p1?=
 =?utf-8?B?d01BVlBCeTYrSnp1bDh5cGtBN3JEV0FucjZ5SjdPR3luRW9Yaml3NDB3dEJW?=
 =?utf-8?B?eHIxM3NtRWNOQk1JZGVSM1FJNGU0Qk9tTkxtNVpGa2g0K1FTb3ZhYktndXV0?=
 =?utf-8?B?ejI0dkpuMmFocE1PSTNWblBPMHNmTWxGL0FQb25DQlZ0R0xONXh4aXNEclp0?=
 =?utf-8?B?bmRIdXRQUkVyMkYzOCtqLzRscDIrcnE3ZXNoaVdabnhMWlRFRFBTMHJGK3hn?=
 =?utf-8?B?Y3R5RjBvOU1SeTV0aFpJek1zNGhwaXhRTVJsVkRrWU90Z2tZaFFnaEFUUUJ3?=
 =?utf-8?B?L1hKR1Q5SlF3SWNnd1YzSjZiV1liZitZZE1GcVFYOHJEdEVUYS9keTFEakhM?=
 =?utf-8?B?M08vZTZUbVNwRng5WHZnRDFWMVFlc085STFwRC9vSDdpZ2tPYlZzWGp3djJV?=
 =?utf-8?B?UjFtbk9CUnErM2w3UHBJTzkrR2tacFArK09xQzArKzNuNFAvbVF2N1hnSHZD?=
 =?utf-8?B?cndxU3R3MUEybkhoS2twajQ4OFJISGQ1QjlwNFJpeGlpRnN2U3ZyeGNuTHly?=
 =?utf-8?B?b2pPUEVjMUgxbmN1M2ZPeUt0ZEZmVFVnL1BneVdhMU1MaGt1SWlWQTE1N3lm?=
 =?utf-8?B?VDkvQUFUQ1hOb0V5Rnc3MENIRTA5Qkcyb2Q5L0ZEeG1oeWdJZzh5bnVtbGl6?=
 =?utf-8?B?VFNWdUtKdzF0Rmo1b0owTWlLNmZWTTg3bHhmUzNBMjJDT01wN1puWnRLNGVM?=
 =?utf-8?B?TE9pRWdCRzVxUHJaVmprK1lZNFVGaDRNUkpqblBGVkhxWmNzWWI3Uk4wUW5S?=
 =?utf-8?B?Q0I4R1JSV1BkeTRnN1ZuYmxKWTliUDVZV1ZtMFo4cDArTDdzTVdwQ1ZiQ0FY?=
 =?utf-8?B?Q0lBV1JsTmdaVTVRYS9rVGIwVy9lNENDeE9rRkFNckFpYytsRWJoRDR2ckRW?=
 =?utf-8?B?K3BRcVpoUWhncGd5SjZwK0V3WHFrTkw4TmlLRlJEdUsrWFU4dEh1WnZGQTZM?=
 =?utf-8?B?bzRvZTUxd0l6dGR6b2p3bTQvV2pSSklGcm1na3doMTRTYk9NdXpGamhKL2pR?=
 =?utf-8?B?U29TU3pWNWVHM0FwYVZjRitNZ0poQUdsN0twQmlJQVkrd0syVXl2Y3M5bUZt?=
 =?utf-8?B?cEt3N2ZWbWJHZDhQZWhOQTcxY0RsQ2hmTU9xcU9UdGFrVzhvYWhXdjhYck1Y?=
 =?utf-8?B?SFFPOFVCVW9hOFJSV1c2OTVQSUtFTXZUOElUSytHckxVSExZV243bkpHQ3Ev?=
 =?utf-8?B?Ym5VNUtSOUpvRnZDZGZzWkRGc0F2QzJ6czE2SmZUZWZzM3l0dHFBekFJdFZS?=
 =?utf-8?B?MVJNRHk3RHhJOXNsdmN0NVZHclFkK3ZFdVptVldVZDQvYVU5Nm1BTjFaZk85?=
 =?utf-8?B?U0xTQ3c0d040a0RMeFVRQjdiRjFGNlVMLzZLbzVBWE9FZDd2WVRIQ3VsVHdG?=
 =?utf-8?B?cEQwRHpIN0VBMnp2dUgycVY1T0M1bVo1d1dPdnkrTHNaMHFRcCtoc3FJemlU?=
 =?utf-8?B?RjdBeFltSXFJUWJHMy81dk9VRnVMazkwU0kxS0FWalBxSFpIY2lKb0tjZUt6?=
 =?utf-8?B?M3VISVV2R095VVZyK3MrS2YzZWFIVjdtb3JaWTh3cHdNV0tWY1MzcUZ6MFdw?=
 =?utf-8?B?V09adzBGOUVMYTVBZjNpbi9PYmpiNjFoK1o5cy9NcGszZ2hKd3E4NmJLSVVs?=
 =?utf-8?B?eEE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8ff7ab5b-aab3-4549-9467-08de0843ace1
X-MS-Exchange-CrossTenant-AuthSource: SJ5PPF89507EDE4.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Oct 2025 21:26:29.0742 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4Ad86tlssbhRghsHSDhRbAbq7bq34kQ/yc+K/Z15uGWh7hbyf+Ol+kVJvz3dM5vWuKKkg4qRqZ/grZdzsCCT95IV7UTDDmXt6Wiqv0RnLzo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ5PPFF330187AB
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

On Fri, Oct 10, 2025 at 09:19:24AM -0400, Rodrigo Vivi wrote:
> On Fri, Oct 10, 2025 at 12:55:02PM +0300, Jani Nikula wrote:
> > On Thu, 09 Oct 2025, Matt Atwood <matthew.s.atwood@intel.com> wrote:
> > > reg_in_range_table is a useful function that is used in multiple places,
> > > and will be needed for WA_BB implementation later.
> > >
> > > Let's move this function and i915_range struct to its own file, as we are
> > > trying to move away from i915_utils files.
> > >
> > > v2: move functions to their own file
> > > v3: use correct naming convention
> > 
> > Okay, Message from the Department of Bikeshedding and Nitpicking.
> > 
> > There's really nothing mmio specific about the functionality being
> > abstracted. You have a range represented by two u32's in a struct, and a
> > function to check if another u32 is within that range.
> > 
> > The struct could just as well remain i915_range, the files could be
> > i915_range.[ch], and the function could be, say,
> > i915_range_table_contains(). IMO "mmio" makes it unnecessarily specific.
I think this would best fwiw.
> 
> hmm, I'm really sorry about that... That is my bad. I'm so bad with naming.
> 
> I suggested mmio in the name because i915_range is way to generic.
> The other extreme side.
> 
> Perhaps i915_addr_range ?
> 
> But I would be okay if the consensus is simply i915_range. 
> 
> > 
> > > +bool i915_mmio_range_table_contains(u32 addr, const struct i915_mmio_range *table)
> > 
> > Usually, the "context" parameter goes first. I get that this wasn't the
> > case before, but I'd use the opportunity to swap these around.
> 
> I just had the same feeling while reading this patch again.
> Specially because it phrases like table contain ... table first contain last...
Ack.
> 
> Sorry for not noticing it before as well.
> 
> But I was on the fence on this one because it was already like that addr,range
> and the other range infra that we consider also uses the style addr,range.
> 
> > 
> > 
> > BR,
> > Jani.
> > 
> > 
> > -- 
> > Jani Nikula, Intel
