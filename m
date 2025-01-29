Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13D59A21937
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Jan 2025 09:45:44 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B0EB310E40E;
	Wed, 29 Jan 2025 08:45:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="EL24vYjf";
	dkim-atps=neutral
X-Original-To: intel-gfx@freedesktop.org
Delivered-To: intel-gfx@freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 114DD10E40E
 for <intel-gfx@freedesktop.org>; Wed, 29 Jan 2025 08:45:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738140341; x=1769676341;
 h=date:from:to:subject:message-id:references:in-reply-to:
 mime-version; bh=168n7SnFLqdXrFbbFDJ7oEuVkIIMemugf9OwWZvYJuA=;
 b=EL24vYjf0KJTqYwNAkjF/0LFwtVc1iCFZtBChJ1D5l72FsTT1Q3JgTV6
 tibgQsZKo7Nkur5T9AY98HNUbLMw/b6JSbubgqVrKKiASis6aAoTed6aW
 FehaqkPgw6EBoHv6vrOzYPUiWfHcK67J8ZYDyKpbHZ3guhozO3itOJyNh
 5CtUJhwweds+9Mr48Uu9pt6YAGDKaY0qddF6EOWiGHPuiVs2X0rcUwijt
 uJmwmlODMppjnFTHMPd670tqNT1EGg5OYHvsGIbfTzFVTw31kz9OJxMrA
 ApyrlYWm+p+hjj+fcvlpDYOcq8nk+I3pdWSP+qCR3/Xf7aGazV6Zfm98o g==;
X-CSE-ConnectionGUID: hBjwcbs6SRaojEqrRmoO1w==
X-CSE-MsgGUID: ILp3Y+zkQvyjFDW3kMp3nQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11329"; a="56069155"
X-IronPort-AV: E=Sophos;i="6.13,242,1732608000"; d="scan'208";a="56069155"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2025 00:45:41 -0800
X-CSE-ConnectionGUID: ItCC/EzJR9yu8l8/GXhFpw==
X-CSE-MsgGUID: KSEbrbWBRhKmiX9D8GxMFg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,199,1725346800"; d="scan'208";a="113954027"
Received: from orsmsx601.amr.corp.intel.com ([10.22.229.14])
 by orviesa003.jf.intel.com with ESMTP/TLS/AES256-GCM-SHA384;
 29 Jan 2025 00:45:41 -0800
Received: from orsmsx601.amr.corp.intel.com (10.22.229.14) by
 ORSMSX601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44; Wed, 29 Jan 2025 00:45:40 -0800
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx601.amr.corp.intel.com (10.22.229.14) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.44 via Frontend Transport; Wed, 29 Jan 2025 00:45:40 -0800
Received: from NAM12-MW2-obe.outbound.protection.outlook.com (104.47.66.40) by
 edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Wed, 29 Jan 2025 00:45:40 -0800
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Wc2txNChF8czVEIC1GhYr5GjDTBE4gxPBkav5daXlYJNo/Tds1atYqfrqbLPlaZTbcqCo4rCT6P1wKP3kuvareIwHsV96CW4ktUeO70ru5qv7UepoNVtymV5YnjJX3W+R3H/MMDAuQ20Hz5ETRW2Jm29AGXtddQYwBlYoOzBQCUA4T0AZwEokpquQoBxY+MInKCDplWFlb7irdBm6ZvmuTVFeJZeHdsCteRmK8J1p48047xHKIY7dpylIoIKJkIDHKV6qYR7W8srfHVZgvLmoFeCyq/ani644aSnoOOe2RbZfQRKn8nu7VxPIxs4JARaWq475K1HRIe4sIPEW6ewVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=s8fP7BZyiOPYafghPRfQm4gQfPiytVGDlw/E36wARcA=;
 b=KBb6jFZvGBmgU0zHAv62kT00QS/juty9fBG0WD8JK6xERUfNHH4R0xGD+PuxkV5BCHDe3DFQwgdjhTm9FfHRF9jNi+124EHBqCTuigdvpVuG4Xjt1u7RZBTJVycIM0+6EeDTIM61T7JvI0X9AZ9D3noA/qd1l9CpDIZ/mAozphE72ZYSqZKYN0pkVIzSzk6TFCN+evJIEmBIbk1NSAXCc9rBMGFrG9XXsmo6asDgJPoDuB/LdDJvrVQgEMiVTKqXtgFvboVfWhjxslMymx96p8S1Mn+acbF43W6oeTawJSVcHoLtPMddvP50Yu1x6tHznoROP/O2CQIWuhscdiTISw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by SN7PR11MB7113.namprd11.prod.outlook.com (2603:10b6:806:298::16)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8398.18; Wed, 29 Jan
 2025 08:45:38 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%2]) with mapi id 15.20.8398.014; Wed, 29 Jan 2025
 08:45:37 +0000
Date: Wed, 29 Jan 2025 09:45:21 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>, <intel-gfx@freedesktop.org>
Subject: Re: [PATCH v2] drm/i915/selftests: avoid using uninitialized context
Message-ID: <3fsjcpzr34djsa2ehhjcso6e5o7yvsikeys3fcqv5ixuu5nvev@lq6csgm5ctlu>
References: <seffzgr3ptmwyrk4rmq4hn5lx5lljm6zoan4w752dovrai4ajg@slooah72lixx>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <seffzgr3ptmwyrk4rmq4hn5lx5lljm6zoan4w752dovrai4ajg@slooah72lixx>
X-ClientProxiedBy: VI1PR0102CA0023.eurprd01.prod.exchangelabs.com
 (2603:10a6:802::36) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|SN7PR11MB7113:EE_
X-MS-Office365-Filtering-Correlation-Id: 8cd8ac61-703a-4be2-cd58-08dd40414d90
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|1800799024|366016|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?eG9hcUFjRmpjVXlXRmxGRDdiMS9DREFWcnJCSUtKQWdFWFhhYzRqdldMUWUr?=
 =?utf-8?B?MkN0dVYxOVhvbWJWelVGUFFibGlBTmtobEVVT3FtNWpQeStQYUVqdzBjY0pS?=
 =?utf-8?B?NktJblJPNklIbDZTQkNJMnFLUklFNHFzTzUyN3pRM1FXbTYxdXVvZ2srZEZ5?=
 =?utf-8?B?MENwak1DdkFmSkhOeXgvNkFnb3dzOHYrQ3J2Y0hDZVo4ajR0cFMxWDZxRWVv?=
 =?utf-8?B?RmtyamxIaFZPdUhBMEpyMDZ2ZW5kaUlzMnlSa0hZU0UwK1JhWndraERSTXJs?=
 =?utf-8?B?azhuZ1oyc3VWZjVyMWtEYjdhKzdTZnVBaXIwMzM0NS9UMjArMEcvczAvOGth?=
 =?utf-8?B?d1JuclRBN09jVUJSdGRkSkFKQjBiSUtKeWVtSk5NZ1ZpempQc09UeFFBU0ZR?=
 =?utf-8?B?WUtEdnR1eEM3Um9SRStxN0RPSVJvNnAxaDZOcVpmNE9RcnVMeWlRbGh3VHFQ?=
 =?utf-8?B?UUxyK2ZUbWpIOEJGdjF0YlRrbndOQkpSS1lhVm9TaUNLbC9TeFNITUNSSWsw?=
 =?utf-8?B?NnFhVTJjMU9ic1RydFVLbUhIM29VZlA4OE50R0JZMVVIM1dhMGlOQVJ0VkRD?=
 =?utf-8?B?T0wzTy9SYW9oOVRnU3gwSEtVa01yNmUrVmVqZmloekdVcVBQRm9nMkd1UXBR?=
 =?utf-8?B?eGJPVzhKeXlmamI3TTY5eU1GazQ1dzZXRlJuNDdNQ1EwRm41TjMxOWEwNklm?=
 =?utf-8?B?VEI2WU1IdzF0dUlYTzAyYjhENlk3Smp6WlRacVowRVJPSjIrcjU1dUtJQWFK?=
 =?utf-8?B?MWc0WHFENDE4d1hLZVY3RkZ5Z1pzYUFHeCs5STJ0cU9GQmFkeDBWVHhROHhB?=
 =?utf-8?B?Z2dWOVoyTkJ5NExyNFZZc1BiVGluSDhNSzZZN0k1L2s1MGpCNmxwMjJqamx6?=
 =?utf-8?B?dUZQUVh4ajhNQ0lXcVJHSXAwYlI3Umg4ZzVnYW85bGhyTVpHZ0MvQjJkd3Fn?=
 =?utf-8?B?VGhGTzQ2STd4blR6RTZ2SDNCYk5VaEVtWFRPS25Oc2FaNFJXcUY2MFJxQ2NX?=
 =?utf-8?B?a1E0WEx4b0oxYWFtMUpESjFzQytGUmFZcWhXZEhWdTBuRUNlL1orSWEyMHNw?=
 =?utf-8?B?L0ZGcjQ2SUpsa2pIb3ZENmZjaVY2SWhFOWRmMnhQdDJVYmdDZ2Q1S094MmJF?=
 =?utf-8?B?VklRcHA5aTFXYmgrRlVDK0FpYlBPcE5HUUI1ak00R1A3OGdtZDF4TzVHY2Ni?=
 =?utf-8?B?Y1Y5QUNhaEZyMnM5bW9RM1VYdjVYN0czOXJDWVN3ZTNkZDZFWHpKcjFJa1VU?=
 =?utf-8?B?blNhdGh0K09OUi83SVdwUnpDQVZQVnZIUldjNHgvckV3ck1yZVZKcENIM04v?=
 =?utf-8?B?SUNUTVNUV2xtQjcyZmRMQml4d3cxWm11MzE4eXE5a21RcGJqak9aZGY0NGtH?=
 =?utf-8?B?TUo3WlM4WnlqV1RrQjR4UTJkcmJ5ckNKVExCK0l4UWhwNENmQWQzTzliVFUw?=
 =?utf-8?B?L2swcHZ6ZjNIMEx4ck5yQ3FGTktlQ1JNWkdUWjJRMkExeGN0Rzlwc2x3Wmha?=
 =?utf-8?B?OXBsRXhJOE9rbEI1K3hRcHQrbnRjYXJKOXdwUkFCc1JWSWszaWFrUW9oTEhL?=
 =?utf-8?B?dFVvSFFiN2pNU0NJWWM0dkhuNTVRMnVJSTFnSG9ZTk9hSTZrNml2TG1LblI2?=
 =?utf-8?B?dE5ZNHVzNllhYmxsY3NlT1V0QVNOUG9qNGQ0L3pDUjd3cWxhNU9FQ2NjWlBu?=
 =?utf-8?B?Vm9oWjZqb3BRSkZzV2JrUmJ0RlBsZ1hsU1NDTmNRVi9BekREOGx4eDJ5SGxp?=
 =?utf-8?B?bVd0WXYxdWNFYmJUUHViZG1sQTZaRVpRVGlOVzBFaFdsOHVWUFlFejE4VWZZ?=
 =?utf-8?B?em8zSnVZWmJkMVZvdW9KalNUQmVtaVVQRFp3cWpsaHg2azZNUnJMQ0xERFAv?=
 =?utf-8?Q?Fc2Of83BO8QDn?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(1800799024)(366016)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?dmx3VjlkQ3ZqV0w0bUhSSjhXZElqOFRIVisvVW1KS25BdXdDOGZ3VlNhOXNq?=
 =?utf-8?B?bXRpQTM4MEMrL2RtT0tKRzdUQitLcWNacTFiblVWRzRVTGovL2RRdktWbEtP?=
 =?utf-8?B?cjNuci9CZmhVSmhvVkxKOWg2c3ZjYThKbkRXN2ZScWg4WUxubHpmTjgyYXZW?=
 =?utf-8?B?NmVIUlZsL1ZLOU8zSUxrN3NIZDVpM1N3Y0lheU9IOG9KSmVpVExRRDU2bGJr?=
 =?utf-8?B?c1h0MUxRUURETVlCeXV0VTJXVkIxbW4zNWNoR0E1enkwdTVzVlVrVXRlOEdU?=
 =?utf-8?B?SmRFdTR2dkNZcmNPVmtiRkhOeGJObnc0UGEzL2s4cmlwbFkvb25YMHoyaTBP?=
 =?utf-8?B?SENicVIxVHArYkdBNWlmZ0duTlJxOW5sWUhKUnB4ejl6SHRXdVltZHBGQ2pj?=
 =?utf-8?B?bWN2Z0EzU2RjUFQyTlpzMVp6R2pic1BjSEJ4RUZsUTVpRWJiOVpkZk5KRFhT?=
 =?utf-8?B?ZElBOC9iSHhXRGxHdjB6TzlGd2wzRE9OYW5mVmpKTUM5c0RJeHV4cTBRclVZ?=
 =?utf-8?B?dkt2a2gzU0t5QjI4ZmJ5cWljallyWG83dDczemVPczdja3huV2lIeW1tT0h4?=
 =?utf-8?B?NlpyZ093VlNRaDBseU8xRDRmdW41L3hVL0FtRG44T0pPNWplWTkvWXJnU2Ny?=
 =?utf-8?B?Nm8vdnlOVDB4TkYydngzZng4M2FHRElURnA2OHhEbzVrQ0RiTU9NOWRDREhS?=
 =?utf-8?B?ZXVCckJMNktlbFZaRkVMSWVqSXlKbkRZQ2d5WTBiSFZqNTVQOVowQUNzRFVt?=
 =?utf-8?B?cDJKR1F0Rkxhc3U2djZRUFZKY3BIQnU2UVNwZ2N1K0ZkV2dsVk5HRFRMVlpR?=
 =?utf-8?B?VVNJU21pM2lST3NVWnJPaEZGOEttUTYwRm1SVEtxTGt4UVRlUUZvTlprZVJ4?=
 =?utf-8?B?aXBWZ2U4ZGpTS0ZHZStpdmxIek9URXZPVk1nQWdXaCtFZ2FlZnZQeTU0UjRD?=
 =?utf-8?B?RFh1VnRQU2cyTnMrU3dHNllOZDdwZVFNRUU1YnRnblRtV3FLSDdrenFDZERI?=
 =?utf-8?B?aE15d09KRGlzMU15SEZzYU9HcDhFN2w0dmdlakY5K3FQU3dYRUlrVENiQytu?=
 =?utf-8?B?MlAzMGlSRE8rVDBZSGQwMk1wcW9qUjQxWEV2L1Bjc0xWb01hbGZwNUg3Rmg1?=
 =?utf-8?B?eGM4YUZIamhQSnZpUzdtL1lSblIva1lQZFR1N25ZVVl2aThSVzFPTEJKNENr?=
 =?utf-8?B?NVRPQVBMUnZ3WW9VTk9UOTJpNXVwL3ZzeVpocmpFL1k5Z2o1RHpiRnd6Mncr?=
 =?utf-8?B?WWIrT1R0WkM4YkpFSC9JYk5XQnhEUnNjZGFKZEFvZzFTazQ1L25XWFF0TVhD?=
 =?utf-8?B?YWN0NGpDT0VrRjhMeThBQTdXMWMvaStGNWdDTUZ4T2pYUWxFeFBBb2JudFoy?=
 =?utf-8?B?YkpwTHBObk9JQmtSTFhVMjkvRU5Bc2tVQjEybTkxYUhoMnROTUREdWlOc256?=
 =?utf-8?B?OGViSHdRZWkzR0pDajNGd2Z1MEJIQ24vRXp2aEp3ZVZORkNIbVJXMis5Si9T?=
 =?utf-8?B?ZlNpNVVwNHIyZ25NMVNtZ2tPWC9jazRYS2QwWGFYTFk2MnJEOWUxYm1nTThY?=
 =?utf-8?B?UVJqQ1hzcCtvQ1JYenUvVVN2ZWVSMi91MWxueW9hcFhhcWgvei9pTmpzb3oz?=
 =?utf-8?B?NHUzQUlOMUZ1VHVJRlI2UERtNzFTYVlhN1RXZjVHencyakxjaXZ4YWpUdWJB?=
 =?utf-8?B?Q3FhRWZEbmc4SzZyOE1EOFVMM0J0T29WS09XQXRFUTFmVjZoaTBoQnYvVHdj?=
 =?utf-8?B?NHhIVGk1VGlmOVFKaWRJV2lKRFVUbHlyaXlNRXRtdVZhNFhPOC9wU0IyTHFR?=
 =?utf-8?B?VmY2WnlTWnBGOGZCd3V2enREeStVakYvZWRVajVpWXRqSmlJWHZ5Ny9YZkZ5?=
 =?utf-8?B?L3pPa2pDTHNCdmtTWGYrdll6MWtrcW04eURqZXpvbmlaV3lqd1NHM3F5ak1C?=
 =?utf-8?B?VFZ2WTNpM0IxRDZzQ2VkclVBb0tRL3NnZEpiNVh0VTRBdDBhNXZKZkVITnhH?=
 =?utf-8?B?Sm5TN3ZrY0paaWdpdE1ITWQ0K0hEQ1NKUFJSZWUxUE5veHlCZTAyUDVGdXJu?=
 =?utf-8?B?WE0rTmZzTFlFeC96YzVVejB0T2RLRUtFdTU5U3A3VHg4VnVTUy9xZ0E0M3hO?=
 =?utf-8?B?K0xJZkZIcmRnc0pGbmRMaGFseU1BbmJQa2NVNW1lK2lVTU1KdGhxNW1lWjV3?=
 =?utf-8?B?YlE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 8cd8ac61-703a-4be2-cd58-08dd40414d90
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 29 Jan 2025 08:45:37.5937 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OGlFZF7rqtEjLZIpEn4VpBgWM8LXljOu5tuZ2bHCnXhHK2i+tjJpoOrUSUFoQeWOAw59IkYbjydHfd7WH8qPMOwtIDK3SmyJFAE3aSzllSY=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN7PR11MB7113
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

Hi Krzysztof

> +	if (!ppgtt->vm.allocate_va_range) {
> +	        i915_vm_put(&ppgtt->vm);
> +	        return 0;
> +	}

I don't know if it feels more in line with kernel style, but consider
changing it to a label before second `i915_vm_put` at end of function
plus goto instead of creating new cleanup section.

Otherwise looks alright.
Reviewed-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>

Mikolaj
