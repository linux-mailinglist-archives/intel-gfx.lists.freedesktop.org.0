Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A35BCCB84B3
	for <lists+intel-gfx@lfdr.de>; Fri, 12 Dec 2025 09:34:38 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A86CA10E365;
	Fri, 12 Dec 2025 08:34:36 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mdgIFHd1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B869710E5A4
 for <intel-gfx@lists.freedesktop.org>; Fri, 12 Dec 2025 08:34:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765528476; x=1797064476;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=klqo7Yly/c8mLksJzlA6KA1AtTqsPyc8Qe90r/9/9xo=;
 b=mdgIFHd1le3BpeBJBVouoxE8H2Abfu2DYKFLstuhiiTJGwj5uY7BaekH
 QqNKrFLSPPy7NZ+ocwGkGhN510e+MnSaPw4s9iy9v5ccL0NSdoyAKb4Ya
 mXaW1CFvokAm2exZHdMsswKuBeCRCaGwHob2i1B6uzaxl4RU5w4CB8+HZ
 l0Ar7gPwfW8TLZTwoDeMOhnDy86JtSi7DuYA1tFCpybv5Rm1sig0qeLYI
 KW9eLcFa7DcNAYrgr/XxFQgyKn5bwUrqjURc2PsvBNky9bu45wuUfVO/K
 RZXl8gNZ2Sr9F0h5hQ3/7jOh//8WF0HkEYQrMOjhQNqaHq65SUWPTsR8P Q==;
X-CSE-ConnectionGUID: TraSzB3LRKWGwJyhSrqV3A==
X-CSE-MsgGUID: ENcFWIMaTU6bGvsPoPx6aQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11639"; a="92993527"
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="92993527"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 00:34:07 -0800
X-CSE-ConnectionGUID: 02Z4dE0eSqiPNRt/MHggyA==
X-CSE-MsgGUID: b4ZRUrUGRF27vP/8hL1zbQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,143,1763452800"; d="scan'208";a="201934661"
Received: from black.igk.intel.com ([10.91.253.5])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Dec 2025 00:34:05 -0800
Date: Fri, 12 Dec 2025 09:34:02 +0100
From: Raag Jadav <raag.jadav@intel.com>
To: Sk Anirban <sk.anirban@intel.com>
Cc: intel-gfx@lists.freedesktop.org, anshuman.gupta@intel.com,
 badal.nilawar@intel.com, riana.tauro@intel.com,
 karthik.poosa@intel.com, soham.purkait@intel.com,
 mallesh.koujalagi@intel.com, krzysztof.karas@intel.com
Subject: Re: [PATCH] drm/i915/selftest: Add throttle reason diagnostics to
 RPS selftests
Message-ID: <aTvTek_-ksTyOFuf@black.igk.intel.com>
References: <20251211175045.1317753-2-sk.anirban@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251211175045.1317753-2-sk.anirban@intel.com>
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

On Thu, Dec 11, 2025 at 11:20:46PM +0530, Sk Anirban wrote:
> Report GPU throttle reasons when RPS tests fail to reach expected
> frequencies or power levels.
> 
> v2: Read the throttle value before the spinner ends (Raag)
>     Add a condition before printing throttle value (Krzysztof)

Please also format-patch with same version for consistency.

https://kernelnewbies.org/FirstKernelPatch -> "Versioning one patch revision"

> Signed-off-by: Sk Anirban <sk.anirban@intel.com>
> ---
>  drivers/gpu/drm/i915/gt/selftest_rps.c | 33 ++++++++++++++++++++++----
>  1 file changed, 28 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/gt/selftest_rps.c b/drivers/gpu/drm/i915/gt/selftest_rps.c
> index 73bc91c6ea07..b72536ea6747 100644
> --- a/drivers/gpu/drm/i915/gt/selftest_rps.c
> +++ b/drivers/gpu/drm/i915/gt/selftest_rps.c
> @@ -378,6 +378,7 @@ int live_rps_control(void *arg)
>  	enum intel_engine_id id;
>  	struct igt_spinner spin;
>  	intel_wakeref_t wakeref;
> +	u32 throttle = 0;

The test guarantees its assignment so no need to initialize it.

>  	int err = 0;
>  
>  	/*
> @@ -463,6 +464,10 @@ int live_rps_control(void *arg)
>  		max = rps_set_check(rps, limit);
>  		max_dt = ktime_sub(ktime_get(), max_dt);
>  
> +		throttle = intel_uncore_read(gt->uncore,
> +					     intel_gt_perf_limit_reasons_reg(gt));
> +		throttle &= GT0_PERF_LIMIT_REASONS_MASK;
> +
>  		min_dt = ktime_get();
>  		min = rps_set_check(rps, rps->min_freq);
>  		min_dt = ktime_sub(ktime_get(), min_dt);
> @@ -478,11 +483,9 @@ int live_rps_control(void *arg)
>  			min, max, ktime_to_ns(min_dt), ktime_to_ns(max_dt));
>  
>  		if (limit != rps->max_freq) {
> -			u32 throttle = intel_uncore_read(gt->uncore,
> -							 intel_gt_perf_limit_reasons_reg(gt));
> -
> -			pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> -				engine->name, throttle & GT0_PERF_LIMIT_REASONS_MASK);
> +			if (throttle)
> +				pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> +					engine->name, throttle);
>  			show_pstate_limits(rps);
>  		}
>  
> @@ -1138,6 +1141,7 @@ int live_rps_power(void *arg)
>  	struct intel_engine_cs *engine;
>  	enum intel_engine_id id;
>  	struct igt_spinner spin;
> +	u32 throttle = 0;

Ditto.

>  	int err = 0;
>  
>  	/*
> @@ -1195,6 +1199,10 @@ int live_rps_power(void *arg)
>  		max.freq = rps->max_freq;
>  		max.power = measure_power_at(rps, &max.freq);
>  
> +		throttle = intel_uncore_read(gt->uncore,
> +					     intel_gt_perf_limit_reasons_reg(gt));
> +		throttle &= GT0_PERF_LIMIT_REASONS_MASK;
> +
>  		min.freq = rps->min_freq;
>  		min.power = measure_power_at(rps, &min.freq);
>  
> @@ -1216,6 +1224,11 @@ int live_rps_power(void *arg)
>  		if (11 * min.power > 10 * max.power) {
>  			pr_err("%s: did not conserve power when setting lower frequency!\n",
>  			       engine->name);
> +
> +			if (throttle)
> +				pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> +					engine->name, throttle);

I think this'll also be useful in frequency check above.

> +
>  			err = -EINVAL;
>  			break;
>  		}
> @@ -1241,6 +1254,7 @@ int live_rps_dynamic(void *arg)
>  	struct intel_engine_cs *engine;
>  	enum intel_engine_id id;
>  	struct igt_spinner spin;
> +	u32 throttle = 0;

Ditto.

Raag

>  	int err = 0;
>  
>  	/*
> @@ -1293,6 +1307,10 @@ int live_rps_dynamic(void *arg)
>  		max.freq = wait_for_freq(rps, rps->max_freq, 500);
>  		max.dt = ktime_sub(ktime_get(), max.dt);
>  
> +		throttle = intel_uncore_read(gt->uncore,
> +					     intel_gt_perf_limit_reasons_reg(gt));
> +		throttle &= GT0_PERF_LIMIT_REASONS_MASK;
> +
>  		igt_spinner_end(&spin);
>  
>  		min.dt = ktime_get();
> @@ -1308,6 +1326,11 @@ int live_rps_dynamic(void *arg)
>  		if (min.freq >= max.freq) {
>  			pr_err("%s: dynamic reclocking of spinner failed\n!",
>  			       engine->name);
> +
> +			if (throttle)
> +				pr_warn("%s: GPU throttled with reasons 0x%08x\n",
> +					engine->name, throttle);
> +
>  			err = -EINVAL;
>  		}
>  
> -- 
> 2.43.0
> 
