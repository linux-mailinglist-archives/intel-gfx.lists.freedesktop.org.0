Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 0273E1A0C3E
	for <lists+intel-gfx@lfdr.de>; Tue,  7 Apr 2020 12:50:40 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 637AF6E821;
	Tue,  7 Apr 2020 10:50:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 557E16E821
 for <intel-gfx@lists.freedesktop.org>; Tue,  7 Apr 2020 10:50:36 +0000 (UTC)
IronPort-SDR: 8jNX8Y8OuXG5xSmP74vATam6DPRZqwcUJQWPIXO9/ijTCz3JKd0YAEoWUpRZdVFeFrcgdVxP/H
 VZNlwcQwjPoQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by fmsmga102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 03:50:35 -0700
IronPort-SDR: nHaw4wkXXp8pZ6UCG3U+CXlryg0RInF7b4QYtfp6X055CvlACAeWZ0pNEQMsKGlWdU+n6WFCvM
 Zo7mlsJqnkSg==
X-IronPort-AV: E=Sophos;i="5.72,353,1580803200"; d="scan'208";a="424707469"
Received: from vkazinx-mobl2.ger.corp.intel.com (HELO [10.251.172.173])
 ([10.251.172.173])
 by orsmga005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 03:50:34 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200403091300.14734-1-chris@chris-wilson.co.uk>
 <20200403091300.14734-10-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <ccf7f6e5-0295-a179-bf1f-eb4de8570b58@linux.intel.com>
Date: Tue, 7 Apr 2020 11:50:31 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200403091300.14734-10-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 10/10] drm/i915/gt: Declare when we enabled
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


On 03/04/2020 10:13, Chris Wilson wrote:
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
> index b469de0dd9b6..424672ee7874 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -339,7 +339,8 @@ intel_engine_has_timeslices(const struct intel_engine_cs *engine)
>   	if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
>   		return false;
>   
> -	return intel_engine_has_semaphores(engine);
> +	return (intel_engine_has_semaphores(engine) &&
> +		intel_engine_has_preemption(engine));

This is turning off timeslicing on Gen8? Well it wouldn't have worked 
anyway, outside the batch boundaries.. so it does sound technically correct.

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
> index 704dd0e3bc1d..1ee227b5131a 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -523,6 +523,7 @@ typedef struct drm_i915_irq_wait {
>   #define   I915_SCHEDULER_CAP_PREEMPTION	(1ul << 2)
>   #define   I915_SCHEDULER_CAP_SEMAPHORES	(1ul << 3)
>   #define   I915_SCHEDULER_CAP_ENGINE_BUSY_STATS	(1ul << 4)
> +#define   I915_SCHEDULER_CAP_TIMESLICING	(1ul << 5)

Split uapi from Gen8 fix?

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
