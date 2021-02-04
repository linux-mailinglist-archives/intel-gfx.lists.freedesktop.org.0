Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id AB39F30F654
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 16:34:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 07E296EDF3;
	Thu,  4 Feb 2021 15:34:11 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A75336EDF3
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 15:34:09 +0000 (UTC)
IronPort-SDR: NvGQ3nb3szwIZqxPzNLdMA0n2S14uT2nwtEZQRed+SnNOfvhkq208x61RA8fytWHWG2B0yrQ0q
 R2PGONoLuSwQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9885"; a="161017518"
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="161017518"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 07:34:08 -0800
IronPort-SDR: 51R2sZ8dioe+A+zkOH/OMAo9OzvApHZ7BnCKPh1XxmLrn7dd4teFvFd3L7WlM/AjV3aqfBBbTa
 6R6juU1xEVPA==
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="393231874"
Received: from acanalx-mobl.ger.corp.intel.com (HELO [10.249.32.114])
 ([10.249.32.114])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 07:34:07 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-34-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <d7f972a8-f033-86de-30cf-ce1c9f39ee88@linux.intel.com>
Date: Thu, 4 Feb 2021 15:34:05 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210201085715.27435-34-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 34/57] drm/i915: Move preempt-reset flag to
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
> While the HW may support preemption, whether or not the scheduler
> enforces preemption by forcibly resetting the current context is
> ultimately up to the scheduler.
> 
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine.h               | 7 ++-----
>   drivers/gpu/drm/i915/gt/intel_execlists_submission.c | 5 ++++-
>   drivers/gpu/drm/i915/i915_scheduler_types.h          | 9 +++++++++
>   3 files changed, 15 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index db5419ba1dc8..33a29623571d 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -244,12 +244,9 @@ static inline bool intel_engine_uses_guc(const struct intel_engine_cs *engine)
>   }
>   
>   static inline bool
> -intel_engine_has_preempt_reset(const struct intel_engine_cs *engine)
> +intel_engine_has_preempt_reset(struct intel_engine_cs *engine)
>   {
> -	if (!IS_ACTIVE(CONFIG_DRM_I915_PREEMPT_TIMEOUT))
> -		return false;
> -
> -	return intel_engine_has_preemption(engine);
> +	return i915_sched_has_preempt_reset(intel_engine_get_scheduler(engine));
>   }
>   
>   static inline bool
> diff --git a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> index 9245499d2082..7ec33bd73d95 100644
> --- a/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> +++ b/drivers/gpu/drm/i915/gt/intel_execlists_submission.c
> @@ -2931,9 +2931,12 @@ logical_ring_default_vfuncs(struct intel_engine_cs *engine)
>   		__set_bit(I915_SCHED_HAS_TIMESLICES_BIT,
>   			  &engine->sched.flags);
>   
> -	if (intel_engine_has_preemption(engine))
> +	if (intel_engine_has_preemption(engine)) {
>   		__set_bit(I915_SCHED_USE_BUSYWAIT_BIT,
>   			  &engine->sched.flags);
> +		__set_bit(I915_SCHED_HAS_PREEMPT_RESET_BIT,
> +			  &engine->sched.flags);
> +	}
>   }
>   
>   static void logical_ring_default_irqs(struct intel_engine_cs *engine)
> diff --git a/drivers/gpu/drm/i915/i915_scheduler_types.h b/drivers/gpu/drm/i915/i915_scheduler_types.h
> index 37475024c0de..7271a0259a56 100644
> --- a/drivers/gpu/drm/i915/i915_scheduler_types.h
> +++ b/drivers/gpu/drm/i915/i915_scheduler_types.h
> @@ -20,6 +20,7 @@ struct i915_request;
>   enum {
>   	I915_SCHED_ACTIVE_BIT = 0,
>   	I915_SCHED_HAS_TIMESLICES_BIT,
> +	I915_SCHED_HAS_PREEMPT_RESET_BIT,
>   	I915_SCHED_NEEDS_BREADCRUMB_BIT,
>   	I915_SCHED_USE_BUSYWAIT_BIT,
>   };
> @@ -207,4 +208,12 @@ static inline bool i915_sched_use_busywait(const struct i915_sched *se)
>   	return test_bit(I915_SCHED_USE_BUSYWAIT_BIT, &se->flags);
>   }
>   
> +static inline bool i915_sched_has_preempt_reset(const struct i915_sched *se)
> +{
> +	if (!IS_ACTIVE(CONFIG_DRM_I915_PREEMPT_TIMEOUT))
> +		return false;
> +
> +	return test_bit(I915_SCHED_HAS_PREEMPT_RESET_BIT, &se->flags);
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
