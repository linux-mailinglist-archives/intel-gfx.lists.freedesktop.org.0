Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B47B173770
	for <lists+intel-gfx@lfdr.de>; Fri, 28 Feb 2020 13:45:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 158D06E17C;
	Fri, 28 Feb 2020 12:45:48 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 392F46E17C
 for <intel-gfx@lists.freedesktop.org>; Fri, 28 Feb 2020 12:45:47 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 28 Feb 2020 04:45:46 -0800
X-IronPort-AV: E=Sophos;i="5.70,496,1574150400"; d="scan'208";a="232234913"
Received: from pmulhall-mobl.ger.corp.intel.com (HELO [10.251.85.135])
 ([10.251.85.135])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-SHA;
 28 Feb 2020 04:45:44 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200227085723.1961649-1-chris@chris-wilson.co.uk>
 <20200227085723.1961649-17-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <eae19a92-c807-4663-4509-f47e33f1209c@linux.intel.com>
Date: Fri, 28 Feb 2020 12:45:42 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200227085723.1961649-17-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 17/20] drm/i915/gt: Declare when we enabled
 timeslicing
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
Cc: Kenneth Graunke <kenneth@whitecape.org>
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 27/02/2020 08:57, Chris Wilson wrote:
> Let userspace know if they can trust timeslicing by including it as part
> of the I915_PARAM_HAS_SCHEDULER::I915_SCHEDULER_CAP_TIMESLICING
> 
> v2: Only declare timeslicing if we can safely preempt userspace.
> 
> Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Kenneth Graunke <kenneth@whitecape.org>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine.h      | 3 ++-
>   drivers/gpu/drm/i915/gt/intel_engine_user.c | 5 +++++
>   include/uapi/drm/i915_drm.h                 | 1 +
>   3 files changed, 8 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index 29c8c03c5caa..a32dc82a90d4 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -326,7 +326,8 @@ intel_engine_has_timeslices(const struct intel_engine_cs *engine)
>   	if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
>   		return false;
>   
> -	return intel_engine_has_semaphores(engine);
> +	return (intel_engine_has_semaphores(engine) &&
> +		intel_engine_has_preemption(engine));

This could be the fixes bit.

AFAIR has_semaphores is can we preempt between batches and 
has_preemption is can we preempt inside them. What was the consequence 
of not considering this in has_timeslices?

>   }
>   
>   #endif /* _INTEL_RINGBUFFER_H_ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> index 848decee9066..b84fdd722781 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> @@ -121,6 +121,11 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
>   			else
>   				disabled |= BIT(map[i].sched);
>   		}
> +
> +		if (intel_engine_has_timeslices(engine))
> +			enabled |= I915_SCHEDULER_CAP_TIMESLICING;
> +		else
> +			disabled |= I915_SCHEDULER_CAP_TIMESLICING;
>   	}
>   
>   	i915->caps.scheduler = enabled & ~disabled;
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 2813e579b480..4f903431a3fe 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -523,6 +523,7 @@ typedef struct drm_i915_irq_wait {
>   #define   I915_SCHEDULER_CAP_PREEMPTION	(1ul << 2)
>   #define   I915_SCHEDULER_CAP_SEMAPHORES	(1ul << 3)
>   #define   I915_SCHEDULER_CAP_ENGINE_BUSY_STATS	(1ul << 4)
> +#define   I915_SCHEDULER_CAP_TIMESLICING	(1ul << 5)

And this would be the new uapi bit.

Split into two patches?

Regards,

Tvrtko

>   
>   #define I915_PARAM_HUC_STATUS		 42
>   
> 
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
