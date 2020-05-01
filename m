Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A05E1C13F8
	for <lists+intel-gfx@lfdr.de>; Fri,  1 May 2020 15:37:39 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2CDA6E2B0;
	Fri,  1 May 2020 13:37:37 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 951D86E2B0
 for <intel-gfx@lists.freedesktop.org>; Fri,  1 May 2020 13:37:36 +0000 (UTC)
IronPort-SDR: oc0YzYqJW0K6vMzWbGFasO4gbJ+CvRKdylgjV2GWQXqtZpHSwj4TOEhZumTX/iDveuEBX4kTW3
 rPxMQ+f1APNg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 06:37:36 -0700
IronPort-SDR: gCEhm56oRZ4ouMNrdEB7BW8CXKPbief63Dh/+TXVlR/dLS+WUHksphHUvH1p04WsevxzehZ0OV
 ZEB+gq8R9ymQ==
X-IronPort-AV: E=Sophos;i="5.73,339,1583222400"; d="scan'208";a="283178537"
Received: from stal1-mobl.ger.corp.intel.com (HELO [10.214.218.50])
 ([10.214.218.50])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 May 2020 06:37:34 -0700
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20200501122249.12417-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <6c2fb4b1-9eba-b674-5cbe-7eced91b5235@linux.intel.com>
Date: Fri, 1 May 2020 14:37:32 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200501122249.12417-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/gt: Make timeslicing an explicit
 engine property
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


On 01/05/2020 13:22, Chris Wilson wrote:
> In order to allow userspace to rely on timeslicing to reorder their
> batches, we must support preemption of those user batches. Declare
> timeslicing as an explicit property that is a combination of having the
> kernel support and HW support.
> 
> Suggested-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine.h       |  9 ---------
>   drivers/gpu/drm/i915/gt/intel_engine_types.h | 18 ++++++++++++++----
>   drivers/gpu/drm/i915/gt/intel_lrc.c          |  5 ++++-
>   3 files changed, 18 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine.h b/drivers/gpu/drm/i915/gt/intel_engine.h
> index d10e52ff059f..19d0b8830905 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine.h
> @@ -332,13 +332,4 @@ intel_engine_has_preempt_reset(const struct intel_engine_cs *engine)
>   	return intel_engine_has_preemption(engine);
>   }
>   
> -static inline bool
> -intel_engine_has_timeslices(const struct intel_engine_cs *engine)
> -{
> -	if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
> -		return false;
> -
> -	return intel_engine_has_semaphores(engine);
> -}
> -
>   #endif /* _INTEL_RINGBUFFER_H_ */
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_types.h b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> index 3c3225c0332f..6c676774dcd9 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_types.h
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_types.h
> @@ -492,10 +492,11 @@ struct intel_engine_cs {
>   #define I915_ENGINE_SUPPORTS_STATS   BIT(1)
>   #define I915_ENGINE_HAS_PREEMPTION   BIT(2)
>   #define I915_ENGINE_HAS_SEMAPHORES   BIT(3)
> -#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(4)
> -#define I915_ENGINE_IS_VIRTUAL       BIT(5)
> -#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(6)
> -#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(7)
> +#define I915_ENGINE_HAS_TIMESLICES   BIT(4)
> +#define I915_ENGINE_NEEDS_BREADCRUMB_TASKLET BIT(5)
> +#define I915_ENGINE_IS_VIRTUAL       BIT(6)
> +#define I915_ENGINE_HAS_RELATIVE_MMIO BIT(7)
> +#define I915_ENGINE_REQUIRES_CMD_PARSER BIT(8)
>   	unsigned int flags;
>   
>   	/*
> @@ -593,6 +594,15 @@ intel_engine_has_semaphores(const struct intel_engine_cs *engine)
>   	return engine->flags & I915_ENGINE_HAS_SEMAPHORES;
>   }
>   
> +static inline bool
> +intel_engine_has_timeslices(const struct intel_engine_cs *engine)
> +{
> +	if (!IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
> +		return false;
> +
> +	return engine->flags & I915_ENGINE_HAS_TIMESLICES;
> +}
> +
>   static inline bool
>   intel_engine_needs_breadcrumb_tasklet(const struct intel_engine_cs *engine)
>   {
> diff --git a/drivers/gpu/drm/i915/gt/intel_lrc.c b/drivers/gpu/drm/i915/gt/intel_lrc.c
> index 4311b12542fb..d4ef344657b0 100644
> --- a/drivers/gpu/drm/i915/gt/intel_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/intel_lrc.c
> @@ -4801,8 +4801,11 @@ void intel_execlists_set_default_submission(struct intel_engine_cs *engine)
>   	engine->flags |= I915_ENGINE_SUPPORTS_STATS;
>   	if (!intel_vgpu_active(engine->i915)) {
>   		engine->flags |= I915_ENGINE_HAS_SEMAPHORES;
> -		if (HAS_LOGICAL_RING_PREEMPTION(engine->i915))
> +		if (HAS_LOGICAL_RING_PREEMPTION(engine->i915)) {
>   			engine->flags |= I915_ENGINE_HAS_PREEMPTION;
> +			if (IS_ACTIVE(CONFIG_DRM_I915_TIMESLICE_DURATION))
> +				engine->flags |= I915_ENGINE_HAS_TIMESLICES;
> +		}
>   	}
>   
>   	if (INTEL_GEN(engine->i915) >= 12)
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
