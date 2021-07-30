Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id CB3813DBF45
	for <lists+intel-gfx@lfdr.de>; Fri, 30 Jul 2021 21:56:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7355E6F469;
	Fri, 30 Jul 2021 19:55:57 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1F4E76E457;
 Fri, 30 Jul 2021 19:55:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10061"; a="213192569"
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="213192569"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 12:55:55 -0700
X-IronPort-AV: E=Sophos;i="5.84,282,1620716400"; d="scan'208";a="465572556"
Received: from dut151-iclu.fm.intel.com ([10.105.23.43])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jul 2021 12:55:55 -0700
Date: Fri, 30 Jul 2021 19:55:53 +0000
From: Matthew Brost <matthew.brost@intel.com>
To: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
Cc: intel-gfx@lists.freedesktop.org, dri-devel@lists.freedesktop.org
Message-ID: <20210730195553.GA61370@DUT151-ICLU.fm.intel.com>
References: <20210730020107.31415-1-vinay.belgaumkar@intel.com>
 <20210730020107.31415-14-vinay.belgaumkar@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210730020107.31415-14-vinay.belgaumkar@intel.com>
Subject: Re: [Intel-gfx] [PATCH 13/14] drm/i915/guc/slpc: Add SLPC selftest
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
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Jul 29, 2021 at 07:01:06PM -0700, Vinay Belgaumkar wrote:
> Tests that exercise the SLPC get/set frequency interfaces.
> 
> Clamp_max will set max frequency to multiple levels and check
> that SLPC requests frequency lower than or equal to it.
> 
> Clamp_min will set min frequency to different levels and check
> if SLPC requests are higher or equal to those levels.
> 
> v2: Address review comments (Michal W)
> v3: Checkpatch() corrections
> v4: Remove unnecessary header file (Matthew Brost)
> v5: checkpatch() and define const for 50/3 (Matthew Brost)
> 
> Signed-off-by: Vinay Belgaumkar <vinay.belgaumkar@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/intel_rps.c           |   1 +
>  drivers/gpu/drm/i915/gt/selftest_slpc.c       | 314 ++++++++++++++++++
>  .../drm/i915/selftests/i915_live_selftests.h  |   1 +
>  3 files changed, 316 insertions(+)
>  create mode 100644 drivers/gpu/drm/i915/gt/selftest_slpc.c
> 
> diff --git a/drivers/gpu/drm/i915/gt/intel_rps.c b/drivers/gpu/drm/i915/gt/intel_rps.c
> index 847c6313c1e7..1dabe82d67a6 100644
> --- a/drivers/gpu/drm/i915/gt/intel_rps.c
> +++ b/drivers/gpu/drm/i915/gt/intel_rps.c
> @@ -2333,4 +2333,5 @@ EXPORT_SYMBOL_GPL(i915_gpu_turbo_disable);
>  
>  #if IS_ENABLED(CONFIG_DRM_I915_SELFTEST)
>  #include "selftest_rps.c"
> +#include "selftest_slpc.c"
>  #endif
> diff --git a/drivers/gpu/drm/i915/gt/selftest_slpc.c b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> new file mode 100644
> index 000000000000..0d9f64461f5d
> --- /dev/null
> +++ b/drivers/gpu/drm/i915/gt/selftest_slpc.c
> @@ -0,0 +1,314 @@
> +// SPDX-License-Identifier: MIT
> +/*
> + * Copyright � 2021 Intel Corporation
> + */
> +
> +#define NUM_STEPS 5
> +#define H2G_DELAY 50000
> +#define delay_for_h2g() usleep_range(H2G_DELAY, H2G_DELAY + 10000)
> +#define FREQUENCY_REQ_UNIT	DIV_ROUND_CLOSEST(GT_FREQUENCY_MULTIPLIER, \
> +						  GEN9_FREQ_SCALER)
> +
> +int live_slpc_clamp_min(void *arg);
> +int live_slpc_clamp_max(void *arg);

No needed.

> +
> +static int slpc_set_min_freq(struct intel_guc_slpc *slpc, u32 freq)
> +{
> +	int ret;
> +
> +	ret = intel_guc_slpc_set_min_freq(slpc, freq);
> +	if (ret)
> +		pr_err("Could not set min frequency to [%u]\n", freq);
> +	else /* Delay to ensure h2g completes */
> +		delay_for_h2g();
> +
> +	return ret;
> +}
> +
> +static int slpc_set_max_freq(struct intel_guc_slpc *slpc, u32 freq)
> +{
> +	int ret;
> +
> +	ret = intel_guc_slpc_set_max_freq(slpc, freq);
> +	if (ret)
> +		pr_err("Could not set maximum frequency [%u]\n",
> +		       freq);
> +	else /* Delay to ensure h2g completes */
> +		delay_for_h2g();
> +
> +	return ret;
> +}
> +
> +int live_slpc_clamp_min(void *arg)

Should be static.

> +{
> +	struct drm_i915_private *i915 = arg;
> +	struct intel_gt *gt = &i915->gt;
> +	struct intel_guc_slpc *slpc = &gt->uc.guc.slpc;
> +	struct intel_rps *rps = &gt->rps;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +	struct igt_spinner spin;
> +	u32 slpc_min_freq, slpc_max_freq;
> +	int err = 0;
> +
> +	if (!intel_uc_uses_guc_slpc(&gt->uc))
> +		return 0;
> +
> +	if (igt_spinner_init(&spin, gt))
> +		return -ENOMEM;
> +
> +	if (intel_guc_slpc_get_max_freq(slpc, &slpc_max_freq)) {
> +		pr_err("Could not get SLPC max freq\n");
> +		return -EIO;
> +	}
> +
> +	if (intel_guc_slpc_get_min_freq(slpc, &slpc_min_freq)) {
> +		pr_err("Could not get SLPC min freq\n");
> +		return -EIO;
> +	}
> +
> +	if (slpc_min_freq == slpc_max_freq) {
> +		pr_err("Min/Max are fused to the same value\n");
> +		return -EINVAL;
> +	}
> +
> +	intel_gt_pm_wait_for_idle(gt);
> +	intel_gt_pm_get(gt);
> +	for_each_engine(engine, gt, id) {
> +		struct i915_request *rq;
> +		u32 step, min_freq, req_freq;
> +		u32 act_freq, max_act_freq;
> +
> +		if (!intel_engine_can_store_dword(engine))
> +			continue;
> +
> +		/* Go from min to max in 5 steps */
> +		step = (slpc_max_freq - slpc_min_freq) / NUM_STEPS;
> +		max_act_freq = slpc_min_freq;
> +		for (min_freq = slpc_min_freq; min_freq < slpc_max_freq;
> +					min_freq += step) {
> +			err = slpc_set_min_freq(slpc, min_freq);
> +			if (err)
> +				break;
> +
> +			st_engine_heartbeat_disable(engine);
> +
> +			rq = igt_spinner_create_request(&spin,
> +							engine->kernel_context,
> +							MI_NOOP);
> +			if (IS_ERR(rq)) {
> +				err = PTR_ERR(rq);
> +				st_engine_heartbeat_enable(engine);
> +				break;
> +			}
> +
> +			i915_request_add(rq);
> +
> +			if (!igt_wait_for_spinner(&spin, rq)) {
> +				pr_err("%s: Spinner did not start\n",
> +				       engine->name);
> +				igt_spinner_end(&spin);
> +				st_engine_heartbeat_enable(engine);
> +				intel_gt_set_wedged(engine->gt);
> +				err = -EIO;
> +				break;
> +			}
> +
> +			/* Wait for GuC to detect business and raise
> +			 * requested frequency if necessary.
> +			 */
> +			delay_for_h2g();
> +
> +			req_freq = intel_rps_read_punit_req_frequency(rps);
> +
> +			/* GuC requests freq in multiples of 50/3 MHz */
> +			if (req_freq < (min_freq - FREQUENCY_REQ_UNIT)) {
> +				pr_err("SWReq is %d, should be at least %d\n", req_freq,
> +				       min_freq - FREQUENCY_REQ_UNIT);
> +				igt_spinner_end(&spin);
> +				st_engine_heartbeat_enable(engine);
> +				err = -EINVAL;
> +				break;
> +			}
> +
> +			act_freq =  intel_rps_read_actual_frequency(rps);
> +			if (act_freq > max_act_freq)
> +				max_act_freq = act_freq;
> +
> +			igt_spinner_end(&spin);
> +			st_engine_heartbeat_enable(engine);
> +		}
> +
> +		pr_info("Max actual frequency for %s was %d\n",
> +			engine->name, max_act_freq);
> +
> +		/* Actual frequency should rise above min */
> +		if (max_act_freq == slpc_min_freq) {
> +			pr_err("Actual freq did not rise above min\n");
> +			err = -EINVAL;
> +		}
> +
> +		if (err)
> +			break;
> +	}
> +
> +	/* Restore min/max frequencies */
> +	slpc_set_max_freq(slpc, slpc_max_freq);
> +	slpc_set_min_freq(slpc, slpc_min_freq);
> +
> +	if (igt_flush_test(gt->i915))
> +		err = -EIO;
> +
> +	intel_gt_pm_put(gt);
> +	igt_spinner_fini(&spin);
> +	intel_gt_pm_wait_for_idle(gt);
> +
> +	return err;
> +}
> +
> +int live_slpc_clamp_max(void *arg)
> +{

Should be static.

With the nits fixed:
Reviewed-by: Matthew Brost <matthew.brost@intel.com>

> +	struct drm_i915_private *i915 = arg;
> +	struct intel_gt *gt = &i915->gt;
> +	struct intel_guc_slpc *slpc;
> +	struct intel_rps *rps;
> +	struct intel_engine_cs *engine;
> +	enum intel_engine_id id;
> +	struct igt_spinner spin;
> +	int err = 0;
> +	u32 slpc_min_freq, slpc_max_freq;
> +
> +	slpc = &gt->uc.guc.slpc;
> +	rps = &gt->rps;
> +
> +	if (!intel_uc_uses_guc_slpc(&gt->uc))
> +		return 0;
> +
> +	if (igt_spinner_init(&spin, gt))
> +		return -ENOMEM;
> +
> +	if (intel_guc_slpc_get_max_freq(slpc, &slpc_max_freq)) {
> +		pr_err("Could not get SLPC max freq\n");
> +		return -EIO;
> +	}
> +
> +	if (intel_guc_slpc_get_min_freq(slpc, &slpc_min_freq)) {
> +		pr_err("Could not get SLPC min freq\n");
> +		return -EIO;
> +	}
> +
> +	if (slpc_min_freq == slpc_max_freq) {
> +		pr_err("Min/Max are fused to the same value\n");
> +		return -EINVAL;
> +	}
> +
> +	intel_gt_pm_wait_for_idle(gt);
> +	intel_gt_pm_get(gt);
> +	for_each_engine(engine, gt, id) {
> +		struct i915_request *rq;
> +		u32 max_freq, req_freq;
> +		u32 act_freq, max_act_freq;
> +		u32 step;
> +
> +		if (!intel_engine_can_store_dword(engine))
> +			continue;
> +
> +		/* Go from max to min in 5 steps */
> +		step = (slpc_max_freq - slpc_min_freq) / NUM_STEPS;
> +		max_act_freq = slpc_min_freq;
> +		for (max_freq = slpc_max_freq; max_freq > slpc_min_freq;
> +					max_freq -= step) {
> +			err = slpc_set_max_freq(slpc, max_freq);
> +			if (err)
> +				break;
> +
> +			st_engine_heartbeat_disable(engine);
> +
> +			rq = igt_spinner_create_request(&spin,
> +							engine->kernel_context,
> +							MI_NOOP);
> +			if (IS_ERR(rq)) {
> +				st_engine_heartbeat_enable(engine);
> +				err = PTR_ERR(rq);
> +				break;
> +			}
> +
> +			i915_request_add(rq);
> +
> +			if (!igt_wait_for_spinner(&spin, rq)) {
> +				pr_err("%s: SLPC spinner did not start\n",
> +				       engine->name);
> +				igt_spinner_end(&spin);
> +				st_engine_heartbeat_enable(engine);
> +				intel_gt_set_wedged(engine->gt);
> +				err = -EIO;
> +				break;
> +			}
> +
> +			delay_for_h2g();
> +
> +			/* Verify that SWREQ indeed was set to specific value */
> +			req_freq = intel_rps_read_punit_req_frequency(rps);
> +
> +			/* GuC requests freq in multiples of 50/3 MHz */
> +			if (req_freq > (max_freq + FREQUENCY_REQ_UNIT)) {
> +				pr_err("SWReq is %d, should be at most %d\n", req_freq,
> +				       max_freq + FREQUENCY_REQ_UNIT);
> +				igt_spinner_end(&spin);
> +				st_engine_heartbeat_enable(engine);
> +				err = -EINVAL;
> +				break;
> +			}
> +
> +			act_freq =  intel_rps_read_actual_frequency(rps);
> +			if (act_freq > max_act_freq)
> +				max_act_freq = act_freq;
> +
> +			st_engine_heartbeat_enable(engine);
> +			igt_spinner_end(&spin);
> +
> +			if (err)
> +				break;
> +		}
> +
> +		pr_info("Max actual frequency for %s was %d\n",
> +			engine->name, max_act_freq);
> +
> +		/* Actual frequency should rise above min */
> +		if (max_act_freq == slpc_min_freq) {
> +			pr_err("Actual freq did not rise above min\n");
> +			err = -EINVAL;
> +		}
> +
> +		if (igt_flush_test(gt->i915)) {
> +			err = -EIO;
> +			break;
> +		}
> +
> +		if (err)
> +			break;
> +	}
> +
> +	/* Restore min/max freq */
> +	slpc_set_max_freq(slpc, slpc_max_freq);
> +	slpc_set_min_freq(slpc, slpc_min_freq);
> +
> +	intel_gt_pm_put(gt);
> +	igt_spinner_fini(&spin);
> +	intel_gt_pm_wait_for_idle(gt);
> +
> +	return err;
> +}
> +
> +int intel_slpc_live_selftests(struct drm_i915_private *i915)
> +{
> +	static const struct i915_subtest tests[] = {
> +		SUBTEST(live_slpc_clamp_max),
> +		SUBTEST(live_slpc_clamp_min),
> +	};
> +
> +	if (intel_gt_is_wedged(&i915->gt))
> +		return 0;
> +
> +	return i915_live_subtests(tests, i915);
> +}
> diff --git a/drivers/gpu/drm/i915/selftests/i915_live_selftests.h b/drivers/gpu/drm/i915/selftests/i915_live_selftests.h
> index e2fd1b61af71..1746a56dda06 100644
> --- a/drivers/gpu/drm/i915/selftests/i915_live_selftests.h
> +++ b/drivers/gpu/drm/i915/selftests/i915_live_selftests.h
> @@ -47,5 +47,6 @@ selftest(hangcheck, intel_hangcheck_live_selftests)
>  selftest(execlists, intel_execlists_live_selftests)
>  selftest(ring_submission, intel_ring_submission_live_selftests)
>  selftest(perf, i915_perf_live_selftests)
> +selftest(slpc, intel_slpc_live_selftests)
>  /* Here be dragons: keep last to run last! */
>  selftest(late_gt_pm, intel_gt_pm_late_selftests)
> -- 
> 2.25.0
> 
> _______________________________________________
> Intel-gfx mailing list
> Intel-gfx@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/intel-gfx
