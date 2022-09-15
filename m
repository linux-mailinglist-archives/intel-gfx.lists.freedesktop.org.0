Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A1A6E5B95AE
	for <lists+intel-gfx@lfdr.de>; Thu, 15 Sep 2022 09:47:42 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D1A2C10EAAA;
	Thu, 15 Sep 2022 07:47:36 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AA45A10EAAA
 for <intel-gfx@lists.freedesktop.org>; Thu, 15 Sep 2022 07:47:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663228051; x=1694764051;
 h=message-id:date:mime-version:subject:to:references:from:
 in-reply-to:content-transfer-encoding;
 bh=yjnnJHkph13BVvXNkmOqIg1RyrhzR+NhXGH7t1at4wk=;
 b=GWcwVnuDqy66l9FLqH6nI8mmQCxy6mjnotVB1dOOhcMErhUhNlehyDgk
 7OqgsuCBQXxsPQ7YFeRWFhjNPFcjba6g1KKsYEEicmkxUV5gHUAvNSy2t
 BS/Z1bSncfaIs155BAkvyPB6501JyaQvimQl3q8jQv/fnUNwd4pKZg2E9
 aYoxi3U7WCyauhlR4RaAt47CACbU4j5j/FIsDPlf5bR9iPnr28zWUrP4S
 wk6cFaONIq7HVMEfX9e553opac79RkVw9kXhMP9x6z1pDtipP9sJ9CQmL
 5KqXQFr/XxHGiHFdRK8pNfYIad0yvvPXus8JGt/VCArLbVNWYAB1X4GWH w==;
X-IronPort-AV: E=McAfee;i="6500,9779,10470"; a="360382213"
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="360382213"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 00:47:31 -0700
X-IronPort-AV: E=Sophos;i="5.93,317,1654585200"; d="scan'208";a="945843218"
Received: from alishana-mobl1.ger.corp.intel.com (HELO [10.213.218.26])
 ([10.213.218.26])
 by fmsmga005-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Sep 2022 00:47:30 -0700
Message-ID: <976bfcc8-2939-1537-7810-fba57af75e6e@linux.intel.com>
Date: Thu, 15 Sep 2022 08:47:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Content-Language: en-US
To: Jani Nikula <jani.nikula@intel.com>, intel-gfx@lists.freedesktop.org
References: <20220914165903.1905962-1-jani.nikula@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20220914165903.1905962-1-jani.nikula@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915: move i915_fence_{context_,
 }timeout() to i915_sw_fence.[ch]
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


On 14/09/2022 17:59, Jani Nikula wrote:
> Maybe there was a grand plan with i915_fence_timeout() and
> i915_fence_context_timeout() and i915_config.c, but that seems to have
> been lost a bit.
> 
> Just move the functions to i915_sw_fence.[ch] from i915_drv.h and
> i915_config.c, and remove the latter.

Sorry this does not fit - i915_sw_fence is a low level agnostic code 
which should have no connection to fence timeouts as defined by higher 
levels. How about i915_config.h? Even if only as a temporary solution 
which requires least thinking. Because I am not coming with any obvious 
new homes among the existing headers..

Regards,

Tvrtko

> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>
> ---
>   drivers/gpu/drm/i915/Makefile        |  1 -
>   drivers/gpu/drm/i915/i915_config.c   | 15 ---------------
>   drivers/gpu/drm/i915/i915_drv.h      |  9 ---------
>   drivers/gpu/drm/i915/i915_sw_fence.c | 15 +++++++++++++++
>   drivers/gpu/drm/i915/i915_sw_fence.h |  5 +++++
>   5 files changed, 20 insertions(+), 25 deletions(-)
>   delete mode 100644 drivers/gpu/drm/i915/i915_config.c
> 
> diff --git a/drivers/gpu/drm/i915/Makefile b/drivers/gpu/drm/i915/Makefile
> index a26edcdadc21..0221682d3a0f 100644
> --- a/drivers/gpu/drm/i915/Makefile
> +++ b/drivers/gpu/drm/i915/Makefile
> @@ -34,7 +34,6 @@ subdir-ccflags-y += -I$(srctree)/$(src)
>   # core driver code
>   i915-y += i915_driver.o \
>   	  i915_drm_client.o \
> -	  i915_config.o \
>   	  i915_getparam.o \
>   	  i915_ioctl.o \
>   	  i915_irq.o \
> diff --git a/drivers/gpu/drm/i915/i915_config.c b/drivers/gpu/drm/i915/i915_config.c
> deleted file mode 100644
> index afb828dab53b..000000000000
> --- a/drivers/gpu/drm/i915/i915_config.c
> +++ /dev/null
> @@ -1,15 +0,0 @@
> -// SPDX-License-Identifier: MIT
> -/*
> - * Copyright © 2020 Intel Corporation
> - */
> -
> -#include "i915_drv.h"
> -
> -unsigned long
> -i915_fence_context_timeout(const struct drm_i915_private *i915, u64 context)
> -{
> -	if (CONFIG_DRM_I915_FENCE_TIMEOUT && context)
> -		return msecs_to_jiffies_timeout(CONFIG_DRM_I915_FENCE_TIMEOUT);
> -
> -	return 0;
> -}
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 524b5ee495be..02956385d32d 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -167,15 +167,6 @@ struct i915_gem_mm {
>   
>   #define I915_IDLE_ENGINES_TIMEOUT (200) /* in ms */
>   
> -unsigned long i915_fence_context_timeout(const struct drm_i915_private *i915,
> -					 u64 context);
> -
> -static inline unsigned long
> -i915_fence_timeout(const struct drm_i915_private *i915)
> -{
> -	return i915_fence_context_timeout(i915, U64_MAX);
> -}
> -
>   #define HAS_HW_SAGV_WM(i915) (DISPLAY_VER(i915) >= 13 && !IS_DGFX(i915))
>   
>   struct i915_virtual_gpu {
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence.c b/drivers/gpu/drm/i915/i915_sw_fence.c
> index 6fc0d1b89690..2a90987799e7 100644
> --- a/drivers/gpu/drm/i915/i915_sw_fence.c
> +++ b/drivers/gpu/drm/i915/i915_sw_fence.c
> @@ -11,6 +11,7 @@
>   
>   #include "i915_sw_fence.h"
>   #include "i915_selftest.h"
> +#include "i915_utils.h"
>   
>   #if IS_ENABLED(CONFIG_DRM_I915_DEBUG)
>   #define I915_SW_FENCE_BUG_ON(expr) BUG_ON(expr)
> @@ -471,6 +472,20 @@ static void irq_i915_sw_fence_work(struct irq_work *wrk)
>   	kfree_rcu(cb, rcu);
>   }
>   
> +unsigned long i915_fence_context_timeout(const struct drm_i915_private *i915,
> +					 u64 context)
> +{
> +	if (CONFIG_DRM_I915_FENCE_TIMEOUT && context)
> +		return msecs_to_jiffies_timeout(CONFIG_DRM_I915_FENCE_TIMEOUT);
> +
> +	return 0;
> +}
> +
> +unsigned long i915_fence_timeout(const struct drm_i915_private *i915)
> +{
> +	return i915_fence_context_timeout(i915, U64_MAX);
> +}
> +
>   int i915_sw_fence_await_dma_fence(struct i915_sw_fence *fence,
>   				  struct dma_fence *dma,
>   				  unsigned long timeout,
> diff --git a/drivers/gpu/drm/i915/i915_sw_fence.h b/drivers/gpu/drm/i915/i915_sw_fence.h
> index 619fc5a22f0c..cdef7dabafbd 100644
> --- a/drivers/gpu/drm/i915/i915_sw_fence.h
> +++ b/drivers/gpu/drm/i915/i915_sw_fence.h
> @@ -17,6 +17,7 @@
>   
>   struct completion;
>   struct dma_resv;
> +struct drm_i915_private;
>   struct i915_sw_fence;
>   
>   enum i915_sw_fence_notify {
> @@ -81,6 +82,10 @@ struct i915_sw_dma_fence_cb {
>   	struct i915_sw_fence *fence;
>   };
>   
> +unsigned long i915_fence_context_timeout(const struct drm_i915_private *i915,
> +					 u64 context);
> +unsigned long i915_fence_timeout(const struct drm_i915_private *i915);
> +
>   int __i915_sw_fence_await_dma_fence(struct i915_sw_fence *fence,
>   				    struct dma_fence *dma,
>   				    struct i915_sw_dma_fence_cb *cb);
