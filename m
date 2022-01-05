Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 1382948512A
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 11:32:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2DC3C10E67A;
	Wed,  5 Jan 2022 10:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E9FAD10E675
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 10:32:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641378767; x=1672914767;
 h=from:to:subject:in-reply-to:references:date:message-id:
 mime-version; bh=1WT0XIenwbBUansZxfW7iuWAi5UG3tHYx1znmPZyvdM=;
 b=F2kBW5v7hWcSmitQ1YphZOKb7EkIxw+Z8w55igIyr9rksLUM7QdYilaE
 8TUKmLGXrftqddGwL8jo7yEpp+5U4tJVUGSwKf3xurdmKOswhlRz3zrPd
 hm/8Cg4Tyjidox0daVWgNZOJwGfEfZ3JR8johjFOYQLdNKGaqNu37EoaN
 xhpnryeeg2v8t/mm/CtVWEEDj6rdLCfZjZU3/+suW8jSAUxVCxaH5TWnU
 +dqCVz9vCTbZxDF7W1I/fQ0BBDEh9xe/YTeNr+5a3dMWwVOkWY2DxYmy1
 h2ttDQCASHgaiYvNoWrRkE6ZXYL1iGIOBl6i613YJNTQSg/F1PXmXfvOf w==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="223095836"
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="223095836"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 02:32:36 -0800
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="470513298"
Received: from menright-mobl1.amr.corp.intel.com (HELO localhost)
 ([10.252.25.244])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 02:32:34 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 intel-gfx@lists.freedesktop.org
In-Reply-To: <170a7507-ff7e-204f-eba3-89571ab87842@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20220105100520.976092-1-jani.nikula@intel.com>
 <20220105100520.976092-2-jani.nikula@intel.com>
 <170a7507-ff7e-204f-eba3-89571ab87842@linux.intel.com>
Date: Wed, 05 Jan 2022 12:32:31 +0200
Message-ID: <875yqytqv4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/uncore: rename
 i915_reg_read_ioctl intel_uncore_reg_read_ioctl
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

On Wed, 05 Jan 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 05/01/2022 10:05, Jani Nikula wrote:
>> Follow the usual naming convention.
>
> But intel_uncore_ prefix usually means functions takes intel_uncore as 
> the first argument.
>
> Maybe solution here is that i915_reg_read_ioctl does not belong in 
> intel_uncore.c, it being the UAPI layer thing? I guess arguments could 
> be made for either way.

My position is that the function and file prefixes go hand in
hand. You'll always know where to place a function, and you'll always
know where the function is to be found.

If you can *also* make the context argument follow the pattern, it's
obviously better, and indicates the division to files is working out
nicely. However, in a lot of cases you'll need to pass struct
drm_i915_private or similar as the first parameter to e.g. init
functions. It can't be the rigid rule.

I'm fine with moving the entire function somewhere else, as long as the
declaration is not in i915_drv.h. There's no longer a i915_drv.c, and
i915_drv.h should not have function declarations at all.


BR,
Jani.

>
> Regards,
>
> Tvrtko
>
>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>> ---
>>   drivers/gpu/drm/i915/i915_driver.c  | 2 +-
>>   drivers/gpu/drm/i915/intel_uncore.c | 4 ++--
>>   drivers/gpu/drm/i915/intel_uncore.h | 4 ++--
>>   3 files changed, 5 insertions(+), 5 deletions(-)
>> 
>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>> index 95174938b160..f9a494e159dc 100644
>> --- a/drivers/gpu/drm/i915/i915_driver.c
>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>> @@ -1805,7 +1805,7 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
>>   	DRM_IOCTL_DEF_DRV(I915_GEM_WAIT, i915_gem_wait_ioctl, DRM_RENDER_ALLOW),
>>   	DRM_IOCTL_DEF_DRV(I915_GEM_CONTEXT_CREATE_EXT, i915_gem_context_create_ioctl, DRM_RENDER_ALLOW),
>>   	DRM_IOCTL_DEF_DRV(I915_GEM_CONTEXT_DESTROY, i915_gem_context_destroy_ioctl, DRM_RENDER_ALLOW),
>> -	DRM_IOCTL_DEF_DRV(I915_REG_READ, i915_reg_read_ioctl, DRM_RENDER_ALLOW),
>> +	DRM_IOCTL_DEF_DRV(I915_REG_READ, intel_uncore_reg_read_ioctl, DRM_RENDER_ALLOW),
>>   	DRM_IOCTL_DEF_DRV(I915_GET_RESET_STATS, i915_gem_context_reset_stats_ioctl, DRM_RENDER_ALLOW),
>>   	DRM_IOCTL_DEF_DRV(I915_GEM_USERPTR, i915_gem_userptr_ioctl, DRM_RENDER_ALLOW),
>>   	DRM_IOCTL_DEF_DRV(I915_GEM_CONTEXT_GETPARAM, i915_gem_context_getparam_ioctl, DRM_RENDER_ALLOW),
>> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
>> index fc25ebf1a593..33f95bb2d3d5 100644
>> --- a/drivers/gpu/drm/i915/intel_uncore.c
>> +++ b/drivers/gpu/drm/i915/intel_uncore.c
>> @@ -2269,8 +2269,8 @@ static const struct reg_whitelist {
>>   	.size = 8
>>   } };
>>   
>> -int i915_reg_read_ioctl(struct drm_device *dev,
>> -			void *data, struct drm_file *file)
>> +int intel_uncore_reg_read_ioctl(struct drm_device *dev,
>> +				void *data, struct drm_file *file)
>>   {
>>   	struct drm_i915_private *i915 = to_i915(dev);
>>   	struct intel_uncore *uncore = &i915->uncore;
>> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
>> index 3a87bbd906f8..697ac4586159 100644
>> --- a/drivers/gpu/drm/i915/intel_uncore.h
>> +++ b/drivers/gpu/drm/i915/intel_uncore.h
>> @@ -457,7 +457,7 @@ static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
>>   #define raw_reg_write(base, reg, value) \
>>   	writel(value, base + i915_mmio_reg_offset(reg))
>>   
>> -int i915_reg_read_ioctl(struct drm_device *dev, void *data,
>> -			struct drm_file *file);
>> +int intel_uncore_reg_read_ioctl(struct drm_device *dev, void *data,
>> +				struct drm_file *file);
>>   
>>   #endif /* !__INTEL_UNCORE_H__ */
>> 

-- 
Jani Nikula, Intel Open Source Graphics Center
