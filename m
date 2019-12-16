Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A107121B53
	for <lists+intel-gfx@lfdr.de>; Mon, 16 Dec 2019 21:53:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 621BF6E088;
	Mon, 16 Dec 2019 20:53:36 +0000 (UTC)
X-Original-To: Intel-gfx@lists.freedesktop.org
Delivered-To: Intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 114AB6E088
 for <Intel-gfx@lists.freedesktop.org>; Mon, 16 Dec 2019 20:53:34 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19601234-1500050 for multiple; Mon, 16 Dec 2019 20:53:07 +0000
MIME-Version: 1.0
To: Intel-gfx@lists.freedesktop.org,
 Tvrtko Ursulin <tvrtko.ursulin@linux.intel.com>
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20191216182032.22265-1-tvrtko.ursulin@linux.intel.com>
References: <20191216182032.22265-1-tvrtko.ursulin@linux.intel.com>
Message-ID: <157652958683.2428.15355243435364299446@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 16 Dec 2019 20:53:06 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Ensure monotonic rc6
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

Quoting Tvrtko Ursulin (2019-12-16 18:20:32)
> From: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> 
> Avoid rc6 counter going backward in close to 0% RC6 scenarios like:
> 
>     15.005477996        114,246,613 ns   i915/rc6-residency/
>     16.005876662            667,657 ns   i915/rc6-residency/
>     17.006131417              7,286 ns   i915/rc6-residency/
>     18.006615031 18,446,744,073,708,914,688 ns   i915/rc6-residency/
>     19.007158361 18,446,744,073,709,447,168 ns   i915/rc6-residency/
>     20.007806498                  0 ns   i915/rc6-residency/
>     21.008227495          1,440,403 ns   i915/rc6-residency/
> 
> There are two aspects to this fix.
> 
> First is not assuming rc6 value zero means GT is asleep since that can
> also mean GPU is fully busy and we do not want to enter the estimation
> path in that case.
> 
> Second is ensuring monotonicity on the estimation path itself. I suspect
> what is happening is with extremely rapid park/unpark cycles we get no
> updates on the real rc6 and therefore have to careful not to
> unconditionally trust use last known real rc6 when creating a new
> estimation.
> 
> Signed-off-by: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> Fixes: 16ffe73c186b ("drm/i915/pmu: Use GT parked for estimating RC6 while asleep")
> Cc: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 10 +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 5f2adfbf85be..c4581d8fc9ce 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -158,7 +158,10 @@ static u64 __pmu_estimate_rc6(struct i915_pmu *pmu)
>         val = ktime_since(pmu->sleep_last);
>         val += pmu->sample[__I915_SAMPLE_RC6].cur;
>  
> -       pmu->sample[__I915_SAMPLE_RC6_ESTIMATED].cur = val;
> +       if (val > pmu->sample[__I915_SAMPLE_RC6_ESTIMATED].cur)
> +               pmu->sample[__I915_SAMPLE_RC6_ESTIMATED].cur = val;
> +       else
> +               val = pmu->sample[__I915_SAMPLE_RC6_ESTIMATED].cur;

Still feels a bit hodged-podged, as we should now be able to serialise
park/unpark of the rc6 counters and our sampling.

>         return val;
>  }
> @@ -185,17 +188,18 @@ static u64 get_rc6(struct intel_gt *gt)
>         struct drm_i915_private *i915 = gt->i915;
>         struct i915_pmu *pmu = &i915->pmu;
>         unsigned long flags;
> +       bool awake = false;
>         u64 val;
>  
> -       val = 0;
>         if (intel_gt_pm_get_if_awake(gt)) {
>                 val = __get_rc6(gt);
>                 intel_gt_pm_put_async(gt);
> +               awake = true;
>         }
>  
>         spin_lock_irqsave(&pmu->lock, flags);
>  
> -       if (val)
> +       if (awake)
>                 val = __pmu_update_rc6(pmu, val);
>         else
>                 val = __pmu_estimate_rc6(pmu);

Just on the off-chance it returns 0 in the next thousand years.

Reviewed-by: Chris Wilson <chris@chris-wilson.co.uk>
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
