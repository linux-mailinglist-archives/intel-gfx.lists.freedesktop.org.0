Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 649421D9812
	for <lists+intel-gfx@lfdr.de>; Tue, 19 May 2020 15:43:59 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8C4A6E558;
	Tue, 19 May 2020 13:43:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EA2416E558
 for <intel-gfx@lists.freedesktop.org>; Tue, 19 May 2020 13:43:55 +0000 (UTC)
IronPort-SDR: UMjId3BQLI0vYqt7sP4skLFGbGtncYrnUsi40h+Dcju1y4Sz4APtgx5L1kgKMLtohOxd1UJrGi
 ghV+SzP0nqww==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2020 06:43:55 -0700
IronPort-SDR: +13m7S1Sf7vUxim5E6PHeJVL939OjJPUjnmVFDJDFehPEvnMJyLZ1Wi+sF/BSzByOEgj7YIPbg
 XcAIGYW5Ljxg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,410,1583222400"; d="scan'208";a="264306403"
Received: from gaia.fi.intel.com ([10.237.72.192])
 by orsmga003.jf.intel.com with ESMTP; 19 May 2020 06:43:53 -0700
Received: by gaia.fi.intel.com (Postfix, from userid 1000)
 id 4AC225C03F7; Tue, 19 May 2020 16:41:36 +0300 (EEST)
From: Mika Kuoppala <mika.kuoppala@linux.intel.com>
To: Chris Wilson <chris@chris-wilson.co.uk>, intel-gfx@lists.freedesktop.org
In-Reply-To: <20200519063123.20673-3-chris@chris-wilson.co.uk>
References: <20200519063123.20673-1-chris@chris-wilson.co.uk>
 <20200519063123.20673-3-chris@chris-wilson.co.uk>
Date: Tue, 19 May 2020 16:41:36 +0300
Message-ID: <87mu6459f3.fsf@gaia.fi.intel.com>
MIME-Version: 1.0
Subject: Re: [Intel-gfx] [PATCH 03/12] drm/i915/selftests: Restore to
 default heartbeat
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

> Since we temporarily disable the heartbeat and restore back to the
> default value, we can use the stored defaults on the engine and avoid
> using a local.
>
> Signed-off-by: Chris Wilson <chris@chris-wilson.co.uk>
> ---

Reviewed-by: Mika Kuoppala <mika.kuoppala@linux.intel.com>

>  drivers/gpu/drm/i915/gt/selftest_hangcheck.c | 25 +++----
>  drivers/gpu/drm/i915/gt/selftest_lrc.c       | 67 +++++++------------
>  drivers/gpu/drm/i915/gt/selftest_rps.c       | 69 ++++++++------------
>  drivers/gpu/drm/i915/gt/selftest_timeline.c  | 15 ++---
>  4 files changed, 67 insertions(+), 109 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> index 2b2efff6e19d..4aa4cc917d8b 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_hangcheck.c
> @@ -310,22 +310,20 @@ static bool wait_until_running(struct hang *h, struct i915_request *rq)
>  			  1000));
>  }
>  
> -static void engine_heartbeat_disable(struct intel_engine_cs *engine,
> -				     unsigned long *saved)
> +static void engine_heartbeat_disable(struct intel_engine_cs *engine)
>  {
> -	*saved = engine->props.heartbeat_interval_ms;
>  	engine->props.heartbeat_interval_ms = 0;
>  
>  	intel_engine_pm_get(engine);
>  	intel_engine_park_heartbeat(engine);
>  }
>  
> -static void engine_heartbeat_enable(struct intel_engine_cs *engine,
> -				    unsigned long saved)
> +static void engine_heartbeat_enable(struct intel_engine_cs *engine)
>  {
>  	intel_engine_pm_put(engine);
>  
> -	engine->props.heartbeat_interval_ms = saved;
> +	engine->props.heartbeat_interval_ms =
> +		engine->defaults.heartbeat_interval_ms;
>  }
>  
>  static int igt_hang_sanitycheck(void *arg)
> @@ -473,7 +471,6 @@ static int igt_reset_nop_engine(void *arg)
>  	for_each_engine(engine, gt, id) {
>  		unsigned int reset_count, reset_engine_count, count;
>  		struct intel_context *ce;
> -		unsigned long heartbeat;
>  		IGT_TIMEOUT(end_time);
>  		int err;
>  
> @@ -485,7 +482,7 @@ static int igt_reset_nop_engine(void *arg)
>  		reset_engine_count = i915_reset_engine_count(global, engine);
>  		count = 0;
>  
> -		engine_heartbeat_disable(engine, &heartbeat);
> +		engine_heartbeat_disable(engine);
>  		set_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
>  		do {
>  			int i;
> @@ -529,7 +526,7 @@ static int igt_reset_nop_engine(void *arg)
>  			}
>  		} while (time_before(jiffies, end_time));
>  		clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
> -		engine_heartbeat_enable(engine, heartbeat);
> +		engine_heartbeat_enable(engine);
>  
>  		pr_info("%s(%s): %d resets\n", __func__, engine->name, count);
>  
> @@ -564,7 +561,6 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
>  
>  	for_each_engine(engine, gt, id) {
>  		unsigned int reset_count, reset_engine_count;
> -		unsigned long heartbeat;
>  		IGT_TIMEOUT(end_time);
>  
>  		if (active && !intel_engine_can_store_dword(engine))
> @@ -580,7 +576,7 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
>  		reset_count = i915_reset_count(global);
>  		reset_engine_count = i915_reset_engine_count(global, engine);
>  
> -		engine_heartbeat_disable(engine, &heartbeat);
> +		engine_heartbeat_disable(engine);
>  		set_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
>  		do {
>  			if (active) {
> @@ -632,7 +628,7 @@ static int __igt_reset_engine(struct intel_gt *gt, bool active)
>  			}
>  		} while (time_before(jiffies, end_time));
>  		clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
> -		engine_heartbeat_enable(engine, heartbeat);
> +		engine_heartbeat_enable(engine);
>  
>  		if (err)
>  			break;
> @@ -789,7 +785,6 @@ static int __igt_reset_engines(struct intel_gt *gt,
>  		struct active_engine threads[I915_NUM_ENGINES] = {};
>  		unsigned long device = i915_reset_count(global);
>  		unsigned long count = 0, reported;
> -		unsigned long heartbeat;
>  		IGT_TIMEOUT(end_time);
>  
>  		if (flags & TEST_ACTIVE &&
> @@ -832,7 +827,7 @@ static int __igt_reset_engines(struct intel_gt *gt,
>  
>  		yield(); /* start all threads before we begin */
>  
> -		engine_heartbeat_disable(engine, &heartbeat);
> +		engine_heartbeat_disable(engine);
>  		set_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
>  		do {
>  			struct i915_request *rq = NULL;
> @@ -906,7 +901,7 @@ static int __igt_reset_engines(struct intel_gt *gt,
>  			}
>  		} while (time_before(jiffies, end_time));
>  		clear_bit(I915_RESET_ENGINE + id, &gt->reset.flags);
> -		engine_heartbeat_enable(engine, heartbeat);
> +		engine_heartbeat_enable(engine);
>  
>  		pr_info("i915_reset_engine(%s:%s): %lu resets\n",
>  			engine->name, test_name, count);
> diff --git a/drivers/gpu/drm/i915/gt/selftest_lrc.c b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> index 3e042fa4b94b..b71f04db9c6e 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_lrc.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_lrc.c
> @@ -51,22 +51,20 @@ static struct i915_vma *create_scratch(struct intel_gt *gt)
>  	return vma;
>  }
>  
> -static void engine_heartbeat_disable(struct intel_engine_cs *engine,
> -				     unsigned long *saved)
> +static void engine_heartbeat_disable(struct intel_engine_cs *engine)
>  {
> -	*saved = engine->props.heartbeat_interval_ms;
>  	engine->props.heartbeat_interval_ms = 0;
>  
>  	intel_engine_pm_get(engine);
>  	intel_engine_park_heartbeat(engine);
>  }
>  
> -static void engine_heartbeat_enable(struct intel_engine_cs *engine,
> -				    unsigned long saved)
> +static void engine_heartbeat_enable(struct intel_engine_cs *engine)
>  {
>  	intel_engine_pm_put(engine);
>  
> -	engine->props.heartbeat_interval_ms = saved;
> +	engine->props.heartbeat_interval_ms =
> +		engine->defaults.heartbeat_interval_ms;
>  }
>  
>  static bool is_active(struct i915_request *rq)
> @@ -224,7 +222,6 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
>  		struct intel_context *ce[2] = {};
>  		struct i915_request *rq[2];
>  		struct igt_live_test t;
> -		unsigned long saved;
>  		int n;
>  
>  		if (prio && !intel_engine_has_preemption(engine))
> @@ -237,7 +234,7 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
>  			err = -EIO;
>  			break;
>  		}
> -		engine_heartbeat_disable(engine, &saved);
> +		engine_heartbeat_disable(engine);
>  
>  		for (n = 0; n < ARRAY_SIZE(ce); n++) {
>  			struct intel_context *tmp;
> @@ -345,7 +342,7 @@ static int live_unlite_restore(struct intel_gt *gt, int prio)
>  			intel_context_put(ce[n]);
>  		}
>  
> -		engine_heartbeat_enable(engine, saved);
> +		engine_heartbeat_enable(engine);
>  		if (igt_live_test_end(&t))
>  			err = -EIO;
>  		if (err)
> @@ -466,7 +463,6 @@ static int live_hold_reset(void *arg)
>  
>  	for_each_engine(engine, gt, id) {
>  		struct intel_context *ce;
> -		unsigned long heartbeat;
>  		struct i915_request *rq;
>  
>  		ce = intel_context_create(engine);
> @@ -475,7 +471,7 @@ static int live_hold_reset(void *arg)
>  			break;
>  		}
>  
> -		engine_heartbeat_disable(engine, &heartbeat);
> +		engine_heartbeat_disable(engine);
>  
>  		rq = igt_spinner_create_request(&spin, ce, MI_ARB_CHECK);
>  		if (IS_ERR(rq)) {
> @@ -535,7 +531,7 @@ static int live_hold_reset(void *arg)
>  		i915_request_put(rq);
>  
>  out:
> -		engine_heartbeat_enable(engine, heartbeat);
> +		engine_heartbeat_enable(engine);
>  		intel_context_put(ce);
>  		if (err)
>  			break;
> @@ -580,10 +576,9 @@ static int live_error_interrupt(void *arg)
>  
>  	for_each_engine(engine, gt, id) {
>  		const struct error_phase *p;
> -		unsigned long heartbeat;
>  		int err = 0;
>  
> -		engine_heartbeat_disable(engine, &heartbeat);
> +		engine_heartbeat_disable(engine);
>  
>  		for (p = phases; p->error[0] != GOOD; p++) {
>  			struct i915_request *client[ARRAY_SIZE(phases->error)];
> @@ -682,7 +677,7 @@ static int live_error_interrupt(void *arg)
>  			}
>  		}
>  
> -		engine_heartbeat_enable(engine, heartbeat);
> +		engine_heartbeat_enable(engine);
>  		if (err) {
>  			intel_gt_set_wedged(gt);
>  			return err;
> @@ -895,16 +890,14 @@ static int live_timeslice_preempt(void *arg)
>  		enum intel_engine_id id;
>  
>  		for_each_engine(engine, gt, id) {
> -			unsigned long saved;
> -
>  			if (!intel_engine_has_preemption(engine))
>  				continue;
>  
>  			memset(vaddr, 0, PAGE_SIZE);
>  
> -			engine_heartbeat_disable(engine, &saved);
> +			engine_heartbeat_disable(engine);
>  			err = slice_semaphore_queue(engine, vma, count);
> -			engine_heartbeat_enable(engine, saved);
> +			engine_heartbeat_enable(engine);
>  			if (err)
>  				goto err_pin;
>  
> @@ -1009,7 +1002,6 @@ static int live_timeslice_rewind(void *arg)
>  		enum { X = 1, Z, Y };
>  		struct i915_request *rq[3] = {};
>  		struct intel_context *ce;
> -		unsigned long heartbeat;
>  		unsigned long timeslice;
>  		int i, err = 0;
>  		u32 *slot;
> @@ -1028,7 +1020,7 @@ static int live_timeslice_rewind(void *arg)
>  		 * Expect execution/evaluation order XZY
>  		 */
>  
> -		engine_heartbeat_disable(engine, &heartbeat);
> +		engine_heartbeat_disable(engine);
>  		timeslice = xchg(&engine->props.timeslice_duration_ms, 1);
>  
>  		slot = memset32(engine->status_page.addr + 1000, 0, 4);
> @@ -1122,7 +1114,7 @@ static int live_timeslice_rewind(void *arg)
>  		wmb();
>  
>  		engine->props.timeslice_duration_ms = timeslice;
> -		engine_heartbeat_enable(engine, heartbeat);
> +		engine_heartbeat_enable(engine);
>  		for (i = 0; i < 3; i++)
>  			i915_request_put(rq[i]);
>  		if (igt_flush_test(gt->i915))
> @@ -1202,12 +1194,11 @@ static int live_timeslice_queue(void *arg)
>  			.priority = I915_USER_PRIORITY(I915_PRIORITY_MAX),
>  		};
>  		struct i915_request *rq, *nop;
> -		unsigned long saved;
>  
>  		if (!intel_engine_has_preemption(engine))
>  			continue;
>  
> -		engine_heartbeat_disable(engine, &saved);
> +		engine_heartbeat_disable(engine);
>  		memset(vaddr, 0, PAGE_SIZE);
>  
>  		/* ELSP[0]: semaphore wait */
> @@ -1284,7 +1275,7 @@ static int live_timeslice_queue(void *arg)
>  err_rq:
>  		i915_request_put(rq);
>  err_heartbeat:
> -		engine_heartbeat_enable(engine, saved);
> +		engine_heartbeat_enable(engine);
>  		if (err)
>  			break;
>  	}
> @@ -4145,7 +4136,6 @@ static int reset_virtual_engine(struct intel_gt *gt,
>  {
>  	struct intel_engine_cs *engine;
>  	struct intel_context *ve;
> -	unsigned long *heartbeat;
>  	struct igt_spinner spin;
>  	struct i915_request *rq;
>  	unsigned int n;
> @@ -4157,15 +4147,9 @@ static int reset_virtual_engine(struct intel_gt *gt,
>  	 * descendents are not executed while the capture is in progress.
>  	 */
>  
> -	heartbeat = kmalloc_array(nsibling, sizeof(*heartbeat), GFP_KERNEL);
> -	if (!heartbeat)
> +	if (igt_spinner_init(&spin, gt))
>  		return -ENOMEM;
>  
> -	if (igt_spinner_init(&spin, gt)) {
> -		err = -ENOMEM;
> -		goto out_free;
> -	}
> -
>  	ve = intel_execlists_create_virtual(siblings, nsibling);
>  	if (IS_ERR(ve)) {
>  		err = PTR_ERR(ve);
> @@ -4173,7 +4157,7 @@ static int reset_virtual_engine(struct intel_gt *gt,
>  	}
>  
>  	for (n = 0; n < nsibling; n++)
> -		engine_heartbeat_disable(siblings[n], &heartbeat[n]);
> +		engine_heartbeat_disable(siblings[n]);
>  
>  	rq = igt_spinner_create_request(&spin, ve, MI_ARB_CHECK);
>  	if (IS_ERR(rq)) {
> @@ -4244,13 +4228,11 @@ static int reset_virtual_engine(struct intel_gt *gt,
>  	i915_request_put(rq);
>  out_heartbeat:
>  	for (n = 0; n < nsibling; n++)
> -		engine_heartbeat_enable(siblings[n], heartbeat[n]);
> +		engine_heartbeat_enable(siblings[n]);
>  
>  	intel_context_put(ve);
>  out_spin:
>  	igt_spinner_fini(&spin);
> -out_free:
> -	kfree(heartbeat);
>  	return err;
>  }
>  
> @@ -4918,9 +4900,7 @@ static int live_lrc_gpr(void *arg)
>  		return PTR_ERR(scratch);
>  
>  	for_each_engine(engine, gt, id) {
> -		unsigned long heartbeat;
> -
> -		engine_heartbeat_disable(engine, &heartbeat);
> +		engine_heartbeat_disable(engine);
>  
>  		err = __live_lrc_gpr(engine, scratch, false);
>  		if (err)
> @@ -4931,7 +4911,7 @@ static int live_lrc_gpr(void *arg)
>  			goto err;
>  
>  err:
> -		engine_heartbeat_enable(engine, heartbeat);
> +		engine_heartbeat_enable(engine);
>  		if (igt_flush_test(gt->i915))
>  			err = -EIO;
>  		if (err)
> @@ -5078,10 +5058,9 @@ static int live_lrc_timestamp(void *arg)
>  	 */
>  
>  	for_each_engine(data.engine, gt, id) {
> -		unsigned long heartbeat;
>  		int i, err = 0;
>  
> -		engine_heartbeat_disable(data.engine, &heartbeat);
> +		engine_heartbeat_disable(data.engine);
>  
>  		for (i = 0; i < ARRAY_SIZE(data.ce); i++) {
>  			struct intel_context *tmp;
> @@ -5114,7 +5093,7 @@ static int live_lrc_timestamp(void *arg)
>  		}
>  
>  err:
> -		engine_heartbeat_enable(data.engine, heartbeat);
> +		engine_heartbeat_enable(data.engine);
>  		for (i = 0; i < ARRAY_SIZE(data.ce); i++) {
>  			if (!data.ce[i])
>  				break;
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index 6275d69aa9cc..5049c3dd08a6 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -20,24 +20,20 @@
>  /* Try to isolate the impact of cstates from determing frequency response */
>  #define CPU_LATENCY 0 /* -1 to disable pm_qos, 0 to disable cstates */
>  
> -static unsigned long engine_heartbeat_disable(struct intel_engine_cs *engine)
> +static void engine_heartbeat_disable(struct intel_engine_cs *engine)
>  {
> -	unsigned long old;
> -
> -	old = fetch_and_zero(&engine->props.heartbeat_interval_ms);
> +	engine->props.heartbeat_interval_ms = 0;
>  
>  	intel_engine_pm_get(engine);
>  	intel_engine_park_heartbeat(engine);
> -
> -	return old;
>  }
>  
> -static void engine_heartbeat_enable(struct intel_engine_cs *engine,
> -				    unsigned long saved)
> +static void engine_heartbeat_enable(struct intel_engine_cs *engine)
>  {
>  	intel_engine_pm_put(engine);
>  
> -	engine->props.heartbeat_interval_ms = saved;
> +	engine->props.heartbeat_interval_ms =
> +		engine->defaults.heartbeat_interval_ms;
>  }
>  
>  static void dummy_rps_work(struct work_struct *wrk)
> @@ -246,7 +242,6 @@ int live_rps_clock_interval(void *arg)
>  	intel_gt_check_clock_frequency(gt);
>  
>  	for_each_engine(engine, gt, id) {
> -		unsigned long saved_heartbeat;
>  		struct i915_request *rq;
>  		u32 cycles;
>  		u64 dt;
> @@ -254,13 +249,13 @@ int live_rps_clock_interval(void *arg)
>  		if (!intel_engine_can_store_dword(engine))
>  			continue;
>  
> -		saved_heartbeat = engine_heartbeat_disable(engine);
> +		engine_heartbeat_disable(engine);
>  
>  		rq = igt_spinner_create_request(&spin,
>  						engine->kernel_context,
>  						MI_NOOP);
>  		if (IS_ERR(rq)) {
> -			engine_heartbeat_enable(engine, saved_heartbeat);
> +			engine_heartbeat_enable(engine);
>  			err = PTR_ERR(rq);
>  			break;
>  		}
> @@ -271,7 +266,7 @@ int live_rps_clock_interval(void *arg)
>  			pr_err("%s: RPS spinner did not start\n",
>  			       engine->name);
>  			igt_spinner_end(&spin);
> -			engine_heartbeat_enable(engine, saved_heartbeat);
> +			engine_heartbeat_enable(engine);
>  			intel_gt_set_wedged(engine->gt);
>  			err = -EIO;
>  			break;
> @@ -327,7 +322,7 @@ int live_rps_clock_interval(void *arg)
>  		intel_uncore_forcewake_put(gt->uncore, FORCEWAKE_ALL);
>  
>  		igt_spinner_end(&spin);
> -		engine_heartbeat_enable(engine, saved_heartbeat);
> +		engine_heartbeat_enable(engine);
>  
>  		if (err == 0) {
>  			u64 time = intel_gt_pm_interval_to_ns(gt, cycles);
> @@ -405,7 +400,6 @@ int live_rps_control(void *arg)
>  
>  	intel_gt_pm_get(gt);
>  	for_each_engine(engine, gt, id) {
> -		unsigned long saved_heartbeat;
>  		struct i915_request *rq;
>  		ktime_t min_dt, max_dt;
>  		int f, limit;
> @@ -414,7 +408,7 @@ int live_rps_control(void *arg)
>  		if (!intel_engine_can_store_dword(engine))
>  			continue;
>  
> -		saved_heartbeat = engine_heartbeat_disable(engine);
> +		engine_heartbeat_disable(engine);
>  
>  		rq = igt_spinner_create_request(&spin,
>  						engine->kernel_context,
> @@ -430,7 +424,7 @@ int live_rps_control(void *arg)
>  			pr_err("%s: RPS spinner did not start\n",
>  			       engine->name);
>  			igt_spinner_end(&spin);
> -			engine_heartbeat_enable(engine, saved_heartbeat);
> +			engine_heartbeat_enable(engine);
>  			intel_gt_set_wedged(engine->gt);
>  			err = -EIO;
>  			break;
> @@ -440,7 +434,7 @@ int live_rps_control(void *arg)
>  			pr_err("%s: could not set minimum frequency [%x], only %x!\n",
>  			       engine->name, rps->min_freq, read_cagf(rps));
>  			igt_spinner_end(&spin);
> -			engine_heartbeat_enable(engine, saved_heartbeat);
> +			engine_heartbeat_enable(engine);
>  			show_pstate_limits(rps);
>  			err = -EINVAL;
>  			break;
> @@ -457,7 +451,7 @@ int live_rps_control(void *arg)
>  			pr_err("%s: could not restore minimum frequency [%x], only %x!\n",
>  			       engine->name, rps->min_freq, read_cagf(rps));
>  			igt_spinner_end(&spin);
> -			engine_heartbeat_enable(engine, saved_heartbeat);
> +			engine_heartbeat_enable(engine);
>  			show_pstate_limits(rps);
>  			err = -EINVAL;
>  			break;
> @@ -472,7 +466,7 @@ int live_rps_control(void *arg)
>  		min_dt = ktime_sub(ktime_get(), min_dt);
>  
>  		igt_spinner_end(&spin);
> -		engine_heartbeat_enable(engine, saved_heartbeat);
> +		engine_heartbeat_enable(engine);
>  
>  		pr_info("%s: range:[%x:%uMHz, %x:%uMHz] limit:[%x:%uMHz], %x:%x response %lluns:%lluns\n",
>  			engine->name,
> @@ -635,7 +629,6 @@ int live_rps_frequency_cs(void *arg)
>  	rps->work.func = dummy_rps_work;
>  
>  	for_each_engine(engine, gt, id) {
> -		unsigned long saved_heartbeat;
>  		struct i915_request *rq;
>  		struct i915_vma *vma;
>  		u32 *cancel, *cntr;
> @@ -644,14 +637,14 @@ int live_rps_frequency_cs(void *arg)
>  			int freq;
>  		} min, max;
>  
> -		saved_heartbeat = engine_heartbeat_disable(engine);
> +		engine_heartbeat_disable(engine);
>  
>  		vma = create_spin_counter(engine,
>  					  engine->kernel_context->vm, false,
>  					  &cancel, &cntr);
>  		if (IS_ERR(vma)) {
>  			err = PTR_ERR(vma);
> -			engine_heartbeat_enable(engine, saved_heartbeat);
> +			engine_heartbeat_enable(engine);
>  			break;
>  		}
>  
> @@ -732,7 +725,7 @@ int live_rps_frequency_cs(void *arg)
>  		i915_vma_unpin(vma);
>  		i915_vma_put(vma);
>  
> -		engine_heartbeat_enable(engine, saved_heartbeat);
> +		engine_heartbeat_enable(engine);
>  		if (igt_flush_test(gt->i915))
>  			err = -EIO;
>  		if (err)
> @@ -778,7 +771,6 @@ int live_rps_frequency_srm(void *arg)
>  	rps->work.func = dummy_rps_work;
>  
>  	for_each_engine(engine, gt, id) {
> -		unsigned long saved_heartbeat;
>  		struct i915_request *rq;
>  		struct i915_vma *vma;
>  		u32 *cancel, *cntr;
> @@ -787,14 +779,14 @@ int live_rps_frequency_srm(void *arg)
>  			int freq;
>  		} min, max;
>  
> -		saved_heartbeat = engine_heartbeat_disable(engine);
> +		engine_heartbeat_disable(engine);
>  
>  		vma = create_spin_counter(engine,
>  					  engine->kernel_context->vm, true,
>  					  &cancel, &cntr);
>  		if (IS_ERR(vma)) {
>  			err = PTR_ERR(vma);
> -			engine_heartbeat_enable(engine, saved_heartbeat);
> +			engine_heartbeat_enable(engine);
>  			break;
>  		}
>  
> @@ -874,7 +866,7 @@ int live_rps_frequency_srm(void *arg)
>  		i915_vma_unpin(vma);
>  		i915_vma_put(vma);
>  
> -		engine_heartbeat_enable(engine, saved_heartbeat);
> +		engine_heartbeat_enable(engine);
>  		if (igt_flush_test(gt->i915))
>  			err = -EIO;
>  		if (err)
> @@ -1066,16 +1058,14 @@ int live_rps_interrupt(void *arg)
>  	for_each_engine(engine, gt, id) {
>  		/* Keep the engine busy with a spinner; expect an UP! */
>  		if (pm_events & GEN6_PM_RP_UP_THRESHOLD) {
> -			unsigned long saved_heartbeat;
> -
>  			intel_gt_pm_wait_for_idle(engine->gt);
>  			GEM_BUG_ON(intel_rps_is_active(rps));
>  
> -			saved_heartbeat = engine_heartbeat_disable(engine);
> +			engine_heartbeat_disable(engine);
>  
>  			err = __rps_up_interrupt(rps, engine, &spin);
>  
> -			engine_heartbeat_enable(engine, saved_heartbeat);
> +			engine_heartbeat_enable(engine);
>  			if (err)
>  				goto out;
>  
> @@ -1084,15 +1074,13 @@ int live_rps_interrupt(void *arg)
>  
>  		/* Keep the engine awake but idle and check for DOWN */
>  		if (pm_events & GEN6_PM_RP_DOWN_THRESHOLD) {
> -			unsigned long saved_heartbeat;
> -
> -			saved_heartbeat = engine_heartbeat_disable(engine);
> +			engine_heartbeat_disable(engine);
>  			intel_rc6_disable(&gt->rc6);
>  
>  			err = __rps_down_interrupt(rps, engine);
>  
>  			intel_rc6_enable(&gt->rc6);
> -			engine_heartbeat_enable(engine, saved_heartbeat);
> +			engine_heartbeat_enable(engine);
>  			if (err)
>  				goto out;
>  		}
> @@ -1168,7 +1156,6 @@ int live_rps_power(void *arg)
>  	rps->work.func = dummy_rps_work;
>  
>  	for_each_engine(engine, gt, id) {
> -		unsigned long saved_heartbeat;
>  		struct i915_request *rq;
>  		struct {
>  			u64 power;
> @@ -1178,13 +1165,13 @@ int live_rps_power(void *arg)
>  		if (!intel_engine_can_store_dword(engine))
>  			continue;
>  
> -		saved_heartbeat = engine_heartbeat_disable(engine);
> +		engine_heartbeat_disable(engine);
>  
>  		rq = igt_spinner_create_request(&spin,
>  						engine->kernel_context,
>  						MI_NOOP);
>  		if (IS_ERR(rq)) {
> -			engine_heartbeat_enable(engine, saved_heartbeat);
> +			engine_heartbeat_enable(engine);
>  			err = PTR_ERR(rq);
>  			break;
>  		}
> @@ -1195,7 +1182,7 @@ int live_rps_power(void *arg)
>  			pr_err("%s: RPS spinner did not start\n",
>  			       engine->name);
>  			igt_spinner_end(&spin);
> -			engine_heartbeat_enable(engine, saved_heartbeat);
> +			engine_heartbeat_enable(engine);
>  			intel_gt_set_wedged(engine->gt);
>  			err = -EIO;
>  			break;
> @@ -1208,7 +1195,7 @@ int live_rps_power(void *arg)
>  		min.power = measure_power_at(rps, &min.freq);
>  
>  		igt_spinner_end(&spin);
> -		engine_heartbeat_enable(engine, saved_heartbeat);
> +		engine_heartbeat_enable(engine);
>  
>  		pr_info("%s: min:%llumW @ %uMHz, max:%llumW @ %uMHz\n",
>  			engine->name,
> diff --git a/drivers/gpu/drm/i915/gt/selftest_timeline.c b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> index c2578a0f2f14..ef1c35073dc0 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_timeline.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_timeline.c
> @@ -751,22 +751,20 @@ static int live_hwsp_wrap(void *arg)
>  	return err;
>  }
>  
> -static void engine_heartbeat_disable(struct intel_engine_cs *engine,
> -				     unsigned long *saved)
> +static void engine_heartbeat_disable(struct intel_engine_cs *engine)
>  {
> -	*saved = engine->props.heartbeat_interval_ms;
>  	engine->props.heartbeat_interval_ms = 0;
>  
>  	intel_engine_pm_get(engine);
>  	intel_engine_park_heartbeat(engine);
>  }
>  
> -static void engine_heartbeat_enable(struct intel_engine_cs *engine,
> -				    unsigned long saved)
> +static void engine_heartbeat_enable(struct intel_engine_cs *engine)
>  {
>  	intel_engine_pm_put(engine);
>  
> -	engine->props.heartbeat_interval_ms = saved;
> +	engine->props.heartbeat_interval_ms =
> +		engine->defaults.heartbeat_interval_ms;
>  }
>  
>  static int live_hwsp_rollover_kernel(void *arg)
> @@ -785,10 +783,9 @@ static int live_hwsp_rollover_kernel(void *arg)
>  		struct intel_context *ce = engine->kernel_context;
>  		struct intel_timeline *tl = ce->timeline;
>  		struct i915_request *rq[3] = {};
> -		unsigned long heartbeat;
>  		int i;
>  
> -		engine_heartbeat_disable(engine, &heartbeat);
> +		engine_heartbeat_disable(engine);
>  		if (intel_gt_wait_for_idle(gt, HZ / 2)) {
>  			err = -EIO;
>  			goto out;
> @@ -839,7 +836,7 @@ static int live_hwsp_rollover_kernel(void *arg)
>  out:
>  		for (i = 0; i < ARRAY_SIZE(rq); i++)
>  			i915_request_put(rq[i]);
> -		engine_heartbeat_enable(engine, heartbeat);
> +		engine_heartbeat_enable(engine);
>  		if (err)
>  			break;
>  	}
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
