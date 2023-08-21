Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2216B78298B
	for <lists+intel-gfx@lfdr.de>; Mon, 21 Aug 2023 14:52:27 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9413910E245;
	Mon, 21 Aug 2023 12:52:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A609F10E245
 for <intel-gfx@lists.freedesktop.org>; Mon, 21 Aug 2023 12:52:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1692622344; x=1724158344;
 h=message-id:date:subject:to:cc:references:from:
 in-reply-to:content-transfer-encoding:mime-version;
 bh=vsGKj8joO+LR5bF6qIFuU9NOOENImZGcjL29ju0rK9s=;
 b=Wd3HR4Pmp3ktq7tCCOw7+9rkxMco5PG8zJguMNsQSImtuUdF5WvU/1Fj
 6M9mbBCeMvLBbxQNSg53UZZhs6cYWB8kgZkv5cNm4idOemzQ/LGwTPO+f
 rXSVHg4oAlzSNK1irY5GUlVowzT9HH/SLfHkdGN1b7pzuigZuax1u2wfr
 kc8HL9UPgxYdoskLnlUbyS8F/Y/o26/WjTilHxEkzbL+YiA4KaUagw2l8
 rV7+KFJwmf1BIbvBPQfYexE5pQVIaysKg/ONGdpgAxXFQ+pWf8qDCkgPT
 NKOpoAsl9r7uzEeflfpFzv7wWt8icKPYA+LTprUbmmgNhelpRDvOu7FyB A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="353896556"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="353896556"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Aug 2023 05:52:24 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10809"; a="825913690"
X-IronPort-AV: E=Sophos;i="6.01,190,1684825200"; d="scan'208";a="825913690"
Received: from fmsmsx603.amr.corp.intel.com ([10.18.126.83])
 by FMSMGA003.fm.intel.com with ESMTP; 21 Aug 2023 05:52:24 -0700
Received: from fmsmsx610.amr.corp.intel.com (10.18.126.90) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 05:52:23 -0700
Received: from fmsmsx603.amr.corp.intel.com (10.18.126.83) by
 fmsmsx610.amr.corp.intel.com (10.18.126.90) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27; Mon, 21 Aug 2023 05:52:23 -0700
Received: from FMSEDG603.ED.cps.intel.com (10.1.192.133) by
 fmsmsx603.amr.corp.intel.com (10.18.126.83) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.27 via Frontend Transport; Mon, 21 Aug 2023 05:52:23 -0700
Received: from NAM10-MW2-obe.outbound.protection.outlook.com (104.47.55.102)
 by edgegateway.intel.com (192.55.55.68) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2507.27; Mon, 21 Aug 2023 05:52:23 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=dsGcIidH4x1GVVH50US4zDOf4Mvi8I7RnvK1aN5RMccpb6jbY0YV9mRZSP04yLjlw5mt02TeMbEOnLpbL+fk8311eOoN5SjVNX7munOc+efYZwLxF8CfwHJmIkyzwf8w609s87OkTjQInl0FWNzlTU1CdSiLtcFRneDr1HqzxpqzN2k5NVBuTn3ARywAcf0B2/1khm92zta9BrU0q/gQsmaoCM74vI58+8ffqw7lQONsDnrJXI1czcuIIuvIHuptlZDZ2694hPHRNBPHcwc+3HOw1y1m38h24Fvd7rUeu4EieDfeEnSiudWGYx1K3Sy7dPu7jxzPJVBsKNMq/nnUSw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-AntiSpam-MessageData-ChunkCount:X-MS-Exchange-AntiSpam-MessageData-0:X-MS-Exchange-AntiSpam-MessageData-1;
 bh=fQRQMETjattKLvI7Qo4uXXGLb0DDBRmL4plNCcsr8fc=;
 b=CtwrmBEcR9PEfSwLsxmLVryrYj9PUWtj4L2FBO9spRCtKn/+4Va744WdmMiuQJdOEkKyWBWiqhoAhnVOBLQfl6IKImYSynoBwqwbcp5SaVXMF1AtR8ZfLKZ22i7Vf8EJz1cTSawUlLSUajkwQz6ay5ZVsOjvZRnlRK1wSAI10oE9sXuVkFoac48khHXYrOK2ZgLf1RcrMbWeWaK5jLPKcDsRaOn6kKLFMkuNZ9Ste94PPDTBKr0wfxraoeDcoCe59b0qxT+LWyRwl3QWXQX6BhhBWxbqITSpwCqdeZDaC9acfqmCgPKOMHSisx414uSObLof+TCzGIMuFlTxcGxh5Q==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
Authentication-Results: dkim=none (message not signed)
 header.d=none;dmarc=none action=none header.from=intel.com;
Received: from DM8PR11MB5653.namprd11.prod.outlook.com (2603:10b6:8:25::8) by
 MW4PR11MB6737.namprd11.prod.outlook.com (2603:10b6:303:20d::15) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.6699.24; Mon, 21 Aug
 2023 12:52:21 +0000
Received: from DM8PR11MB5653.namprd11.prod.outlook.com
 ([fe80::3382:a13a:ef37:f584]) by DM8PR11MB5653.namprd11.prod.outlook.com
 ([fe80::3382:a13a:ef37:f584%5]) with mapi id 15.20.6699.022; Mon, 21 Aug 2023
 12:52:21 +0000
Message-ID: <72678e66-6853-59a8-70f3-a11ca483ee9f@intel.com>
Date: Mon, 21 Aug 2023 18:22:09 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
To: Rodrigo Vivi <rodrigo.vivi@intel.com>
References: <20230818024558.10780-1-sujaritha.sundaresan@intel.com>
 <CY5PR11MB6211DF1509200AA47C77246F951BA@CY5PR11MB6211.namprd11.prod.outlook.com>
 <7b9ea8e7-9f9c-c12e-1844-71b828f91eb1@intel.com> <ZN9rPQ0ij8mOXo3i@intel.com>
Content-Language: en-US
From: "Sundaresan, Sujaritha" <sujaritha.sundaresan@intel.com>
In-Reply-To: <ZN9rPQ0ij8mOXo3i@intel.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit
X-ClientProxiedBy: PN3PR01CA0171.INDPRD01.PROD.OUTLOOK.COM
 (2603:1096:c01:de::14) To DM8PR11MB5653.namprd11.prod.outlook.com
 (2603:10b6:8:25::8)
MIME-Version: 1.0
X-MS-PublicTrafficType: Email
X-MS-TrafficTypeDiagnostic: DM8PR11MB5653:EE_|MW4PR11MB6737:EE_
X-MS-Office365-Filtering-Correlation-Id: 15bdcf89-027a-4600-212f-08dba245753e
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 6xFh3/czykBHcXy1atxCrLcD/Sm6Poj5N2bjsrUd3Hx41Pr3VADSo2jDo2lFfwZQl88EcSZMr3Ztin2kkWBnBUA0+OJn92pQmOSxX/p6ECnq4mFeHfOoP/NCiGhau0CzEqUGyL0D9mmigjJq0C/gALxp73pNe9RetIw/qu7tI8rYqtG4o3Xpt5YThZ8trHKbhdmQIuT+ZJikqzS+Ae8KIFgxVWO4D1dB8h2izgj5z8YRpRZvs3Cd89GA3ah3zXz4b9dDZR+0ndqp6uusg4KJf6tPjPmpSFHnaowHCPrj28XVdVGbS+kxz4q43dRVJNs7FAHb6pAkuUud8Nr+VIDGXvhE3aXCs+HmFEr4FUMHqsn6K6OWA4kNwQBEuHa1+A+dheXc5kJNzg3a4nBexmwT1E/FMvCPg1tGIAi3Yx+SIjrHeDFtv5jxNiyotSFladWefp418tg5eShfEA5zOQBeCeV35ZLvlGbstT+00LlR73WGi+rJ0+UB+PX+qWGlbMQw1wbEELGLX4umW1E3wYQoHai5p2DAN/JilrsYUkGDjGgx4xMZunkDco7vrNfdiBYfOiWg7CP9yY6ezlf7gvUTfPYHEF86Ul2KfFG2K3mQjmgByy6mBLP9ruekzMkKAXyGfRdtSC7Tz+EPYL5BuSQW2Q==
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:DM8PR11MB5653.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(13230031)(346002)(366004)(39860400002)(376002)(136003)(396003)(451199024)(186009)(1800799009)(2906002)(53546011)(38100700002)(6506007)(6486002)(83380400001)(5660300002)(26005)(86362001)(31686004)(31696002)(8676002)(2616005)(8936002)(107886003)(6862004)(4326008)(316002)(66946007)(6512007)(54906003)(6636002)(66556008)(66476007)(37006003)(82960400001)(478600001)(6666004)(36756003)(41300700001)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?alNqa0ZqMmlnb3AwVEV0d3NRL05hZFBROWs4S1lxLzlnRjc3b0xwMVAyNE1N?=
 =?utf-8?B?Yy9MSzhNdkQ5K1ZZTDNpOHUrY2c4Y0FCSk16YXZGMUtreWl4bXV5ckZsUUx1?=
 =?utf-8?B?RjJxUkFnQ2N0eFhQT0E0Ym1wbW9FbjJCOHIxUlovWDEzQ0h5dmJkSEVRbzVX?=
 =?utf-8?B?ekpxbis5bEdJdFBwTHJRZ2UrVlU1dExJTSt5NFpCK1Y4a1pZMzFJdkRCM1M2?=
 =?utf-8?B?VFE4QnJNZnlmbUpXRVZkNHc2QXg3amdnQ3lqeWRkN1NYc0hSOGlDOUNOYi9S?=
 =?utf-8?B?Z0FJSWZsZ1pqSloySEVFTThaVGhpUGpTZWNzY2kvU0FzZExGazR5Lzl3WFR2?=
 =?utf-8?B?VTV6WnYzUjhiSnNTQ1NWWC9zT0hxcEgxOEgycHBMRHEvbDdTT2lPUGJ5Rmk0?=
 =?utf-8?B?TlVtWW5tT1l4N3lNV2ZqRng5UERuOFZxK0Q4RTI0UngrbkF3M1pDaVBaWTJr?=
 =?utf-8?B?QUgyalYyS3Z4NjlJMDRNclRaVTZkcXM5TU81VmlMamtMa0JQek1FbnJxRDZq?=
 =?utf-8?B?RGxKVTNJRnZqeFBwYk10NFNFNUJvL1NyNFhJSi9WWGFEbTJ2MWpLM3hvbTBL?=
 =?utf-8?B?NWI1RS9hbUZNOUVTZFAxRkhhV3RwcHk4ejA2MXFCeThYSFFNZHg2eGdHcjBj?=
 =?utf-8?B?U09NcEoxdjBraXdDUXFpM3hJRFBhRU5YU0JuMzJCbDNIT2hUVDh4cHFTcDJp?=
 =?utf-8?B?M3doTXFlZGhaS2ZNU3ZVRkk0UmNuYkNaaExGemhjMjJtb0phWVJZS2UvR2VT?=
 =?utf-8?B?bmkwZTRVT3RhZnA3eTQ4WGRzcFdWZnRtQUM3VmFjNGg5TXd4L1BqOHdtbnNU?=
 =?utf-8?B?YmhRSnUvU25qTllkSGYzZHNLVFYrUlE0eXVGN3FyQUxFZmVFMUllMW5XY1ls?=
 =?utf-8?B?eE03NFN4Ty96cmxad2phZjRTRUN1YmU2RC9KTERSb3B3MU9VMDZka2dybXRW?=
 =?utf-8?B?c0pwL3B0V1VBY0tkNDM5R2Y1NTJyMEJubXhJL211dDRLR1ZHS0xtL3JuVDV3?=
 =?utf-8?B?Tkw1OVd3OEdwOWNSemp6Ly81WkRwem1iaTc4MWlSWTlMcEg0SWNzWS9aK0ZB?=
 =?utf-8?B?MFY4V3BYeFIwS09lZnQzTG85NVNBNHVtWkcvWUFiUlhzOEljVXdHdEZsNy9V?=
 =?utf-8?B?eDJrZE4zMlFKVzFBcCtHUlRWN2pEZnE0SXcwSGNUOFROY21qeVVZWnpXZUpZ?=
 =?utf-8?B?S1NxM2NyTS9vakx3UDVrU2FsT2tiWjZwWDB5aHBrYzhvUVNsNnJpTWtMUktw?=
 =?utf-8?B?aEU1NUZLZGRRc2dRbE1PWGJKTVRFMFBNSGkva0FrV21JWlpVeDIyNzNpa0tR?=
 =?utf-8?B?dWxja25jN2hpLzg2U0N1aTlMYWk0ZlNyWlhYUUZrZGh1NlNiS1NmNTQ2N29r?=
 =?utf-8?B?Z3dVMHprdGQrbEtuT283YmMrMHo1bWlmeHZ5ZENDTEVyRVJhdWUvNmREdEtQ?=
 =?utf-8?B?QStJNXVTN0VWS1Q2aGtHQjBjdzhBVEptY2pLZ0phQWtYVHI4YmdSZlN5QXFw?=
 =?utf-8?B?VEl5bEZZWWU1LzF2U3Jmc2FyMEZ5NTJqRGxkTjQ5WXFsR3o5cFpDaytHdmJt?=
 =?utf-8?B?YmpWQUZBTHJmakgrL1lKZHplWnVmaWRKT0ZTemg0dytWT0h0VDdvTmRBMFli?=
 =?utf-8?B?UlNCeldzMnpJcUxCTnBqN2dMZ0xCOG5Lb2Rkc3JWRk5FZEUyV3VReXZBakVQ?=
 =?utf-8?B?VmJMWFg5Z2xMMnc0amRIemxGT0w1eSthVEFtdEtrOGFhV1RpVDZWc2d5S1Rv?=
 =?utf-8?B?a01qM3djTURzNUZwVzRmeW03TXBFYjU3Ym5MNXJ4QTdBWVhSMVI3UEJ3WDJQ?=
 =?utf-8?B?bGV2TU5XKzlad1FqdW0wblB4Q1lmM21qV0JXR002UUJVTXovUVRPRnJ4ZXJO?=
 =?utf-8?B?Nlh3amZ6QlpDeXVYeUo5bzd2UkpJQVdtV1VnUGYzYk54d2hBcUlLZ0FPYW5u?=
 =?utf-8?B?TzFSaEpMOTd3L0pqNXBqemx2dytzeU9IbUZGallwNUVOOG1RdkpOSENQKzBp?=
 =?utf-8?B?NFhzLytZd1pIV0pYSWZEMVQ2dG1aa0cxMm1qb1pvKzA3ck1LNTE5bDNmd29m?=
 =?utf-8?B?OWpwRFVhOERhR1FpUG1iM2JhclJQdXNBYWZwZDF0dzQ5WklMNkttaVRMUkFZ?=
 =?utf-8?B?S0txY25Pcml3NERqT200MzNrMUZwd0V0S1ZtdFgvM0V5OHVMS0kxamZJak94?=
 =?utf-8?Q?LASyXKpWHcEWYdcEAHLE4V8=3D?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 15bdcf89-027a-4600-212f-08dba245753e
X-MS-Exchange-CrossTenant-AuthSource: DM8PR11MB5653.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Aug 2023 12:52:21.0338 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: CrWdffCK/0+RBam/mcWV41zQogdw3KMi6lMFQcnJNQ0/MQJvhtROxKiJXey7ANQNJ4FYQAM24Eb2124J4FU+N2UZM+gTqbdQstKU7ltxWyU=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: MW4PR11MB6737
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Add intel_pcode_probe
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 8/18/2023 6:29 PM, Rodrigo Vivi wrote:
> On Fri, Aug 18, 2023 at 11:32:27AM +0530, Sundaresan, Sujaritha wrote:
>> On 8/18/2023 11:30 AM, Gupta, Anshuman wrote:
>>>> -----Original Message-----
>>>> From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
>>>> Sujaritha Sundaresan
>>>> Sent: Friday, August 18, 2023 8:16 AM
>>>> To: intel-gfx@lists.freedesktop.org
>>>> Subject: [Intel-gfx] [PATCH] drm/i915: Add intel_pcode_probe
>>>>
>>>> Added intel_pcode_probe, promoted wait for lmem init and intel_pcode_init
>>>> prior to mmio_probe during load, so that GT registers can be accessed only
>>>> after this, else MCA is observed.
>>>>
>>>> Signed-off-by: Sujaritha Sundaresan <sujaritha.sundaresan@intel.com>
>>> Both DG1 and DG2 crashed during i915_pci_probe.
>>> BAT is failing.
>>> Thanks,
>>> Anshuman Gupta.
>> Hi Anshuman,
>>
>> Yes I'm currently looking into it.
>>
>> Thanks,
>>
>> Suja
>>
>>>> ---
>>>>    drivers/gpu/drm/i915/i915_driver.c  | 37 ++++++++++++++++++++++++-----
>>>> drivers/gpu/drm/i915/intel_uncore.c | 12 ----------
>>>>    2 files changed, 31 insertions(+), 18 deletions(-)
>>>>
>>>> diff --git a/drivers/gpu/drm/i915/i915_driver.c
>>>> b/drivers/gpu/drm/i915/i915_driver.c
>>>> index f8dbee7a5af7..92cafceaf447 100644
>>>> --- a/drivers/gpu/drm/i915/i915_driver.c
>>>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>>>> @@ -93,6 +93,7 @@
>>>>    #include "i915_memcpy.h"
>>>>    #include "i915_perf.h"
>>>>    #include "i915_query.h"
>>>> +#include "i915_reg.h"
>>>>    #include "i915_suspend.h"
>>>>    #include "i915_switcheroo.h"
>>>>    #include "i915_sysfs.h"
>>>> @@ -436,6 +437,32 @@ static int i915_pcode_init(struct drm_i915_private
>>>> *i915)
>>>>    	return 0;
>>>>    }
>>>>
>>>> +static int intel_pcode_probe(struct drm_i915_private *i915) {
>>>> +	struct intel_uncore *uncore;
>>>> +	int ret;
>>>> +
>>>> +	/*
>>>> +	 * The boot firmware initializes local memory and assesses its health.
>>>> +	 * If memory training fails, the punit will have been instructed to
>>>> +	 * keep the GT powered down; we won't be able to communicate
>>>> with it
>>>> +	 * and we should not continue with driver initialization.
>>>> +	 */
>>>> +	if (IS_DGFX(i915) &&
>>>> +		!(__raw_uncore_read32(uncore, GU_CNTL) & LMEM_INIT))
>>>> {
>>>> +		drm_err(&i915->drm, "LMEM not initialized by firmware\n");
>>>> +		return -ENODEV;
>>>> +	}
>>>> +
>>>> +	/*
>>>> +	 * Driver handshakes with pcode via mailbox command to know that
>>>> SoC
>>>> +	 * initialization is complete before proceeding further
>>>> +	 */
>>>> +	ret = i915_pcode_init(i915);
>>>> +
>>>> +	return ret;
>>>> +}
>>>> +
>>>>    /**
>>>>     * i915_driver_hw_probe - setup state requiring device access
>>>>     * @dev_priv: device private
>>>> @@ -547,10 +574,6 @@ static int i915_driver_hw_probe(struct
>>>> drm_i915_private *dev_priv)
>>>>
>>>>    	intel_opregion_setup(dev_priv);
>>>>
>>>> -	ret = i915_pcode_init(dev_priv);
>>>> -	if (ret)
>>>> -		goto err_opregion;
>>>> -
>>>>    	/*
>>>>    	 * Fill the dram structure to get the system dram info. This will be
>>>>    	 * used for memory latency calculation.
>>>> @@ -561,8 +584,6 @@ static int i915_driver_hw_probe(struct
>>>> drm_i915_private *dev_priv)
>>>>
>>>>    	return 0;
>>>>
>>>> -err_opregion:
>>>> -	intel_opregion_cleanup(dev_priv);
>>>>    err_msi:
>>>>    	if (pdev->msi_enabled)
>>>>    		pci_disable_msi(pdev);
>>>> @@ -778,6 +799,10 @@ int i915_driver_probe(struct pci_dev *pdev, const
>>>> struct pci_device_id *ent)
>>>>    	if (ret < 0)
>>>>    		goto out_runtime_pm_put;
>>>>
>>>> +	ret = intel_pcode_probe(i915);
>>>> +	if (ret)
>>>> +		goto out_tiles_cleanup;
>>>> +
>>>>    	ret = i915_driver_mmio_probe(i915);
> chicken-egg problem here?!
>
> I don't believe this could ever work. You need the MMIO space to be able
> to communicate with PCODE mailbox and check the lmem init, no?!
>
> I believe the bug is that PCODE check should come before the LMEM_INIT
> check.
>
> LMEM won't be ready before pcode state that everything was ready for
> the lmem access. And on your code pcode ready check is still after
> the lmem.
>
> Cc: Aravind Iddamsetty <aravind.iddamsetty@intel.com>
>
> who was recently raising that we had an order problem there.

Yes looks like there is definitely an ordering issue.

Will look into this more.

>
>>>>    	if (ret < 0)
>>>>    		goto out_tiles_cleanup;
>>>> diff --git a/drivers/gpu/drm/i915/intel_uncore.c
>>>> b/drivers/gpu/drm/i915/intel_uncore.c
>>>> index dfefad5a5fec..4a353d4adf86 100644
>>>> --- a/drivers/gpu/drm/i915/intel_uncore.c
>>>> +++ b/drivers/gpu/drm/i915/intel_uncore.c
>>>> @@ -2658,18 +2658,6 @@ int intel_uncore_init_mmio(struct intel_uncore
>>>> *uncore)
>>>>    	if (ret)
>>>>    		return ret;
>>>>
>>>> -	/*
>>>> -	 * The boot firmware initializes local memory and assesses its health.
>>>> -	 * If memory training fails, the punit will have been instructed to
>>>> -	 * keep the GT powered down; we won't be able to communicate
>>>> with it
>>>> -	 * and we should not continue with driver initialization.
>>>> -	 */
>>>> -	if (IS_DGFX(i915) &&
>>>> -	    !(__raw_uncore_read32(uncore, GU_CNTL) & LMEM_INIT)) {
>>>> -		drm_err(&i915->drm, "LMEM not initialized by firmware\n");
>>>> -		return -ENODEV;
>>>> -	}
>>>> -
>>>>    	if (GRAPHICS_VER(i915) > 5 && !intel_vgpu_active(i915))
>>>>    		uncore->flags |= UNCORE_HAS_FORCEWAKE;
>>>>
>>>> --
>>>> 2.41.0
