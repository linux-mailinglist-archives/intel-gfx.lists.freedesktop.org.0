Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id C7B13769231
	for <lists+intel-gfx@lfdr.de>; Mon, 31 Jul 2023 11:47:45 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D3AB10E192;
	Mon, 31 Jul 2023 09:47:44 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (unknown [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CA96210E192
 for <intel-gfx@lists.freedesktop.org>; Mon, 31 Jul 2023 09:47:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690796862; x=1722332862;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=Ps4PVp4dZCyu/tW+YvCX3gEWKdhAO9ZE2tiTy6DsM1U=;
 b=aAHjMY8DI8KKF7i09rTELP6HikXwCtiijnNj+BrJSLwq2D0BRX2Wd/8/
 g/pQVJY7WJFJmsiLE862WTKo7KbYznice1/ci2b6zu9iKe9zc92tOr+X5
 CQVpHmDmNOHuTeqVl9/tRZLBlNoNPiMk2lqMWPeR2zsrTp7w2UOrR1Q11
 mTAjLED7FteYnYOhvdPJbJ8QxgFe0zBUQ68r5zYGm4QO2Cs17rvkV25uR
 xgcQ5tynW05STE1qQS9KZDx+qig7PcKJe4R1QmXBlMlZ6mzo0VxzfsL4u
 FeM2s4IPN87RkicPbyjNHL5govOww/FfQlfpnH7fSVj0tKoy2tXzNH+2m Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="367863555"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="367863555"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 02:47:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10787"; a="1058868492"
X-IronPort-AV: E=Sophos;i="6.01,244,1684825200"; d="scan'208";a="1058868492"
Received: from nirmoyda-mobl.ger.corp.intel.com (HELO [10.252.62.140])
 ([10.252.62.140])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 Jul 2023 02:47:41 -0700
Message-ID: <12f9c5bb-42fc-0d18-e478-65861cc62a4c@linux.intel.com>
Date: Mon, 31 Jul 2023 11:47:39 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Content-Language: en-US
To: =?UTF-8?Q?Jouni_H=c3=b6gander?= <jouni.hogander@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20230727064142.751976-1-jouni.hogander@intel.com>
 <20230727064142.751976-5-jouni.hogander@intel.com>
From: Nirmoy Das <nirmoy.das@linux.intel.com>
In-Reply-To: <20230727064142.751976-5-jouni.hogander@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH v4 4/4] drm/i915: Add function to clear
 scanout flag for vmas
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
Cc: Jani Nikula <jani.nikula@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 7/27/2023 8:41 AM, Jouni Högander wrote:
> Currently frontbuffer tracking code is directly iterating over object vmas
> and clearing scanout flags for them. Add function to clear scanout flag for
> vmas and use it from frontbuffer tracking code.
>
> v2: describe function parameter.
>
> Signed-off-by: Jouni Högander <jouni.hogander@intel.com>
> Reviewed-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Nirmoy Das <nirmoy.das@intel.com>


> ---
>   .../gpu/drm/i915/display/intel_frontbuffer.c  |  8 +-------
>   drivers/gpu/drm/i915/i915_vma.c               | 20 +++++++++++++++++++
>   drivers/gpu/drm/i915/i915_vma.h               |  2 ++
>   3 files changed, 23 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_frontbuffer.c b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> index 56f45370fee0..22392f94b626 100644
> --- a/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> +++ b/drivers/gpu/drm/i915/display/intel_frontbuffer.c
> @@ -226,16 +226,10 @@ static void frontbuffer_release(struct kref *ref)
>   	struct intel_frontbuffer *front =
>   		container_of(ref, typeof(*front), ref);
>   	struct drm_i915_gem_object *obj = front->obj;
> -	struct i915_vma *vma;
>   
>   	drm_WARN_ON(&intel_bo_to_i915(obj)->drm, atomic_read(&front->bits));
>   
> -	spin_lock(&obj->vma.lock);
> -	for_each_ggtt_vma(vma, obj) {
> -		i915_vma_clear_scanout(vma);
> -		vma->display_alignment = I915_GTT_MIN_ALIGNMENT;
> -	}
> -	spin_unlock(&obj->vma.lock);
> +	i915_ggtt_clear_scanout(obj);
>   
>   	i915_gem_object_set_frontbuffer(obj, NULL);
>   	spin_unlock(&intel_bo_to_i915(obj)->display.fb_tracking.lock);
> diff --git a/drivers/gpu/drm/i915/i915_vma.c b/drivers/gpu/drm/i915/i915_vma.c
> index e90b9c812180..63e111266de1 100644
> --- a/drivers/gpu/drm/i915/i915_vma.c
> +++ b/drivers/gpu/drm/i915/i915_vma.c
> @@ -1629,6 +1629,26 @@ int i915_ggtt_pin(struct i915_vma *vma, struct i915_gem_ww_ctx *ww,
>   	return err;
>   }
>   
> +/**
> + * i915_ggtt_clear_scanout - Clear scanout flag for all objects ggtt vmas
> + * @obj: i915 GEM object
> + * This function clears scanout flags for objects ggtt vmas. These flags are set
> + * when object is pinned for display use and this function to clear them all is
> + * targeted to be called by frontbuffer tracking code when the frontbuffer is
> + * about to be released.
> + */
> +void i915_ggtt_clear_scanout(struct drm_i915_gem_object *obj)
> +{
> +	struct i915_vma *vma;
> +
> +	spin_lock(&obj->vma.lock);
> +	for_each_ggtt_vma(vma, obj) {
> +		i915_vma_clear_scanout(vma);
> +		vma->display_alignment = I915_GTT_MIN_ALIGNMENT;
> +	}
> +	spin_unlock(&obj->vma.lock);
> +}
> +
>   static void __vma_close(struct i915_vma *vma, struct intel_gt *gt)
>   {
>   	/*
> diff --git a/drivers/gpu/drm/i915/i915_vma.h b/drivers/gpu/drm/i915/i915_vma.h
> index 9a9729205d5b..eaa310864370 100644
> --- a/drivers/gpu/drm/i915/i915_vma.h
> +++ b/drivers/gpu/drm/i915/i915_vma.h
> @@ -435,6 +435,8 @@ static inline void i915_vma_clear_scanout(struct i915_vma *vma)
>   	clear_bit(I915_VMA_SCANOUT_BIT, __i915_vma_flags(vma));
>   }
>   
> +void i915_ggtt_clear_scanout(struct drm_i915_gem_object *obj);
> +
>   #define for_each_until(cond) if (cond) break; else
>   
>   /**
