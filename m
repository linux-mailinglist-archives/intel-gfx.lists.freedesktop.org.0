Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 49FD54DC29D
	for <lists+intel-gfx@lfdr.de>; Thu, 17 Mar 2022 10:27:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7107E10E39C;
	Thu, 17 Mar 2022 09:27:29 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F236110E39C
 for <intel-gfx@lists.freedesktop.org>; Thu, 17 Mar 2022 09:27:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647509247; x=1679045247;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=Kq7MwxjmprXPhFzeSjkgst0pd3P6xEkg94/bHMvca/Y=;
 b=KAyMZqM8whKT30is9BX2kBW/mule3jPoj2ys71au4BKUsepAR7cJGI30
 VRz4cgYTns1XpbIHowbWQTgoE1tn9tjZRlOfPJltO4AAOc1YfRvjsbEm0
 btZyW0SGjiQV7mJ8G+0ItTgGgoFvCK2N3lMC5ABm6mWG0mVtJHb28U4hO
 RucUfGZCWG3jtzlv2VJ7RKvu05/naeUW765c9SODXfCFF5MOr4MZZGt+Q
 BRaeTrWLip+ZhxxzjANdaE33H6upepg4ACVdEe8lVJiD/7iz1hCAEi0B4
 wI1frZsJMUUPx0Frrwz581rLmZjU+AOIgIBMKcpQfBfRM4edlR/1VqfAX A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10288"; a="236769744"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="236769744"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 02:27:27 -0700
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="516694945"
Received: from liujoann-mobl.amr.corp.intel.com (HELO [10.209.162.134])
 ([10.209.162.134])
 by orsmga006-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 02:27:26 -0700
Message-ID: <fc7edb8e-d6af-67d0-8e0c-b3fabdb22797@linux.intel.com>
Date: Thu, 17 Mar 2022 09:27:23 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220316095018.137998-1-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220316095018.137998-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH v2] drm/i915: move
 i915_gem_object_needs_bit17_swizzle() to i915_gem_tiling.[ch]
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


On 16/03/2022 09:50, Jani Nikula wrote:
> Move i915_gem_object_needs_bit17_swizzle() to i915_gem_tiling.[ch] as a
> i915_gem_object function related to tiling. Also un-inline while at it;
> does not seem like this is a function needed in hot paths.
> 
> v2: i915_gem_tiling.[ch] instead of intel_ggtt_fencing.[ch] (Chris)

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko

> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/gem/i915_gem_phys.c   | 1 +
>   drivers/gpu/drm/i915/gem/i915_gem_shmem.c  | 3 ++-
>   drivers/gpu/drm/i915/gem/i915_gem_tiling.c | 8 ++++++++
>   drivers/gpu/drm/i915/gem/i915_gem_tiling.h | 2 ++
>   drivers/gpu/drm/i915/i915_drv.h            | 9 ---------
>   5 files changed, 13 insertions(+), 10 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_phys.c b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> index ca6faffcc496..0d0e46dae559 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_phys.c
> @@ -14,6 +14,7 @@
>   #include "i915_drv.h"
>   #include "i915_gem_object.h"
>   #include "i915_gem_region.h"
> +#include "i915_gem_tiling.h"
>   #include "i915_scatterlist.h"
>   
>   static int i915_gem_object_get_pages_phys(struct drm_i915_gem_object *obj)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> index 3a1c782ed791..c7541dc687c1 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_shmem.c
> @@ -12,8 +12,9 @@
>   
>   #include "gem/i915_gem_region.h"
>   #include "i915_drv.h"
> -#include "i915_gemfs.h"
>   #include "i915_gem_object.h"
> +#include "i915_gem_tiling.h"
> +#include "i915_gemfs.h"
>   #include "i915_scatterlist.h"
>   #include "i915_trace.h"
>   
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> index d6adda5bf96b..80ac0db1ae8c 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.c
> @@ -219,6 +219,14 @@ i915_gem_object_fence_prepare(struct drm_i915_gem_object *obj,
>   	return ret;
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
>   int
>   i915_gem_object_set_tiling(struct drm_i915_gem_object *obj,
>   			   unsigned int tiling, unsigned int stride)
> diff --git a/drivers/gpu/drm/i915/gem/i915_gem_tiling.h b/drivers/gpu/drm/i915/gem/i915_gem_tiling.h
> index 9924196a8139..6bd5751abf28 100644
> --- a/drivers/gpu/drm/i915/gem/i915_gem_tiling.h
> +++ b/drivers/gpu/drm/i915/gem/i915_gem_tiling.h
> @@ -8,8 +8,10 @@
>   
>   #include <linux/types.h>
>   
> +struct drm_i915_gem_object;
>   struct drm_i915_private;
>   
> +bool i915_gem_object_needs_bit17_swizzle(struct drm_i915_gem_object *obj);
>   u32 i915_gem_fence_size(struct drm_i915_private *i915, u32 size,
>   			unsigned int tiling, unsigned int stride);
>   u32 i915_gem_fence_alignment(struct drm_i915_private *i915, u32 size,
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 26df561a4e94..a9aceb08fcd1 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -1486,15 +1486,6 @@ void i915_gem_driver_release(struct drm_i915_private *dev_priv);
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
