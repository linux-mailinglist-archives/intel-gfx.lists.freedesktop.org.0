Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 2471D5AD703
	for <lists+intel-gfx@lfdr.de>; Mon,  5 Sep 2022 17:58:41 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 712F110E41D;
	Mon,  5 Sep 2022 15:58:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 274A010E41D
 for <intel-gfx@lists.freedesktop.org>; Mon,  5 Sep 2022 15:58:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1662393514; x=1693929514;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=INwEnG3fhkB42uZ/zvbytVuthurLNodFUcoVbSyZc1g=;
 b=X3/sw5plwFnWtVlqZKJz9eG8K19t2wKt7otXaB46G/54BZhUhiwYM40f
 Tdzknap7ZadIxixe4xr0rZnvVR1uUKtq/mcWN+WiZrUhJjnQgE0bFwhM1
 FmiOBHpXvICAGTCJIlZ+mGb9MZn1H7hOMpTm5slnKC68oi8tn1HEeqSpn
 OKpLSNlWXFNn/+WJ3yksViTvkh81J+9BXXvh7bj1NhtvHDQmp2Aj3rBT8
 nHjLum+gdDvo+WKXUvil5bNeGmAxPhE9/nZZVXSYKl19ycAzyY18y7wTX
 oxV8HyEUZtllikD/h0Rl/99BCiAmDdjN56rY7sxja5zwgPvUP5iy8xrC5 w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10461"; a="358131389"
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="358131389"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 08:58:33 -0700
X-IronPort-AV: E=Sophos;i="5.93,291,1654585200"; d="scan'208";a="675336186"
Received: from hpigot-mobl1.ger.corp.intel.com (HELO [10.213.237.107])
 ([10.213.237.107])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2022 08:58:32 -0700
Message-ID: <1fe4fe6b-87f6-b8d5-79a4-4f7dff2dc642@linux.intel.com>
Date: Mon, 5 Sep 2022 16:58:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <cover.1662390010.git.jani.nikula@intel.com>
 <82a353c5c4b52df2354f9413b547c7619a45d92d.1662390010.git.jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <82a353c5c4b52df2354f9413b547c7619a45d92d.1662390010.git.jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH 5/5] drm/i915: split out i915_gem.c
 declarations to i915_gem.h
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


On 05/09/2022 16:00, Jani Nikula wrote:
> Declutter i915_drv.h by splitting out the declarations for
> i915_gem.[ch].
> 
> Add a fixme comment about the rest of the stuff in i915_gem.h that
> doesn't really belong there.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/i915_drv.h | 36 ---------------------------
>   drivers/gpu/drm/i915/i915_gem.h | 43 +++++++++++++++++++++++++++++++++
>   2 files changed, 43 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index bbfc295f386b..befb167b3c49 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -972,42 +972,6 @@ IS_SUBPLATFORM(const struct drm_i915_private *i915,
>   
>   #define HAS_ONE_EU_PER_FUSE_BIT(i915)	(INTEL_INFO(i915)->has_one_eu_per_fuse_bit)
>   
> -/* i915_gem.c */
> -void i915_gem_init_early(struct drm_i915_private *dev_priv);
> -void i915_gem_cleanup_early(struct drm_i915_private *dev_priv);
> -
> -void i915_gem_drain_freed_objects(struct drm_i915_private *i915);
> -void i915_gem_drain_workqueue(struct drm_i915_private *i915);
> -
> -struct i915_vma * __must_check
> -i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
> -			    struct i915_gem_ww_ctx *ww,
> -			    const struct i915_ggtt_view *view,
> -			    u64 size, u64 alignment, u64 flags);
> -
> -struct i915_vma * __must_check
> -i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
> -			 const struct i915_ggtt_view *view,
> -			 u64 size, u64 alignment, u64 flags);
> -
> -int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
> -			   unsigned long flags);
> -#define I915_GEM_OBJECT_UNBIND_ACTIVE BIT(0)
> -#define I915_GEM_OBJECT_UNBIND_BARRIER BIT(1)
> -#define I915_GEM_OBJECT_UNBIND_TEST BIT(2)
> -#define I915_GEM_OBJECT_UNBIND_VM_TRYLOCK BIT(3)
> -#define I915_GEM_OBJECT_UNBIND_ASYNC BIT(4)
> -
> -void i915_gem_runtime_suspend(struct drm_i915_private *dev_priv);
> -
> -int __must_check i915_gem_init(struct drm_i915_private *dev_priv);
> -void i915_gem_driver_register(struct drm_i915_private *i915);
> -void i915_gem_driver_unregister(struct drm_i915_private *i915);
> -void i915_gem_driver_remove(struct drm_i915_private *dev_priv);
> -void i915_gem_driver_release(struct drm_i915_private *dev_priv);
> -
> -int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
> -
>   /* intel_device_info.c */
>   static inline struct intel_device_info *
>   mkwrite_device_info(struct drm_i915_private *dev_priv)
> diff --git a/drivers/gpu/drm/i915/i915_gem.h b/drivers/gpu/drm/i915/i915_gem.h
> index 68d8d52bd541..2fccb19ed9f7 100644
> --- a/drivers/gpu/drm/i915/i915_gem.h
> +++ b/drivers/gpu/drm/i915/i915_gem.h
> @@ -26,12 +26,55 @@
>   #define __I915_GEM_H__
>   
>   #include <linux/bug.h>
> +#include <linux/types.h>
>   
>   #include <drm/drm_drv.h>
>   
>   #include "i915_utils.h"
>   
> +struct drm_file;
> +struct drm_i915_gem_object;
>   struct drm_i915_private;
> +struct i915_gem_ww_ctx;
> +struct i915_ggtt_view;
> +struct i915_vma;
> +
> +void i915_gem_init_early(struct drm_i915_private *i915);
> +void i915_gem_cleanup_early(struct drm_i915_private *i915);
> +
> +void i915_gem_drain_freed_objects(struct drm_i915_private *i915);
> +void i915_gem_drain_workqueue(struct drm_i915_private *i915);
> +
> +struct i915_vma * __must_check
> +i915_gem_object_ggtt_pin_ww(struct drm_i915_gem_object *obj,
> +			    struct i915_gem_ww_ctx *ww,
> +			    const struct i915_ggtt_view *view,
> +			    u64 size, u64 alignment, u64 flags);
> +
> +struct i915_vma * __must_check
> +i915_gem_object_ggtt_pin(struct drm_i915_gem_object *obj,
> +			 const struct i915_ggtt_view *view,
> +			 u64 size, u64 alignment, u64 flags);
> +
> +int i915_gem_object_unbind(struct drm_i915_gem_object *obj,
> +			   unsigned long flags);
> +#define I915_GEM_OBJECT_UNBIND_ACTIVE BIT(0)
> +#define I915_GEM_OBJECT_UNBIND_BARRIER BIT(1)
> +#define I915_GEM_OBJECT_UNBIND_TEST BIT(2)
> +#define I915_GEM_OBJECT_UNBIND_VM_TRYLOCK BIT(3)
> +#define I915_GEM_OBJECT_UNBIND_ASYNC BIT(4)
> +
> +void i915_gem_runtime_suspend(struct drm_i915_private *i915);
> +
> +int __must_check i915_gem_init(struct drm_i915_private *i915);
> +void i915_gem_driver_register(struct drm_i915_private *i915);
> +void i915_gem_driver_unregister(struct drm_i915_private *i915);
> +void i915_gem_driver_remove(struct drm_i915_private *i915);
> +void i915_gem_driver_release(struct drm_i915_private *i915);
> +
> +int i915_gem_open(struct drm_i915_private *i915, struct drm_file *file);
> +
> +/* FIXME: All of the below belong somewhere else. */

For the series:

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

(((
I think historically i915_gem.h started as a stash for random bits which 
felt obviously wrong to put elsewhere, but it should be fine to 
"upgrade" it to a more important status now that you are working on 
cleaning things up, especially i915_drv.h.

Where this "somewhere else" place could be is a bit tricky - I suspect 
there isn't any great urgency to re-home them. If one day splitting 
i915_gem.c into functional parts comes on the agenda so I guess then. 
But it's not that huge even so don't think it's top priority.
)))

Regards,

Tvrtko

>   
>   #ifdef CONFIG_DRM_I915_DEBUG_GEM
>   
