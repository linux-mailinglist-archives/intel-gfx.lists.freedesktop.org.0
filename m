Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 261AB30F5FE
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 16:18:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6252F6EDD2;
	Thu,  4 Feb 2021 15:18:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0D606EDD2
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 15:18:35 +0000 (UTC)
IronPort-SDR: 7ZOGf+dpNB5mmKqfrR/6iugYVOf0Ha+erXz4NQrQyhT+iVX1S6G31Guj4g7BvZ8jXEi7rchFxP
 VpTsIl5LqdOg==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="245329863"
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="245329863"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 07:18:34 -0800
IronPort-SDR: f6NYoW/O54P4H5kL8cdZ08M8a9qD9/Z+aKSDRbjE9YtR7Xd6pHklmZXSuNg2SU6Lpd2WU66UbW
 GBhI0F/hILWA==
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="393216165"
Received: from acanalx-mobl.ger.corp.intel.com (HELO [10.249.32.114])
 ([10.249.32.114])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 07:18:33 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-30-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <f46141bd-5ec2-5b7a-5ab0-e6ce0b5baec8@linux.intel.com>
Date: Thu, 4 Feb 2021 15:18:31 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210201085715.27435-30-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 30/57] drm/i915: Move timeslicing flag to
 scheduler
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 01/02/2021 08:56, Chris Wilson wrote:
> Whether a scheduler chooses to implement timeslicing is up to it, and
> not an underlying property of the HW engine. The scheduler does depend
> on the HW supporting preemption.

Therefore, continuing on the comment I made in the previous patch, if we 
had a helper with which engine would request scheduling (setting the 
tasklet), if it passed in a pointer to itself, scheduler would then be 
able to inspect if the engine supports preemption and so set its own 
internal flag. Makes sense? It would require something like:

   i915_sched_enable_scheduling(se, engine, tasklet)

Or something like that if my memory still holds.

Regards,

Tvrtko

> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine.h         |  6 ++++++
>   drivers/gpu/drm/i915/gt/intel_engine_types.h   | 18 ++++--------------
>   .../drm/i915/gt/intel_execlists_submission.c   |  9 ++++++---
>   drivers/gpu/drm/i915/gt/selftest_execlists.c   |  2 +-
>   drivers/gpu/drm/i915/i915_scheduler_types.h    | 10 ++++++++++
>   5 files changed, 27 insertions(+), 18 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 4f0163457aed..ca3a9cb06328 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -279,4 +279,10 @@ intel_engine_flush_scheduler(struct intel_engine_cs *engine)
>   	i915_sched_flush(intel_engine_get_scheduler(engine));
>   }
>   
> +static inline bool
> +intel_engine_has_timeslices(struct intel_engine_cs *engine)
> +{
> +	return i915_sched_has_timeslices(intel_engine_get_scheduler(engine));
> +}
> +
>   #endif /* _INTEL_RINGBUFFER_H_ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index a3024a0de1de..96a0aec29672 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -442,11 +442,10 @@ struct intel_engine_cs {
>   #define I915_ENGINE_SUPPORTS_STATS   BIT(1)
>   #define I915_ENGINE_HAS_PREEMPTION   BIT(2)
>   #define I915_ENGINE_HAS_SEMAPHORES   BIT(3)
> -#define I915_ENGINE_HAS_TIMESLICES   BIT(4)
> -#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(5)
> -#define I915_ENGINE_IS_VIRTUAL       BIT(6)
> -#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(7)
> -#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(8)
> +#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(4)
> +#define I915_ENGINE_IS_VIRTUAL       BIT(5)
> +#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(6)
> +#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(7)
>   	unsigned int flags;
>   
>   	/*
> @@ -541,15 +540,6 @@ intel_engine_has_semaphores(const struct intel_engine_cs *engine)
>   	return engine->flags & I915_ENGINE_HAS_SEMAPHORES;
>   }
>   
> -static inline bool
> -intel_engine_has_timeslices(const struct intel_engine_cs *engine)
> -{
> -	if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
> -		return false;
> -
> -	return engine->flags & I915_ENGINE_HAS_TIMESLICES;
> -}
> -
>   static inline bool
>   intel_engine_needs_breadcrumb_tasklet(const struct intel_engine_cs *engine)
>   {
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 3217cb4369ad..d4b6d262265a 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -1023,7 +1023,7 @@ static bool needs_timeslice(const struct intel_engine_cs *engine,
>   {
>   	const struct i915_sched *se = &engine->sched;
>   
> -	if (!intel_engine_has_timeslices(engine))
> +	if (!i915_sched_has_timeslices(se))
>   		return false;
>   
>   	/* If not currently active, or about to switch, wait for next event */
> @@ -2918,8 +2918,6 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
>   		engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
>   		if (can_preempt(engine)) {
>   			engine->flags |= I915_ENGINE_HAS_PREEMPTION;
> -			if (IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
> -				engine->flags |= I915_ENGINE_HAS_TIMESLICES;
>   		}
>   	}
>   
> @@ -2927,6 +2925,11 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
>   		engine->emit_bb_start = gen8_emit_bb_start;
>   	else
>   		engine->emit_bb_start = gen8_emit_bb_start_noarb;
> +
> +	if (IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION) &&
> +	    intel_engine_has_preemption(engine))
> +		__set_bit(I915_SCHED_HAS_TIMESLICES_BIT,
> +			  &engine->sched.flags);
>   }
>   
>   static void logical_ring_default_irqs(struct intel_engine_cs *engine)
> diff --git a/drivers/gpu/drm/i915/gt/selftest_execlists.c b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> index cfc0f4b9fbc5..147cbfd6dec0 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_execlists.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_execlists.c
> @@ -3825,7 +3825,7 @@ static unsigned int
>   __select_siblings(struct intel_gt *gt,
>   		  unsigned int class,
>   		  struct intel_engine_cs **siblings,
> -		  bool (*filter)(const struct intel_engine_cs *))
> +		  bool (*filter)(struct intel_engine_cs *))
>   {
>   	unsigned int n = 0;
>   	unsigned int inst;
> diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
> index cb1eddb7edc8..dfb29b8c2bee 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> @@ -12,12 +12,14 @@
>   #include <linux/workqueue.h>
>   
>   #include "i915_priolist_types.h"
> +#include "i915_utils.h"
>   
>   struct drm_printer;
>   struct i915_request;
>   
>   enum {
>   	I915_SCHED_ACTIVE_BIT = 0,
> +	I915_SCHED_HAS_TIMESLICES_BIT,
>   };
>   
>   /**
> @@ -184,4 +186,12 @@ static inline bool i915_sched_is_active(const struct i915_sched *se)
>   	return test_bit(I915_SCHED_ACTIVE_BIT, &se->flags);
>   }
>   
> +static inline bool i915_sched_has_timeslices(const struct i915_sched *se)
> +{
> +	if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
> +		return false;
> +
> +	return test_bit(I915_SCHED_HAS_TIMESLICES_BIT, &se->flags);
> +}
> +
>   #endif /* _I915_SCHEDULER_TYPES_H_ */
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
