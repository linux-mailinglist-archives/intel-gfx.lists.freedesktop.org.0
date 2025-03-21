Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C95D1A6BC67
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 15:03:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E372010E796;
	Fri, 21 Mar 2025 14:03:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BQ4BoqI9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B085510E796
 for <intel-gfx@lists.freedesktop.org>; Fri, 21 Mar 2025 14:03:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742565782; x=1774101782;
 h=date:from:to:cc:subject:message-id:mime-version;
 bh=LFXdPJZe5YAR1avweKwVUXvAGI0bGzlwFdabuA04N9U=;
 b=BQ4BoqI9T8AV61w1m7mJ8pREdB+08oOP8A21yo09dsijjTDqllkmVPdI
 1dUO7c/Uf+nwzkErZ2BMcuL7M/2mcLbBCoDeIx1C2FpJFxbTnNzzQpY8H
 BPBm4Z41kE5l9xQjT4xpSTcVVg5sS645yFyD4xY+axQnBsovIIPSumZKv
 lCrKohsLHeF+R0ogePZGT8mbl1D6yTE5cSOU03Nj5KyKhS/K7eRgHLyy4
 yjWZRHcFNdP0k18wFOelAVC3u8DMSYZqJ3aWpgE2wxWDWicL7ACWlDdnk
 siUDr5E7FADT4xLK+RuVFFfQ5vAkYhsS081NFaOlPXME/9BZAPlQ0UrgS A==;
X-CSE-ConnectionGUID: 5rCCGz/3SK6AD8A0WQhIuw==
X-CSE-MsgGUID: EveeAfiJQVO/w7+++P//6g==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43846492"
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="43846492"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 07:03:01 -0700
X-CSE-ConnectionGUID: VJQIg6yVQUmDrOmxYR6nzQ==
X-CSE-MsgGUID: ER6D7k5LQaqsnfB8FSyIAw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,264,1736841600"; d="scan'208";a="123924998"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by orviesa007.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 07:03:02 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14; Fri, 21 Mar 2025 07:03:01 -0700
Received: from orsedg603.ED.cps.intel.com (10.7.248.4) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.14 via Frontend Transport; Fri, 21 Mar 2025 07:03:01 -0700
Received: from NAM12-DM6-obe.outbound.protection.outlook.com (104.47.59.172)
 by edgegateway.intel.com (134.134.137.100) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.44; Fri, 21 Mar 2025 07:03:00 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=gooY+wv7CQy4AJtk5NF7hnGsaiu+Yir0nYXm14etnAwCEd25yJiwP6fM8ieVW1T9ilOd4bTDlkAZWG0PUAeP7DMd/+xfZ4NMsF3y6nBLlafPXF0fKPDgCxck8zgiTm0Nb0Ig0ZuNS4CmB7wF5Xj5az5HzcB/jGXSS86erIB2NZmYXrTXA2riJ2IbTakdFq2iQqqRqVEefV3upbEZRiidPGJeRJyI3IMxbka+5cBU0jJb5L58CrgVK6AIzBZdOWnYQmbRH5KUkldAiqnPHA238T/DkAnMGeGB636yMdY9wGQWg9rMfOl6VO4XXtERkcwnBAGrL5f8DijVgf4O6Xhaew==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=L9vkDW3P+LSB9/S/b8K6QoEvbYZSwKIopTs9ozDFkaQ=;
 b=dqecPgjqmbSh7mV2ywicXVJIcdgSKxXgnQhVwKB8nPn4XDQhjbZcgY5uoJuLqVe3KgkP+eojQBMO+agYWYwhT2U11whsFwRS+x5AoVElxgWJgwuvicgQ5IM6h9MfplQDa2cAHxvC2tBxkrxMZaN7iFmwM4hTqSzvttbEkpQi5EDuDLBq3ebbjCQSpz1+LDtJKfG1/rLtqtwRxIhTjebwmungpOc1OpfPlQxSO8tjhUuAFA0cK6zU/pol3aUItEyqq21wPY8iuwg6aWOLpFee8M0FS7rNhe+Nl0AbglRTeaXm9d7IGOoTg8FG4Q3zVtkcYcU9TQZiTcK7Vp96x8uVjA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BL3PR11MB6409.namprd11.prod.outlook.com (2603:10b6:208:3b8::18)
 by PH8PR11MB7967.namprd11.prod.outlook.com (2603:10b6:510:25e::5)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8534.34; Fri, 21 Mar
 2025 14:02:57 +0000
Received: from BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b]) by BL3PR11MB6409.namprd11.prod.outlook.com
 ([fe80::74e:6abd:bab0:3d0b%3]) with mapi id 15.20.8534.036; Fri, 21 Mar 2025
 14:02:57 +0000
Date: Fri, 21 Mar 2025 15:02:49 +0100
From: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@intel.com>, Krzysztof Karas
 <krzysztof.karas@intel.com>, Krzysztof Niemiec <krzysztof.niemiec@intel.com>
Subject: [PATCH v2] drm/i915/selftest: allow larger memory allocation
Message-ID: <2vie3dumx3ajb7lwhiotxs4wj6zcr2fq6on3ebd2vsm2qb3k6l@s5uny4fry4gr>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
X-ClientProxiedBy: WA1P291CA0022.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:19::29) To BL3PR11MB6409.namprd11.prod.outlook.com
 (2603:10b6:208:3b8::18)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: BL3PR11MB6409:EE_|PH8PR11MB7967:EE_
X-MS-Office365-Filtering-Correlation-Id: 1c8e8b0c-2526-47af-ee21-08dd6881150c
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|366016|1800799024|376014;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?ckdnYk50L2s4UUkxRGVzdHluUm1MTWhYRk92RHdDaGxQR1ZjcG0rTHpKT0pm?=
 =?utf-8?B?dEQzY3hYV1VnejBVV1dQVXBBSWFlYkFLK2pxNFdSTDFrR0FBRk1xZ0xzWGlM?=
 =?utf-8?B?ZlNlYTJPZjU5NzlDZlJkcW9TaGpQeTVmMlNFT3ZqQkJFTzRrTHZ6eFdTbXYr?=
 =?utf-8?B?dXhqK2lDRmxWSndNTllzbmROTVowTlhJcDJXYUU4U2pOWlFWWnFIVFVTZ0hV?=
 =?utf-8?B?dGpxcHFIZzNWWWtmTWVqbXNkZW1Ob2NuS0FDWXlqZzVsRGdnMHU1eXdZOUFp?=
 =?utf-8?B?RCtHY1dkMlQvUUZhOWtPWkZSd1Ztb1krTFhVTjlEVmxLRXVTSklKSVRuRElR?=
 =?utf-8?B?SU15b3Bta2FJVEdNY25WWURQNExhNkdTSm55WHlKeldwekwyOEcrOVhXMXBm?=
 =?utf-8?B?NjhCY2wzOUF0MlVoTlV1cWVhZ1hsejNBOTZVK2ovS3M4RjZxdWx3N3pkUXU0?=
 =?utf-8?B?SXB0a1NZaHJXSVFQSHB3ZnlxUDhlcHVLNVo2Qmx6dEZ1WXFoeDF3OXpRVGNr?=
 =?utf-8?B?SmN4MXZyMlYrWTNFZ0c2c3h1c1cyM1dmODBleWVkYXFXdDhGMk93cHdBMGhR?=
 =?utf-8?B?Tm85dWRPN3hLK3NDNlB2UjN1ZUxvN1EwODN5dVdCdFArdHd1ajBaVlFad2gz?=
 =?utf-8?B?bTBZWFhWS0puVFg4djBMaExWN0NTbkxjd012YUNaUkZoUTNwdzYvREVaSGZL?=
 =?utf-8?B?UWZBVzdlRStxclVDanRBQjBlRXNFL1ZoUUxPck12UTlXUWNDcWh2bWI3bk5P?=
 =?utf-8?B?QWxweE9PUlZobmlseDdOOEF3Y0FRelBoRmhLUmFMMGJGYnpidmJQTXhvQXRi?=
 =?utf-8?B?M3JEdjFKeFUxMFNKNFZLV3FpcitUWTI3cndSUHVEdEoyUlFjbXlrQmphdmNS?=
 =?utf-8?B?cWhiaGJLZkM3dXRWMVNrRUlkWTVzY1hjekRMNHhvdXpnOE51M2QwZ3NhdnpO?=
 =?utf-8?B?dmJWbzIxbExXVXdGYjM4bEZpMktwM2RUQXlOZWFZSnQwbk10cjNhdzErcjFz?=
 =?utf-8?B?eVN3S2ZESU5QUUt6R2p3aU1rUkE3TlR1Rk1CekNVOWQzUDF5ZXFXTXphaEVF?=
 =?utf-8?B?QTRpbzVseUNqOHAvTDJtK2pneko2TGpBTHo1dW9NTnZwM280N3VqVFAxWTl4?=
 =?utf-8?B?UXFpdmhKMURWaUtOVEVuaW9KSEVIb3Bua0tUZDlaNVRCWlRMT2ZNbldPRmdX?=
 =?utf-8?B?bEVXQlhMZ1ZjQlBwVlY2SnRHUHlvVVRrNE96SmJtd2FTWm43bVJsQit6cHow?=
 =?utf-8?B?ZjhzQmdBYm52dnpBY20yWWg5RVBzN1JSOVROcGljNjh1VzdFaml0R3NPREhQ?=
 =?utf-8?B?bnhaWEJxUE9FZ05Nc0JMc0RKWjM3RHdDVWxIM0o5T2xlMEdTUkNKYXltS2xK?=
 =?utf-8?B?ZkVGQnJ1aWJJdnMwS09QZ0NYUGxqNldjK1VSOGtqMG4vQUN2Z2Y0dmovOGpm?=
 =?utf-8?B?eTk3dyswTFJoNUl3Vk9qNVZ3TXBwRGdvRS9xVTdNYXVYK0NreG8reWRXTTlo?=
 =?utf-8?B?OXRFc0hmSjhWY2owSTRpaEg5MDgzWTlrbUdsbGVBNHVoWFpHQmV1WDlTeHc3?=
 =?utf-8?B?WHZ2ZnZRaVo2Q2phYXNlWUpoREtubS9ac3lnbUxtMWZ2UWsxMUdNTXNhT2xz?=
 =?utf-8?B?MmZFZm4wZzdMcHZ2WmZtTWQrL2pvUlBMME5ZeUZUT0tvZEt5RkJzcUpXTnZl?=
 =?utf-8?B?ai9vYUpFdG9hSzFIRnp1VGQzNFpBQ243UG94K2hqZzlGLytWN1ltczdyUHpy?=
 =?utf-8?B?RUh4aE5GN05MTFJYQ0ZOa0kyN1ZCTnE0bFlXUVpybzNEc284RVVXbmt0Qlcw?=
 =?utf-8?B?cXdOYUFaeWFtMy9OaS93a1oyOFU5L21MSWZMVGlnMzZhMjVaQWMvTHJYWlRO?=
 =?utf-8?Q?rv5+wIMmNtpHx?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BL3PR11MB6409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(366016)(1800799024)(376014); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?UmN2M0w5b3pRUUpmYUdDNEhUU3VFZXpoa3NXUGJlemlCV3dEMzBBQWcyUVp2?=
 =?utf-8?B?RjArUmxJUDFUOVFBZ0VpOGdqU2hvZFp3N0k0TlJjeDZwQXlzRjJTRWJ0b1h1?=
 =?utf-8?B?QkFJUzFtdm5ycngrd1hBTmNaYzdsWkxlRHp3NDlpVy9WV3luSHowdXJ5SjRF?=
 =?utf-8?B?TmtuNlJTbkgwOTlJZ3NjbFdJV1U4RElBbWRZak9jdGtYcDNYZGFiSGJNQUk1?=
 =?utf-8?B?UWwza1hlQXY1T1Y4dC9lUEg4RnQyeThVNUVDR3dPWFFUTnFxUkhmUXVkR1lj?=
 =?utf-8?B?QW5yQlJZN0tkRE5scE9QbGZHTGVGV0wwdTJZRGF0U2FnTkZhQXpTZ2FXenZM?=
 =?utf-8?B?bFJQdUF4UWgveUo1YWJUeVBMbTlwdEJJM0p5UGVqRTEwRXhnL2E2RENLMTQ3?=
 =?utf-8?B?MkRCMndyWHg5aWNOQnorZjYrMkFBRlBQbnF2LzRRQ0Yrdm9Cc1hDTUN3dm55?=
 =?utf-8?B?RmpGSFFTQkFMbGQ5djdMYWJ6V09nV041TUVxRUxNOXJsT3dMUUI2UnBqTEtZ?=
 =?utf-8?B?NHBTV05Nai9KclBDbHFHcXMvdVh0dXE3cm0rR1ZNTkJJRUdac09QVlNXR3BI?=
 =?utf-8?B?U1c4ZENoVk9YbU9kNGsrdWlQc1BlL2pjZTdlV1pSUy8rQVhqM0J0ZHliaE9T?=
 =?utf-8?B?VGxpdmY4KzdrS1JsR3FqdDdMUzY2dmI1dXR6UEhzbzlDRVlsd1RzTWdxdmpB?=
 =?utf-8?B?NDdId0cxeGRidFZlMDAwYXBFbkZ6SUhNeGJpcXY4dk5TOVBJWlRUQVhzV01x?=
 =?utf-8?B?Mk16UitTck52ZittT05oRUlwbWxlNU1VODJhbW9OY2ttekVXZERDd2Viem0v?=
 =?utf-8?B?OGwrS0c3WXJiMjVuRnh0a25GYTJMMVZ5a2NMQzh5ZFh2SzIxSGV6emhZSXAw?=
 =?utf-8?B?WGZoQ0U1WjJlOGVOSzNSdjU1WEI2QStDZEFtUTBWWEhrdk5RTXlrZTIrL0hZ?=
 =?utf-8?B?SjBFUjZzU0ZZSmdJZEpNVnpqUGdWTFZPdWpDYTFHY2ZnM1RJN2M5UjNTclh3?=
 =?utf-8?B?cTdvNWpyajJIcys4YjcvOXBjbHNraUc0cEd1YkxzdWVpb2NzMzlUOFpOa3lK?=
 =?utf-8?B?dExxOHRvWGFkWFRnVlI3YjBsaSs0WDVpTnBHelNXbDRMVi82eXRMcGJ4cklt?=
 =?utf-8?B?LzZNU3BBKzRmV0NUYmFHZWpPR0xoMkpuWGlFcGhoNXIvdmhNdlBQNzZoZlQ3?=
 =?utf-8?B?N3FnYWFJMkNNY281NXJzS0UxMDlpeHJKWEZTTjhiSnQ4L3B2T3pFMzB5TFFL?=
 =?utf-8?B?Z3phZ2dsR0pacTJBbE02WFlYN1BDTW90SmY2NFI4ZkJmSUM3MUpTR1BYLzNS?=
 =?utf-8?B?UTMwY3o3c2xqc01mT0M2OXpaTmVSRE5PTkkxWWtQb3phQnJ0NUI2ZWMrQ3pQ?=
 =?utf-8?B?Ukdld3QyYndLV3BpSncwekR0Q25WUlNSbWNjQTQ4d3lDTXVPVFZBeEdoWXIv?=
 =?utf-8?B?UTRvTlhTNFUrUzJndlFTWUI3N1ZMcXpZL3JuUTRVTHg4MHNqOTJ3MVFETWM2?=
 =?utf-8?B?UE5JUm1ROXg3K21CTVZJa08wc2F4ZXJ1MXh6ZDBjelo5Zm5XUnJsdFdlK29P?=
 =?utf-8?B?dWpiR01jSEZtamhjZGoyTnI0RVlsQXNxK0VsZmNOdWxlaVJPSGxBaDVJejB4?=
 =?utf-8?B?TlVyRUFFcnByYUF6TzlqRThvMnJrTG0vazZuSlVNU0VPRVNsMWl4TkE1Rkhs?=
 =?utf-8?B?azFIcjBpMlh2c09FdjFlckRubFpML1Q4UDVXTVhZZWtYVm1OUmJyUkR2MEFt?=
 =?utf-8?B?SHh4bjRtOTYxbVVZNit1a3Q3NzEreUNicTBZVENKRzFJazRTQUlUeDFuZ0tB?=
 =?utf-8?B?TUljaGdoNnR2MlpsSmZ3eFlHTDQ1eUlVcmFmN0txZkVsdTlHUjNmOXRoOUIv?=
 =?utf-8?B?N09qV3RqSkx6L3h6NExWOHcxSURoYjJXazdOM2kvanRwK3pQcWZ1R0plYTJv?=
 =?utf-8?B?SmhKL3ltQ3M3ekVocGszeENxQWNxMmxwdVdjMWpaWDJWSXVnWXdic1hUWjd3?=
 =?utf-8?B?bS9DeGZwQmNIaFZpVHJWT3I5YkFVM2xvYkZhd2I5NzlWR041NWxiQktEZzZi?=
 =?utf-8?B?cTFseUl6bHM3WXN3SXloc1ZLZ1pWcHFsUE5SYjEvNmU2RHBYbFREL2hLTmJF?=
 =?utf-8?B?TWlrUWpVVFR2UGJMMVZmMFg5ckcyQ0pCSHFpN2N2TVF0bjNJdWRMSnRUNnJv?=
 =?utf-8?B?WkE9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 1c8e8b0c-2526-47af-ee21-08dd6881150c
X-MS-Exchange-CrossTenant-AuthSource: BL3PR11MB6409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Mar 2025 14:02:57.3515 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CvN7ZYnIzs8WeYuODD3wp9Wt5eAWAB/JYtTZUx4JgmtdRjCoo7UqglyTHZERMbxsc4m+Olx0KAd0cdypFiUzlRj5gSyiahwBzF040PpuqfI=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: PH8PR11MB7967
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

Due to changes in allocator, the size of the allocation for
contiguous region is not rounded up to a power-of-two and
instead allocated as is. Thus, change the part of test that
expected the allocation to fail.

Signed-off-by: Mikolaj Wasiak <mikolaj.wasiak@intel.com>
---
v1 -> v2:
- Added negative test for too large allocation

 .../drm/i915/selftests/intel_memory_region.c  | 22 ++++++++++---------
 1 file changed, 12 insertions(+), 10 deletions(-)

diff --git a/drivers/gpu/drm/i915/selftests/intel_memory_region.c b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
index f08f6674911e..7e72e12b26ca 100644
--- a/drivers/gpu/drm/i915/selftests/intel_memory_region.c
+++ b/drivers/gpu/drm/i915/selftests/intel_memory_region.c
@@ -413,15 +413,8 @@ static int igt_mock_splintered_region(void *arg)
 
 	close_objects(mem, &objects);
 
-	/*
-	 * While we should be able allocate everything without any flag
-	 * restrictions, if we consider I915_BO_ALLOC_CONTIGUOUS then we are
-	 * actually limited to the largest power-of-two for the region size i.e
-	 * max_order, due to the inner workings of the buddy allocator. So make
-	 * sure that does indeed hold true.
-	 */
-
-	obj = igt_object_create(mem, &objects, size, I915_BO_ALLOC_CONTIGUOUS);
+	obj = igt_object_create(mem, &objects, roundup_pow_of_two(size),
+				I915_BO_ALLOC_CONTIGUOUS);
 	if (!IS_ERR(obj)) {
 		pr_err("%s too large contiguous allocation was not rejected\n",
 		       __func__);
@@ -429,10 +422,19 @@ static int igt_mock_splintered_region(void *arg)
 		goto out_close;
 	}
 
+	obj = igt_object_create(mem, &objects, size, I915_BO_ALLOC_CONTIGUOUS);
+	if (IS_ERR(obj)) {
+		pr_err("%s largest possible contiguous allocation failed\n",
+		       __func__);
+		err = PTR_ERR(obj);
+		goto out_close;
+	}
+	close_objects(mem, &objects);
+
 	obj = igt_object_create(mem, &objects, rounddown_pow_of_two(size),
 				I915_BO_ALLOC_CONTIGUOUS);
 	if (IS_ERR(obj)) {
-		pr_err("%s largest possible contiguous allocation failed\n",
+		pr_err("%s largest rounded possible contiguous allocation failed\n",
 		       __func__);
 		err = PTR_ERR(obj);
 		goto out_close;
-- 
2.49.0

