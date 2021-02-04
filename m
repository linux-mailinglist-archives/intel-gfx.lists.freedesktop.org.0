Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D635330F63E
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 16:28:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3CFFF6E054;
	Thu,  4 Feb 2021 15:28:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga05.intel.com (mga05.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1BD786E054
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 15:28:33 +0000 (UTC)
IronPort-SDR: s7OA9g/HyXmW9DpEYErozb/U2fbc+i3wfFt7O7MPX5pGLTu5FVzJmZ9rKPt0DCjEXC4YJTQLmv
 7lTa3g//z0aA==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="266093181"
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="266093181"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 07:28:32 -0800
IronPort-SDR: aU7Nw8UDuEiEMrg6dhiBy7t1i6CzfwMG8BV7lO8JTPiAjJs8wPQVrbf4vKue8l0Bk5+WaS0JvW
 +3pxBz0AAxBg==
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="393225327"
Received: from acanalx-mobl.ger.corp.intel.com (HELO [10.249.32.114])
 ([10.249.32.114])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 07:28:31 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-32-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <911ddc88-e105-c770-6b56-f1963144d83f@linux.intel.com>
Date: Thu, 4 Feb 2021 15:28:30 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210201085715.27435-32-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 32/57] drm/i915: Move needs-breadcrumb flags
 to scheduler
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
> Whether the scheduler depends on interrupt delivery for forward progress
> is a property of the scheduler backend not of the underlying engine, so
> move the flag from inside the engine to i915_sched_engine.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine.h            |  6 ++++++
>   drivers/gpu/drm/i915/gt/intel_engine_types.h      | 13 +++----------
>   drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c |  2 +-
>   drivers/gpu/drm/i915/i915_scheduler_types.h       |  7 +++++++
>   4 files changed, 17 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index ca3a9cb06328..db5419ba1dc8 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -285,4 +285,10 @@ intel_engine_has_timeslices(struct intel_engine_cs *engine)
>   	return i915_sched_has_timeslices(intel_engine_get_scheduler(engine));
>   }
>   
> +static inline bool
> +intel_engine_needs_breadcrumb_tasklet(struct intel_engine_cs *engine)
> +{
> +	return i915_sched_needs_breadcrumb_tasklet(intel_engine_get_scheduler(engine));
> +}
> +
>   #endif /* _INTEL_RINGBUFFER_H_ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 96a0aec29672..f856bd9b7dae 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -442,10 +442,9 @@ struct intel_engine_cs {
>   #define I915_ENGINE_SUPPORTS_STATS   BIT(1)
>   #define I915_ENGINE_HAS_PREEMPTION   BIT(2)
>   #define I915_ENGINE_HAS_SEMAPHORES   BIT(3)
> -#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(4)
> -#define I915_ENGINE_IS_VIRTUAL       BIT(5)
> -#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(6)
> -#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(7)
> +#define I915_ENGINE_IS_VIRTUAL       BIT(4)
> +#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(5)
> +#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(6)
>   	unsigned int flags;
>   
>   	/*
> @@ -540,12 +539,6 @@ intel_engine_has_semaphores(const struct intel_engine_cs *engine)
>   	return engine->flags & I915_ENGINE_HAS_SEMAPHORES;
>   }
>   
> -static inline bool
> -intel_engine_needs_breadcrumb_tasklet(const struct intel_engine_cs *engine)
> -{
> -	return engine->flags & I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
> -}
> -
>   static inline bool
>   intel_engine_is_virtual(const struct intel_engine_cs *engine)
>   {
> diff --git a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> index 887f38fb671f..e8c66d868c59 100644
> --- a/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> +++ b/drivers/gpu/drm/i915/gt/uc/intel_guc_submission.c
> @@ -606,7 +606,6 @@ static void guc_default_vfuncs(struct intel_engine_cs *engine)
>   	}
>   	engine->set_default_submission = guc_set_default_submission;
>   
> -	engine->flags |= I915_ENGINE_NEEDS_BREADCRUMB_TASKLET;
>   	engine->flags |= I915_ENGINE_HAS_PREEMPTION;
>   
>   	/*
> @@ -656,6 +655,7 @@ int intel_guc_submission_setup(struct intel_engine_cs *engine)
>   
>   	tasklet_setup(&engine->sched.tasklet, guc_submission_tasklet);
>   	__set_bit(I915_SCHED_ACTIVE_BIT, &engine->sched.flags);
> +	__set_bit(I915_SCHED_NEEDS_BREADCRUMB_BIT, &engine->sched.flags);

Bah here my idea from earlier falls apart a bit. Don't know.

>   
>   	guc_default_vfuncs(engine);
>   	guc_default_irqs(engine);
> diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
> index dfb29b8c2bee..b4a0e4e26bfd 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> @@ -20,6 +20,7 @@ struct i915_request;
>   enum {
>   	I915_SCHED_ACTIVE_BIT = 0,
>   	I915_SCHED_HAS_TIMESLICES_BIT,
> +	I915_SCHED_NEEDS_BREADCRUMB_BIT,
>   };
>   
>   /**
> @@ -194,4 +195,10 @@ static inline bool i915_sched_has_timeslices(const struct i915_sched *se)
>   	return test_bit(I915_SCHED_HAS_TIMESLICES_BIT, &se->flags);
>   }
>   
> +static inline bool
> +i915_sched_needs_breadcrumb_tasklet(const struct i915_sched *se)
> +{
> +	return test_bit(I915_SCHED_NEEDS_BREADCRUMB_BIT, &se->flags);
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
