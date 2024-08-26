Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A914095EC47
	for <lists+intel-gfx@lfdr.de>; Mon, 26 Aug 2024 10:44:18 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AE7EF10E153;
	Mon, 26 Aug 2024 08:44:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="U5dQ8bEE";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 765C810E153
 for <intel-gfx@lists.freedesktop.org>; Mon, 26 Aug 2024 08:44:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1724661856; x=1756197856;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=mNzM9D/91B6gt85ZbumtKJOmE3S7Hw9YzIyFBbu3Msc=;
 b=U5dQ8bEEx1Dub/1oPC/ZZ2aAZQCqDli9CUZCKF7CM30ReY5DFUslifNU
 h8SCda/0bOzCiXit0QkaGhIO4lqFaGooheCdYWTmZaqycetQTG+OTzITs
 Zwl8PzItnC5DCZ5ac5P+J/J3Dxy4fs7S3NyAQNuLOmtVlq3eF+qs7WuZQ
 tIeqJZehidKZXeJYefWCd3VZlZFx2hMRlWdkxWz2mp6BZ2igDD2u6E2fj
 SqsPeR6Pw4BMpfhNvwAQl/VV+zfR9zQY3Z8DEneQZ0TSeHUzrAsGe8tOd
 v9gAQi+iOOsaMc3zF7eE53VJNYHoGZmw8bu/sPe9lM15tXnayZqaNguuZ w==;
X-CSE-ConnectionGUID: deIo6qIoQ/2KG2KlGGQE0Q==
X-CSE-MsgGUID: 5aXn+VjlRUCaHrT5FTF4ZA==
X-IronPort-AV: E=McAfee;i="6700,10204,11175"; a="48461307"
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="48461307"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 01:44:15 -0700
X-CSE-ConnectionGUID: G0BFY9cnSrWo4Que5zMwIg==
X-CSE-MsgGUID: n5lQSTWvSM2Hq7fLd1EExw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,177,1719903600"; d="scan'208";a="85626204"
Received: from sschumil-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.113])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Aug 2024 01:44:13 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Matt Roper <matthew.d.roper@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915: remove unused leftover basedie step code
In-Reply-To: <20240822150716.GL5774@mdroper-desk1.amr.corp.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240822143946.2526425-1-jani.nikula@intel.com>
 <20240822150716.GL5774@mdroper-desk1.amr.corp.intel.com>
Date: Mon, 26 Aug 2024 11:44:00 +0300
Message-ID: <87ed6b3c8f.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Thu, 22 Aug 2024, Matt Roper <matthew.d.roper@intel.com> wrote:
> On Thu, Aug 22, 2024 at 05:39:46PM +0300, Jani Nikula wrote:
>> The basedie step initialization as well as its last users were removed
>> in commit 326e30e4624c ("drm/i915: Drop dead code for pvc"). Follow
>> through with removing the unused macros and struct member and debug
>> logging.
>> 
>> Suggested-by: Matt Roper <matthew.d.roper@intel.com>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>  drivers/gpu/drm/i915/i915_drv.h          | 5 -----
>>  drivers/gpu/drm/i915/intel_device_info.c | 1 -
>>  drivers/gpu/drm/i915/intel_step.h        | 1 -
>>  3 files changed, 7 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>> index 3b1b16e71cf9..eb4c33e83c7c 100644
>> --- a/drivers/gpu/drm/i915/i915_drv.h
>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>> @@ -410,7 +410,6 @@ static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
>>  
>>  #define INTEL_GRAPHICS_STEP(__i915) (RUNTIME_INFO(__i915)->step.graphics_step)
>>  #define INTEL_MEDIA_STEP(__i915) (RUNTIME_INFO(__i915)->step.media_step)
>> -#define INTEL_BASEDIE_STEP(__i915) (RUNTIME_INFO(__i915)->step.basedie_step)
>>  
>>  #define IS_GRAPHICS_STEP(__i915, since, until) \
>>  	(drm_WARN_ON(&(__i915)->drm, INTEL_GRAPHICS_STEP(__i915) == STEP_NONE), \
>> @@ -420,10 +419,6 @@ static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
>>  	(drm_WARN_ON(&(__i915)->drm, INTEL_MEDIA_STEP(__i915) == STEP_NONE), \
>>  	 INTEL_MEDIA_STEP(__i915) >= (since) && INTEL_MEDIA_STEP(__i915) < (until))
>>  
>> -#define IS_BASEDIE_STEP(__i915, since, until) \
>> -	(drm_WARN_ON(&(__i915)->drm, INTEL_BASEDIE_STEP(__i915) == STEP_NONE), \
>> -	 INTEL_BASEDIE_STEP(__i915) >= (since) && INTEL_BASEDIE_STEP(__i915) < (until))
>> -
>>  static __always_inline unsigned int
>>  __platform_mask_index(const struct intel_runtime_info *info,
>>  		      enum intel_platform p)
>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>> index d92b3050ac78..b485e959f064 100644
>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>> @@ -108,7 +108,6 @@ void intel_device_info_print(const struct intel_device_info *info,
>>  
>>  	drm_printf(p, "graphics stepping: %s\n", intel_step_name(runtime->step.graphics_step));
>>  	drm_printf(p, "media stepping: %s\n", intel_step_name(runtime->step.media_step));
>> -	drm_printf(p, "base die stepping: %s\n", intel_step_name(runtime->step.basedie_step));
>>  
>>  	drm_printf(p, "gt: %d\n", info->gt);
>>  	drm_printf(p, "memory-regions: 0x%x\n", info->memory_regions);
>> diff --git a/drivers/gpu/drm/i915/intel_step.h b/drivers/gpu/drm/i915/intel_step.h
>> index 83bd1190edf5..22f1d6905160 100644
>> --- a/drivers/gpu/drm/i915/intel_step.h
>> +++ b/drivers/gpu/drm/i915/intel_step.h
>> @@ -17,7 +17,6 @@ struct intel_step_info {
>>  	 */
>>  	u8 graphics_step;	/* Represents the compute tile on Xe_HPC */
>
> Looks like we should drop the comment on this line too (Xe_HPC is the
> name of PVC's IP)...

Cleanups for another time...

>
>
> Reviewed-by: Matt Roper <matthew.d.roper@intel.com>

Thanks for the review, pushed this one.

BR,
Jani.

>
>>  	u8 media_step;
>> -	u8 basedie_step;
>>  };
>>  
>>  #define STEP_ENUM_VAL(name)  STEP_##name,
>> -- 
>> 2.39.2
>> 

-- 
Jani Nikula, Intel
