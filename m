Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C3013FF35E
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Sep 2021 20:42:32 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6DC4D6E060;
	Thu,  2 Sep 2021 18:42:30 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 44DD76E060
 for <intel-gfx@lists.freedesktop.org>; Thu,  2 Sep 2021 18:42:29 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10095"; a="280226502"
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="280226502"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Sep 2021 11:42:28 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.85,262,1624345200"; d="scan'208";a="476874865"
Received: from orsmsx603.amr.corp.intel.com ([10.22.229.16])
 by orsmga008.jf.intel.com with ESMTP; 02 Sep 2021 11:42:28 -0700
Received: from orsmsx603.amr.corp.intel.com (10.22.229.16) by
 ORSMSX603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12; Thu, 2 Sep 2021 11:42:28 -0700
Received: from ORSEDG602.ED.cps.intel.com (10.7.248.7) by
 orsmsx603.amr.corp.intel.com (10.22.229.16) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2242.12 via Frontend Transport; Thu, 2 Sep 2021 11:42:28 -0700
Received: from NAM11-CO1-obe.outbound.protection.outlook.com (104.47.56.176)
 by edgegateway.intel.com (134.134.137.103) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.1.2242.10; Thu, 2 Sep 2021 11:42:27 -0700
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=J1uQbyLelOJCvfALrzI9uKO1cPx2rQbnCkYgkcxZ9N8r9ZhsMt2zXEQ1EseeFRCJlpqgV+7nRClbNLMhF5fp1fJQ9j2TpdT1901kfJA87VHU/KGMPUUUzV1e1Nl6bGqpvp2zDrYF7+l8abopfaJ2yse4E5nLn62W5sUmxKexmsXID5kgDuObXII/+HYir5wmqNJGyNxBtiLbWkjjbl4mz5atBWcOY4gqhyKy/aKjrySmtRxNm206+D0uxf/vfaso4mvYczuuTpfR7Td+x1i3wopjd4T4cIJlR4FrAYQzayGCX++EHzeYpnyAqxzXuQEOzLLcJOA37Pmp7clAZdCNfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com; 
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SBryia7/ciYmutmV+nnVYu9+fcksgdRhehVjqqR7vXs=;
 b=mpaNa13hfIgB2bS7Y54ba/C0NP+SGyVJCUB8FGp3JYRGX5//CyN8po4dOeV6UpDkq+V59wXYJu1JulJKj4bv0Qd8W00EMmoYPLANMhh6ATErj4Oe+IxuOBQHuG3YFZWmzcIVbUzJGYBakIsvEj4+92jkNIxm3jqWsTF793kSSJEQnSI2YEBTZZr/FhIMPp2uEvXm8uD7Xgutk1Uzjo5kL9AzLR3GqiK+8SH1L0qY5hlezYs7mVLMWMY2vzW6fQS4tbyJWSuFQ8FbuRwKhPHuE5mhpet4JOLH1HWilGAJhSpl8QRmJYPG/jBJ1oTI2HoVHMwmenoIRSD/l9E5RrkSmA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=intel.com; dmarc=pass action=none header.from=intel.com;
 dkim=pass header.d=intel.com; arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=intel.onmicrosoft.com; 
 s=selector2-intel-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=SBryia7/ciYmutmV+nnVYu9+fcksgdRhehVjqqR7vXs=;
 b=pPjlh+ih3u+SilO4scH+CTdrN/DksPYyFzuZZH1dmFRXHiu/O1t0NoiZj9JSI6LyK0SO76ymSv0yl8aiXfyWG4kTigoMT5Lw0cOL52KgZa9E0ZjvRpN5Z/VH2P+6K2ruMAbpTliWkHGUkQ2aavUKOaRRimd/viK+BPCIuOtI/Kk=
Authentication-Results: intel.com; dkim=none (message not signed)
 header.d=none;intel.com; dmarc=none action=none header.from=intel.com;
Received: from CH0PR11MB5409.namprd11.prod.outlook.com (2603:10b6:610:d0::7)
 by CH2PR11MB4200.namprd11.prod.outlook.com (2603:10b6:610:3d::33) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.4457.23; Thu, 2 Sep
 2021 18:42:19 +0000
Received: from CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::a4f1:2e1e:ff82:5f4c]) by CH0PR11MB5409.namprd11.prod.outlook.com
 ([fe80::a4f1:2e1e:ff82:5f4c%7]) with mapi id 15.20.4478.022; Thu, 2 Sep 2021
 18:42:19 +0000
To: =?UTF-8?Q?Jos=c3=a9_Roberto_de_Souza?= <jose.souza@intel.com>,
 <intel-gfx@lists.freedesktop.org>
CC: Daniel Vetter <daniel@ffwll.ch>, =?UTF-8?B?VmlsbGUgU3lyasOkbMOk?=
 <ville.syrjala@linux.intel.com>, Jani Nikula <jani.nikula@intel.com>,
 "Rodrigo Vivi" <rodrigo.vivi@intel.com>
References: <20210825005840.170796-1-jose.souza@intel.com>
 <20210825005840.170796-8-jose.souza@intel.com>
From: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
Message-ID: <eac0bca4-4b41-5a54-4b36-b439e4efd9fb@intel.com>
Date: Thu, 2 Sep 2021 21:42:08 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.10.0
In-Reply-To: <20210825005840.170796-8-jose.souza@intel.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
X-ClientProxiedBy: DB6PR0201CA0020.eurprd02.prod.outlook.com
 (2603:10a6:4:3f::30) To CH0PR11MB5409.namprd11.prod.outlook.com
 (2603:10b6:610:d0::7)
MIME-Version: 1.0
Received: from [10.237.72.198] (134.134.139.80) by
 DB6PR0201CA0020.eurprd02.prod.outlook.com (2603:10a6:4:3f::30) with Microsoft
 SMTP Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.4478.19 via Frontend Transport; Thu, 2 Sep 2021 18:42:15 +0000
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5764455c-e8a6-419e-9063-08d96e4164a0
X-MS-TrafficTypeDiagnostic: CH2PR11MB4200:
X-LD-Processed: 46c98d88-e344-4ed4-8496-4ed7712e255d,ExtAddr
X-MS-Exchange-Transport-Forked: True
X-Microsoft-Antispam-PRVS: <CH2PR11MB42002C43A5F1D5D7FF6E84D7B8CE9@CH2PR11MB4200.namprd11.prod.outlook.com>
X-MS-Oob-TLC-OOBClassifiers: OLM:7691;
X-MS-Exchange-SenderADCheck: 1
X-MS-Exchange-AntiSpam-Relay: 0
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: /uaNe9YwCE3EFtkr4nGMlgek2ddr5GP7B08oieYT8Vw3Pdi2ZUqY6luCz2sv+7dMKreNx9dNaqW4XZW1ZBZ6SQcYrduQvASiCfIYotjT4KbZ2BK3n64XO6ZpHT7UQ6N1n8CfUcR+DHUZeOzkMfSd+7DBnd7//3QsRvvsbX6QZYEmnLCA1Ipl1w638dKsp6QChDjhD3XdhAV2atvqEXfx0yr8Tq873gpAJA5QG44KjKVCsPXwwdHj2NyuwI09AAzKIJkF0r/SLiWpLCv1uzKSUsZAHAynEIABnXxEMaWQCK9km64L7e3WNm9mfWA3sGrdE+HAEPUz9je3vUon3ZWoeeJk1YowpaPBuKnkvPCAVGHsrbhlLIHGHPlnQWGmFAx+P/1YjfSPnF+eeEDpS1J2EoqY/O7soV/KQ8utTwgArp21JZsB6ItHZxRo9jiubWBX4rwfDQXdOOFXSqXnbSwHYTHq7hmkGNNPLIroUvO/j0paHgU+ubcL2DegspAThCAofJKAIh8VqysNw5eAYLxOgV6rvMg4ykLGP7VygrFG/3zc+Wtt7BDcSO+hmN1dTJayyym4zO7B4C0tpq1AKq/pJLx9lLo9dVkvOlXmzZk8PxyGwcSsFcO2B3Il9iecLEOc1zfbNLXeoAVPbf8dHVq4XH3Cww9tVBQjRxJSJ1uuZnuggwxqugzpzwViAomzWOsIDQkb8F5EBcRu7Wgt4DmrDqWD/f6ypIiBSJ5Jjfz1gKs=
X-Forefront-Antispam-Report: CIP:255.255.255.255; CTRY:; LANG:en; SCL:1; SRV:;
 IPV:NLI; SFV:NSPM; H:CH0PR11MB5409.namprd11.prod.outlook.com; PTR:; CAT:NONE;
 SFS:(4636009)(366004)(8676002)(508600001)(31686004)(8936002)(4326008)(83380400001)(66556008)(2906002)(38100700002)(6486002)(66946007)(5660300002)(66574015)(2616005)(86362001)(316002)(36756003)(53546011)(54906003)(31696002)(956004)(6666004)(26005)(16576012)(186003)(66476007)(45980500001)(43740500002);
 DIR:OUT; SFP:1102; 
X-MS-Exchange-AntiSpam-MessageData-ChunkCount: 1
X-MS-Exchange-AntiSpam-MessageData-0: =?utf-8?B?WERJZUh0S3h5T2tjRFprQWRJOGF2NHIzRkZWdVJvcFphRUNSL25QZkZPb3RH?=
 =?utf-8?B?VnFiVi9tdmlQZFo5Y0RPVnBaaFJBOTlkZkhOZU1EUDBheUNSZWY2WCtySHpF?=
 =?utf-8?B?aXRxN1BOVS9rNlo5VjBrVW1Yb0IxTWdMeFFXVFNwQnBFTmFqQkx0a29NWHZT?=
 =?utf-8?B?cng4RHFoSzk3U0xzZUhRakx2NFVDMkh3aEJsd1o2U0UzcTJtVTN2MldwUmtV?=
 =?utf-8?B?TnkvZnBYaDVEVGdoaHRieC91OU1Rc1JkbktjTHNZYjVRQ1VsQmtVWXF0RVkv?=
 =?utf-8?B?Q1Q2dXpwelVhTitDRFZhbVpVNHE4WEZjLzJmM0FWSFpHRXIvVUlmSU16Wmh1?=
 =?utf-8?B?a1ZFUlY1ZlN2anBVSjlxMjhqRnN2L0xWUG9teENFUWJGSjNwSk5XYk03R01M?=
 =?utf-8?B?RVVYck5CQnUvQ1lRMWJFRnZxZ3FPRTdpcmxEUW5DbS94R1V0TGRZeWNqTHVV?=
 =?utf-8?B?d1lHNlhzaW1FUHhlbmhpbk1UbUZJUE4zOXUvVExPb1g3eUFOZDVrbjAyMXor?=
 =?utf-8?B?NFk5UE5XaXBsVzN1WUV2NEpid2xPL2FrNm9pN2JTUFZjN2xaSmtJZUdXUU1K?=
 =?utf-8?B?MUVDdlNkbXdLVzI4dDVKWkFQUG41ellRU1QyKzI0VnVUejNGdGJrZy9iUWEv?=
 =?utf-8?B?RkJHUjhWOFE3dkFNWittUTdldlNSMlZHOHluSVpiMGdYSjh4OEhodnA2VFk2?=
 =?utf-8?B?VjVWRjY0SHQxdzJxUXgzUmo4WUtyZWIzRitNNkNLREIxQjRUU0JVRmJMUGRR?=
 =?utf-8?B?VWx1TVo0V1ppdmZXMVNINkViUXFUbnViOWxTYXJHZEZKNCsxQ2NhdHZ2RnZ2?=
 =?utf-8?B?T29DRWh3d0Q0TmNkNSt3T0t4M2ZVb1ZCT2RCUjcxQ3BtdjVwN1h3azVYdHBj?=
 =?utf-8?B?cnNONDJEWUgvb2c5ZmRCV2svalZtUUd5KzBaaU83cGx3YzV3QzFkR1pQWWtW?=
 =?utf-8?B?aGQxZGFvSFc1VUlJblprcEtWaFVRVjNncE80bFlDbFV3dDE2c2VES01kcG1x?=
 =?utf-8?B?RFVPWG93OU9leS9hT0VMdmxySnJVT0FtS21aam1PY3N1a2dZTWs5dGplTWhw?=
 =?utf-8?B?YXhxRmY1OGtXUlRNYkEzYVp4bGt4c2tRZyszOFVwUmNkUW5QdDhIYUtveFJO?=
 =?utf-8?B?R1lqUmtRZGhWZkx0UDJ2Z3dFUCtCdlF0WlVoMzZ0eXpEeDlKKzBtQjhGQVJh?=
 =?utf-8?B?M1NvVzdnTzZWdDFBNHcrQ0hRUDBBaThGTEN4R1NEMTBYY09rOUNBVWtEUEc4?=
 =?utf-8?B?NnlvVVYxWEgvdlZLU0xkR3o0ZzRsOGUzSjdBWlM3cjdHRGM3Y3I4dHI2R0s0?=
 =?utf-8?B?R2N2VEFlUEZaUGxTdStndXp0dXp1V3hkVlNXUUVobmJ4VEQwZHNrT1cvT0JU?=
 =?utf-8?B?OWovNU9WRkxUeWpPR1FMMXRoKzRYTFE3ZCtNUFB6cisxOEpSdWNsSDcwVGNE?=
 =?utf-8?B?eU1ERVVoQkZtRjJGejBENGRaenloMVV2MTNnd09MM0lYYzlYclMzcC9PenVR?=
 =?utf-8?B?VEZWRmNUNGRGUnp2SzE0UytkYWsyVzd1Q25TVS9KZFlnQmcyRStHK0hleHps?=
 =?utf-8?B?Rnp4ZkNFMTNXWkpBY3VWVlFtTkFDendsb2JjWUZBZzczaUFreHFNczBFUEFV?=
 =?utf-8?B?d0NqMEVYdS9meHBrcjd4NU91eHo2WmMxRkxCWHFNSU5DOVk3WGlmZHlBOU1N?=
 =?utf-8?B?ZXVZTXROWjQxUVVic1VCZ09kbGE5ZElyczJ6cjVEbFdVc1d0VTNYRnB5S2pZ?=
 =?utf-8?Q?t1o6EC+ECgmdlv5tFUlrPKKze2Nvx9YeBmFh/a1?=
X-MS-Exchange-CrossTenant-Network-Message-Id: 5764455c-e8a6-419e-9063-08d96e4164a0
X-MS-Exchange-CrossTenant-AuthSource: CH0PR11MB5409.namprd11.prod.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Internal
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 02 Sep 2021 18:42:19.3453 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-CrossTenant-Id: 46c98d88-e344-4ed4-8496-4ed7712e255d
X-MS-Exchange-CrossTenant-MailboxType: HOSTED
X-MS-Exchange-CrossTenant-UserPrincipalName: 9V0O7GAOsKo0fNBoRb9+nzciQrTMpCYCJAJ4I2bq2pSobBtWzobB1axauKV6D9Ec1kzYiOgEUjuwDXCeglCPOrFOtbwH4z8mzQzbPJGV1fM=
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CH2PR11MB4200
X-OriginatorOrg: intel.com
Subject: Re: [Intel-gfx] [PATCH v2 7/8] drm/i915/display/skl+: Drop
 frontbuffer rendering support
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



On 8/25/21 3:58 AM, José Roberto de Souza wrote:
> By now all the userspace applications should have migrated to atomic
> or at least be calling DRM_IOCTL_MODE_DIRTYFB.
> 
> With that we can kill frontbuffer rendering support in i915 for
> modern platforms.
> 
> So here converting legacy APIs into atomic commits so it can be
> properly handled by driver i915.
> 
> Several IGT tests will fail with this changes, because some tests
> were stressing those frontbuffer rendering scenarios that no userspace
> should be using by now, fixes to IGT should be sent soon.
> 
> v2:
> - return earlier to not set fb_tracking.busy/flip_bits
> - added a warn on to make sure we are not setting the busy/flip_bits
> 
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Gwan-gyeong Mun <gwan-gyeong.mun@intel.com>
> Cc: Ville Syrjälä <ville.syrjala@linux.intel.com>
> Cc: Jani Nikula <jani.nikula@intel.com>
> Cc: Rodrigo Vivi <rodrigo.vivi@intel.com>
> Signed-off-by: José Roberto de Souza <jose.souza@intel.com>
> ---
>   drivers/gpu/drm/i915/display/intel_cursor.c    |  6 ++----
>   drivers/gpu/drm/i915/display/intel_fb.c        |  8 +++++++-
>   .../gpu/drm/i915/display/intel_frontbuffer.c   | 18 ++++++++++++++++++
>   drivers/gpu/drm/i915/i915_drv.h                |  2 ++
>   4 files changed, 29 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c b/drivers/gpu/drm/i915/display/intel_cursor.c
> index c7618fef01439..5aa996c3b7980 100644
> --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> @@ -617,6 +617,7 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   			   u32 src_w, u32 src_h,
>   			   struct drm_modeset_acquire_ctx *ctx)
>   {
> +	struct drm_i915_private *i915 = to_i915(_crtc->dev);
>   	struct intel_plane *plane = to_intel_plane(_plane);
>   	struct intel_crtc *crtc = to_intel_crtc(_crtc);
>   	struct intel_plane_state *old_plane_state =
> @@ -633,12 +634,9 @@ intel_legacy_cursor_update(struct drm_plane *_plane,
>   	 * PSR2 selective fetch also requires the slow path as
>   	 * PSR2 plane and transcoder registers can only be updated during
>   	 * vblank.
> -	 *
> -	 * FIXME bigjoiner fastpath would be good
>   	 */
>   	if (!crtc_state->hw.active || intel_crtc_needs_modeset(crtc_state) ||
> -	    crtc_state->update_pipe || crtc_state->bigjoiner ||
> -	    crtc_state->enable_psr2_sel_fetch)
> +	    crtc_state->update_pipe || !HAS_FRONTBUFFER_RENDERING(i915))
>   		goto slow;
>   
>   	/*
> diff --git a/drivers/gpu/drm/i915/display/intel_fb.c b/drivers/gpu/drm/i915/display/intel_fb.c
> index e4b8602ec0cd2..3eb60785c9f29 100644
> --- a/drivers/gpu/drm/i915/display/intel_fb.c
> +++ b/drivers/gpu/drm/i915/display/intel_fb.c
> @@ -3,6 +3,7 @@
>    * Copyright © 2021 Intel Corporation
>    */
>   
> +#include <drm/drm_damage_helper.h>
>   #include <drm/drm_framebuffer.h>
>   #include <drm/drm_modeset_helper.h>
>   
> @@ -1235,10 +1236,15 @@ static int intel_user_framebuffer_dirty(struct drm_framebuffer *fb,
>   					unsigned int num_clips)
>   {
>   	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
> +	struct drm_i915_private *i915 = to_i915(obj->base.dev);
>   
>   	i915_gem_object_flush_if_display(obj);
> -	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
>   
> +	if (!HAS_FRONTBUFFER_RENDERING(i915))
> +		return drm_atomic_helper_dirtyfb(fb, file, flags, color, clips,
> +						 num_clips);
Hi,
Even if the userspace informs us of the dirty (damage) region of the 
front buffer being used, GEN9 to GEN12 still uses the HW Tracking 
function for PSR and FBC.
And if you look at the description of the intel_psr_flush() function, 
you can see that there are the following restrictions.

"Since the hardware frontbuffer tracking has gaps we need to integrate 
with the software frontbuffer tracking."

If this restriction is still valid from GEN9 to GEN12, even if the 
existing frontbuffer tracking function is not used, when 
intel_user_framebuffer_dirty() is called, in the case of PSR, 
psr_force_hw_tracking_exit() is called or intel_psr_exit() and 
schedule_work(psr.work) seems to be required.

In the case of FBC, it seems that calls to FBC deactive / FBC activate 
should be added.

If GEN9 to GEN12 do not have the above restrictions, please ignore this 
comment.

G.G.
> +
> +	intel_frontbuffer_flush(to_intel_frontbuffer(fb), ORIGIN_DIRTYFB);
>   	return 0;
>   }
>   
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> index 0492446cd04ad..3860f87dac31c 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -112,6 +112,9 @@ static void frontbuffer_flush(struct drm_i915_private *i915,
>   void intel_frontbuffer_flip_prepare(struct drm_i915_private *i915,
>   				    unsigned frontbuffer_bits)
>   {
> +	if (!HAS_FRONTBUFFER_RENDERING(i915))
> +		return;
> +
>   	spin_lock(&i915->fb_tracking.lock);
>   	i915->fb_tracking.flip_bits |= frontbuffer_bits;
>   	/* Remove stale busy bits due to the old buffer. */
> @@ -132,6 +135,12 @@ void intel_frontbuffer_flip_prepare(struct drm_i915_private *i915,
>   void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
>   				     unsigned frontbuffer_bits)
>   {
> +	if (!HAS_FRONTBUFFER_RENDERING(i915)) {
> +		drm_WARN_ON_ONCE(&i915->drm, i915->fb_tracking.flip_bits |
> +					     i915->fb_tracking.busy_bits);
> +		return;
> +	}
> +
>   	spin_lock(&i915->fb_tracking.lock);
>   	/* Mask any cancelled flips. */
>   	frontbuffer_bits &= i915->fb_tracking.flip_bits;
> @@ -156,6 +165,9 @@ void intel_frontbuffer_flip_complete(struct drm_i915_private *i915,
>   void intel_frontbuffer_flip(struct drm_i915_private *i915,
>   			    unsigned frontbuffer_bits)
>   {
> +	if (!HAS_FRONTBUFFER_RENDERING(i915))
> +		return;
> +
>   	spin_lock(&i915->fb_tracking.lock);
>   	/* Remove stale busy bits due to the old buffer. */
>   	i915->fb_tracking.busy_bits &= ~frontbuffer_bits;
> @@ -170,6 +182,9 @@ void __intel_fb_invalidate(struct intel_frontbuffer *front,
>   {
>   	struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
>   
> +	if (!HAS_FRONTBUFFER_RENDERING(i915))
> +		return;
> +
>   	if (origin == ORIGIN_CS) {
>   		spin_lock(&i915->fb_tracking.lock);
>   		i915->fb_tracking.busy_bits |= frontbuffer_bits;
> @@ -191,6 +206,9 @@ void __intel_fb_flush(struct intel_frontbuffer *front,
>   {
>   	struct drm_i915_private *i915 = to_i915(front->obj->base.dev);
>   
> +	if (!HAS_FRONTBUFFER_RENDERING(i915))
> +		return;
> +
>   	if (origin == ORIGIN_CS) {
>   		spin_lock(&i915->fb_tracking.lock);
>   		/* Filter out new bits since rendering started. */
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 91453f7dbd656..20c135a2bba33 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1721,6 +1721,8 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   
>   #define HAS_ASYNC_FLIPS(i915)		(DISPLAY_VER(i915) >= 5)
>   
> +#define HAS_FRONTBUFFER_RENDERING(i915)	(DISPLAY_VER(i915) < 9)
> +
>   /* Only valid when HAS_DISPLAY() is true */
>   #define INTEL_DISPLAY_ENABLED(dev_priv) \
>   	(drm_WARN_ON(&(dev_priv)->drm, !HAS_DISPLAY(dev_priv)), !(dev_priv)->params.disable_display)
> 
