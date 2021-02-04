Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id A047C30F653
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 16:32:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EA3B86EDF2;
	Thu,  4 Feb 2021 15:32:49 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2009A6EDF2
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 15:32:49 +0000 (UTC)
IronPort-SDR: 0GYogCZ5xP1S77/93JbWxVv/h9c2FMCAWDvCa8ZZWYQCaTZ3X/BJeIhIq6V8qzvoXgc9TD6sSR
 6WpXH1lcGymw==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="181412267"
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="181412267"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 07:32:47 -0800
IronPort-SDR: xPSh7lVaNmsKPCgirDXttncwQVZedtCMqu/Hm3sFxXP3G7oU1m6n7/R9naZRy5xG/tve+VXeit
 t4KD4liNV1zA==
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="393230383"
Received: from acanalx-mobl.ger.corp.intel.com (HELO [10.249.32.114])
 ([10.249.32.114])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 07:32:46 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-33-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <1e6124c4-f17f-cb2d-25bb-77100aba94a8@linux.intel.com>
Date: Thu, 4 Feb 2021 15:32:44 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210201085715.27435-33-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 33/57] drm/i915: Move busywaiting control to
 the scheduler
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
> Busy-waiting is used for preempt-to-busy by schedulers, if they so
> choose. Since it is not a property of the engine, but that of the
> submission backend, move the flag from out of the engine to
> i915_sched_engine.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/gen8_engine_cs.c      |  4 ++--
>   .../drm/i915/gt/intel_execlists_submission.c  |  6 +++++-
>   drivers/gpu/drm/i915/gt/selftest_lrc.c        | 19 +++++++++++++------
>   drivers/gpu/drm/i915/i915_request.h           |  5 +++++
>   drivers/gpu/drm/i915/i915_scheduler_types.h   |  6 ++++++
>   5 files changed, 31 insertions(+), 9 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> index cac80af7ad1c..8791e03ebe61 100644
> --- a/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> +++ b/drivers/gpu/drm/i915/gt/gen8_engine_cs.c
> @@ -507,7 +507,7 @@ gen8_emit_fini_breadcrumb_tail(struct i915_request *rq, u32 *cs)
>   	*cs++ = MI_USER_INTERRUPT;
>   
>   	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
> -	if (intel_engine_has_semaphores(rq->engine))
> +	if (i915_request_use_busywait(rq))
>   		cs = emit_preempt_busywait(rq, cs);
>   
>   	rq->tail = intel_ring_offset(rq, cs);
> @@ -599,7 +599,7 @@ gen12_emit_fini_breadcrumb_tail(struct i915_request *rq, u32 *cs)
>   	*cs++ = MI_USER_INTERRUPT;
>   
>   	*cs++ = MI_ARB_ON_OFF | MI_ARB_ENABLE;
> -	if (intel_engine_has_semaphores(rq->engine))
> +	if (i915_request_use_busywait(rq))
>   		cs = gen12_emit_preempt_busywait(rq, cs);
>   
>   	rq->tail = intel_ring_offset(rq, cs);
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index d4b6d262265a..9245499d2082 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -304,7 +304,7 @@ static bool need_preempt(const struct intel_engine_cs *engine,
>   	const struct i915_sched *se = &engine->sched;
>   	int last_prio;
>   
> -	if (!intel_engine_has_semaphores(engine))
> +	if (!i915_sched_use_busywait(se))
>   		return false;
>   
>   	/*
> @@ -2930,6 +2930,10 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
>   	    intel_engine_has_preemption(engine))
>   		__set_bit(I915_SCHED_HAS_TIMESLICES_BIT,
>   			  &engine->sched.flags);
> +
> +	if (intel_engine_has_preemption(engine))
> +		__set_bit(I915_SCHED_USE_BUSYWAIT_BIT,
> +			  &engine->sched.flags);

I checked GuC is not using this which was my initial concern.

>   }
>   
>   static void logical_ring_default_irqs(struct intel_engine_cs *engine)
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 279091e41b41..6d73add47109 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -679,9 +679,11 @@ static int live_lrc_gpr(void *arg)
>   		if (err)
>   			goto err;
>   
> -		err = __live_lrc_gpr(engine, scratch, true);
> -		if (err)
> -			goto err;
> +		if (intel_engine_has_preemption(engine)) {
> +			err = __live_lrc_gpr(engine, scratch, true);
> +			if (err)
> +				goto err;
> +		}
>   
>   err:
>   		st_engine_heartbeat_enable(engine);
> @@ -859,9 +861,11 @@ static int live_lrc_timestamp(void *arg)
>   			if (err)
>   				break;
>   
> -			err = __lrc_timestamp(&data, true);
> -			if (err)
> -				break;
> +			if (intel_engine_has_preemption(data.engine)) {
> +				err = __lrc_timestamp(&data, true);
> +				if (err)
> +					break;
> +			}
>   		}
>   
>   err:
> @@ -1508,6 +1512,9 @@ static int live_lrc_isolation(void *arg)
>   		    skip_isolation(engine))
>   			continue;
>   
> +		if (!intel_engine_has_preemption(engine))
> +			continue;
> +
>   		intel_engine_pm_get(engine);
>   		for (i = 0; i < ARRAY_SIZE(poison); i++) {
>   			int result;
> diff --git a/drivers/gpu/drm/i915/i915_request.h b/drivers/gpu/drm/i915/i915_request.h
> index 8eea25cb043e..7c29d33e7d51 100644
> --- a/drivers/gpu/drm/i915/i915_request.h
> +++ b/drivers/gpu/drm/i915/i915_request.h
> @@ -642,4 +642,9 @@ static inline bool i915_request_use_semaphores(const struct i915_request *rq)
>   	return intel_engine_has_semaphores(rq->engine);
>   }
>   
> +static inline bool i915_request_use_busywait(const struct i915_request *rq)
> +{
> +	return i915_sched_use_busywait(i915_request_get_scheduler(rq));
> +}
> +
>   #endif /* I915_REQUEST_H */
> diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
> index b4a0e4e26bfd..37475024c0de 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> @@ -21,6 +21,7 @@ enum {
>   	I915_SCHED_ACTIVE_BIT = 0,
>   	I915_SCHED_HAS_TIMESLICES_BIT,
>   	I915_SCHED_NEEDS_BREADCRUMB_BIT,
> +	I915_SCHED_USE_BUSYWAIT_BIT,
>   };
>   
>   /**
> @@ -201,4 +202,9 @@ i915_sched_needs_breadcrumb_tasklet(const struct i915_sched *se)
>   	return test_bit(I915_SCHED_NEEDS_BREADCRUMB_BIT, &se->flags);
>   }
>   
> +static inline bool i915_sched_use_busywait(const struct i915_sched *se)
> +{
> +	return test_bit(I915_SCHED_USE_BUSYWAIT_BIT, &se->flags);
> +}
> +
>   #endif /* _I915_SCHEDULER_TYPES_H_ */
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
