Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D602F9C36
	for <lists+intel-gfx@lfdr.de>; Mon, 18 Jan 2021 11:14:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5B6E26E199;
	Mon, 18 Jan 2021 10:14:53 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3C2446E199
 for <intel-gfx@lists.freedesktop.org>; Mon, 18 Jan 2021 10:14:51 +0000 (UTC)
IronPort-SDR: 4KAR+c1+4WdYcdapxEVxECmCogWwRQU2Ql6qfhpr8qIHuh+U/J4bC2qpznEGKjhYEj0cZSpEnS
 FysAojaj8Fpw==
X-IronPort-AV: E=McAfee;i="6000,8403,9867"; a="178935114"
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="178935114"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 02:14:47 -0800
IronPort-SDR: XxzsYFs9+8jd0m7NhaIC3SYPCjTPxQ5efOwNCwdSGZnCZjaG18AJ9x52StPPzLgJymZCo2f7Hq
 omxStB+zePsg==
X-IronPort-AV: E=Sophos;i="5.79,356,1602572400"; d="scan'208";a="383516033"
Received: from nshalit-mobl.ger.corp.intel.com (HELO [10.214.195.251])
 ([10.214.195.251])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2021 02:14:46 -0800
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
References: <87lfcqobpl.fsf@intel.com>
 <20210118100724.465555-1-chris@chris-wilson.co.uk>
From: Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
Organization: Intel Corporation UK Plc
Message-ID: <9358b26b-e7e4-746d-5ee0-9e36a5559b57@linux.intel.com>
Date: Mon, 18 Jan 2021 10:14:43 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.5.0
MIME-Version: 1.0
In-Reply-To: <20210118100724.465555-1-chris@chris-wilson.co.uk>
Content-Language: en-US
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Don't grab wakeref when
 enabling events
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


On 18/01/2021 10:07, Chris Wilson wrote:
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Chris found a CI report which points out calling intel_runtime_pm_get from
> inside i915_pmu_enable hook is not allowed since it can be invoked from
> hard irq context. This is something we knew but forgot, so lets fix it
> once again.
> 
> We do this by syncing the internal book keeping with hardware rc6 counter
> on driver load.
> 
> v2:
>   * Always sync on parking and fully sync on init.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: f4e9894b6952 ("drm/i915/pmu: Correct the rc6 offset upon enabling")
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
> Link: https://patchwork.freedesktop.org/patch/msgid/20201214094349.3563876-1-tvrtko.ursulin@linux.intel.com
> (cherry picked from commit dbe13ae1d6abaab417edf3c37601c6a56594a4cd)
> ---
>   drivers/gpu/drm/i915/i915_pmu.c | 30 ++++++++++++++++--------------
>   1 file changed, 16 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index d76685ce0399..9856479b56d8 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -184,13 +184,24 @@ static u64 get_rc6(struct intel_gt *gt)
>   	return val;
>   }
>   
> -static void park_rc6(struct drm_i915_private *i915)
> +static void init_rc6(struct i915_pmu *pmu)
>   {
> -	struct i915_pmu *pmu = &i915->pmu;
> +	struct drm_i915_private *i915 = container_of(pmu, typeof(*i915), pmu);
> +	intel_wakeref_t wakeref;
>   
> -	if (pmu->enable & config_enabled_mask(I915_PMU_RC6_RESIDENCY))
> +	with_intel_runtime_pm(i915->gt.uncore->rpm, wakeref) {
>   		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
> +		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur =
> +					pmu->sample[__I915_SAMPLE_RC6].cur;
> +		pmu->sleep_last = ktime_get();
> +	}
> +}
>   
> +static void park_rc6(struct drm_i915_private *i915)
> +{
> +	struct i915_pmu *pmu = &i915->pmu;
> +
> +	pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
>   	pmu->sleep_last = ktime_get();
>   }
>   
> @@ -201,6 +212,7 @@ static u64 get_rc6(struct intel_gt *gt)
>   	return __get_rc6(gt);
>   }
>   
> +static void init_rc6(struct i915_pmu *pmu) { }
>   static void park_rc6(struct drm_i915_private *i915) {}
>   
>   #endif
> @@ -612,10 +624,8 @@ static void i915_pmu_enable(struct perf_event *event)
>   		container_of(event->pmu, typeof(*i915), pmu.base);
>   	unsigned int bit = event_enabled_bit(event);
>   	struct i915_pmu *pmu = &i915->pmu;
> -	intel_wakeref_t wakeref;
>   	unsigned long flags;
>   
> -	wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>   	spin_lock_irqsave(&pmu->lock, flags);
>   
>   	/*
> @@ -626,13 +636,6 @@ static void i915_pmu_enable(struct perf_event *event)
>   	GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
>   	GEM_BUG_ON(pmu->enable_count[bit] == ~0);
>   
> -	if (pmu->enable_count[bit] == 0 &&
> -	    config_enabled_mask(I915_PMU_RC6_RESIDENCY) & BIT_ULL(bit)) {
> -		pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur = 0;
> -		pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
> -		pmu->sleep_last = ktime_get();
> -	}
> -
>   	pmu->enable |= BIT_ULL(bit);
>   	pmu->enable_count[bit]++;
>   
> @@ -673,8 +676,6 @@ static void i915_pmu_enable(struct perf_event *event)
>   	 * an existing non-zero value.
>   	 */
>   	local64_set(&event->hw.prev_count, __i915_pmu_event_read(event));
> -
> -	intel_runtime_pm_put(&i915->runtime_pm, wakeref);
>   }
>   
>   static void i915_pmu_disable(struct perf_event *event)
> @@ -1130,6 +1131,7 @@ void i915_pmu_register(struct drm_i915_private *i915)
>   	hrtimer_init(&pmu->timer, CLOCK_MONOTONIC, HRTIMER_MODE_REL);
>   	pmu->timer.function = i915_sample;
>   	pmu->cpuhp.cpu = -1;
> +	init_rc6(pmu);
>   
>   	if (!is_igp(i915)) {
>   		pmu->name = kasprintf(GFP_KERNEL,
> 

Looks 100% as the conflict resolution I was about to send out so thanks 
for doing the work.

Regards,

Tvrtko
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
