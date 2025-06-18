Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A286CADEE73
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 15:52:33 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3961910E84C;
	Wed, 18 Jun 2025 13:52:32 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ULfCRDql";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1359610E84C
 for <intel-gfx@lists.freedesktop.org>; Wed, 18 Jun 2025 13:52:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750254751; x=1781790751;
 h=date:from:to:cc:subject:message-id:references:
 in-reply-to:mime-version;
 bh=T6AbvnVu24yCx3/r1tn9KVA+9js/DSCzxyK5PeUhLKs=;
 b=ULfCRDqlUz00IlmDj1C40MwBWUqFwbHXIkOEAEUDj/9AvTD8ea0JCdpa
 rM9pa+3CZBkCm18OZ4TbUmSz9gSX3HlnZiCwSr7I4X9Xivu9u0eBkjPp9
 ypJTYTLG3mbDdzwOChGCrzL25LezcxoBgBw/kDxreTD4RVUgUAKV8/U2V
 Jvmrc2C+FYpKgeSCzegugeem3gsQ+rskedqaqt1KTbphg08BUYCDqZJyD
 JgTvEFjrm94pLfUGvPugsGxChAPK+V3VzN6/rr11p+Dp2kDumZeboKGAY
 yLki9uHzFZgeX9L9TukgK2rz6QdZFvks4swJjLBnDfBucbol5Z6ErSbuk w==;
X-CSE-ConnectionGUID: TeyxFy91RNKC86eCZ5cEDQ==
X-CSE-MsgGUID: 9j8p+1DISFyme8xXZ8myAg==
X-IronPort-AV: E=McAfee;i="6800,10657,11468"; a="52450169"
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="52450169"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:52:30 -0700
X-CSE-ConnectionGUID: Mcf97A50QSSlBdIkVUdVdQ==
X-CSE-MsgGUID: qustxtRKSDObodJfHoX08g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,246,1744095600"; d="scan'208";a="150312469"
Received: from orsmsx903.amr.corp.intel.com ([10.22.229.25])
 by fmviesa009.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 06:52:30 -0700
Received: from ORSMSX901.amr.corp.intel.com (10.22.229.23) by
 ORSMSX903.amr.corp.intel.com (10.22.229.25) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 06:52:29 -0700
Received: from ORSEDG901.ED.cps.intel.com (10.7.248.11) by
 ORSMSX901.amr.corp.intel.com (10.22.229.23) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25 via Frontend Transport; Wed, 18 Jun 2025 06:52:29 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (40.107.94.61) by
 edgegateway.intel.com (134.134.137.111) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1544.25; Wed, 18 Jun 2025 06:52:29 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector10001; d=microsoft.com; cv=none;
 b=Mn7D7ucOoVQFe4vhnAL4e+r0M9BjSD3UXYv4boHrC4ZO8SPK2HpH7arOzMlX5iT/k6WN4fG9Xumpk5T2Wz5/wC4lKY9ac8TYhiEjGU6ddx1K0vKdxoVp1jh2069TdG4pIkrn/V5IzJhL65KNt1tjUhx7jn3evWd8Z+5NicEEDwdKAcQvBrx2bIDtxK4vKYfF0mGu4ROFJJQ33rkyD4xiBeaEjNAldUXa3w1g31y4Uu1SI+pMl2GM0stp6cvAZmSjFyzDaEGNApCUjZmKeKA+sLoCeoGKzRPP2kVSXKte9wxHfEMp6tkdSXzR00N967B3iI9s7RjMhFpTi9IeaPhKNw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector10001;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=NlU4GNk7BUBLiCzRnhKJOUpnXQwbNp7gz5kHA0Nx/w8=;
 b=eEQGqQzFm1cWVsLUJzhpjUm9HCNliy1HemKtwPT+cW9jOgdO61RmsIapNRIuNZUiMvNxP2LEzlmzlPvMcDLUMtPkCUKoh9BosX8WM+7BJycbH7k+PWAbkLYI79CXVvvhvmFIaS/P3iXf4RGNVFxp41/lUeVf/rCWr1fgzYaDMw27awZDAsc8lGvDmCvViJtVWZRI2UoHn2i9j/iy+FPjRLDkU80VCC8notUODgvbR40JFBMIcv0jO39tjilVShNJ6GIMjjeK/M/vRs9FZzrciX8BvbRoapG3ioBBgzgx/bMfeloVbsExHtMo6ImWCu8EZ1yhxNCByJEWcFrfJ/KEMg==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from CO1PR11MB5057.namprd11.prod.outlook.com (2603:10b6:303:6c::15)
 by MW6PR11MB8412.namprd11.prod.outlook.com (2603:10b6:303:23a::20)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.8857.19; Wed, 18 Jun
 2025 13:52:27 +0000
Received: from CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc]) by CO1PR11MB5057.namprd11.prod.outlook.com
 ([fe80::3b75:a8d2:464e:30cc%4]) with mapi id 15.20.8857.019; Wed, 18 Jun 2025
 13:52:27 +0000
Date: Wed, 18 Jun 2025 13:52:22 +0000
From: Krzysztof Karas <krzysztof.karas@intel.com>
To: <intel-gfx@lists.freedesktop.org>
CC: Andi Shyti <andi.shyti@linux.intel.com>, Krzysztof Niemiec
 <krzysztof.niemiec@intel.com>, Sebastian Brzezinka
 <sebastian.brzezinka@intel.com>
Subject: [PATCH 2/2] drm/i915: move GEM_QUIRK_PIN_SWIZZLED_PAGES to i915_gem.h
Message-ID: <ca83a9d8aa86bb92de84c31fd075e92a61f78895.1750251040.git.krzysztof.karas@intel.com>
"Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316"
References: <cover.1750251040.git.krzysztof.karas@intel.com>
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
In-Reply-To: <cover.1750251040.git.krzysztof.karas@intel.com>
X-ClientProxiedBy: WA2P291CA0024.POLP291.PROD.OUTLOOK.COM
 (2603:10a6:1d0:1e::15) To CO1PR11MB5057.namprd11.prod.outlook.com
 (2603:10b6:303:6c::15)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: CO1PR11MB5057:EE_|MW6PR11MB8412:EE_
X-MS-Office365-Filtering-Correlation-Id: daa6b512-bfa6-4580-5574-08ddae6f5c88
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;ARA:13230040|376014|1800799024|366016;
X-Microsoft-Antispam-Message-Info: =?utf-8?B?T0dvK2x3eGZFaUYwMVlPWUNpbHZtRmdmUEhQQklHSDVaUnZabTlCQ2Z1Z1Rx?=
 =?utf-8?B?d05Gcm1JWXFDNU9YdGVsWG90d24xeFJQbjZKZmxKRmZad0tRTnVKdC9jdDY2?=
 =?utf-8?B?U2tXTFFBNmVlS3Vob1dvclJhSHBEaTY0amo3eG9OQUdLVkhHTzk3SWNQd25j?=
 =?utf-8?B?a1ZKN3pZZGF0NVRQMmxURmlES0toeGVzc0dENFh6M2dFYWdRT0Eyd1FtZnBm?=
 =?utf-8?B?VllLUTM2aWhmcVQyUjJHN1pTdWxFanhSUFdkSHFzQmVaNVJnY3RGM0cyVUlI?=
 =?utf-8?B?aGJUYjlaYU9VMWFSVDgzdWNwdTQ4WDVrbk9YeXB0WjZoZktUMzNRVVQybDYy?=
 =?utf-8?B?eEEwb2xvaytwbER5QjVLSXVnM3p2NU50ejVvemNoVXNwNkpnRFZLZFBaV2dQ?=
 =?utf-8?B?czNMT1FxK2s1ZnEvemdCU0lKbjhUTjZpSWNubzlrdU9FV0RucXVnbEJIWFM5?=
 =?utf-8?B?ck1ZZnVBRnU3dkhFZ0hPUWdFeWt0TlF5RGQwRnZnUFdLQXJxeWlxaE1ScXlQ?=
 =?utf-8?B?YVdJRHdEMmptVEY5cFZBTHdBUnc5bTFMYnRMNDRqcnplM3lNZ1VpckVHekc3?=
 =?utf-8?B?SVhSRW5HK013QlJFMHh3UUlTTG9xREc3Mmc2OEtra0VGSjQwZWhjQm1ZZWRU?=
 =?utf-8?B?NVl0R3VtanRoL1F3eGswSSs1K1c4VysxM24xWFBGSlVHaXRPNWNOZ2pwUGgx?=
 =?utf-8?B?dmRjWEZ5dWFFM3JMZktqV2FhcURtc1ZiQlZ4a05NNk1CeEg3VFZEMWxiMVVs?=
 =?utf-8?B?LzlSQ1dDUCs0NkFhYWtpQit0TFNGZmVYTXF2U3l6aE4wTnZuQkVBaS9Memdj?=
 =?utf-8?B?OXVlcjBwWWRGZTdpT3Z3aUM1Zk0wWmVURzRoM3AvczdSY3Q1MWpBSlVBZDA5?=
 =?utf-8?B?QjVZSzNSMkVSTVpLaFFzemM4akdwN2ZKaGdmcjdDZzNtcDRkNy9Ra1NkRXpU?=
 =?utf-8?B?K0ZRWU05Vkk3K1dsYmdUUE90NkRqYzBRODdXdE9sUGVOeHcrRTNFRlIyb3RO?=
 =?utf-8?B?SVFHTUNQblV4MGd3R082SlQ1T2dyVnNuek5UU0swNGtoNS9oRkx2U0tNL0xl?=
 =?utf-8?B?d1VPWE90bmxxTU8rRnkwd29EcEJ2VDYvbHVnK1l0cHpxZXdpRDV5UVNDQ3RL?=
 =?utf-8?B?NmRZdS83SGZnYi96REN4MkZhZU02VHVnaEt6dWwzN0txRDNvOGt2ck01enNt?=
 =?utf-8?B?NE5nR015cURHZk1uOU13QjVGN2tJN0s2a3QzdGptRnhWbnAzSzZPSzdiRXdC?=
 =?utf-8?B?K3lhN0IyRTNjbGJteUFLckIwVC9RcjhvRjFRKzZxUVNoWlJuVmtIVmExR215?=
 =?utf-8?B?YityYzhtbUZWR1pEK0F0Ky80UDFyUHoyZ3paLzBDQUFlaWdVbi90VG1va1pq?=
 =?utf-8?B?aHFtalhzQ1pMK0xKS3Fnamk2LzhHWTkwakhnOVEyRHBVSUlKWUwzZWFIT1pl?=
 =?utf-8?B?d3M0WDUrekxlZGdjVVFIaDJtNG9rb1JNWEJHYVVDRG5LVFdjUzBoWmhjWHdF?=
 =?utf-8?B?OGp5Y2FwR3d4UmxORUZBZTdMMy9rUThzNEZnaHA2MDBSMFd1akgyWkxpNVMv?=
 =?utf-8?B?NTJjT3VvQXpNUXFSZDhSNkVZdVZRdUVkRDdRVUwxYWZxaWtseGxNUmJHZkcx?=
 =?utf-8?B?YVJxOUtkUjRHS2hYOGFGVWtSSW1pNnZocWt3eWlVTmd0b1h3MldDbk80OVRx?=
 =?utf-8?B?dWpRenY0ZEhZUVgyZ2FoS3VGMWVOejVEZFpSWkg5Q0tHMEVtZGdZVEZyd1Ur?=
 =?utf-8?B?MjBUSlZtdmZyMXU5Z1ArM3FpRE1DL0QzN3U2NHJuVzE4ZWNXNWdKQkhyWGJ6?=
 =?utf-8?B?NVduelFLb2kzZnhCeU1CTnU0OFhTYkNrMjJsL1J3a2pIcm9nalEzOHFyRlFP?=
 =?utf-8?B?R2Q2MEM2N1ZYb1RFYXA5b2c1MEwrbGFvZEtEdnlZeGJVWkVYbjd4RkprMFVy?=
 =?utf-8?Q?ZlgKOZFP+0Y=3D?=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CO1PR11MB5057.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230040)(376014)(1800799024)(366016); DIR:OUT; SFP:1101; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?blN1WG0yR2ZxbytVa3NLWnNndkZkRnVybk9JaXdJTHVIbWJGRnpNRjFKVWpP?=
 =?utf-8?B?MFVmLzd3emVWYU0xUW9KbkhUa2M1bU9hNnp1OE1rb2h4Q0hlVWd6Y1Q5SjZT?=
 =?utf-8?B?SmpWYTV3ZiszbGRyNUVkRnA4ZEtXdVVJZ3NjV1BWQzZYUmMrMFE0aTZ5c0Q2?=
 =?utf-8?B?SXl2ZTBycWc5MTdJUklsYWprZGlzN3JpZzRabzdqUm9BTGFYNGU0WkpHRXAx?=
 =?utf-8?B?VGpLaWpQNVRjUElLcnhOeklHSE0yWkhVVDgraHltbmlHclpNR1REYUxXVzFL?=
 =?utf-8?B?b2hrbzh1cERiRWlveDVpSGdyLzZWa0dEYUJHSGs1b1RuSVQxZG55RGJxT1dB?=
 =?utf-8?B?SHF3KzlLejg1ZDBiR092KzJOcFdNTFc2WTVmYUczcVJjV3FPWHY5My9YVXJj?=
 =?utf-8?B?dG1DYkZnaUZTSkxwWlNYOGJHelhtcm5YV3h4NmFaMndraVJGUGpEYVEvcDRN?=
 =?utf-8?B?cXNzTmgxZ2lsTDBabG4yWjZMM1hycEdXY2RqSDVQSFBBNUFxM2JENVlqVGVH?=
 =?utf-8?B?eWZKVUQ3YmxwTGZnQVJNWWxBcUlOQ0ZiU3hFYUUrSzJzdHpTWjhXZ1BaYzJT?=
 =?utf-8?B?TmNPLzNERG96eS84U2pVdFpCMll0Umx4dFN3TjRiY254MUNwWkNBUUJiT2d0?=
 =?utf-8?B?NGMzaHJCVy9OQ2ZhWEc1M2o4bW1GTVh6cTR2ZjVhakZicDRTWmU5SXREMSsx?=
 =?utf-8?B?U3hkYnlDZVJaWnY0bWplZUFQZThYemJTeEZWT21SSm5CY01kMGlFT3hXYS80?=
 =?utf-8?B?S2VnN21MVkFUVmtidmtRK0VxNVdWaTlGNXdqdVplTlNLRDNualpYVWJyR1Y2?=
 =?utf-8?B?dWJlUVAySStVQk9Rb3IzdGFqRi84cE5Rc0FsWGJOeVg2UjJodTljNW5DSXgv?=
 =?utf-8?B?WTRwM1pJWk9ncTJaTVNUZys5OG9OV0VINStnNnZrR25TeENoZTJlbVphS0JG?=
 =?utf-8?B?dC9obEQxZlJZSVNjMmYyYUNZcUZJajRLTTFCbzFnVjNMWm9zdW5oZTUyZTNY?=
 =?utf-8?B?aEJEMmR4bzRKMDVOVXdkcjhmRVpnYnNUME1ldWx4SjJzOFJhSXBZOWJSV0pV?=
 =?utf-8?B?Rlp1bmtFMDJWbHArdmxEZThGM1FYNnVRaXBrWlN3SDlWdmYzOHV2VmRoaU1W?=
 =?utf-8?B?a1cvWmM5RXBPYmJMMU93dlRsaklISWV5Rlowa3dVMlFKdUJUd0d4QTlzdDhy?=
 =?utf-8?B?Mjc3enhtY0lkQVMvTldYRk1JTC9mTHo2U0dnSWgyOHpNdHIvM3UvMS9vUHlz?=
 =?utf-8?B?bThONWM0djV0NTloakVZTHZKbzB2alZjaTZTeDQ3MVFrRmZkQlJHL1REdlRo?=
 =?utf-8?B?NERpMTV5Ujc0Z1RMM3RmdmUrbW5lUS9TYndxUzV2T2dFZ3NOOEFhWjdqdVpL?=
 =?utf-8?B?RE5zMlUvc2RHYTlYWHpiOERkRE91UzN2WnI2em5OTmJtSlF1MEFqNXl0Zzds?=
 =?utf-8?B?bUpqOTdOanNVclNZK2Z0UkRLYzI4aG5neHE4aXJBTVVVNnZXZ2VZYlhobFZE?=
 =?utf-8?B?T29aYXdlYmwySWhlZGE5Z1I2Y0hhaWJ3dUhka3NmTGNmSlkvdEJnMzZ6dVJo?=
 =?utf-8?B?ZnhtbnhLSnQ0K2lUYXJ0R0grT3dGdDdXTHNYRjFoa1FVbklwQ0VGQXp5M2Zn?=
 =?utf-8?B?RmRISjRrbk5PWU9hMG82OGJKNlRWSTM2SGJwamhKNHNUcDdOUXA3TDBUZzB3?=
 =?utf-8?B?SGF6MlhBL0ltSWRwM21DWGxJSllTYUtMVHRPbjRDVnBjemFtaVgrZmtJUlM1?=
 =?utf-8?B?eVBxMDFuK3ZiN1lGMjVndzVEbE4zWFlTaHlDMEt4UEJjL2pKbmpXa3ZJQ0RT?=
 =?utf-8?B?WjV2WFQ5dFpvYjNFNHdkWHRiaGJBSzRZc1lmU3R0U29EYytBQm1UQXFoR0pR?=
 =?utf-8?B?NzMzckhmK0l4Rmg1eDRzMmZxRTdrMW4xaW9STWZodGtxSnUxdDVVZUVEOFlD?=
 =?utf-8?B?VVBDcVNid2hhUzNXSVVVTTUwdDYvZk1YaFZmdG9CTHJnbFMybFE0S2U5dlZN?=
 =?utf-8?B?U3M1bW0zVGh5THR1Zm9OaCtrWUhrM0JLSnA0UEk1T2hSV04vWFkyaXhJU1dT?=
 =?utf-8?B?NC9SeitmOXM4cnQ5eG5hcVpnUjhydkNSVUVJV2lmQjU4ZEI1VUh3bkwwamsx?=
 =?utf-8?B?dVFlS21OTkhNT3l2cGFLS1ZISElDTUlUNWswR2VqRlVLVzlEd0lONUpLY0xE?=
 =?utf-8?B?VHc9PQ==?=
X-MS-Exchange-CrossTenant-Network-Message-Id: daa6b512-bfa6-4580-5574-08ddae6f5c88
X-MS-Exchange-CrossTenant-AuthSource: CO1PR11MB5057.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 18 Jun 2025 13:52:27.4783 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: OmUWbkUyrekx0DItJu1+jmVFRxNFKs7KYW+t9fmFxe5bIo9ZG2bpd0KSM8VuQlEa0y/GvFHEySjMEDodtZaOgyZzbUgzEK8rsIQxGuelrVo=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW6PR11MB8412
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

Move this macro where other GEM_* definitions live.
---
 drivers/gpu/drm/i915/i915_drv.h | 2 --
 drivers/gpu/drm/i915/i915_gem.h | 2 ++
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
index f69b64e06078..4e4e89746aa6 100644
--- a/drivers/gpu/drm/i915/i915_drv.h
+++ b/drivers/gpu/drm/i915/i915_drv.h
@@ -66,8 +66,6 @@ struct intel_display;
 struct intel_pxp;
 struct vlv_s0ix_state;
 
-#define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
-
 /* Data Stolen Memory (DSM) aka "i915 stolen memory" */
 struct i915_dsm {
 	/*
diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
index 82e9d289398c..418cd67738fb 100644
--- a/drivers/gpu/drm/i915/i915_gem.h
+++ b/drivers/gpu/drm/i915/i915_gem.h
@@ -134,4 +134,6 @@ int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
 
 #define I915_GEM_IDLE_TIMEOUT (HZ / 5)
 
+#define GEM_QUIRK_PIN_SWIZZLED_PAGES	BIT(0)
+
 #endif /* __I915_GEM_H__ */
-- 
2.34.1

