Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A38E4DE9B5
	for <lists+intel-gfx@lfdr.de>; Sat, 19 Mar 2022 18:46:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2506910E27D;
	Sat, 19 Mar 2022 17:46:42 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6CDD910E27D
 for <intel-gfx@lists.freedesktop.org>; Sat, 19 Mar 2022 17:46:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647712001; x=1679248001;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=V2NkEG6R47vXVgYI1Pbz/c0VMslVy+v6o43+ZDUhgoU=;
 b=Hrvp1Zoxf23gq559QuI5ARNxv7k48klLhNGKMrYLoc9NOnJ9zkac9Sds
 fuaq6qnLEaZrLwaWqASmSKfKl1MVSA+AM5CkKMy7zlRy1DNSp9+inc1OD
 uB/EQL6aCckSXpYXm1tvTQCo2+bNnBjlCXcpbomJyr2Xf0Wu7NoKxMukz
 2Zf4XfdDY6hS8GGY/1W8omRM3472kyaMFNiLRhbxv8qzigo7wZDurtby8
 XOPuzc3INSn1pi75HAldHlbb/jOYPf/evO7Im6a14goxlZ7ZCIphw9vT2
 IZOJ+J3PtGIfws1YXj44ydiNJu1ARqPkiutnxJn852+2YanAJwMvUmerV A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10291"; a="257038340"
X-IronPort-AV: E=Sophos;i="5.90,194,1643702400"; d="scan'208";a="257038340"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2022 10:46:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,194,1643702400"; d="scan'208";a="646063999"
Received: from fmsmsx601.amr.corp.intel.com ([10.18.126.81])
 by fmsmga002.fm.intel.com with ESMTP; 19 Mar 2022 10:46:40 -0700
Received: from fmsmsx612.amr.corp.intel.com (10.18.126.92) by
 fmsmsx601.amr.corp.intel.com (10.18.126.81) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Sat, 19 Mar 2022 10:46:40 -0700
Received: from fmsmsx606.amr.corp.intel.com (10.18.126.86) by
 fmsmsx612.amr.corp.intel.com (10.18.126.92) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21; Sat, 19 Mar 2022 10:46:39 -0700
Received: from fmsedg601.ED.cps.intel.com (10.1.192.135) by
 fmsmsx606.amr.corp.intel.com (10.18.126.86) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2308.21 via Frontend Transport; Sat, 19 Mar 2022 10:46:39 -0700
Received: from NAM04-BN8-obe.outbound.protection.outlook.com (104.47.74.40) by
 edgegateway.intel.com (192.55.55.70) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2308.21; Sat, 19 Mar 2022 10:46:39 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=iv5EQHj7yG0agXtTbKuDNUlJ5Ejo7nltd7qB9HVkl/dMKU/p0OEwiChYi2q6A7RtnmHJvdsp+LyDTqxSA8rDw5SR0B+9PGW2pxZr2TK2WR0db6dhLPaZG9h6F0N8c3Ka8wCllmygXDhIAlk+4hhJvMtoJGDMvfybWuQ/asEOy6C7uzqKiCYleyoTtyXATMOzAKdjHt8+XNE4YX6foMtjLPa9pTDknfSh7fz2i68Sk3tP+k5NOG/npX1JackTV69I1kxOE9oTg3hf0KYepMXy+dA8Ow+ZJuoaQsSur8I4MJLwnHEFQJD7y9R3DFAnw4dfCoiv4mBKRE2lWRec7LJigA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=Dj6sxutbsqTG0nvGcdEo8/9bj/iuQcbgJL/FPFF8dgw=;
 b=e/yWNNdwP9wbjmoN1naUW6cuiyqYkH3o7HDBo4fEE0cx7fuMn9bGuja7tifYieURbuhHMvuq54szN6u+Y8uIowcge3vOhoc8xcV/UY15Uzvh5sn0j+h0yHAd6gpJ07fWd+Nq2VlKamknm7X0txutE/6ujqs8jV3G4W+94m6h3jYHGDUjWz3L+vdbcvy+C9ddRxdLPRueEaNkIlXY7LpG3ymxtIC5/Wxg5y66FUoE1YdMLZNSldo3SCEtYApdM8lSZuwVzDE0cRLoIsDL3eZEsXiOiORBDJllQ2mFrwp96BCclNJ0/KeCyf8/bAsHCMdB3gFaQlGnoAmvCPV9yDrMlw==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from BYAPR11MB2936.namprd11.prod.outlook.com (2603:10b6:a03:8c::17)
 by SA2PR11MB4954.namprd11.prod.outlook.com (2603:10b6:806:11b::17)
 with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.5081.15; Sat, 19 Mar
 2022 17:46:36 +0000
Received: from BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::ce:25a6:4ecf:adc3]) by BYAPR11MB2936.namprd11.prod.outlook.com
 ([fe80::ce:25a6:4ecf:adc3%5]) with mapi id 15.20.5081.017; Sat, 19 Mar 2022
 17:46:36 +0000
Message-ID: <7ac42850-849a-f169-3697-05663221cb5a@intel.com>
Date: Sat, 19 Mar 2022 10:46:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Lucas De Marchi <lucas.demarchi@intel.com>
References: <20220319020042.306649-1-casey.g.bowman@intel.com>
 <20220319020042.306649-3-casey.g.bowman@intel.com>
 <20220319033955.5ns7bixcpzcjtlpc@ldmartin-desk2>
From: Casey Bowman <casey.g.bowman@intel.com>
In-Reply-To: <20220319033955.5ns7bixcpzcjtlpc@ldmartin-desk2>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: MW4PR04CA0233.namprd04.prod.outlook.com
 (2603:10b6:303:87::28) To BYAPR11MB2936.namprd11.prod.outlook.com
 (2603:10b6:a03:8c::17)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 72c1a4fd-e2ae-40e1-7e1c-08da09d069df
X-MS-TrafficTypeDiagnostic: SA2PR11MB4954:EE_
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-Microsoft-Antispam-PRVS: <SA2PR11MB49548A38F47DBEF3D196B6B8DD149@SA2PR11MB4954.namprd11.prod.outlook.com>
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: v6zTLCRP/FWKetdAq6NaJRajvoJGvxB8uClGUvVzIE6WSTMSXwjuUQ5X4UKk5BCJqN7AeepIIEvzKbiHvrmVamWggAU+JIh5CP8am+MUwC32axM9sEVchuujs30l98LkO6XlzZfNu8Pxt1d6VHw83YX1auT0ZS41ZvkPQWqPYpJwmCotdSuGJXErcywTOb4jnvhkcLrHDMzk1cU5T7aJsS3lenn9+gII6xU+fz8j3//dgB8wMSHZNVHzLlKdcLl+7CPyB6GG8E/0+eC3PVuZ5F2Pi0rBWsCe2WtywOVd6ZtBj+iY9NeXcNA4E4keA3vLI1emT3Hl07lQQ3tMt9oFJG0G/2ezj+xoI19MO3tlRY9tZC4f180aqhY9FTUc9XRun9m33y6c/bkBE9604SXQ0BhohdSgY+r+PVbA6CktxLRCwHoxT/Yn720OHXcNRbbRnrE4MKte1gNPFIJDMpnhNAcVs1umFB8xCVh5itXWSUzPmoYyzS7V2nHpNVx+/Jc80nDBYlWDUOIc2NHxzNFNLshobaD8J4NI0kfkJWhM46TSi8nHGrAGSJ+XLcVGtbdOwyM1cN+jTtaf+4KuStxOKZWOS3psyst6Q9qXKsg/SPjeQFBNrDXmZ77J/2zHu0ec0kDguzCmB421E6QQP55u8oJ/MGdT8EOtKYE9HvaUPHFa6S6hJpi0U/u9vbiQkeMOUgZkUwhk9sFeAsoDK+Tmd3n0QfK0g1bVAT4arlGAjJk=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:BYAPR11MB2936.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230001)(366004)(316002)(86362001)(31696002)(2616005)(186003)(26005)(37006003)(6636002)(5660300002)(30864003)(8936002)(38100700002)(83380400001)(4326008)(6862004)(8676002)(66476007)(66556008)(66946007)(82960400001)(2906002)(508600001)(6512007)(6666004)(6506007)(6486002)(53546011)(31686004)(36756003)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?MVpVK3U3TXkzRlFvUEIzenBKdXZybFlDeHB4bzhYeEJmOStmTU9sL1pMc3RX?=
 =?utf-8?B?R1VweFQ4am4rYUZZSWd4cmtBWisyV3U1M3dWcFVJQlBaNEllNk9kOVBPOVhi?=
 =?utf-8?B?Yml5Zm5nL1dFOUN1WHQ1bG5IUnhJODUvN2Q4enBnVTY3cnJpbXdFU05zZWR1?=
 =?utf-8?B?NzlSSDF4eG1uOW1ZR1hBZWtzSzdPcFROSjZQMmt4ZWFmVVh1QWFXYmtUaG50?=
 =?utf-8?B?b0tDZFc5UE96SjRGR0d3VXJDN0UydjYrMW51STlaRVZ3VUt6Z2pMdU9WYWli?=
 =?utf-8?B?TUVQUzBRcURoRU5BclF6c0ZUWHpDUExramRaYTh6Ymx3ZlIxZjkxQXcwZkNy?=
 =?utf-8?B?Z0NFZTlHbUhqSW1MUUdPa2FlTDFEbEpuU1kwUUxpVXBLcUYvWEdyTVdiUWpv?=
 =?utf-8?B?NHorck82M3hkbDBud1hjeWJkVVpVVDRCVDA4Ly84ZUErRXZYRWtXL2FsdWYw?=
 =?utf-8?B?dE81M1BXR2tmWGVMdFJYTkNRL09GRjNCN2IwNm11OVEyNWhRMnZVVC9iRTAr?=
 =?utf-8?B?ZWlaUlZFNTFhV3AwcmVabEg4MS9ER0NTSDhYbm5oaHBEUHdybDdQZktlcFdh?=
 =?utf-8?B?cXR0QXVReGVGQW5VTkxRaVQrSWIzeVo2cTNjMno3MG5BRzVjT3k2UWFCTEl1?=
 =?utf-8?B?YVR4NG1DaTVJbDZKNzVSZjJCZzNFMUljeU8wakxnZDI3VEpGbFJTUktxaHFM?=
 =?utf-8?B?OHdrRG52T2pySGU4WVlaOTJFeitzL3VQOEswNjhLT0JWcisrdkdPenU1TGxM?=
 =?utf-8?B?bVB3Um1OL1BveW9qYmh5VjVpanUzQzJORC9CcDVlWG16c3JPci9XN2hUSXpR?=
 =?utf-8?B?UlAvcUJrVjJJeW5zdnlEc25PdXIxTS9PSDNwQXVVY3VPK3ZLVmY1ZlNBZHUx?=
 =?utf-8?B?ZWpqS3RpVUxFZ0dXN2lKMm9maVYyV25yUG01emZQWWZ5UjlUTFRJd0V5Y29B?=
 =?utf-8?B?VHNOODRSaUZzRWNuTnk2bHVGTURqOGNNQ2lEeU9aeDc5QlVtWU9UVjk4bzlV?=
 =?utf-8?B?aS9kME9nTUo5VHNJMnFXQ3ZmQnkzMndUaTl2dWxoZStDa3Z2WDd3M2R6S3kw?=
 =?utf-8?B?ckc2TC9IZTMwWFFaWlBKTEw5MjhkUXNkeXFkcVhKSmV1d21oM29HWVRDbjBu?=
 =?utf-8?B?Ykg4Qld1dHY2L3hoZVlpVUIzVnEyb1VSdThpbS9DYTJnY3VxcDg1ZENHZjUr?=
 =?utf-8?B?ZWlpemRMUUlQTS9tUXk2d2NGbmpEWnhaTDRQVjVYSGpXeXdIbzZJZDJvbVd0?=
 =?utf-8?B?TE1lM0gyZHJkYVJXZ2o5d1p5bk1EQVF0aU02K1VySnVwNFFwZ2tjMlpzbTB0?=
 =?utf-8?B?MjBPaEx6a0VIaUp6RjFVNDdLbGNCU3pwTytYOEpFQjMzWVFwWnJ1VGhDblZO?=
 =?utf-8?B?eDVJcmNoSkFOTmhrWVdZaWcxZ2lmcUxocExEWGU5Q3Q4RDBNWExEc2JyR0dh?=
 =?utf-8?B?T1Z0cjBQSjhUTlRlVmZQNXlmREtYSEV3T3VidzRDc0FSTHk2RGtLZmpPUGJj?=
 =?utf-8?B?VDFnb04rWkNoRXZGK1hIeHkrN0ZiVlgrWmRqWEZVb2NzVDhRMmtKTWtEajdR?=
 =?utf-8?B?K2NieGhzaHA4SitSemNjeGRsekNPaXRxU0cyd0drNGFvTnNrWUcwQlEyOENk?=
 =?utf-8?B?eU92aWF0ZmRHcGxkUU5hQ2swa28vMUNUaC9STzRYUFBvVXEvREgrK0QrOWZo?=
 =?utf-8?B?V2RPVlVEM201ZVd6WUptUytjMkJuUVJyeXdQWTFwdEhwakZUNC9UTTNsUWJE?=
 =?utf-8?B?ZEdINDE3UjlpMU9NUnVwT2hYWDg5YXlRaEtkUUNiZE5yY2I3bk5MeXVXcThK?=
 =?utf-8?B?MnU3dmVKNFpzOUJHTVNzRVY4cm9YbjhWYmF3ck5OUmJNajA5RlBhdE1YSThr?=
 =?utf-8?B?VG82WHRVN0QxTWd6T2hMU0xNOXVidG40WCtyWkJ6NWdPamEvSVczZHR0alFt?=
 =?utf-8?B?Tjh4K0lDYitaRHlTREVFejlRTWxtUEpHTmkxOUlXZGlGVnZZRlI5UTJuT1Nt?=
 =?utf-8?B?VTBadkNqMjBRPT0=?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 72c1a4fd-e2ae-40e1-7e1c-08da09d069df
X-MS-Exchange-CrossTenant-AuthSource: BYAPR11MB2936.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 19 Mar 2022 17:46:36.2010 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: udHLnHZQeqznDkKh+20pOXTlToa33BLkFSswW8X83qMChqWcboLVDJksniJOdbOC90yXobeOD5K1Eld6ApwrfcuCKb68Thy2u1aUklTQWj4=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SA2PR11MB4954
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/gt: Split intel-gtt functions
 by arch
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
Cc: thomas.hellstrom@linux.intel.com, intel-gfx@lists.freedesktop.org,
 chris@chris-wilson.co.uk
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>



On 3/18/22 20:39, Lucas De Marchi wrote:
> On Fri, Mar 18, 2022 at 07:00:42PM -0700, Casey Bowman wrote:
>> Some functions defined in the intel-gtt module are used in several
>> areas, but is only supported on x86 platforms.
>>
>> By separating these calls and their static underlying functions to
>> area, we are able to compile out these functions for non-x86 builds
>> and provide stubs for the non-x86 implementations.
>>
>
> I like the direction this is going now. See comments below.
>
>> Signed-off-by: Casey Bowman <casey.g.bowman@intel.com>
>> ---
>> drivers/gpu/drm/i915/Makefile               |   2 +
>> drivers/gpu/drm/i915/gt/intel_ggtt.c        |  97 +----------------
>> drivers/gpu/drm/i915/gt/intel_gt.c          |   6 +-
>> drivers/gpu/drm/i915/gt/intel_gtt.h         |  10 ++
>> drivers/gpu/drm/i915/gt/intel_gtt_support.c | 113 ++++++++++++++++++++
>> drivers/gpu/drm/i915/gt/intel_gtt_support.h |  39 +++++++
>> 6 files changed, 171 insertions(+), 96 deletions(-)
>> create mode 100644 drivers/gpu/drm/i915/gt/intel_gtt_support.c
>> create mode 100644 drivers/gpu/drm/i915/gt/intel_gtt_support.h
>>
>> diff --git a/drivers/gpu/drm/i915/Makefile 
>> b/drivers/gpu/drm/i915/Makefile
>> index 61b078bd1b32..cc332cb6833b 100644
>> --- a/drivers/gpu/drm/i915/Makefile
>> +++ b/drivers/gpu/drm/i915/Makefile
>> @@ -124,6 +124,8 @@ gt-y += \
>>     gt/intel_workarounds.o \
>>     gt/shmem_utils.o \
>>     gt/sysfs_engines.o
>> +# x86 intel-gtt module support
>> +gt-$(CONFIG_X86) += gt/intel_gtt_support.o
>> # autogenerated null render state
>> gt-y += \
>>     gt/gen6_renderstate.o \
>> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt.c 
>> b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> index 04191fe2ee34..db2f1b12c273 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt.c
>> @@ -3,14 +3,12 @@
>>  * Copyright © 2020 Intel Corporation
>>  */
>>
>> -#include <linux/agp_backend.h>
>> #include <linux/stop_machine.h>
>>
>> #include <asm/set_memory.h>
>> #include <asm/smp.h>
>>
>> #include <drm/i915_drm.h>
>> -#include <drm/intel-gtt.h>
>>
>> #include "gem/i915_gem_lmem.h"
>>
>> @@ -21,6 +19,7 @@
>> #include "i915_vgpu.h"
>>
>> #include "intel_gtt.h"
>> +#include "intel_gtt_support.h"
>> #include "gen8_ppgtt.h"
>>
>> static void i915_ggtt_color_adjust(const struct drm_mm_node *node,
>> @@ -98,7 +97,7 @@ int i915_ggtt_init_hw(struct drm_i915_private *i915)
>>  * Certain Gen5 chipsets require idling the GPU before
>>  * unmapping anything from the GTT when VT-d is enabled.
>>  */
>> -static bool needs_idle_maps(struct drm_i915_private *i915)
>> +bool needs_idle_maps(struct drm_i915_private *i915)
>
> why didn't you move this function together? It's only used by
> i915_gmch_probe()
>
> If it was something generic that needed to be exported, you'd need to
> rename it to respect the namespace.
>
> but here I think you can just move it to the new file.

Yeah, I think this was an oversight on my part when moving the
various files only associated with i915_gmch_probe(), for some
reason, I assume I thought that this was part of the other
*_gmch_probe() calls.

This will be moved as the others were in v2.

>
>> {
>>     /*
>>      * Query intel_iommu to see if we need the workaround. Presumably 
>> that
>> @@ -229,11 +228,6 @@ static void guc_ggtt_invalidate(struct i915_ggtt 
>> *ggtt)
>>         intel_uncore_write_fw(uncore, GEN8_GTCR, GEN8_GTCR_INVALIDATE);
>> }
>>
>> -static void gmch_ggtt_invalidate(struct i915_ggtt *ggtt)
>> -{
>> -    intel_gtt_chipset_flush();
>> -}
>> -
>> u64 gen8_ggtt_pte_encode(dma_addr_t addr,
>>              enum i915_cache_level level,
>>              u32 flags)
>> @@ -467,37 +461,7 @@ static void gen6_ggtt_clear_range(struct 
>> i915_address_space *vm,
>>         iowrite32(scratch_pte, &gtt_base[i]);
>> }
>>
>> -static void i915_ggtt_insert_page(struct i915_address_space *vm,
>> -                  dma_addr_t addr,
>> -                  u64 offset,
>> -                  enum i915_cache_level cache_level,
>> -                  u32 unused)
>> -{
>> -    unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>> -        AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>> -
>> -    intel_gtt_insert_page(addr, offset >> PAGE_SHIFT, flags);
>> -}
>> -
>> -static void i915_ggtt_insert_entries(struct i915_address_space *vm,
>> -                     struct i915_vma_resource *vma_res,
>> -                     enum i915_cache_level cache_level,
>> -                     u32 unused)
>> -{
>> -    unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>> -        AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>> -
>> -    intel_gtt_insert_sg_entries(vma_res->bi.pages, vma_res->start >> 
>> PAGE_SHIFT,
>> -                    flags);
>> -}
>> -
>> -static void i915_ggtt_clear_range(struct i915_address_space *vm,
>> -                  u64 start, u64 length)
>> -{
>> -    intel_gtt_clear_range(start >> PAGE_SHIFT, length >> PAGE_SHIFT);
>> -}
>> -
>> -static void ggtt_bind_vma(struct i915_address_space *vm,
>> +void ggtt_bind_vma(struct i915_address_space *vm,
>>               struct i915_vm_pt_stash *stash,
>>               struct i915_vma_resource *vma_res,
>>               enum i915_cache_level cache_level,
>> @@ -521,7 +485,7 @@ static void ggtt_bind_vma(struct 
>> i915_address_space *vm,
>>     vma_res->page_sizes_gtt = I915_GTT_PAGE_SIZE;
>> }
>>
>> -static void ggtt_unbind_vma(struct i915_address_space *vm,
>> +void ggtt_unbind_vma(struct i915_address_space *vm,
>>                 struct i915_vma_resource *vma_res)
>> {
>>     vm->clear_range(vm, vma_res->start, vma_res->vma_size);
>> @@ -1149,54 +1113,6 @@ static int gen6_gmch_probe(struct i915_ggtt 
>> *ggtt)
>>     return ggtt_probe_common(ggtt, size);
>> }
>>
>> -static void i915_gmch_remove(struct i915_address_space *vm)
>> -{
>> -    intel_gmch_remove();
>> -}
>> -
>> -static int i915_gmch_probe(struct i915_ggtt *ggtt)
>> -{
>> -    struct drm_i915_private *i915 = ggtt->vm.i915;
>> -    phys_addr_t gmadr_base;
>> -    int ret;
>> -
>> -    ret = intel_gmch_probe(i915->bridge_dev, 
>> to_pci_dev(i915->drm.dev), NULL);
>> -    if (!ret) {
>> -        drm_err(&i915->drm, "failed to set up gmch\n");
>> -        return -EIO;
>> -    }
>> -
>> -    intel_gtt_get(&ggtt->vm.total, &gmadr_base, &ggtt->mappable_end);
>> -
>> -    ggtt->gmadr =
>> -        (struct resource)DEFINE_RES_MEM(gmadr_base, 
>> ggtt->mappable_end);
>> -
>> -    ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>> -    ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>> -
>> -    if (needs_idle_maps(i915)) {
>> -        drm_notice(&i915->drm,
>> -               "Flushing DMA requests before IOMMU unmaps; 
>> performance may be degraded\n");
>> -        ggtt->do_idle_maps = true;
>> -    }
>> -
>> -    ggtt->vm.insert_page = i915_ggtt_insert_page;
>> -    ggtt->vm.insert_entries = i915_ggtt_insert_entries;
>> -    ggtt->vm.clear_range = i915_ggtt_clear_range;
>> -    ggtt->vm.cleanup = i915_gmch_remove;
>> -
>> -    ggtt->invalidate = gmch_ggtt_invalidate;
>> -
>> -    ggtt->vm.vma_ops.bind_vma    = ggtt_bind_vma;
>> -    ggtt->vm.vma_ops.unbind_vma  = ggtt_unbind_vma;
>> -
>> -    if (unlikely(ggtt->do_idle_maps))
>> -        drm_notice(&i915->drm,
>> -               "Applying Ironlake quirks for intel_iommu\n");
>> -
>> -    return 0;
>> -}
>> -
>> static int ggtt_probe_hw(struct i915_ggtt *ggtt, struct intel_gt *gt)
>> {
>>     struct drm_i915_private *i915 = gt->i915;
>> @@ -1266,10 +1182,7 @@ int i915_ggtt_probe_hw(struct drm_i915_private 
>> *i915)
>>
>> int i915_ggtt_enable_hw(struct drm_i915_private *i915)
>> {
>> -    if (GRAPHICS_VER(i915) < 6 && !intel_enable_gtt())
>> -        return -EIO;
>> -
>> -    return 0;
>> +    return i915_gtt_support_enable_hw(i915);
>> }
>>
>> void i915_ggtt_enable_guc(struct i915_ggtt *ggtt)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c 
>> b/drivers/gpu/drm/i915/gt/intel_gt.c
>> index 57ca1e6b6203..abdf8dc8ddf7 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gt.c
>> +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
>> @@ -4,7 +4,6 @@
>>  */
>>
>> #include <drm/drm_managed.h>
>> -#include <drm/intel-gtt.h>
>>
>> #include "gem/i915_gem_internal.h"
>> #include "gem/i915_gem_lmem.h"
>> @@ -20,6 +19,7 @@
>> #include "intel_gt_pm.h"
>> #include "intel_gt_regs.h"
>> #include "intel_gt_requests.h"
>> +#include "intel_gtt_support.h"
>> #include "intel_migrate.h"
>> #include "intel_mocs.h"
>> #include "intel_pm.h"
>> @@ -443,9 +443,7 @@ void intel_gt_flush_ggtt_writes(struct intel_gt *gt)
>>
>> void intel_gt_chipset_flush(struct intel_gt *gt)
>> {
>> -    wmb();
>> -    if (GRAPHICS_VER(gt->i915) < 6)
>> -        intel_gtt_chipset_flush();
>> +    intel_gtt_support_chipset_flush(gt);
>
> humn... 2 things here:
>
> 1) intel_gtt_support_* may not be a good name. Here it seems the
> function would return a boolean saying if chipset flush is supported.

Agreed, I thought it may somewhat align, but could also cause confusion,
so a discussion for a better name is likely needed.

>
> Also, all the functions in intel_gtt_support_* are actually about
> support the i915 graphics card (not to be confused is i915, the name of
> the module). intel_gtt_* clashes with the other module. So, looking at
> the calls I'd actually call these e.g. gen5_gtt_chipset_flush()
>

This seems fine with me

> This would follow what is done in other headers/sources like
> gen*_renderstate.*, gen*_ppgtt.*, etc
>
> Then this function would become like:
>
> void intel_gt_chipset_flush(struct intel_gt *gt)
> {
>     wmb();
>     if (GRAPHICS_VER(gt->i915) <= 5)
>         gen5_gtt_chipset_flush();
> }
>
> So we split what is to be done for every gpu (the wmb()) from what is to
> be done for the older gens.
>
>
> What do you think? Jani / Matt?
>
>
>> }
>>
>> void intel_gt_driver_register(struct intel_gt *gt)
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt.h 
>> b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> index 4529b5e9f6e6..fd1dea85bde4 100644
>> --- a/drivers/gpu/drm/i915/gt/intel_gtt.h
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt.h
>> @@ -547,6 +547,14 @@ i915_page_dir_dma_addr(const struct i915_ppgtt 
>> *ppgtt, const unsigned int n)
>> void ppgtt_init(struct i915_ppgtt *ppgtt, struct intel_gt *gt,
>>         unsigned long lmem_pt_obj_flags);
>>
>> +void ggtt_bind_vma(struct i915_address_space *vm,
>> +              struct i915_vm_pt_stash *stash,
>> +              struct i915_vma_resource *vma_res,
>> +              enum i915_cache_level cache_level,
>> +              u32 flags);
>> +void ggtt_unbind_vma(struct i915_address_space *vm,
>> +                struct i915_vma_resource *vma_res);
>> +
>> int i915_ggtt_probe_hw(struct drm_i915_private *i915);
>> int i915_ggtt_init_hw(struct drm_i915_private *i915);
>> int i915_ggtt_enable_hw(struct drm_i915_private *i915);
>> @@ -654,4 +662,6 @@ static inline struct sgt_dma {
>>     return (struct sgt_dma){ sg, addr, addr + sg_dma_len(sg) };
>> }
>>
>> +bool needs_idle_maps(struct drm_i915_private *i915);
>> +
>> #endif
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt_support.c 
>> b/drivers/gpu/drm/i915/gt/intel_gtt_support.c
>> new file mode 100644
>> index 000000000000..d6d22b1a9520
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt_support.c
>> @@ -0,0 +1,113 @@
>> +// SPDX-License-Identifier: MIT
>> +/*
>> + * Copyright © 2022 Intel Corporation
>> + */
>> +
>> +#include <drm/intel-gtt.h>
>> +
>> +#include <linux/agp_backend.h>
>> +
>> +#include "i915_drv.h"
>> +#include "intel_gtt_support.h"
>> +#include "intel_gt.h"
>> +
>> +/* Wrapper for intel_gt_chipset_flush() */
>> +void intel_gtt_support_chipset_flush(struct intel_gt *gt)
>> +{
>> +    wmb();
>> +    if (GRAPHICS_VER(gt->i915) < 6)
>> +        intel_gtt_chipset_flush();
>> +}
>> +
>> +static void gmch_ggtt_invalidate(struct i915_ggtt *ggtt)
>> +{
>> +    intel_gtt_chipset_flush();
>> +}
>> +
>> +static void i915_ggtt_insert_page(struct i915_address_space *vm,
>> +                  dma_addr_t addr,
>> +                  u64 offset,
>> +                  enum i915_cache_level cache_level,
>> +                  u32 unused)
>> +{
>> +    unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>> +        AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>> +
>> +    intel_gtt_insert_page(addr, offset >> PAGE_SHIFT, flags);
>> +}
>> +
>> +static void i915_ggtt_insert_entries(struct i915_address_space *vm,
>> +                     struct i915_vma_resource *vma_res,
>> +                     enum i915_cache_level cache_level,
>> +                     u32 unused)
>> +{
>> +    unsigned int flags = (cache_level == I915_CACHE_NONE) ?
>> +        AGP_USER_MEMORY : AGP_USER_CACHED_MEMORY;
>> +
>> +    intel_gtt_insert_sg_entries(vma_res->bi.pages, vma_res->start >> 
>> PAGE_SHIFT,
>> +                    flags);
>> +}
>> +
>> +static void i915_ggtt_clear_range(struct i915_address_space *vm,
>> +                     u64 start, u64 length)
>> +{
>> +    intel_gtt_clear_range(start >> PAGE_SHIFT, length >> PAGE_SHIFT);
>> +}
>> +
>> +static void i915_gmch_remove(struct i915_address_space *vm)
>> +{
>> +    intel_gmch_remove();
>> +}
>> +
>> +/* Original i915_gmch_probe() behavior for x86 */
>> +int i915_gmch_probe(struct i915_ggtt *ggtt)
>> +{
>> +    struct drm_i915_private *i915 = ggtt->vm.i915;
>> +    phys_addr_t gmadr_base;
>> +    int ret;
>> +
>> +    ret = intel_gmch_probe(i915->bridge_dev, 
>> to_pci_dev(i915->drm.dev), NULL);
>> +    if (!ret) {
>> +        drm_err(&i915->drm, "failed to set up gmch\n");
>> +        return -EIO;
>> +    }
>> +
>> +    intel_gtt_get(&ggtt->vm.total, &gmadr_base, &ggtt->mappable_end);
>> +
>> +    ggtt->gmadr =
>> +        (struct resource)DEFINE_RES_MEM(gmadr_base, 
>> ggtt->mappable_end);
>> +
>> +    ggtt->vm.alloc_pt_dma = alloc_pt_dma;
>> +    ggtt->vm.alloc_scratch_dma = alloc_pt_dma;
>> +
>> +    if (needs_idle_maps(i915)) {
>> +        drm_notice(&i915->drm,
>> +               "Flushing DMA requests before IOMMU unmaps; 
>> performance may be degraded\n");
>> +        ggtt->do_idle_maps = true;
>> +    }
>> +
>> +    ggtt->vm.insert_page = i915_ggtt_insert_page;
>> +    ggtt->vm.insert_entries = i915_ggtt_insert_entries;
>> +    ggtt->vm.clear_range = i915_ggtt_clear_range;
>> +    ggtt->vm.cleanup = i915_gmch_remove;
>> +
>> +    ggtt->invalidate = gmch_ggtt_invalidate;
>> +
>> +    ggtt->vm.vma_ops.bind_vma    = ggtt_bind_vma;
>> +    ggtt->vm.vma_ops.unbind_vma  = ggtt_unbind_vma;
>> +
>> +    if (unlikely(ggtt->do_idle_maps))
>> +        drm_notice(&i915->drm,
>> +               "Applying Ironlake quirks for intel_iommu\n");
>> +
>> +    return 0;
>> +}
>> +
>> +/* Wrapper for i915_ggtt_enable_hw() */
>> +int i915_gtt_support_enable_hw(struct drm_i915_private *i915)
>> +{
>> +    if (GRAPHICS_VER(i915) < 6 && !intel_enable_gtt())
>> +        return -EIO;
>> +
>> +    return 0;
>> +}
>> diff --git a/drivers/gpu/drm/i915/gt/intel_gtt_support.h 
>> b/drivers/gpu/drm/i915/gt/intel_gtt_support.h
>> new file mode 100644
>> index 000000000000..2ebb0dd66ad7
>> --- /dev/null
>> +++ b/drivers/gpu/drm/i915/gt/intel_gtt_support.h
>> @@ -0,0 +1,39 @@
>> +/* SPDX-License-Identifier: MIT */
>> +/*
>> + * Copyright © 2022 Intel Corporation
>> + */
>> +
>> +#ifndef __INTEL_GTT_SUPPORT_H__
>> +#define __INTEL_GTT_SUPPORT_H__
>> +
>> +#include "intel_gtt.h"
>> +
>> +/* For x86 platforms */
>> +#if IS_ENABLED(CONFIG_X86)
>> +/* Wrapper for intel_gt_chipset_flush() */
>> +void intel_gtt_support_chipset_flush(struct intel_gt *gt);
>> +/* Original i915_gmch_probe() behavior */
>> +int i915_gmch_probe(struct i915_ggtt *ggtt);
>> +/* Wrapper for i915_ggtt_enable_hw() */
>> +int i915_gtt_support_enable_hw(struct drm_i915_private *i915);
>> +
>
>
> we are trying to standardize on:
>
> this_is_a_namespace.c / this_is_a_namespace.h
>
> and the functions exported are:
>
> this_is_a_namespace_*
>
> Here you have 3 functions, all with different prefixes:
>
> intel_gtt_support_
> i915_gmch_
> i915_ggtt_
>
> we need to rename the functions we export. If people think my suggestion
> above with gen5_gtt_* is a good one, then this would be the namespace
> for all of them
>

Ok, I'll have the changes prepped for when others give their thoughts on
the name changes.

> I think we are now much closer to a version to be merged.

Thank you very much for the early review on a late Friday!
Enjoy your weekend! :)

Regards,
Casey

>
> thanks,
> Lucas De Marchi
>
>> +/* Stubs for non-x86 platforms */
>> +#else
>> +static inline void intel_gtt_support_chipset_flush(struct intel_gt *gt)
>> +{
>> +    return;
>> +}
>> +static inline int i915_gmch_probe(struct i915_ggtt *ggtt)
>> +{
>> +    /* We shouldn't detect a device in this case, return fail */
>> +    return -1;
>> +}
>> +
>> +static inline int i915_gtt_support_enable_hw(struct drm_i915_private 
>> *i915)
>> +{
>> +    /* No HW should be enabled for this case, return fail */
>> +    return -1;
>> +}
>> +#endif
>> +
>> +#endif /* __INTEL_GTT_SUPPORT_H__ */
>> -- 
>> 2.25.1
>>

