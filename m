Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 78DDC139C2E
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Jan 2020 23:08:37 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 669026E176;
	Mon, 13 Jan 2020 22:08:34 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from fireflyinternet.com (mail.fireflyinternet.com [109.228.58.192])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 460EC6E176
 for <intel-gfx@lists.freedesktop.org>; Mon, 13 Jan 2020 22:08:33 +0000 (UTC)
X-Default-Received-SPF: pass (skip=forwardok (res=PASS))
 x-ip-name=78.156.65.138; 
Received: from localhost (unverified [78.156.65.138]) 
 by fireflyinternet.com (Firefly Internet (M1)) with ESMTP (TLS) id
 19867585-1500050 for multiple; Mon, 13 Jan 2020 22:08:23 +0000
MIME-Version: 1.0
To: intel-gfx@lists.freedesktop.org
From: Chris Wilson <chris@chris-wilson.co.uk>
In-Reply-To: <20200113220436.2007585-1-chris@chris-wilson.co.uk>
References: <20200113220436.2007585-1-chris@chris-wilson.co.uk>
Message-ID: <157895330099.27314.18262872595557421171@skylake-alporthouse-com>
User-Agent: alot/0.6
Date: Mon, 13 Jan 2020 22:08:21 +0000
Subject: Re: [Intel-gfx] [PATCH] drm/i915/pmu: Correct the rc6 offset upon
 enabling
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

Quoting Chris Wilson (2020-01-13 22:04:36)
> The rc6 residency starts ticking from 0 from BIOS POST, but the kernel
> starts measuring the time from its boot. If we start measuruing
> I915_PMU_RC6_RESIDENCY while the GT is idle, we start our sampling from
> 0 and then upon first activity (park/unpark) add in all the rc6
> residency since boot. After the first park with the sampler engaged, the
> sleep/active counters are aligned.
> 
> Fixes: df6a42053513 ("drm/i915/pmu: Ensure monotonic rc6")
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> ---
>  drivers/gpu/drm/i915/i915_pmu.c | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/i915_pmu.c b/drivers/gpu/drm/i915/i915_pmu.c
> index 28a82c849bac..fe0f3e0aa4ce 100644
> --- a/drivers/gpu/drm/i915/i915_pmu.c
> +++ b/drivers/gpu/drm/i915/i915_pmu.c
> @@ -648,6 +648,13 @@ static void i915_pmu_enable(struct perf_event *event)
>         BUILD_BUG_ON(ARRAY_SIZE(pmu->enable_count) != I915_PMU_MASK_BITS);
>         GEM_BUG_ON(bit >= ARRAY_SIZE(pmu->enable_count));
>         GEM_BUG_ON(pmu->enable_count[bit] == ~0);
> +
> +       if (pmu->enable_count[bit] == 0 &&
> +           config_enabled_mask(I915_PMU_RC6_RESIDENCY) & BIT_ULL(bit)) {
> +               pmu->sample[__I915_SAMPLE_RC6].cur = __get_rc6(&i915->gt);
> +               pmu->sleep_last = ktime_get();

I guess strictly we need with_intel_runtime_pm_get {}

Good exercise for CI ;)
-Chris
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
