Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5983513A7D9
	for <lists+intel-gfx@lfdr.de>; Tue, 14 Jan 2020 12:06:15 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 67FBD6E358;
	Tue, 14 Jan 2020 11:06:13 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3799A6E358
 for <intel-gfx@lists.freedesktop.org>; Tue, 14 Jan 2020 11:06:12 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19873186-1500050 for multiple; Tue, 14 Jan 2020 11:06:07 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200114105648.2172026-1-chris@chris-wilson.co.uk>
References: <20200114105648.2172026-1-chris@chris-wilson.co.uk>
Message-ID: <157899996519.27314.1692935781998209144@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Tue, 14 Jan 2020 11:06:05 +0000
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/pmu: Correct the rc6 offset
 upon enabling
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Quoting Chris Wilson (2020-01-14 10:56:47)
> The rc6 residency starts ticking from 0 from BIOS POST, but the kernel
> starts measuring the time from its boot. If we start measuruing
> I915_PMU_RC6_RESIDENCY while the GT is idle, we start our sampling from
> 0 and then upon first activity (park/unpark) add in all the rc6
> residency since boot. After the first park with the sampler engaged, the
> sleep/active counters are aligned.
> 
> v2: With a wakeref to be sure
> 
> Fixes: df6a42053513 ("drm/i915/pmu: Ensure monotonic rc6")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 28a82c849bac..ec0299490dd4 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -637,8 +637,10 @@ static void i915_pmu_enable(struct perf_event *event)
>                 container_of(event->pmu, typeof(*i915), pmu.base);
>         unsigned int bit = event_enabled_bit(event);
>         struct i915_pmu *pmu = &i915->pmu;
> +       intel_wakeref_t wakeref;
>         unsigned long flags;
>  
> +       wakeref = intel_runtime_pm_get(&i915->runtime_pm);
>         spin_lock_irqsave(&pmu->lock, flags);
>  
>         /*
> @@ -648,6 +650,14 @@ static void i915_pmu_enable(struct perf_event *event)
>         BUILD_BUG_ON(ARRAY_SIZE(pmu->enable_count) != I915_PMU_MASK_BITS);
>         GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
>         GEM_BUG_ON(pmu->enable_count[bit] == ~0);
> +
> +       if (pmu->enable_count[bit] == 0 &&
> +           config_enabled_mask(I915_PMU_RC6_RESIDENCY) & BIT_ULL(bit)) {
> +               pmu->sample[__I915_SAMPLE_RC6_LAST_REPORTED].cur = 0;

I can't decide if it's better to have discrete sampling appear
monotonic, or to reset just in case we drifted far off.
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
