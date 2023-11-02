Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 86D257DEEC2
	for <lists+intel-gfx@lfdr.de>; Thu,  2 Nov 2023 10:24:25 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B5BBF10E087;
	Thu,  2 Nov 2023 09:24:22 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9969810E087;
 Thu,  2 Nov 2023 09:24:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698917061; x=1730453061;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=StX7KMQd9FfbGNmv2VVer8s92HrsOgr56kj3i857oWU=;
 b=MQKrZOpYJT3ZTgNY/mLthrnCqy++8YSz0fixKeWKDw5OdnNbGqN1l6cG
 8OKl4PrKpd9rjukZvoTr/UI60a71X2LzLZRzccglfwzdMa87YH8NUHWNQ
 /MV84eSs9rySxRz7RQllK5LA7c5+kUtIq6WA0qBKSX+HWXsfiXm+rgcwn
 NV01oNzZqCvUSgjcf0ttwLDFEL2r8cJlYkDtw3TNQPqiuVdYH0NKRIbbK
 MPr74HyTg/GIKmlT2VYGyPKZQtS4prHt0Yh37nQJunTQozdfeQVqsgVB4
 E3S+mbip5QYCuD2lqym6aNxXmgtTM9d5r5RDibJaFa6UG2E2yhfZwEEmq w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10881"; a="474911498"
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; d="scan'208";a="474911498"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 02:24:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.03,271,1694761200"; 
   d="scan'208";a="2375145"
Received: from nofferma-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.51.121])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Nov 2023 02:24:18 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>,
 Intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
In-Reply-To: <1d8b9bb8-1368-436f-9fb6-125e6bb04e40@linux.intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20231101100124.303739-1-tvrtko.ursulin@linux.intel.com>
 <87sf5p4wjx.fsf@intel.com>
 <1d8b9bb8-1368-436f-9fb6-125e6bb04e40@linux.intel.com>
Date: Thu, 02 Nov 2023 11:24:15 +0200
Message-ID: <87a5rw4if4.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Remove unused
 for_each_uabi_class_engine
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
Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, 01 Nov 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
> On 01/11/2023 10:06, Jani Nikula wrote:
>> On Wed, 01 Nov 2023, Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com> wrote:
>>> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>>>
>>> Unused macro after 99919be74aa3 ("drm/i915/gem: Zap the i915_gem_object_blt code")
>>> removed some code.
>>>
>>> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
>> 
>> \o/
>> 
>> Reviewed-by: Jani Nikula <jani.nikula@intel.com>
>> 
>> Could I persuade you to move for_each_engine(),
>> for_each_engine_masked(), rb_to_uabi_engine(), and
>> for_each_uabi_engine() to a more suitable header?
>
> Former to intel_gt.h, but latter a better place is not coming to me. Like:
>
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_pm.h b/drivers/gpu/drm/i915/gt/intel_engine_pm.h
> index d68675925b79..1d97c435a015 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_pm.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_pm.h
> @@ -10,6 +10,7 @@
>   #include "i915_request.h"
>   #include "intel_engine_types.h"
>   #include "intel_wakeref.h"
> +#include "intel_gt.h"
>   #include "intel_gt_pm.h"
>   
>   static inline bool
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt.h b/drivers/gpu/drm/i915/gt/intel_gt.h
> index 9ffdb05e231e..b0e453e27ea8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt.h
> +++ b/drivers/gpu/drm/i915/gt/intel_gt.h
> @@ -171,6 +171,20 @@ void intel_gt_release_all(struct drm_i915_private *i915);
>               (id__)++) \
>                  for_each_if(((gt__) = (i915__)->gt[(id__)]))
>   
> +/* Simple iterator over all initialised engines */
> +#define for_each_engine(engine__, gt__, id__) \
> +       for ((id__) = 0; \
> +            (id__) < I915_NUM_ENGINES; \
> +            (id__)++) \
> +               for_each_if ((engine__) = (gt__)->engine[(id__)])
> +
> +/* Iterator over subset of engines selected by mask */
> +#define for_each_engine_masked(engine__, gt__, mask__, tmp__) \
> +       for ((tmp__) = (mask__) & (gt__)->info.engine_mask; \
> +            (tmp__) ? \
> +            ((engine__) = (gt__)->engine[__mask_next_bit(tmp__)]), 1 : \
> +            0;)
> +
>   void intel_gt_info_print(const struct intel_gt_info *info,
>                           struct drm_printer *p);
>   
> diff --git a/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c b/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c
> index 8f9b874fdc9c..3aa1d014c14d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c
> +++ b/drivers/gpu/drm/i915/gt/intel_gt_engines_debugfs.c
> @@ -6,8 +6,8 @@
>   
>   #include <drm/drm_print.h>
>   
> -#include "i915_drv.h" /* for_each_engine! */
>   #include "intel_engine.h"
> +#include "intel_gt.h"
>   #include "intel_gt_debugfs.h"
>   #include "intel_gt_engines_debugfs.h"
>   
> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
> index 744c8c4a50fa..3feec04a2b1c 100644
> --- a/drivers/gpu/drm/i915/i915_drv.h
> +++ b/drivers/gpu/drm/i915/i915_drv.h
> @@ -396,20 +396,6 @@ static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
>          return i915->gt[0];
>   }
>   
> -/* Simple iterator over all initialised engines */
> -#define for_each_engine(engine__, gt__, id__) \
> -       for ((id__) = 0; \
> -            (id__) < I915_NUM_ENGINES; \
> -            (id__)++) \
> -               for_each_if ((engine__) = (gt__)->engine[(id__)])
> -
> -/* Iterator over subset of engines selected by mask */
> -#define for_each_engine_masked(engine__, gt__, mask__, tmp__) \
> -       for ((tmp__) = (mask__) & (gt__)->info.engine_mask; \
> -            (tmp__) ? \
> -            ((engine__) = (gt__)->engine[__mask_next_bit(tmp__)]), 1 : \
> -            0;)
> -
>   #define rb_to_uabi_engine(rb) \
>          rb_entry_safe(rb, struct intel_engine_cs, uabi_node)
>   
> diff --git a/drivers/gpu/drm/i915/selftests/intel_uncore.c b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> index 7a5f4adc1b8b..c998f15d505c 100644
> --- a/drivers/gpu/drm/i915/selftests/intel_uncore.c
> +++ b/drivers/gpu/drm/i915/selftests/intel_uncore.c
> @@ -24,6 +24,8 @@
>   
>   #include "../i915_selftest.h"
>   
> +#include "gt/intel_gt.h"
> +
>   static int intel_fw_table_check(const struct intel_forcewake_range *ranges,
>                                  unsigned int num_ranges,
>                                  bool is_watertight)
>
> Beneficial?

Yeah, I'd like to have less gem/gt/display in i915_drv.h, and focus on
the generic driver stuff.

BR,
Jani.


>
> Regards,
>
> Tvrtko
>   
>>> ---
>>>   drivers/gpu/drm/i915/i915_drv.h | 5 -----
>>>   1 file changed, 5 deletions(-)
>>>
>>> diff --git a/drivers/gpu/drm/i915/i915_drv.h b/drivers/gpu/drm/i915/i915_drv.h
>>> index bfcbe93bd9fe..744c8c4a50fa 100644
>>> --- a/drivers/gpu/drm/i915/i915_drv.h
>>> +++ b/drivers/gpu/drm/i915/i915_drv.h
>>> @@ -418,11 +418,6 @@ static inline struct intel_gt *to_gt(const struct drm_i915_private *i915)
>>>   	     (engine__); \
>>>   	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
>>>   
>>> -#define for_each_uabi_class_engine(engine__, class__, i915__) \
>>> -	for ((engine__) = intel_engine_lookup_user((i915__), (class__), 0); \
>>> -	     (engine__) && (engine__)->uabi_class == (class__); \
>>> -	     (engine__) = rb_to_uabi_engine(rb_next(&(engine__)->uabi_node)))
>>> -
>>>   #define INTEL_INFO(i915)	((i915)->__info)
>>>   #define RUNTIME_INFO(i915)	(&(i915)->__runtime)
>>>   #define DRIVER_CAPS(i915)	(&(i915)->caps)
>> 

-- 
Jani Nikula, Intel
