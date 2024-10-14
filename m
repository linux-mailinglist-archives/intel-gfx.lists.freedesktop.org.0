Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B413399D7C8
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Oct 2024 21:55:48 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 4FF9210E1D3;
	Mon, 14 Oct 2024 19:55:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="k5OkHKgs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AB0810E1D3
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Oct 2024 19:55:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1728935745; x=1760471745;
 h=message-id:date:subject:to:references:from:in-reply-to:
 mime-version; bh=4IJPhdxbM+7k8MNUSb1azoJFTsXR8pNuqXYXvdIX9oQ=;
 b=k5OkHKgsr77V+mX2d2ayUUjtOwof2XM/pXEo5k+uzUbyRe5Lw4jVjZNy
 9LfoLyMZHrlEO4oIXWxAcm6YrP17rM5qqdapqTbi5DDmXadeu8cCcqGJc
 BMX/cB8RmAwuMIcMofTipiB33tYZhccVRLsoMNdHD455uze1Y2EVD6WAN
 iZCCUzmTyUPKi+4QKoCrN/M0/+hnaJ/0K7RwzLOHFoqbdEkfYpkHGliVc
 nxOQJAkwp8awBpp4QTLdloaXLd9QBNmBaQM6GFFgU8X7aWwkNYmi2hTGg
 r3VxobR60F2UZMLEv9KpUKiaDzl1Org/KovVZofwbPZ2FyGJFGiIKwUMv g==;
X-CSE-ConnectionGUID: Q8N93JWNQDqRiJRsAOEraQ==
X-CSE-MsgGUID: QWWKKzJ6R46SrD2XK+jZ0Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11222"; a="39423433"
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208,217";a="39423433"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Oct 2024 12:55:45 -0700
X-CSE-ConnectionGUID: BKeYD62nRzaK9zuuk3q4bw==
X-CSE-MsgGUID: DodtUpzfRDSE58STtW8jmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,203,1725346800"; d="scan'208,217";a="78020077"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by fmviesa010.fm.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 14 Oct 2024 12:55:45 -0700
Received: from orsmsx610.amr.corp.intel.com (10.22.229.23) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39; Mon, 14 Oct 2024 12:55:44 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 orsmsx610.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.39 via Frontend Transport; Mon, 14 Oct 2024 12:55:44 -0700
Received: from NAM12-BN8-obe.outbound.protection.outlook.com (104.47.55.177)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.39; Mon, 14 Oct 2024 12:55:43 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=f33kFGCKoD1giq5rM0mh3GmVWh7jeNlfeedVUpHJ+ZKRWRhffKrOYr/aJaD7NnRnEsRchj7avx1Jgt9HwTLHuMp8dXCJTIqF1KrXNl31lDSbSfNPi5nY/iT8mATukpGWjXxRnnpqIMC82MBAinxA88Imyo+iVYy2OtGfUPLfK8RaWBAAVNU8C1dUrlJRlq4j5AXi2c21WlflTKrSMdNsTRVICo2tFWNAL55llfy8aUDIJtNXDUeI3uJLZiAib+jxsWx5tmO20+kTv8PSwRLtvNjPJ0dBpFwXUtNa/GNT1Q0u2/SXpAvDsz8xdQMJ3h6nUrD8kjJjmhBP3p4C44qwWw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=N5JEWOtASntsbvdw8M36dkefXhk79ljCQNOfE0mqBnY=;
 b=bMByDKrrl2pULNZvzLikGO2dlMwyUOfnb+BZYv8vr9tylFxtHIxrBZn/xXwrs35hU49NuSchNpU8LiUH0s0oSCXQKOW6rcFOZfU/HftINuVytczNZNcUTqONoNKxUi30dScpmkHgVlTI0Ol+msvQ+I566LLfJxYfJy6yzLUEqbJWMSBosgHTut4HuT4V8YPiLqdrzkLKF8gC07x1ox/BCTfljTtknDB3Rb5DfosivGpcxJxS5BiJcBV2CT5E5/i5/4QF/3KCBMDqtfok6xi+qjOMwH+nZmjG72i2wLtHRVk2qF19Tz/rFHGtfx0OYXmVxJdpbtyKBXjUlRcbMGPx8A==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CH3PR11MB8441.namprd11.prod.outlook.com (2603:10b6:610:1bc::12)
 by SA1PR11MB6968.namprd11.prod.outlook.com (2603:10b6:806:2be::22)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8048.18; Mon, 14 Oct
 2024 19:55:41 +0000
Received: from CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550]) by CH3PR11MB8441.namprd11.prod.outlook.com
 ([fe80::bc66:f083:da56:8550%3]) with mapi id 15.20.8048.017; Mon, 14 Oct 2024
 19:55:41 +0000
Content-Type: multipart/alternative;
 boundary="------------cgqOmK03GwQu4eTxkfJyIh0b"
Message-ID: <11962af3-3271-411e-b0da-ee94ecbf508a@intel.com>
Date: Mon, 14 Oct 2024 12:55:39 -0700
User-Agent: Mozilla Thunderbird
Subject: =?UTF-8?Q?Re=3A_=E2=9C=97_Fi=2ECI=2EIGT=3A_failure_for_drm/i915/guc?=
 =?UTF-8?Q?=3A_Enable_PXP_GuC_autoteardown_flow_=28rev4=29?=
To: <intel-gfx@lists.freedesktop.org>
References: <20240906174038.1468026-1-John.C.Harrison@Intel.com>
 <172874727079.1244174.2391740947101715627@2413ebb6fbb6>
Content-Language: en-GB
From: John Harrison <john.c.harrison@intel.com>
In-Reply-To: <172874727079.1244174.2391740947101715627@2413ebb6fbb6>
X-ClientProxiedBy: MW4PR03CA0176.namprd03.prod.outlook.com
 (2603:10b6:303:8d::31) To CH3PR11MB8441.namprd11.prod.outlook.com
 (2603:10b6:610:1bc::12)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CH3PR11MB8441:EE_|SA1PR11MB6968:EE_
X-MS-Office365-Filtering-Correlation-Id: b2e4135f-5940-44e3-ef5b-08dcec8a2e7a
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|376014|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?bVJ4elVFUW9HTHduNk5ldGpxdlA1bDE4ck5lb05Oaks2cVROZGtNbXRrVUE3?=
 =?utf-8?B?NG51alM5UStYMTFpdXl1SjhiZGJGTzhqRmVveEUvdTZ6VHRFVUw0UkdqaFQ5?=
 =?utf-8?B?SlFYeU5BcDZ2c1RENSt5K1JuRG5TaEhzNkROMTVUS0RHWWljaHpFdVh0anY5?=
 =?utf-8?B?VFpiRkdBV0xsNGVtcStHbXQ3aXYraUdBb0tNNS9Eek5xOVRVZEZlU3paSDVH?=
 =?utf-8?B?NEU4Ull5ckpLb0E2akpjSHZhRlR1clp4WkUzajhGcWlsMnl4eEczaUJXNFFU?=
 =?utf-8?B?VWZsSnZ6TitzWXpwVHg4V1BNTDkyWjEwSWphQlBsSlFhVTN0ZjZoOVdFbFVZ?=
 =?utf-8?B?SC8wK1hkRDNmZGRhN2Jwc1F3YmpOeVRpcnIzQVA2MGJMYlRNY3YrSCsvay95?=
 =?utf-8?B?VjZIY3VXa0V5anpWdHdRUjVDQmdNVE8vUWdXN2wvVXBPVW9IMVZmaGJVM3hp?=
 =?utf-8?B?SWZCbTNyK3FvaDk5TEFmZ3Mwa2pCYVVmd2xtb0FrdU5tRk1hNkN6L2hjMmx1?=
 =?utf-8?B?ZzBmbVg4WjNrRE5ROEJKRGYzTnp4RUxveWs1OW1WVEhlRjNVTzU3dUdNaUMr?=
 =?utf-8?B?NEpWRktKK202UWRVbkRJaStuSHlHZGtITTc5TnN2YzZqNVFqby83OEhEeG5W?=
 =?utf-8?B?UEp0NnNKdzRlaDIxTnJjWEg5VFlsZkFBMWtaUlZrb3hJUWE3cW9WRjd2QzFw?=
 =?utf-8?B?UUp4SldyUVByN3lTamtQVUIvOHd3K203VXk2QkpBTlJYUHJUYzZsaFU2MDZm?=
 =?utf-8?B?ZEg2WkJJT3NXa2Q1UllnNm0wRHRJSnUyVDNlVDY0QnFrVDFlN0R6dmNiMlFZ?=
 =?utf-8?B?YVhnL3h4aXRNTUN4UU5YTFU1UFNqMDgvUGxmUFFMZ2ZYLzFpRHE0VW1jR3pH?=
 =?utf-8?B?b2RIQS9WM3IvQk9YYllDUjRqTk1EbktnZi85bXZBQUFMQ3hHQWkrK0U5cm9w?=
 =?utf-8?B?empRMzFNRngrT2hRZ0FEZDBGWU5NcUVwMHFpNXN2YTVjVVUyUXJYckFzQjhZ?=
 =?utf-8?B?RU9zc3JXZXhka2VVdzI2c0pWRldLT3FnVnloNm9RcGxHbGdhRXl1VERQSlhL?=
 =?utf-8?B?ZkRKVTJQVWhrUHdHTGdOUGFHZXR6MWx2WTFmbVgzZ0lNeWttRXNvZld4dHY5?=
 =?utf-8?B?VjZlamI3RDU5ZlBabDZyNEV1VDFNWGwzZ1crOGdNME9OeWlWUFZ6STVMdStF?=
 =?utf-8?B?N2dxVHl0WWZLVkhMbUptL1lWUnNoZTZmNjNwcnBBVlBmK0ZQWE5LV0dLYWl4?=
 =?utf-8?B?ZHJVZlA1Z3lNM21nSVNNUGVuL05WUTVLbStBRTVQRElxakE3ejM4aWVsTkRi?=
 =?utf-8?B?S0xEd09VYmxic1dmTk05R2xnWEhGNXVDOFFlQkRNa0w0WlZ6L0NZcVB6eEpZ?=
 =?utf-8?B?Nzh1VTZoUVhQTUZncEMxMjc0dVkvUzc2NmhJbkN0WGkraVBxVXk3UEliUnVx?=
 =?utf-8?B?NlV6ZWYzOG91VE4zUk5LOFF5bzIxOVgrS1pZR0VRZkltVnBoZlFwTlBBaWFy?=
 =?utf-8?B?T0xPQUg5QkI1bVQwWWVQV2szY2dzUnlPUGp1dmk1U3NPNFljY2MzU0RFMGlT?=
 =?utf-8?B?R0pYY29zcFJsL2hYK0U0QjlwbC9Lc2huQTVKdmhUR05XOVdhL2JQb2lrTW9Z?=
 =?utf-8?Q?hRJXMPnr/YhIqBJbqcfLlo/AkvI8qjhBddwCIhd7ltSg=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH3PR11MB8441.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(376014)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dTVuaVRFem5Mc1lJdUJ1WjMzVDJxSjdUNTZ4amt3M2JvQVJ6b1JkS3F6UDJK?=
 =?utf-8?B?YWF0eG5neXM4cEhTUlp1NUNPMW5xWUs1K1RkK0swbmNTdkNqWTg4ZExSOEZq?=
 =?utf-8?B?czE1WjBHbjB2V2pjNjFDSnRVTXVJenBnZ3VrYVBPUjVzNU1uRS9zTkp1NzJT?=
 =?utf-8?B?T2g0NlhFalBRa0J5NTAwYmRDamt0MkJtQk1sRHZYVWd4bWlhV1dBYTR5RVBY?=
 =?utf-8?B?akRwYmpPVkxGUzVyendSSnc3MWpxaWw0RXYzL1FKUThkZWNMcERYSjlqd013?=
 =?utf-8?B?LytldzhjTEsvOS9VV040TW1nQXdIOWEra1N3VGk5WGwrTk5GdkZaZDVKUjVw?=
 =?utf-8?B?eHFyZlZycGZneWJoY3pZeWQ5enh6d1RzZGJYbVNJYXhtYjVsU0xlNTBSaWtu?=
 =?utf-8?B?LytEOWJPaytMTytyYy96Nnp3ZVI0NjQ2RUtoTkcxemxKdXFSSDBPOVJSQUsx?=
 =?utf-8?B?dE5KZjExQktROVltdFZIN3ZKbDRrVU1BNUJ2dmJEbWZIVVkxMjdHOUFqdEdY?=
 =?utf-8?B?Zkd2NHdrN0R6WjBObUhhb3NUN0piVnptTFlRcG1NNFFGbWd3a292ckh1aGVk?=
 =?utf-8?B?ZVNOWTlmQjdRNnZ1bG04MjdpVVR3WSt4ZDl3SWxvL1JOLzFLMzVkSnVRbmh1?=
 =?utf-8?B?bFpXSng2NXVITU5Vc2cxbktONzVNdHgzSVRGSHVVd3pNZitReEg0N3pVM2gz?=
 =?utf-8?B?UmsrQ2hBTzVRRnBYcnJNbUh2UFRzS1Y4d1NtR0gycUE5SSsrQ2I1RW03elVm?=
 =?utf-8?B?SGFGOUNuamlzM2c2clU1QVdTcnRuM1E3R0pZbThqYitneVk3Nm53dzBDekRj?=
 =?utf-8?B?K2VWVS8xMTdaeDlWOEd2STFYdndrOW9uQ003Z1ZqZmdvTklmQWdxWUl6T0tS?=
 =?utf-8?B?dGdBWFV1anZ3SkVRMDBXZ05oSTJpVzNydzZ4MkVmUHVqcWIycjVFWE05M0lu?=
 =?utf-8?B?MGZCN3dBbXdIT0FOUi9LM0t0b1FIOFRWRVBHZHRTcm02eDhJRmtuSm12RUd3?=
 =?utf-8?B?dk1DNC95THZxSmIybW1QY3lJeXFRRkVBTENBS1Q0S2ZrNE9OQm5GRHh4MnJO?=
 =?utf-8?B?alJMMWpCRXA1OHQ0ODErNm84ZHE1Y1YzZklkcWNpTnlJeGpLN1RUaWpQd3Av?=
 =?utf-8?B?OVlxb1BFTlFVaXBPV2MwbkxKM1RTK1NYemVXU3pTbGZlQ1dhYmxQSEtrU3A2?=
 =?utf-8?B?bnlrcjBLYVA5N1BjcGV0MWpZWm51RUsxck1sYTVaOHgxL3psQ2d2TllGZjZp?=
 =?utf-8?B?dDVlR3ZCb0dzZ1RudHFTY1JmeWlTRUVrODkxYkdGWmM4VGNhSm8vcUJ4ZTBq?=
 =?utf-8?B?NFl0NFQ1TVhGOVgzYS9DWklxVkZBTkVMRmZzbUdvZ2RwRjZrSmNSUnh3b2p0?=
 =?utf-8?B?T1ZHSlNQbzNPU0FyQW9iZnRFanVQWWNmTm1qS1lVMTNKNDZ2WGhRV3dPeVpG?=
 =?utf-8?B?R1pXZ095MUE0ZHdGSzdVUzNJWDBWVThudjVOLzN2L2xONi90M3B1U2dSYXQy?=
 =?utf-8?B?S0I0Z2Jid2x0bFBJVWo3b003bEtsNEM1QTAwZU5aSnNDMXJ6WXMxU2RYeTBP?=
 =?utf-8?B?UzNWTGhZdEw5OGh1d2MzblBFUEJJTHBxR2pHQ1NPSkFpcERnM3JZZUJYdEh6?=
 =?utf-8?B?Ykd5V3MvemxIVmVpNUlDdDJaZExBYXRIc2h4T05BMGpVY0M3c0lyS2FvMFgv?=
 =?utf-8?B?YldvTG1Mek92VXNIQ0Q4QjAxc3czSlpiditHU0lCS08yWHBHblJURnNBYmpD?=
 =?utf-8?B?NjFYMFBHa3gxb2ZMYmNTOHV4c0d2enVmK3JSZS9LcFBsY3BxUSs0TVBtN0Fj?=
 =?utf-8?B?VFJ6WHBFWnpQNWZTRHdaVTZmaERSQVN4UWo4NHNFLzhKQ3IvUFhVaWpJczM4?=
 =?utf-8?B?alNhRVViSmR0ekFKOFErL2xqUThkTWZ2YnNJN29ZYjB1SitTRXNYeG1BcmY0?=
 =?utf-8?B?KzZlaHUvQWpaV0R0YnAxZmlWZlB2VXJUTmdCZ1I5WCtGNzhQNExZc1VRdWZp?=
 =?utf-8?B?ZWVaOFc1b0M1bVBiWHhEbmdCZHlMbG93VEt0azhZOHMxbXdUUDVyckRPbWtp?=
 =?utf-8?B?Q1ZPNUhmcFVzZVV6ZDZaSGFkSHNVM25VbTBtNjdNQ3g5WTM2VjluQWNsaEZK?=
 =?utf-8?B?NWc3U1IxeU53UHBsL0tnRlByaVhNdmIvOUJ0NUN6djBjNnZQYmY5bThVMUdY?=
 =?utf-8?B?U1E9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: b2e4135f-5940-44e3-ef5b-08dcec8a2e7a
X-MS-Exchange-CrossTenant-AuthSource: CH3PR11MB8441.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 14 Oct 2024 19:55:41.0532 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 4yFLCs0bdPU/bbbRZEXkkWKLrp5DO12Xo+AZ1ml3jL+Z77bZaq6yDLb+tFPl/f9/Ra/NdK2sAORZMPX6k1HITTdTje4JYPaPXcL6CqmmoFY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA1PR11MB6968
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

--------------cgqOmK03GwQu4eTxkfJyIh0b
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 10/12/2024 08:34, Patchwork wrote:
> Project List - Patchwork *Patch Details*
> *Series:* 	drm/i915/guc: Enable PXP GuC autoteardown flow (rev4)
> *URL:* 	https://patchwork.freedesktop.org/series/138337/
> *State:* 	failure
> *Details:* 
> https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v4/index.html
>
>
>   CI Bug Log - changes from CI_DRM_15519_full -> Patchwork_138337v4_full
>
>
>     Summary
>
> *FAILURE*
>
> Serious unknown changes coming with Patchwork_138337v4_full absolutely 
> need to be
> verified manually.
>
> If you think the reported changes have nothing to do with the changes
> introduced in Patchwork_138337v4_full, please notify your bug team 
> (I915-ci-infra@lists.freedesktop.org) to allow them
> to document this new failure mode, which will reduce false positives 
> in CI.
>
>
>     Participating hosts (10 -> 8)
>
> Missing (2): shard-dg2-set2 shard-glk-0
>
>
>     Possible new issues
>
> Here are the unknown changes that may have been introduced in 
> Patchwork_138337v4_full:
>
>
>       IGT changes
>
>
>         Possible regressions
>
>   * igt@gem_exec_balancer@nop:
>       o shard-mtlp: PASS
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15519/shard-mtlp-3/igt@gem_exec_balancer@nop.html>
>         -> DMESG-WARN
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v4/shard-mtlp-2/igt@gem_exec_balancer@nop.html>
>
Slow TLB invalidation processing (in both cases the completion message 
was received a fraction of a second after the timeout fired). Not 
related to PXP.

>  *
>
>
>         Warnings
>
>   * igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
>       o shard-mtlp: SKIP
>         <https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15519/shard-mtlp-2/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html>
>         (i915#12316
>         <https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316>)
>         -> FAIL
>         <https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v4/shard-mtlp-3/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html>
>
Unstable display test, not related to PXP.

John.

--------------cgqOmK03GwQu4eTxkfJyIh0b
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: 7bit

<!DOCTYPE html><html><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  </head>
  <body>
    <div class="moz-cite-prefix">On 10/12/2024 08:34, Patchwork wrote:<br>
    </div>
    <blockquote type="cite" cite="mid:172874727079.1244174.2391740947101715627@2413ebb6fbb6">
      
      <title>Project List - Patchwork</title>
      <style id="css-table-select" type="text/css">td { padding: 2pt; }</style>
      <b>Patch Details</b>
      <table>
        <tbody>
          <tr>
            <td><b>Series:</b></td>
            <td>drm/i915/guc: Enable PXP GuC autoteardown flow (rev4)</td>
          </tr>
          <tr>
            <td><b>URL:</b></td>
            <td><a href="https://patchwork.freedesktop.org/series/138337/" moz-do-not-send="true" class="moz-txt-link-freetext">https://patchwork.freedesktop.org/series/138337/</a></td>
          </tr>
          <tr>
            <td><b>State:</b></td>
            <td>failure</td>
          </tr>
          <tr>
            <td><b>Details:</b></td>
            <td><a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v4/index.html" moz-do-not-send="true" class="moz-txt-link-freetext">https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v4/index.html</a></td>
          </tr>
        </tbody>
      </table>
      <h1>CI Bug Log - changes from CI_DRM_15519_full -&gt;
        Patchwork_138337v4_full</h1>
      <h2>Summary</h2>
      <p><strong>FAILURE</strong></p>
      <p>Serious unknown changes coming with Patchwork_138337v4_full
        absolutely need to be<br>
        verified manually.</p>
      <p>If you think the reported changes have nothing to do with the
        changes<br>
        introduced in Patchwork_138337v4_full, please notify your bug
        team (<a class="moz-txt-link-abbreviated" href="mailto:I915-ci-infra@lists.freedesktop.org">I915-ci-infra@lists.freedesktop.org</a>) to allow them<br>
        to document this new failure mode, which will reduce false
        positives in CI.</p>
      <h2>Participating hosts (10 -&gt; 8)</h2>
      <p>Missing (2): shard-dg2-set2 shard-glk-0 </p>
      <h2>Possible new issues</h2>
      <p>Here are the unknown changes that may have been introduced in
        Patchwork_138337v4_full:</p>
      <h3>IGT changes</h3>
      <h4>Possible regressions</h4>
      <ul>
        <li>igt@gem_exec_balancer@nop:
          <ul>
            <li>shard-mtlp: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15519/shard-mtlp-3/igt@gem_exec_balancer@nop.html" moz-do-not-send="true">PASS</a> -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v4/shard-mtlp-2/igt@gem_exec_balancer@nop.html" moz-do-not-send="true">DMESG-WARN</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Slow TLB invalidation processing (in both cases the completion
    message was received a fraction of a second after the timeout
    fired). Not related to PXP.<br>
    <br>
    <blockquote type="cite" cite="mid:172874727079.1244174.2391740947101715627@2413ebb6fbb6">
      <ul>
        <li>
          <ul>
          </ul>
          <br>
        </li>
      </ul>
      <h4>Warnings</h4>
      <ul>
        <li>igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf:
          <ul>
            <li>shard-mtlp: <a href="https://intel-gfx-ci.01.org/tree/drm-tip/CI_DRM_15519/shard-mtlp-2/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html" moz-do-not-send="true">SKIP</a> (<a href="https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/12316" moz-do-not-send="true">i915#12316</a>) -&gt; <a href="https://intel-gfx-ci.01.org/tree/drm-tip/Patchwork_138337v4/shard-mtlp-3/igt@kms_psr2_sf@fbc-pr-overlay-plane-move-continuous-sf.html" moz-do-not-send="true">FAIL</a></li>
          </ul>
        </li>
      </ul>
    </blockquote>
    Unstable display test, not related to PXP.<br>
    <br>
    John.<br>
    <br>
  </body>
</html>

--------------cgqOmK03GwQu4eTxkfJyIh0b--
