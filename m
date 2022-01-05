Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 448374851B7
	for <lists+intel-gfx@lfdr.de>; Wed,  5 Jan 2022 12:21:03 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7E30110E67B;
	Wed,  5 Jan 2022 11:21:01 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D14B110E67B
 for <intel-gfx@lists.freedesktop.org>; Wed,  5 Jan 2022 11:21:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1641381660; x=1672917660;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=nXQ+aR6sHfcm+KMMP8eSQcdVjDIxtSblwpbbJ7OsA4A=;
 b=oDu8ePymnf/bwqipz046KIg4WFcLDVGHF7pj8+DcgjlXEh0/QOiT8VtY
 TugZ7gimRCdxvTMduv9Sk+XerOHux4P/V5GlSla/kFJvMbek8kcQnKOBk
 usodPEkUE2efgy0cmeE46hoHWosVfmHrQn0rITtkchodPoFwPtyGClvHE
 Lm/lhnKB4cKbJrRHy3LRpooGdNhRBUUeN8FYgrtuHX5OdtE3Vh7qtAcuc
 HUYgvL58CNtGcPYDKUC4n744K5WUuM+Yav0Rgv/xgQpo2xPwVr97dvL4A
 8YBRXWcPOCltF9JmS7dnKVBNSQWS6B7o3NdXyamvo0tIcsGoyq90ah97x g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10217"; a="242218002"
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="242218002"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 03:21:00 -0800
X-IronPort-AV: E=Sophos;i="5.88,263,1635231600"; d="scan'208";a="472460048"
Received: from jwebb-mobl1.ger.corp.intel.com (HELO [10.213.202.78])
 ([10.213.202.78])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jan 2022 03:20:58 -0800
Message-ID: <bee03d1e-06dd-6243-e711-ab8d7c7081bb@linux.intel.com>
Date: Wed, 5 Jan 2022 11:20:55 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.3.1
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220105100520.976092-1-jani.nikula@intel.com>
 <20220105100520.976092-2-jani.nikula@intel.com>
 <170a7507-ff7e-204f-eba3-89571ab87842@linux.intel.com>
 <875yqytqv4.fsf@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <875yqytqv4.fsf@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
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


On 05/01/2022 10:32, Jani Nikula wrote:
> On Wed, 05 Jan 2022, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>> On 05/01/2022 10:05, Jani Nikula wrote:
>>> Follow the usual naming convention.
>>
>> But intel_uncore_ prefix usually means functions takes intel_uncore as
>> the first argument.
>>
>> Maybe solution here is that i915_reg_read_ioctl does not belong in
>> intel_uncore.c, it being the UAPI layer thing? I guess arguments could
>> be made for either way.
> 
> My position is that the function and file prefixes go hand in
> hand. You'll always know where to place a function, and you'll always
> know where the function is to be found.
> 
> If you can *also* make the context argument follow the pattern, it's
> obviously better, and indicates the division to files is working out
> nicely. However, in a lot of cases you'll need to pass struct
> drm_i915_private or similar as the first parameter to e.g. init
> functions. It can't be the rigid rule.
> 
> I'm fine with moving the entire function somewhere else, as long as the
> declaration is not in i915_drv.h. There's no longer a i915_drv.c, and
> i915_drv.h should not have function declarations at all.

Yes I agree it cannot be a rigid rule. I just that it feels 
intel_uncore.[hc] is too low level to me to hold an ioctl 
implementation, and header actually feels wrong to have the declaration. 
Not least it is about _one_ of the uncores, while the ioctl is not 
operating on that level, albeit undefined at the moment how exactly it 
would work for multi-tile.

Would it be too early, or unwarranted at this point, to maybe consider 
adding i915_ioctls.[hc]?

I like the i915_ prefix of ioctls for consistency.. i915_getparam_ioctl, 
i915_query_ioctl, i915_perf_..., i915_gem_....

Regards,

Tvrtko

> 
> BR,
> Jani.
> 
>>
>> Regards,
>>
>> Tvrtko
>>
>>> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
>>> ---
>>>    drivers/gpu/drm/i915/i915_driver.c  | 2 +-
>>>    drivers/gpu/drm/i915/intel_uncore.c | 4 ++--
>>>    drivers/gpu/drm/i915/intel_uncore.h | 4 ++--
>>>    3 files changed, 5 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_driver.c b/drivers/gpu/drm/i915/i915_driver.c
>>> index 95174938b160..f9a494e159dc 100644
>>> --- a/drivers/gpu/drm/i915/i915_driver.c
>>> +++ b/drivers/gpu/drm/i915/i915_driver.c
>>> @@ -1805,7 +1805,7 @@ static const struct drm_ioctl_desc i915_ioctls[] = {
>>>    	DRM_IOCTL_DEF_DRV(I915_GEM_WAIT, i915_gem_wait_ioctl, DRM_RENDER_ALLOW),
>>>    	DRM_IOCTL_DEF_DRV(I915_GEM_CONTEXT_CREATE_EXT, i915_gem_context_create_ioctl, DRM_RENDER_ALLOW),
>>>    	DRM_IOCTL_DEF_DRV(I915_GEM_CONTEXT_DESTROY, i915_gem_context_destroy_ioctl, DRM_RENDER_ALLOW),
>>> -	DRM_IOCTL_DEF_DRV(I915_REG_READ, i915_reg_read_ioctl, DRM_RENDER_ALLOW),
>>> +	DRM_IOCTL_DEF_DRV(I915_REG_READ, intel_uncore_reg_read_ioctl, DRM_RENDER_ALLOW),
>>>    	DRM_IOCTL_DEF_DRV(I915_GET_RESET_STATS, i915_gem_context_reset_stats_ioctl, DRM_RENDER_ALLOW),
>>>    	DRM_IOCTL_DEF_DRV(I915_GEM_USERPTR, i915_gem_userptr_ioctl, DRM_RENDER_ALLOW),
>>>    	DRM_IOCTL_DEF_DRV(I915_GEM_CONTEXT_GETPARAM, i915_gem_context_getparam_ioctl, DRM_RENDER_ALLOW),
>>> diff --git a/drivers/gpu/drm/i915/intel_uncore.c b/drivers/gpu/drm/i915/intel_uncore.c
>>> index fc25ebf1a593..33f95bb2d3d5 100644
>>> --- a/drivers/gpu/drm/i915/intel_uncore.c
>>> +++ b/drivers/gpu/drm/i915/intel_uncore.c
>>> @@ -2269,8 +2269,8 @@ static const struct reg_whitelist {
>>>    	.size = 8
>>>    } };
>>>    
>>> -int i915_reg_read_ioctl(struct drm_device *dev,
>>> -			void *data, struct drm_file *file)
>>> +int intel_uncore_reg_read_ioctl(struct drm_device *dev,
>>> +				void *data, struct drm_file *file)
>>>    {
>>>    	struct drm_i915_private *i915 = to_i915(dev);
>>>    	struct intel_uncore *uncore = &i915->uncore;
>>> diff --git a/drivers/gpu/drm/i915/intel_uncore.h b/drivers/gpu/drm/i915/intel_uncore.h
>>> index 3a87bbd906f8..697ac4586159 100644
>>> --- a/drivers/gpu/drm/i915/intel_uncore.h
>>> +++ b/drivers/gpu/drm/i915/intel_uncore.h
>>> @@ -457,7 +457,7 @@ static inline int intel_uncore_write_and_verify(struct intel_uncore *uncore,
>>>    #define raw_reg_write(base, reg, value) \
>>>    	writel(value, base + i915_mmio_reg_offset(reg))
>>>    
>>> -int i915_reg_read_ioctl(struct drm_device *dev, void *data,
>>> -			struct drm_file *file);
>>> +int intel_uncore_reg_read_ioctl(struct drm_device *dev, void *data,
>>> +				struct drm_file *file);
>>>    
>>>    #endif /* !__INTEL_UNCORE_H__ */
>>>
> 
