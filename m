Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 23568742768
	for <lists+intel-gfx@lfdr.de>; Thu, 29 Jun 2023 15:31:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2836910E120;
	Thu, 29 Jun 2023 13:31:40 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7C13910E120
 for <intel-gfx@lists.freedesktop.org>; Thu, 29 Jun 2023 13:31:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1688045497; x=1719581497;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=Q/M7KqhJhDHFZcJ2g1yYM49FbWyz3LseTJoFwTOYPIo=;
 b=VdbJNu6glHu2KQJ01qFf+fyEithiawVAvEL1+UPr99fxfnCfVso4AA6k
 e9+EocuakWOmC0E76w56rDhk6ULZD2YkGA5rp4bHlH837XgsFVpg6K6nE
 YmvOvHRvfH5BkeyouXZMc9Py3LOtLhjqhTYHjGXVLXL46iAbEIl+GjKy0
 unmLaVvs7og9suJg8fcO958t8xtCcUHACm588wzbBEb4gKJX8RaMNntQN
 eDp7C0Vo8zbhDbR9x0xBRff9kPKDGh+fmJXJfCGeuK8rm2OhVGO8FHl4B
 Iqv113ftx5X2d58LHQxJuMj6Xsdt3lITtl31dd0fbsN0gSNrp+fwkQQDd w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="342444601"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="342444601"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 06:31:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10756"; a="717359592"
X-IronPort-AV: E=Sophos;i="6.01,168,1684825200"; d="scan'208";a="717359592"
Received: from unknown (HELO localhost) ([10.237.66.162])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2023 06:31:20 -0700
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <87bkgyse0z.fsf@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <cover.1687878757.git.jani.nikula@intel.com>
 <f31933222f44e4a9224e41399a96896eb243e653.1687878757.git.jani.nikula@intel.com>
 <4e6f881b-1a5c-2b09-5e20-17aaee5f2d58@linux.intel.com>
 <87bkgyse0z.fsf@intel.com>
Date: Thu, 29 Jun 2023 16:30:58 +0300
Message-ID: <875y76s8dp.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH v2 6/6] drm/i915: make device info a const
 pointer to rodata
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
Cc: Lucas De Marchi <lucas.demarchi@intel.com>,
 Matt Roper <matthew.d.roper@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, 29 Jun 2023, Jani Nikula <jani.nikula@intel.com> wrote:
> On Thu, 29 Jun 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>> On 27/06/2023 16:14, Jani Nikula wrote:
>>> Finally we can get rid of the pseudo-const write-once device info, and
>>> convert it into a const pointer to device info in rodata.
>>> 
>>> Cc: Matt Roper <matthew.d.roper@intel.com>
>>> Cc: Lucas De Marchi <lucas.demarchi@intel.com>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>   drivers/gpu/drm/i915/i915_drv.h          |  4 ++--
>>>   drivers/gpu/drm/i915/intel_device_info.c | 17 ++++-------------
>>>   2 files changed, 6 insertions(+), 15 deletions(-)
>>> 
>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>> index 8947d1201298..682ef2b5c7d5 100644
>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>> @@ -203,7 +203,7 @@ struct drm_i915_private {
>>>   	/* i915 device parameters */
>>>   	struct i915_params params;
>>>   
>>> -	const struct intel_device_info __info; /* Use INTEL_INFO() to access. */
>>> +	const struct intel_device_info *__info; /* Use INTEL_INFO() to access. */
>>>   	struct intel_runtime_info __runtime; /* Use RUNTIME_INFO() to access. */
>>>   	struct intel_driver_caps caps;
>>>   
>>> @@ -415,7 +415,7 @@ static inline struct intel_gt *to_gt(struct drm_i915_private *i915)
>>>   	     (engine__) && (engine__)->uabi_class == (class__); \
>>>   	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
>>>   
>>> -#define INTEL_INFO(i915)	(&(i915)->__info)
>>> +#define INTEL_INFO(i915)	((i915)->__info)
>>>   #define RUNTIME_INFO(i915)	(&(i915)->__runtime)
>>>   #define DISPLAY_INFO(i915)	((i915)->display.info.__device_info)
>>>   #define DISPLAY_RUNTIME_INFO(i915)	(&(i915)->display.info.__runtime_info)
>>> diff --git a/drivers/gpu/drm/i915/intel_device_info.c b/drivers/gpu/drm/i915/intel_device_info.c
>>> index 0740922cd71f..ea0ec6174ce5 100644
>>> --- a/drivers/gpu/drm/i915/intel_device_info.c
>>> +++ b/drivers/gpu/drm/i915/intel_device_info.c
>>> @@ -364,13 +364,6 @@ void intel_device_info_runtime_init_early(struct drm_i915_private *i915)
>>>   	intel_device_info_subplatform_init(i915);
>>>   }
>>>   
>>> -/* FIXME: Remove this, and make device info a const pointer to rodata. */
>>> -static struct intel_device_info *
>>> -mkwrite_device_info(struct drm_i915_private *i915)
>>> -{
>>> -	return (struct intel_device_info *)INTEL_INFO(i915);
>>> -}
>>> -
>>>   static const struct intel_display_device_info no_display = {};
>>>   
>>>   /**
>>> @@ -430,26 +423,24 @@ void intel_device_info_driver_create(struct drm_i915_private *i915,
>>>   				     u16 device_id,
>>>   				     const struct intel_device_info *match_info)
>>>   {
>>> -	struct intel_device_info *info;
>>>   	struct intel_runtime_info *runtime;
>>>   	u16 ver, rel, step;
>>>   
>>> -	/* Setup the write-once "constant" device info */
>>> -	info = mkwrite_device_info(i915);
>>> -	memcpy(info, match_info, sizeof(*info));
>>> +	/* Setup INTEL_INFO() */
>>> +	i915->__info = match_info;
>>>   
>>>   	/* Initialize initial runtime info from static const data and pdev. */
>>>   	runtime = RUNTIME_INFO(i915);
>>>   	memcpy(runtime, &INTEL_INFO(i915)->__runtime, sizeof(*runtime));
>>>   
>>>   	/* Probe display support */
>>> -	i915->display.info.__device_info = intel_display_device_probe(i915, info->has_gmd_id,
>>> +	i915->display.info.__device_info = intel_display_device_probe(i915, HAS_GMD_ID(i915),
>>
>> Why does intel_display_device_probe need an explicit has_gmdid when it
>> could use HAS_GMD_ID itself?
>
> I think all of the display related initialization from this function
> should be moved within intel_display_device_probe() in follow-up.
>
>> But anyway, LGTM. If it saves you some time before the other time zone 
>> comes online:
>>
>> Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

And pushed the series to drm-intel-next, thanks for the reviews
everyone!

BR,
Jani.

>
> Thanks,
> Jani.
>
>>
>> Regards,
>>
>> Tvrtko
>>
>>>   								      &ver, &rel, &step);
>>>   	memcpy(DISPLAY_RUNTIME_INFO(i915),
>>>   	       &DISPLAY_INFO(i915)->__runtime_defaults,
>>>   	       sizeof(*DISPLAY_RUNTIME_INFO(i915)));
>>>   
>>> -	if (info->has_gmd_id) {
>>> +	if (HAS_GMD_ID(i915)) {
>>>   		DISPLAY_RUNTIME_INFO(i915)->ip.ver = ver;
>>>   		DISPLAY_RUNTIME_INFO(i915)->ip.rel = rel;
>>>   		DISPLAY_RUNTIME_INFO(i915)->ip.step = step;

-- 
Jani Nikula, Intel Open Source Graphics Center
