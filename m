Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F463989FB2
	for <lists+intel-gfx@lfdr.de>; Mon, 30 Sep 2024 12:47:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADDC610E0B1;
	Mon, 30 Sep 2024 10:47:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="G5Q8l62u";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 36C6B10E0B1;
 Mon, 30 Sep 2024 10:47:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727693270; x=1759229270;
 h=message-id:date:mime-version:subject:to:cc:references:
 from:in-reply-to:content-transfer-encoding;
 bh=EywysO1eN+llUtmGag2KSla9shOaZj59Tn/dzpG1SH8=;
 b=G5Q8l62uiVq5bjjh0bnbp/UQbRWM/XASmrHiemsg17tmWECGzEfvXBjv
 OstvSVDR43Sexaiiv6W2G8e88wc+qqh8+ymcBj5Of5Bo6v5mvTx/3+XvG
 5He4QLWMUAhTM63cWB8YXQ3HDPC/VKXUT8LXNZj1bRSLb9GaqIWnCuhr8
 8be4hYhCuCpGiBrenJ0p++US8ZPxcO4Y1QbcPD6Ud6BllmrMg6ab6dbij
 q2cIOjuhp8PKsWiw6dEHd2iAQj3qt+DNbS3DkNkrqZ3SSQPb23Z9Xc5Ic
 m0ZGFvirPUvEv5jb6oD+b2Lwjp5PxXkR2etvrVqYjBJpA3fbpblSBbKSl Q==;
X-CSE-ConnectionGUID: B4V7Ep5gRtefkYHprBDihw==
X-CSE-MsgGUID: hNeGcEQ8R/StXeAJRytodA==
X-IronPort-AV: E=McAfee;i="6700,10204,11210"; a="26949139"
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="26949139"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 03:47:49 -0700
X-CSE-ConnectionGUID: 9wn6+rnwTMuOvloAet/bMQ==
X-CSE-MsgGUID: TiunbXGbROO8Vfn56ZNVPA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,165,1725346800"; d="scan'208";a="73227626"
Received: from morganmc-mobl.ger.corp.intel.com (HELO [10.213.199.177])
 ([10.213.199.177])
 by fmviesa009-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Sep 2024 03:47:48 -0700
Message-ID: <918f0645-c079-49e0-b17a-96dec3a35793@linux.intel.com>
Date: Mon, 30 Sep 2024 12:47:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] tests: drm_fdinfo: Fix zero tolerance checks
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org
Cc: intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>
References: <20240916090329.5279-1-janusz.krzysztofik@linux.intel.com>
Content-Language: en-US
From: Peter Senna Tschudin <peter.senna@linux.intel.com>
In-Reply-To: <20240916090329.5279-1-janusz.krzysztofik@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
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



On 16.09.2024 11:03, Janusz Krzysztofik wrote:
> When we expect an engine to be busy, we check if its reported busy time
> falls within a +/-5% tolerance range of measurement time period.
> However, when we expect the engine to be idle, we compare its reported
> busy time against zero, still with a +/-5% tolerance range, but now
> calculated against the zero value, then no tolerance at all.  Obviously,
> such check fails when the reported busy time is not exactly zero.
> 
> Compare engine idle time against measurement time period instead of
> comparing its busy time against zero when we expect the busy time to be
> close to zero.  As a debugging aid, display messages with the compared
> values when requested via --debug option or when a failure occurs.
> 

Reviewed-by: Peter Senna Tschudin <peter.senna@linux.intel.com>
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/7742
> Suggested-by: Chris Wilson <chris.p.wilson@linux.intel.com>
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/drm_fdinfo.c | 51 ++++++++++++++++++++--------------------
>  1 file changed, 25 insertions(+), 26 deletions(-)
> 
> diff --git a/tests/intel/drm_fdinfo.c b/tests/intel/drm_fdinfo.c
> index 43216a64e..45d17aaaa 100644
> --- a/tests/intel/drm_fdinfo.c
> +++ b/tests/intel/drm_fdinfo.c
> @@ -107,12 +107,18 @@ static const char *engine_map[] = {
>  };
>  
>  #define __assert_within_epsilon(x, ref, tol_up, tol_down) \
> -	igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
> -		     (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
> -		     "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n",\
> -		     #x, #ref, (double)(x), \
> -		     (tol_up) * 100.0, (tol_down) * 100.0, \
> -		     (double)(ref))
> +	do { \
> +		igt_assert_f((double)(x) <= (1.0 + (tol_up)) * (double)(ref) && \
> +			     (double)(x) >= (1.0 - (tol_down)) * (double)(ref), \
> +			     "'%s' != '%s' (%f not within +%.1f%%/-%.1f%% tolerance of %f)\n",\
> +			     #x, #ref, (double)(x), \
> +			     (tol_up) * 100.0, (tol_down) * 100.0, \
> +			     (double)(ref)); \
> +		igt_debug("%f within +%.1f%%/-%.1f%% tolerance of %f\n",\
> +			  (double)(x), \
> +			  (tol_up) * 100.0, (tol_down) * 100.0, \
> +			  (double)(ref)); \
> +	} while (0)
>  
>  #define assert_within_epsilon(x, ref, tolerance) \
>  	__assert_within_epsilon(x, ref, tolerance, tolerance)
> @@ -241,10 +247,8 @@ single(int gem_fd, const intel_ctx_t *ctx,
>  	else
>  		end_spin(spin_fd, spin, FLAG_SYNC);
>  
> -	assert_within_epsilon(val,
> -			      (flags & TEST_BUSY) && !(flags & TEST_ISOLATION) ?
> -			      slept : 0.0f,
> -			      tolerance);
> +	assert_within_epsilon((flags & TEST_BUSY) && !(flags & TEST_ISOLATION) ? val : slept - val,
> +			      slept, tolerance);
>  
>  	/* Check for idle after hang. */
>  	if (flags & FLAG_HANG) {
> @@ -255,7 +259,7 @@ single(int gem_fd, const intel_ctx_t *ctx,
>  		slept = measured_usleep(batch_duration_ns / 1000);
>  		val = read_engine_time(gem_fd, e->class) - val;
>  
> -		assert_within_epsilon(val, 0, tolerance);
> +		assert_within_epsilon(slept - val, slept, tolerance);
>  	}
>  
>  	igt_spin_free(spin_fd, spin);
> @@ -328,11 +332,8 @@ busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>  
>  	log_busy(num_classes, val);
>  
> -	for (i = 0; i < num_classes; i++) {
> -		double target = i == e->class ? slept : 0.0f;
> -
> -		assert_within_epsilon(val[i], target, tolerance);
> -	}
> +	for (i = 0; i < num_classes; i++)
> +		assert_within_epsilon(i == e->class ? val[i] : slept - val[i], slept, tolerance);
>  
>  	gem_quiescent_gpu(gem_fd);
>  }
> @@ -405,9 +406,9 @@ most_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>  	log_busy(num_classes, val);
>  
>  	for (i = 0; i < num_classes; i++) {
> -		double target = slept * busy_class[i];
> +		double target = slept * busy_class[i] ?: slept;
>  
> -		assert_within_epsilon(val[i], target, tolerance);
> +		assert_within_epsilon(busy_class[i] ? val[i] : slept - val[i], target, tolerance);
>  	}
>  	gem_quiescent_gpu(gem_fd);
>  }
> @@ -460,9 +461,9 @@ all_busy_check_all(int gem_fd, const intel_ctx_t *ctx,
>  	log_busy(num_classes, val);
>  
>  	for (i = 0; i < num_classes; i++) {
> -		double target = slept * busy_class[i];
> +		double target = slept * busy_class[i] ?: slept;
>  
> -		assert_within_epsilon(val[i], target, tolerance);
> +		assert_within_epsilon(busy_class[i] ? val[i] : slept - val[i], target, tolerance);
>  	}
>  	gem_quiescent_gpu(gem_fd);
>  }
> @@ -601,10 +602,8 @@ virtual(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
>  			else
>  				end_spin(i915, spin, FLAG_SYNC);
>  
> -			assert_within_epsilon(val,
> -					      flags & TEST_BUSY ?
> -					      slept : 0.0f,
> -					      tolerance);
> +			assert_within_epsilon(flags & TEST_BUSY ? val : slept - val,
> +					      slept, tolerance);
>  
>  			/* Check for idle after hang. */
>  			if (flags & FLAG_HANG) {
> @@ -616,7 +615,7 @@ virtual(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
>  							1000);
>  				val = read_engine_time(i915, class) - val;
>  
> -				assert_within_epsilon(val, 0, tolerance);
> +				assert_within_epsilon(slept - val, slept, tolerance);
>  			}
>  
>  			igt_spin_free(i915, spin);
> @@ -724,7 +723,7 @@ virtual_all(int i915, const intel_ctx_cfg_t *base_cfg, unsigned int flags)
>  						1000);
>  			val = read_engine_time(i915, class) - val;
>  
> -			assert_within_epsilon(val, 0, tolerance);
> +			assert_within_epsilon(slept - val, slept, tolerance);
>  		}
>  
>  		igt_spin_free(i915, spin);
