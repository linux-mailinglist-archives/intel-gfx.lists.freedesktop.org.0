Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F18C1FABD9
	for <lists+intel-gfx@lfdr.de>; Tue, 16 Jun 2020 11:06:05 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CEE276E051;
	Tue, 16 Jun 2020 09:06:02 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0B8BC6E051
 for <intel-gfx@lists.freedesktop.org>; Tue, 16 Jun 2020 09:06:01 +0000 (UTC)
IronPort-SDR: BoNkE4xE2PFsQM/upDUBjFNDmRxKF+euARd8Cn95FJcAuHX+O3o+vVJ6TzGlYQgRvyINAAJSxn
 j87MDkJk9fqQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Jun 2020 02:06:00 -0700
IronPort-SDR: 6470mVMtaASgh9uUr9YBsot8fseV3tVtfL3VUyeRNDbWAHNODqFXQoWDODEDRNdiPHaIKh3AbN
 ZjP5UFInT3NQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,518,1583222400"; d="scan'208";a="476337077"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by fmsmga006.fm.intel.com with ESMTP; 16 Jun 2020 02:05:59 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 8D92A5C2C1C; Tue, 16 Jun 2020 12:03:19 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200616084141.3722-3-chris@chris-wilson.co.uk>
References: <20200616084141.3722-1-chris@chris-wilson.co.uk>
 <20200616084141.3722-3-chris@chris-wilson.co.uk>
Date: Tue, 16 Jun 2020 12:03:19 +0300
Message-ID: <874krbs7qg.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 3/9] drm/i915/selftests: Enable selftesting
 of busy-stats
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
Cc: Chris Wilson <chris@chris-wilson.co.uk>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Chris Wilson <chris@chris-wilson.co.uk> writes:

> A couple of very simple tests to ensure that the basic properties of
> per-engine busyness accounting [0% and 100% busy] are faithful.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---
>  drivers/gpu/drm/i915/gt/selftest_engine_pm.c | 94 ++++++++++++++++++++
>  drivers/gpu/drm/i915/gt/selftest_rps.c       |  5 ++
>  2 files changed, 99 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> index cbf6b0735272..fb0fd8a7db9a 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_engine_pm.c
> @@ -7,6 +7,99 @@
>  #include "i915_selftest.h"
>  #include "selftest_engine.h"
>  #include "selftests/igt_atomic.h"
> +#include "selftests/igt_flush_test.h"
> +#include "selftests/igt_spinner.h"
> +
> +static int live_engine_busy_stats(void *arg)
> +{
> +	struct intel_gt *gt = arg;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +	struct igt_spinner spin;
> +	int err = 0;
> +
> +	/*
> +	 * Check that if an engine supports busy-stats, they tell the truth.
> +	 */
> +
> +	if (igt_spinner_init(&spin, gt))
> +		return -ENOMEM;
> +
> +	GEM_BUG_ON(intel_gt_pm_is_awake(gt));
> +	for_each_engine(engine, gt, id) {
> +		struct i915_request *rq;
> +		ktime_t de;
> +		u64 dt;
> +
> +		if (!intel_engine_supports_stats(engine))
> +			continue;
> +
> +		if (!intel_engine_can_store_dword(engine))
> +			continue;
> +
> +		if (intel_gt_pm_wait_for_idle(gt)) {
> +			err = -EBUSY;
> +			break;
> +		}
> +
> +		preempt_disable();
> +		dt = ktime_to_ns(ktime_get());
> +		de = intel_engine_get_busy_time(engine);
> +		udelay(100);
> +		de = ktime_sub(intel_engine_get_busy_time(engine), de);
> +		dt = ktime_to_ns(ktime_get()) - dt;
> +		preempt_enable();
> +		if (de > 10) {

10 is from stetson?

Well I would say it is strict enough.

The signed de just makes me nervous, so de < 0 too?

> +			pr_err("%s: reported %lldns [%d%%] busyness while sleeping [for %lldns]\n",
> +			       engine->name,
> +			       de, (int)div64_u64(100 * de, dt), dt);
> +			err = -EINVAL;
> +			break;
> +		}
> +
> +		/* 100% busy */
> +		rq = igt_spinner_create_request(&spin,
> +						engine->kernel_context,
> +						MI_NOOP);
> +		if (IS_ERR(rq)) {
> +			err = PTR_ERR(rq);
> +			break;
> +		}
> +		i915_request_add(rq);
> +
> +		if (!igt_wait_for_spinner(&spin, rq)) {
> +			intel_gt_set_wedged(engine->gt);
> +			err = -ETIME;
> +			break;
> +		}
> +
> +		preempt_disable();
> +		dt = ktime_to_ns(ktime_get());
> +		de = intel_engine_get_busy_time(engine);
> +		udelay(100);
> +		de = ktime_sub(intel_engine_get_busy_time(engine), de);
> +		dt = ktime_to_ns(ktime_get()) - dt;
> +		preempt_enable();
> +		if (100 * de < 95 * dt || 95 * de > 100 * dt) {

I do remember in igt side we have nice helper for these.

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

> +			pr_err("%s: reported %lldns [%d%%] busyness while spinning [for %lldns]\n",
> +			       engine->name,
> +			       de, (int)div64_u64(100 * de, dt), dt);
> +			err = -EINVAL;
> +			break;
> +		}
> +
> +		igt_spinner_end(&spin);
> +		if (igt_flush_test(gt->i915)) {
> +			err = -EIO;
> +			break;
> +		}
> +	}
> +
> +	igt_spinner_fini(&spin);
> +	if (igt_flush_test(gt->i915))
> +		err = -EIO;
> +	return err;
> +}
>  
>  static int live_engine_pm(void *arg)
>  {
> @@ -77,6 +170,7 @@ static int live_engine_pm(void *arg)
>  int live_engine_pm_selftests(struct intel_gt *gt)
>  {
>  	static const struct i915_subtest tests[] = {
> +		SUBTEST(live_engine_busy_stats),
>  		SUBTEST(live_engine_pm),
>  	};
>  
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index 5049c3dd08a6..5e364fb31aea 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -1252,6 +1252,11 @@ int live_rps_dynamic(void *arg)
>  	if (igt_spinner_init(&spin, gt))
>  		return -ENOMEM;
>  
> +	if (intel_rps_has_interrupts(rps))
> +		pr_info("RPS has interrupt support\n");
> +	if (intel_rps_uses_timer(rps))
> +		pr_info("RPS has timer support\n");
> +
>  	for_each_engine(engine, gt, id) {
>  		struct i915_request *rq;
>  		struct {
> -- 
> 2.20.1
>
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
_______________________________________________
Intel-gfx mailing list
Intel-gfx@lists.freedesktop.org
https://lists.freedesktop.org/mailman/listinfo/intel-gfx
