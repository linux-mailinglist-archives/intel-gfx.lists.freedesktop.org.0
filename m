Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id E01BB30F62F
	for <lists+intel-gfx@lfdr.de>; Thu,  4 Feb 2021 16:26:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D18F46EDE0;
	Thu,  4 Feb 2021 15:26:31 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BCA386EDE0
 for <intel-gfx@lists.freedesktop.org>; Thu,  4 Feb 2021 15:26:30 +0000 (UTC)
IronPort-SDR: PisWV8vqT9ZfSshaC/3s3Gt1EA6y+z9eCGXDVxP6DfB7pTXiLgf7mWAzXb+Ud9KWaZCDllVHNn
 uQ/UUuTxNQGQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9884"; a="245331365"
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="245331365"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 07:26:30 -0800
IronPort-SDR: NZU5rK+fjaOtrA8zd3wxabuxlqUYELzVN/Q6Hoy+v9a338+PtYwl9bB90W8yhaOGg33Gcg1lhW
 xzg8yNq2I4tg==
X-IronPort-AV: E=Sophos;i="5.79,401,1602572400"; d="scan'208";a="393223153"
Received: from acanalx-mobl.ger.corp.intel.com (HELO [10.249.32.114])
 ([10.249.32.114])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Feb 2021 07:26:29 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <20210201085715.27435-1-chris@chris-wilson.co.uk>
 <20210201085715.27435-31-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <e1b2bcfb-e2ef-5eac-269b-201330c60cbe@linux.intel.com>
Date: Thu, 4 Feb 2021 15:26:26 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.6.1
MIME-Version: 1.0
In-Reply-To: <20210201085715.27435-31-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH 31/57] drm/i915/gt: Declare when we enabled
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
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>


On 01/02/2021 08:56, Chris Wilson wrote:
> Let userspace know if they can trust timeslicing by including it as part
> of the I915_PARAM_HAS_SCHEDULER::I915_SCHEDULER_CAP_TIMESLICING
> 
> v2: Only declare timeslicing if we can safely preempt userspace.
> 
> Fixes: 8ee36e048c98 ("drm/i915/execlists: Minimalistic timeslicing")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>   drivers/gpu/drm/i915/gt/intel_engine_user.c | 26 +++++++++++++++------
>   include/uapi/drm/i915_drm.h                 |  1 +
>   2 files changed, 20 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_engine_user.c b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> index 64eccdf32a22..50911fbe6368 100644
> --- a/drivers/gpu/drm/i915/gt/intel_engine_user.c
> +++ b/drivers/gpu/drm/i915/gt/intel_engine_user.c
> @@ -90,13 +90,17 @@ static void sort_engines(struct drm_i915_private *i915,
>   static void set_scheduler_caps(struct drm_i915_private *i915)
>   {
>   	static const struct {
> -		u8 engine;
> -		u8 sched;
> -	} map[] = {
> +		u8 flag;
> +		u8 cap;
> +	} engine_map[] = {
>   #define MAP(x, y) { ilog2(I915_ENGINE_##x), ilog2(I915_SCHEDULER_CAP_##y) }
>   		MAP(HAS_PREEMPTION, PREEMPTION),
>   		MAP(HAS_SEMAPHORES, SEMAPHORES),
>   		MAP(SUPPORTS_STATS, ENGINE_BUSY_STATS),
> +#undef MAP
> +	}, sched_map[] = {
> +#define MAP(x, y) { ilog2(I915_SCHED_##x), ilog2(I915_SCHEDULER_CAP_##y) }
> +		MAP(HAS_TIMESLICES_BIT, TIMESLICING),
>   #undef MAP
>   	};
>   	struct intel_engine_cs *engine;
> @@ -105,6 +109,7 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
>   	enabled = 0;
>   	disabled = 0;
>   	for_each_uabi_engine(engine, i915) { /* all engines must agree! */
> +		struct i915_sched *se = intel_engine_get_scheduler(engine);
>   		int i;
>   
>   		if (intel_engine_has_scheduler(engine))
> @@ -114,11 +119,18 @@ static void set_scheduler_caps(struct drm_i915_private *i915)
>   			disabled |= (I915_SCHEDULER_CAP_ENABLED |
>   				     I915_SCHEDULER_CAP_PRIORITY);
>   
> -		for (i = 0; i < ARRAY_SIZE(map); i++) {
> -			if (engine->flags & BIT(map[i].engine))
> -				enabled |= BIT(map[i].sched);
> +		for (i = 0; i < ARRAY_SIZE(engine_map); i++) {
> +			if (engine->flags & BIT(engine_map[i].flag))
> +				enabled |= BIT(engine_map[i].cap);
>   			else
> -				disabled |= BIT(map[i].sched);
> +				disabled |= BIT(engine_map[i].cap);
> +		}
> +
> +		for (i = 0; i < ARRAY_SIZE(sched_map); i++) {
> +			if (se->flags & BIT(sched_map[i].flag))
> +				enabled |= BIT(sched_map[i].cap);
> +			else
> +				disabled |= BIT(sched_map[i].cap);
>   		}
>   	}
>   
> diff --git a/include/uapi/drm/i915_drm.h b/include/uapi/drm/i915_drm.h
> index 1987e2ea79a3..cda0f391d965 100644
> --- a/include/uapi/drm/i915_drm.h
> +++ b/include/uapi/drm/i915_drm.h
> @@ -524,6 +524,7 @@ typedef struct drm_i915_irq_wait {
>   #define   I915_SCHEDULER_CAP_PREEMPTION	(1ul << 2)
>   #define   I915_SCHEDULER_CAP_SEMAPHORES	(1ul << 3)
>   #define   I915_SCHEDULER_CAP_ENGINE_BUSY_STATS	(1ul << 4)
> +#define   I915_SCHEDULER_CAP_TIMESLICING	(1ul << 5)
>   
>   #define I915_PARAM_HUC_STATUS		 42
>   
> 

Reviewed-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
