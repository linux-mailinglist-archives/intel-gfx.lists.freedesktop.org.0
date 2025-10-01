Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3B9E9BB0735
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 15:18:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4EF7110E6EA;
	Wed,  1 Oct 2025 13:17:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GRWpmVlx";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2AAE510E6E7;
 Wed,  1 Oct 2025 13:17:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759324677; x=1790860677;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=u2lAi/hKIYEqBW+3yKg7RDjOcLtq5MmI1x64voSiA1U=;
 b=GRWpmVlxIwxtheoNCj4GQdy/ofaki/V/+XMj4MAdDcWdfC3qYvnngW9c
 zybWy6SPhRh08X5Gd8YbqbssLGHkkvhFguygGRzGPdiHAaJ1RPLDfgQuQ
 I+exUrLWDOFmRexo2JxOzWmMzzb/IS/p+kDNQ0BLxduRBWR/3jz4p6A1o
 +ggC0fLB0bs99V6NBxo5Hdfs5kHfPOa5Kls/wx6zsUzGoMsE3sdyaaOFT
 mLqS0PWlAH3wu+xSDyYmwsFFevnF8ERTgHDOvXljyaQEz0NgPi08YmxUi
 IYOKZmrVQmdvHpffLqXXwJpSi9YYiVHzOx0GmYcTfZeOs9Wa0bqqNpLBn w==;
X-CSE-ConnectionGUID: 0TBb2RH9QQm15WNWcBosZg==
X-CSE-MsgGUID: dL9Liqo5S+Kvx0dCa9JXDg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="61509440"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="61509440"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 06:17:56 -0700
X-CSE-ConnectionGUID: Q/PMzPPOTymJi5yP5dRCaA==
X-CSE-MsgGUID: dm22Ga7bS1KTQ3bj83WJyA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="184062359"
Received: from fmsmsx901.amr.corp.intel.com ([10.18.126.90])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 06:17:56 -0700
Received: from FMSMSX903.amr.corp.intel.com (10.18.126.92) by
 fmsmsx901.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 06:17:55 -0700
Received: from fmsedg901.ED.cps.intel.com (10.1.192.143) by
 FMSMSX903.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27 via Frontend Transport; Wed, 1 Oct 2025 06:17:55 -0700
Received: from PH7PR06CU001.outbound.protection.outlook.com (52.101.201.65) by
 edgegateway.intel.com (192.55.55.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.2562.27; Wed, 1 Oct 2025 06:17:54 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=wR8B99Tp4lThodXwJfiWv/QLHfraIVl1Bj6F/YsblJakuaamoxzuXY15W+VQb1RG74lhf5v8NfpOtbQMZ+1iNM3WGQOq9lTntapX0rRzvsURybAQ5OWPjPgVa+U+KMo1rl2SENJKiql7nGyWV+l8XFYzi4PRZLNNxRiEYrdLw1yNObf3FrVeLqEj0VHR72F5blD7GoA2jAxxJosr6aARpifWwCosJ3mJ1fVSSzrOwL4YO9Hxzti+kPDQ+e2wXwkmrU5qCkAdAyXXkJyM4VyTnBBf5Lp9E1ye8vwdtqRCF0RrrlrO+Tkm09+UelycLXFgsOv+yCoAYd2g/kf+4CLdlQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Y/+xHgYZ379wk8JJ+nBlvvDOnlDJFG9VvrEcl6rt118=;
 b=hc/I4ZU2u87KWTOEaiivT3jkH7M2kuHMFlzmXHn5Wb5aA2dOHeuh503MyrM3rstoAZV69G+D9nm8G4cWnmc6BHj6PJRe60pF7uYJQyCuAvQQ9VlsxuklY89sjvLdgmzb6/iagsk4aptjLi0wVM6xq8WJ/g5Kdug/ll9AGHkyfTaOL+F70Pnrn15p89EqHEO2VPO7jHTJsS/i+hFuAJKcuA3CQlwz/NM95V0zNrB9aAGXTUuIEQhCPeq6GfouEsejeTfYDW+mUgRwWNecR8LEPd1yMjRn+DiBVrCKgeAsUbnyqMXtCAM3sfN7mWEYbNktB6ZmjNYOoy9TtjiCvCcXRQ==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM4PR11MB5341.namprd11.prod.outlook.com (2603:10b6:5:390::22)
 by SJ0PR11MB4926.namprd11.prod.outlook.com (2603:10b6:a03:2d7::16) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.9160.16; Wed, 1 Oct
 2025 13:17:52 +0000
Received: from DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839]) by DM4PR11MB5341.namprd11.prod.outlook.com
 ([fe80::397:7566:d626:e839%7]) with mapi id 15.20.9160.015; Wed, 1 Oct 2025
 13:17:51 +0000
Message-ID: <76896468-3204-4836-80d8-7186f81899c3@intel.com>
Date: Wed, 1 Oct 2025 18:47:44 +0530
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 15/15] drm/i915/display: Use optimized guardband to set
 vblank start
To: =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?= <ville.syrjala@linux.intel.com>
CC: <intel-gfx@lists.freedesktop.org>, <intel-xe@lists.freedesktop.org>
References: <20250928070541.3892890-1-ankit.k.nautiyal@intel.com>
 <20250928070541.3892890-16-ankit.k.nautiyal@intel.com>
 <aNpKrMapLVw4bvGb@intel.com> <daf38ab6-b123-4c91-a18c-1b6c7ec7715d@intel.com>
 <aN0axoGBGu3ZEMBk@intel.com>
Content-Language: en-US
From: "Nautiyal, Ankit K" <ankit.k.nautiyal@intel.com>
In-Reply-To: <aN0axoGBGu3ZEMBk@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MA1PR01CA0173.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:a01:d::14) To DM4PR11MB5341.namprd11.prod.outlook.com
 (2603:10b6:5:390::22)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM4PR11MB5341:EE_|SJ0PR11MB4926:EE_
X-MS-Office365-Filtering-Correlation-Id: 297c9a81-cc14-4b71-809d-08de00ecec07
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|366016|1800799024;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?RjdRS1JyUDVvY2F6WTlXaGlXbFRENXhHN2RTclh5Q3JjeXlJUVQyUDRBckg4?=
 =?utf-8?B?SmxsSVpRZ3g4STc2UkNWTXlvNStMVzJ6WGZNQ1lVcklJZUxXZWJtOWhsUzFT?=
 =?utf-8?B?SjZYbklYNUtzSXVYYWxtYXpvRCtxSXJwYzd3RU5DY2RlYWN5R1A1cFVTZVB5?=
 =?utf-8?B?NGNSc0VFUm9kazVRQjhEVm1KR3FYbmJuL3ZhNkFOMm5BNFk3RnV1Wm10Zngx?=
 =?utf-8?B?M0hiNGFFTkQ0UTNudHBoc2lZOXhtcjBpZFYrbUgwKzFLd0xuYllJWFJuWDVN?=
 =?utf-8?B?cUZwMnk3ai9maEtwQThzanlnUUdSdHdNSjJCU0Yyc2dLNDVEcml3b3diQVBr?=
 =?utf-8?B?Zld5eXFGQ0lhS1JZZ0w0NmtGTjMxcnprT0hXU1lZN2FjVE9CSDJLZkpVSU43?=
 =?utf-8?B?eHAwWXB1Yng4Wi9wTm5uQ2RQVzJ0V0pmS2t1cjFvR1JaVzVKL1M5akdsTGt2?=
 =?utf-8?B?WDlJZ1NDVGdGMjZWcXQ4RFV1dFluRWVIS2VaNEZaZ09uTFJjOWp2WitoT1Zt?=
 =?utf-8?B?bXZRQlBsSU14VVFIL2ZoRHU0UWxobmwvVG14dU9CUEQ0ZWttQVlMQ3dleHY1?=
 =?utf-8?B?eU9JVWM2VTdZanB5a01YVGR6aENaN21tbXB4NnpjS2tSSk55elJmaE45S1BY?=
 =?utf-8?B?MU52eXdaSTlvbDIzYk00b0VhOW5jcWwxN290VU0zSjIxdzZDdjRnZWRaM045?=
 =?utf-8?B?RDNyZHhCL05iWmE0UUpyaFd1RVY1alRjZkRFei94OGVwZXMrYkYrS3pMd0ow?=
 =?utf-8?B?RFp4dVlyT3BOYlRPSURIRm95NVF5QW1QbUZTZ0N1aFltWEp3dHJTV3l2L1Fx?=
 =?utf-8?B?eXc1NGFZcElGVENNNDBDUU5INmhEQ2hSRURsNHdLMVhFbDZDL1o4VnpIcThj?=
 =?utf-8?B?UmxXbk9xcytUNlVlYXdUUmNjditVd0w4aGtxdTRpQ2Jrcy90SmZmWlpOMDVW?=
 =?utf-8?B?Vm9HNi9EeG5SM1hwdkFhaVNySnNpOThSRFNFKzdaYXltcmJPdE9xaE42TWJK?=
 =?utf-8?B?eEJBeXZrd25oMUpZRmhWeXFXL1JwdXYxd0w2RmxzWXZUcTFnSlNGNmp4MWU3?=
 =?utf-8?B?cVlLN2RLTXRiNlhPcm1oOGJuNXN3N3BGUFJFelc4eWNuQTJSWU1hcjBpUXhE?=
 =?utf-8?B?bDI1enBSdDdKbXA4dXBHeWI0Zk9vUWZ0bmdEa1EzbVBMRFhIMzJWU1V1OUN4?=
 =?utf-8?B?TkJ2L0l0V3JQN1JIYXNHbTYyRVMzQmRkQVVyc3pieDBnR2J6N3VZM1RweVlE?=
 =?utf-8?B?c3ppYndOQnE0V09RRWRSRWxFeTUraFVKaVZVSDM0T0JyOFJJMmwwa1pJaFdU?=
 =?utf-8?B?NmlzUERLRFcvaW5GQkMyRG9oOVYwR0hWY2ZRVGZDQUdwVEZ0TENhc0M1SWVl?=
 =?utf-8?B?cEk0NSt0cFEyUFE0Q0V4clRMb3UvZHhObkZYTXZ0eVI4aGRxbDRBWDlNQWRt?=
 =?utf-8?B?ZzlZYXpGWVR1VDlUMS9tZkV5ZytvYU1Ic2tXRStPY0t4eXpoM3NLcVI3UzV3?=
 =?utf-8?B?ZzBHekZuaGNhcE5oSG1IVHJ1cEFXVnBQZXI5WStSaDVHTXFXQlgxS1EwWEUv?=
 =?utf-8?B?MkZHVDlZdGsvdGQ2SDY5Z2RGQjBLYXBrYUUzb3NVa2g0aTg4VnZSUVVuWVl3?=
 =?utf-8?B?SlBXVTdvR3dYMU9oTUdkUnBYM0VhKzd3dkNsSXFFYmFyQVIvWGhXbEY5VnVk?=
 =?utf-8?B?NXBabmlwUVFMTCswNEJJVGhiUURacU5XRjl5MGxjdWE3YS9xQ3gxemdBY3hv?=
 =?utf-8?B?aklsUG1hU05tTVBobkFpYkZ6UzEwYk9Qbmk1OGR1N1pTUDB0Q0RReGdrRTdp?=
 =?utf-8?B?THVDc2hhYm9kRklzWk5HbnVvdW9RaWovZzI4a3VTcS9Sa2dFTU1TUUhEMEEw?=
 =?utf-8?B?R25FMmlUbE5uVWlWRUdPZ0RzQmtoYmFiZ3orc1B4RktXcWVydXU2VGU1a1pF?=
 =?utf-8?Q?LvKaTMiEeiafHUtM1so8g9q4fbEgLJ78?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM4PR11MB5341.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(366016)(1800799024); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?Ukp6VWhLMWZPTU1YL2R0TmRTZTVWMTJxQm14YzZZeXUzdGtlTGJBNFNNUnVI?=
 =?utf-8?B?VkpTWS8yZ2YyREZIMnJ0T00yZTRRUk9YZHRwZmNGeDJGWk02UkMwcEhuS3B1?=
 =?utf-8?B?NkRWSzJRMDhubTI4SGtrNEhQVkF5V0dtejBVdVc5OEE1WUFwaktLQ1BiQVEw?=
 =?utf-8?B?a1dJaE9ibCt5VTFpemxSaFE3cG80NTIxTUJqelJ5Mkl6anBoaU1oRkxYNE5i?=
 =?utf-8?B?N2RLdC9RNEt6SndKY3hjQnU1eWFSdHlGekpYellUR2o5ZGMwZXMxelE4bDBE?=
 =?utf-8?B?cTh1aHQ1alNGM2dyQVJoUFFCeDdrWlVzc0F1SFFMWWNUbHBlRzkzYmw3bXhP?=
 =?utf-8?B?RmM4MnBrWVovNC9NMTljaVNSY08xOGczY1FPUHBndThOelNTSFRkb1lWRmoz?=
 =?utf-8?B?ak1JRnd6eFJHQlF3ODRqbFV3bXh5WWxUU0VHenNPTGJDenBSYnpqQ2RrNE1r?=
 =?utf-8?B?MnJNYm9XQXY5SWY0eU0xcVBiejFGZGxrbUJmOXIyYVNobG1TNXozUXU3MmI1?=
 =?utf-8?B?WjBkTVl6RXRyL3I1Y3BUMFhNLzRDMHozUktBWDFPcEtENDhMenJUeStSMmFD?=
 =?utf-8?B?M21NU2lnSXpEQ3BOYlF3c3VyL0srRGhCOUpMK21kTmY2UlkyaWh4UmNUOFZI?=
 =?utf-8?B?eTZZVkJGb2F6Z3ZvNUJkQ25rNVdYT3RPV3ZMSVFnYzY5NU9zMDFyZlR1Nko0?=
 =?utf-8?B?dlRVeDIzZnhsUTI1UU9makZNQnIvZXZoVXgrYjNBdHYvZHBndG1saUZudkpJ?=
 =?utf-8?B?eTdNaWtGeWVDY0pJOGRxNElPVjdRY1J4MDhHeEFYeVN3K01RZm9JQk9YNGtq?=
 =?utf-8?B?Yk5SeDFnN1NuWmZ0OWRjeUxMNm9Ba0poVmJlMy9ZU0dHTjI0S1lNVmZPNEVB?=
 =?utf-8?B?dU9RWTJxUjJ3K2hJK1hsSUh6THV1RktnTWhySHpUZDROMHRVL2xhSmVjYmRj?=
 =?utf-8?B?Si9LUlpHRFhKaHdmeFM5M2tVTVhxR0JPQlcxeDJGbmFiSW5LL3Fob0NhS2pJ?=
 =?utf-8?B?TS9QTk44b0RiV0R2WGx1OEN2dkVLc3JrQ2dNNFY5QnFFa1lnVjRsZks5L01B?=
 =?utf-8?B?empQaUpoRzh0ZkthZ1ErNWRrQ1MyM0hvbE8zMS9jZzl4Nk1PSDVieS9ydmpT?=
 =?utf-8?B?VENkT2Z5aklyRTZsOTFERysxYStZREtWOVVLaFBYRzlINS8rb08xR2xuME04?=
 =?utf-8?B?Z0RmKzBWU3pmSE44aCtaVTF5Um42Z0xrSmtsaVNwLzBoclBYbldsc1NxWGd2?=
 =?utf-8?B?MnF4bjJ6TC9oNndYYkNkOVh1Z2VSNEE1cER4WnQybTFiK0hWbFRWaHErTndW?=
 =?utf-8?B?bGVrVFhVc2hDcU1zZzBmSXo5NGpxVXM0b2swcWJmaGJIRmZyMmVsOURTWk5B?=
 =?utf-8?B?R3VrUXhNK3pxNjFVc1lCNDJ1ZnRYZmo5V0dtVExyTUdwUzcycFJzWjMvTkgx?=
 =?utf-8?B?REM2RUFkYWtKMjhsb0VZRDU1VGNOSy9CclVUNk5GRndvYkhLaVM2NUw3TjJ2?=
 =?utf-8?B?ZjhleUVFWXFBYlFIaFdzUDBJYnFRcXMxODh1dzhmbXBGN1FZN2J0dzJWYnkv?=
 =?utf-8?B?ZjlacW5md1A3YlhzSzgwYkdwTGxvV3YyaWRVSnRPRjR5bHRZYmR6MUhrS0ZP?=
 =?utf-8?B?UE9yUjhBRStIbGxBcGkrNWI0dGI5YnllZXJHOERiTlBnb1ZKZWhCY1pkU1Ax?=
 =?utf-8?B?R1dLTnFFYTFxV1psNE1RQTFZM3I5VmZROENxYngra3lMQWNuS3hnYWwxYm1p?=
 =?utf-8?B?QXNXcEZlaG9QbGdvY2hiejFncnBlZGlCMEk5MWJsN25pWGFRL1pJSUlXSitr?=
 =?utf-8?B?b3U3NTdHWlpYcGoxS3BCc1lRclgxMEhYRkwzMkwxUkR2bUpPbVg1MVM4ZU1j?=
 =?utf-8?B?YjVlWG1tMjNHNnMvRkQzVnZYcXlSTFY1S25hUzhjNkx3WE4wKytyTVRVTDEz?=
 =?utf-8?B?ZDNMMTRQaGNOK1VaUExick5oSnR4VFdFRVQ4bDB1bkdGeHJ3c0FRRUkrVnRG?=
 =?utf-8?B?WkR6ZWtDWFhPd0V3N29kMmsyNlIzdEVsOHVWZkwwQ2lqSHFoU3RTbUlSZFBu?=
 =?utf-8?B?ODlYaEt5WmlLNFBoTkxIelhPWmpxSVFOeDc2anRoWWdRNFBEV1hZVVV0V2Zz?=
 =?utf-8?B?dXdoV09zZDE5dE5JR1RleUlkeVJoVjRZTkZmYXNaN0NzQWtLQmJ4Qmp6cEpq?=
 =?utf-8?B?MGc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 297c9a81-cc14-4b71-809d-08de00ecec07
X-MS-Exchange-CrossTenant-AuthSource: DM4PR11MB5341.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 01 Oct 2025 13:17:51.0959 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: /teoXwdQ6GF1WLka4Ox6JdBEsKdZN/AA6w4ZYAw/cLWMuJB/F8EwyvLCyEhnBoFkhugUTpJ0M6boPjQtmSipunoh8mfz0LEqxKuPBRs7a+c=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SJ0PR11MB4926
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


On 10/1/2025 5:42 PM, Ville Syrjälä wrote:
> On Wed, Oct 01, 2025 at 04:11:13PM +0530, Nautiyal, Ankit K wrote:
>> On 9/29/2025 2:30 PM, Ville Syrjälä wrote:
>>> On Sun, Sep 28, 2025 at 12:35:40PM +0530, Ankit Nautiyal wrote:
>>>> As we move towards using a shorter, optimized guardband, we need to adjust
>>>> how the delayed vblank start is computed.
>>>>
>>>> Use the helper intel_vrr_compute_guardband() to calculate the optimized
>>>> guardband. Since this is measured from the vblank end, we shift the
>>>> vblank-start accordingly.
>>>>
>>>> Calculate the minimum delay required based on the guardband and apply it in
>>>> intel_crtc_vblank_delay() to update crtc_vblank_start.
>>>>
>>>> Additionally, introduce a new allow_vblank_delay_fastset() helper that
>>>> combines the existing LRR-based logic with an additional check for the
>>>> optimized guardband usage.
>>>>
>>>> v2:
>>>> - Check if optimized guardband is more than vblank length and add debug
>>>>     print.
>>>> - Extend vblank delay fastset logic to cover optimized guardband.
>>>>
>>>> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
>>>> ---
>>>>    drivers/gpu/drm/i915/display/intel_display.c | 79 +++++++++++++++++++-
>>>>    1 file changed, 76 insertions(+), 3 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
>>>> index 4135f9be53fd..97a3121a204f 100644
>>>> --- a/drivers/gpu/drm/i915/display/intel_display.c
>>>> +++ b/drivers/gpu/drm/i915/display/intel_display.c
>>>> @@ -2361,6 +2361,67 @@ static int intel_crtc_compute_pipe_mode(struct intel_crtc_state *crtc_state)
>>>>    	return 0;
>>>>    }
>>>>    
>>>> +static
>>>> +int intel_crtc_min_guardband_delay(struct intel_atomic_state *state,
>>>> +				   struct intel_crtc *crtc)
>>>> +{
>>>> +	struct intel_display *display = to_intel_display(state);
>>>> +	struct intel_crtc_state *crtc_state =
>>>> +		intel_atomic_get_new_crtc_state(state, crtc);
>>>> +	const struct drm_display_mode *adjusted_mode =
>>>> +		&crtc_state->hw.adjusted_mode;
>>>> +	struct drm_connector_state *conn_state;
>>>> +	struct drm_connector *drm_connector;
>>>> +	int vblank_length;
>>>> +	int i;
>>>> +
>>>> +	if (!intel_vrr_use_optimized_guardband(crtc_state))
>>>> +		return 0;
>>>> +
>>>> +	vblank_length = crtc_state->vrr.vmin -
>>>> +			adjusted_mode->crtc_vdisplay;
>>>> +
>>>> +	for_each_new_connector_in_state(&state->base,
>>>> +					drm_connector,
>>>> +					conn_state, i) {
>>>> +		int guardband;
>>>> +		struct intel_connector *connector;
>>>> +
>>>> +		if (conn_state->crtc != &crtc->base)
>>>> +			continue;
>>>> +
>>>> +		connector = to_intel_connector(drm_connector);
>>>> +		guardband = intel_vrr_compute_guardband(crtc_state,
>>>> +							connector);
>>>> +		if (guardband > vblank_length) {
>>>> +			drm_dbg_kms(display->drm,
>>>> +				    "[CRTC:%d:%s] Cannot optimize guardband (%d) exceeds max (%d)\n",
>>>> +				    crtc->base.base.id, crtc->base.name,
>>>> +				    guardband,
>>>> +				    vblank_length);
>>>> +			return 0;
>>>> +		}
>>>> +
>>>> +		return vblank_length - guardband;
>>>> +	}
>>>> +
>>>> +	return 0;
>>>> +}
>>>> +
>>>> +static void intel_crtc_vblank_delay(struct intel_atomic_state *state,
>>>> +				    struct intel_crtc *crtc)
>>>> +{
>>>> +	struct intel_crtc_state *crtc_state =
>>>> +		intel_atomic_get_new_crtc_state(state, crtc);
>>>> +	struct drm_display_mode *adjusted_mode =
>>>> +		&crtc_state->hw.adjusted_mode;
>>>> +	int vblank_delay = 0;
>>>> +
>>>> +	vblank_delay = intel_crtc_min_guardband_delay(state, crtc);
>>>> +
>>>> +	adjusted_mode->crtc_vblank_start += vblank_delay;
>>>> +}
>>>> +
>>>>    static int intel_crtc_set_context_latency(struct intel_crtc_state *crtc_state)
>>>>    {
>>>>    	struct intel_display *display = to_intel_display(crtc_state);
>>>> @@ -2413,6 +2474,7 @@ static int intel_crtc_compute_config(struct intel_atomic_state *state,
>>>>    	ret = intel_crtc_compute_set_context_latency(state, crtc);
>>>>    	if (ret)
>>>>    		return ret;
>>>> +	intel_crtc_vblank_delay(state, crtc);
>>> IMO we should get rid of all this vblank_delay terminology here.
>>> This one I think should just be our current
>>> intel_vrr_compute_config_late() (renamed to eg.
>>> intel_vrr_compute_guardband()).
>> Hmm ok so will rename this and call from intel_modeset_pipe_config_late().
> I meant you should move the intel_vrr_compute_config_late() call
> from intel_modeset_pipe_config_late() to here, and rename it to
> eg. intel_vrr_compute_guardband().

Oh ok sorry I got it other way round. Will do as suggested.

Regards,

Ankit

>
