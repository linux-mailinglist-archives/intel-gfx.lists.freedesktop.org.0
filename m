Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 00B247E7C09
	for <lists+intel-gfx@lfdr.de>; Fri, 10 Nov 2023 13:00:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A4C410E9B6;
	Fri, 10 Nov 2023 12:00:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 134DF10E9A7
 for <intel-gfx@lists.freedesktop.org>; Fri, 10 Nov 2023 12:00:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1699617605; x=1731153605;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=ZVtxWv7kxqrM6czBziXlM9fhi9eFJTa4er0hruJ4Ai0=;
 b=lG6rRfYSHpaP51zFakXu0WCwBf7YBCYrZCi05wV1mjWpWipyKGJlXiaT
 2ZGy/l4/mrNVjdg9htJ1bIWtBaJOpdEtqhu+YA8iI8WoFuYi50PvBiHV4
 BjYjQNmMjOyDTI1ZfARpyBT4LE1qsqLvKP4iupbEeFIXbDme0gKgO9zG7
 h3ceYxm2umOg+S/EYdYVKz/7V1449atU1QMZSQrz76bHhESZB1hNAayxu
 lUazofA6VODd8KXF45dvXsUgX/5l91wDW5nbSntujKGrhuIReQil/QyBq
 qvXCEHC+bNFNRdI96Yb8+l90vac15AsQ3xAbq7fVok7EK3JUk0XSLsM0u w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="3160025"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; 
   d="scan'208";a="3160025"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 04:00:05 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10889"; a="829635806"
X-IronPort-AV: E=Sophos;i="6.03,291,1694761200"; d="scan'208";a="829635806"
Received: from gpruna-mobl4.ger.corp.intel.com (HELO [10.213.236.135])
 ([10.213.236.135])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Nov 2023 04:00:03 -0800
Message-ID: <2b774727-e901-4c17-b6b9-2e4b3348cae6@linux.intel.com>
Date: Fri, 10 Nov 2023 12:00:01 +0000
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Content-Language: en-US
To: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20231109235332.2349844-1-daniele.ceraolospurio@intel.com>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
In-Reply-To: <20231109235332.2349844-1-daniele.ceraolospurio@intel.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gsc: Assign a uabi class number to
 the GSC CS
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
Cc: Matt Roper <matthew.d.roper@intel.com>,
 Alan Previn <alan.previn.teres.alexis@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 09/11/2023 23:53, Daniele Ceraolo Spurio wrote:
> The GSC CS is not exposed to the user, so we skipped assigning a uabi
> class number for it. However, the trace logs use the uabi class and
> instance to identify the engine, so leaving uabi class unset makes the
> GSC CS show up as the RCS in those logs.
> Given that the engine is not exposed to the user, we can't add a new
> case in the uabi enum, so we insted internally define a kernel
> reserved class using the next free number.
> 
> Fixes: 194babe26bdc ("drm/i915/mtl: don't expose GSC command streamer to the user")
> Signed-off-by: Daniele Ceraolo Spurio <daniele.ceraolospurio@intel.com>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
> Cc: Alan Previn <alan.previn.teres.alexis@intel.com>
> Cc: Matt Roper <matthew.d.roper@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_user.c | 17 ++++++++---------
>   drivers/gpu/drm/i915/gt/intel_engine_user.h |  4 ++++
>   drivers/gpu/drm/i915/i915_drm_client.h      |  2 +-
>   drivers/gpu/drm/i915/i915_drv.h             |  2 +-
>   4 files changed, 14 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> index 118164ddbb2e..3fd32bedd6e7 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> @@ -47,6 +47,7 @@ static const u8 uabi_classes[] = {
>   	[VIDEO_DECODE_CLASS] = I915_ENGINE_CLASS_VIDEO,
>   	[VIDEO_ENHANCEMENT_CLASS] = I915_ENGINE_CLASS_VIDEO_ENHANCE,
>   	[COMPUTE_CLASS] = I915_ENGINE_CLASS_COMPUTE,
> +	[OTHER_CLASS] = I915_KERNEL_RSVD_CLASS,

Could we set it to -1 (aka no uabi class) to avoid needing to maintain 
the new macros?

And then just teach intel_engines_driver_register to skip -1. Would also 
need teaching engine_rename to handle -1.

Might end up a smaller and more maintainable patch - worth a try do you 
think?

>   };
>   
>   static int engine_cmp(void *priv, const struct list_head *A,
> @@ -138,7 +139,7 @@ const char *intel_engine_class_repr(u8 class)
>   		[COPY_ENGINE_CLASS] = "bcs",
>   		[VIDEO_DECODE_CLASS] = "vcs",
>   		[VIDEO_ENHANCEMENT_CLASS] = "vecs",
> -		[OTHER_CLASS] = "other",
> +		[OTHER_CLASS] = "gsc",

Maybe unrelated?

Regards,

Tvrtko

>   		[COMPUTE_CLASS] = "ccs",
>   	};
>   
> @@ -216,14 +217,8 @@ void intel_engines_driver_register(struct drm_i915_private *i915)
>   		if (intel_gt_has_unrecoverable_error(engine->gt))
>   			continue; /* ignore incomplete engines */
>   
> -		/*
> -		 * We don't want to expose the GSC engine to the users, but we
> -		 * still rename it so it is easier to identify in the debug logs
> -		 */
> -		if (engine->id == GSC0) {
> -			engine_rename(engine, "gsc", 0);
> -			continue;
> -		}
> +		/* The only engine we expect in OTHER_CLASS is GSC0 */
> +		GEM_WARN_ON(engine->class == OTHER_CLASS && engine->id != GSC0);
>   
>   		GEM_BUG_ON(engine->class >= ARRAY_SIZE(uabi_classes));
>   		engine->uabi_class = uabi_classes[engine->class];
> @@ -238,6 +233,10 @@ void intel_engines_driver_register(struct drm_i915_private *i915)
>   			      intel_engine_class_repr(engine->class),
>   			      engine->uabi_instance);
>   
> +		/* We don't want to expose the GSC engine to the users */
> +		if (engine->id == GSC0)
> +			continue;
> +
>   		rb_link_node(&engine->uabi_node, prev, p);
>   		rb_insert_color(&engine->uabi_node, &i915->uabi_engines);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.h b/drivers/gpu/drm/i915/gt/intel_engine_user.h
> index 3dc7e8ab9fbc..dd31805b2a5a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.h
> @@ -11,6 +11,10 @@
>   struct drm_i915_private;
>   struct intel_engine_cs;
>   
> +#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
> +#define I915_KERNEL_RSVD_CLASS (I915_LAST_UABI_ENGINE_CLASS + 1)
> +#define I915_MAX_UABI_CLASSES (I915_KERNEL_RSVD_CLASS + 1)
> +
>   struct intel_engine_cs *
>   intel_engine_lookup_user(struct drm_i915_private *i915, u8 class, u8 instance);
>   
> diff --git a/drivers/gpu/drm/i915/i915_drm_client.h b/drivers/gpu/drm/i915/i915_drm_client.h
> index 67816c912bca..c42cb2511348 100644
> --- a/drivers/gpu/drm/i915/i915_drm_client.h
> +++ b/drivers/gpu/drm/i915/i915_drm_client.h
> @@ -12,7 +12,7 @@
>   
>   #include <uapi/drm/i915_drm.h>
>   
> -#define I915_LAST_UABI_ENGINE_CLASS I915_ENGINE_CLASS_COMPUTE
> +#include "gt/intel_engine_user.h"
>   
>   struct drm_file;
>   struct drm_printer;
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index f3be9033a93f..a718b4cb5a2d 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -238,7 +238,7 @@ struct drm_i915_private {
>   		struct list_head uabi_engines_list;
>   		struct rb_root uabi_engines;
>   	};
> -	unsigned int engine_uabi_class_count[I915_LAST_UABI_ENGINE_CLASS + 1];
> +	unsigned int engine_uabi_class_count[I915_MAX_UABI_CLASSES];
>   
>   	/* protects the irq masks */
>   	spinlock_t irq_lock;
