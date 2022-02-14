Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AA194B522A
	for <lists+intel-gfx@lfdr.de>; Mon, 14 Feb 2022 14:52:08 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B58B410E4D6;
	Mon, 14 Feb 2022 13:52:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 380BA10E4D6
 for <intel-gfx@lists.freedesktop.org>; Mon, 14 Feb 2022 13:52:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1644846724; x=1676382724;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Z6ym3CJYf+KsAOkgqtWzFiw76a1qwXvlOqLr99IgS9s=;
 b=MNp5C2wi8sKpDPX8pqE3YO6LDxgF+FuN+k/C5Q3pcwdBuBP6k2doZMix
 y5nvdo6TTJfR1N7vwrxGjQ/KEH9JlbOPJayf4ctHt1nMazmwHymM0ncXl
 qmxdVSA/HaPK76oLyvES5H7S27Q6rYJqX/ShDn8QJsmu/Ok+XJrUKK2Nh
 1dPVdYpBCvxHojM/xNm7msY8w5tLczuSx5FC0ABfisvSIlC+g4CiQul8u
 ATfWiTbDGENbLql4Z0nYpNzb22VUrldcsac5Vv8XJYA3o17C0P6ryNs74
 pBaXlLFAW3L4DqF5exE6u5omFDnWIux8DzqYpothENYQdsRZuimoPO0/k Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10257"; a="250037993"
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="250037993"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 05:51:50 -0800
X-IronPort-AV: E=Sophos;i="5.88,368,1635231600"; d="scan'208";a="570194964"
Received: from rajaseka-mobl3.ger.corp.intel.com (HELO [10.213.215.79])
 ([10.213.215.79])
 by orsmga001-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Feb 2022 05:51:49 -0800
Message-ID: <2840743f-2bfb-8ad5-2717-eaf99cfd5d3f@linux.intel.com>
Date: Mon, 14 Feb 2022 13:51:45 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220214132452.1854143-1-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220214132452.1854143-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: move
 i915_gem_object_needs_bit17_swizzle() to intel_ggtt_fencing.[ch]
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


On 14/02/2022 13:24, Jani Nikula wrote:
> Move i915_gem_object_needs_bit17_swizzle() next to the other
> bit_17_swizzle functions. Also un-inline while at it; does not seem like
> this is a function needed in hot paths.
> 
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c | 8 ++++++++
>   drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h | 1 +
>   drivers/gpu/drm/i915/i915_drv.h              | 9 ---------
>   3 files changed, 9 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> index ee4049ee1fc9..55d525c562df 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.c
> @@ -755,6 +755,14 @@ static void swizzle_page(struct page *page)
>   	kunmap(page);
>   }
>   
> +bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_object *obj)
> +{
> +	struct drm_i915_private *i915 = to_i915(obj->base.dev);
> +
> +	return to_gt(i915)->ggtt->bit_6_swizzle_x == I915_BIT_6_SWIZZLE_9_10_17 &&
> +		i915_gem_object_is_tiled(obj);
> +}
> +
>   /**
>    * i915_gem_object_do_bit_17_swizzle - fixup bit 17 swizzling
>    * @obj: i915 GEM buffer object
> diff --git a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
> index 25340be5ecf0..fa0734fd4749 100644
> --- a/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
> +++ b/drivers/gpu/drm/i915/gt/intel_ggtt_fencing.h
> @@ -46,6 +46,7 @@ void i915_unreserve_fence(struct i915_fence_reg *fence);
>   
>   void intel_ggtt_restore_fences(struct i915_ggtt *ggtt);
>   
> +bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_object *obj);
>   void i915_gem_object_do_bit_17_swizzle(struct drm_i915_gem_object *obj,
>   				       struct sg_table *pages);
>   void i915_gem_object_save_bit_17_swizzle(struct drm_i915_gem_object *obj,
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 418091484e02..395c53d4955e 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1495,15 +1495,6 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv);
>   
>   int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
>   
> -/* i915_gem_tiling.c */
> -static inline bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_object *obj)
> -{
> -	struct drm_i915_private *i915 = to_i915(obj->base.dev);
> -
> -	return to_gt(i915)->ggtt->bit_6_swizzle_x == I915_BIT_6_SWIZZLE_9_10_17 &&
> -		i915_gem_object_is_tiled(obj);
> -}
> -
>   /* intel_device_info.c */
>   static inline struct intel_device_info *
>   mkwrite_device_info(struct drm_i915_private *dev_priv)

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
