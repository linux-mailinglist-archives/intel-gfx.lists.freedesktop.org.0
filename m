Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 44F67934CE3
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Jul 2024 14:06:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D928110E7BF;
	Thu, 18 Jul 2024 12:05:58 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Miq5ePBX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2B77910E7B1;
 Thu, 18 Jul 2024 12:05:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1721304358; x=1752840358;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=7nfpIPyermyh+G+z1pz02yp73DWcdXRDXaQQlE5Qq1I=;
 b=Miq5ePBXVa3WDyRlXimnnnzifo+bysBwlo1HZuw5Ch8KifVssgTlagaW
 IOIkpDG38dEvePN6Orw48MvM9P+C5i5GVO7HH2qfu+TTlOBWX3mFeFLLp
 Hp8i+HlmpoKGQlhtg3+eOI791TD62ebwckUt+famsQldtbOnZsg1REd5q
 CAYZmKXt61nMTlZAUQ6W0YY9oyFAzC3wEHBC+2+6jqXjeTp+j+r5DNOCx
 xv/t7N7Vlrst8ktC43L3jasa7eoJfDN5q38g3QC6c4Z6alEbYFC7DI3Ld
 uRxzkRRBKyzgeV2WgrlIzmTUwdZVoR/GgzqZH+PCg89V1j1V14UGr9PpM A==;
X-CSE-ConnectionGUID: vO+kuAONTrac7Mj7RD7s5w==
X-CSE-MsgGUID: ezERFClMSte5wHE8PLIr3Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11136"; a="18994892"
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="18994892"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jul 2024 05:05:56 -0700
X-CSE-ConnectionGUID: 3q7EwXqkS/iuo2k/E9PH8A==
X-CSE-MsgGUID: Wf+R/H6/RNiKxWPhcQilaw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,217,1716274800"; d="scan'208";a="50788918"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.102.138.187])
 by orviesa009-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Jul 2024 05:05:55 -0700
Date: Thu, 18 Jul 2024 14:05:51 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: igt-dev@lists.freedesktop.org
Cc: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>
Subject: Re: [PATCH i-g-t v4 1/5] tests/gem_ctx_exec: Fail on unsuccessful
 preempt timeout update
Message-ID: <20240718120551.jokgza773xtjaxut@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>
References: <20240718085912.15434-7-janusz.krzysztofik@linux.intel.com>
 <20240718085912.15434-8-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240718085912.15434-8-janusz.krzysztofik@linux.intel.com>
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

Hi Janusz,
On 2024-07-18 at 10:55:12 +0200, Janusz Krzysztofik wrote:
> CI reports the following failures from basic-nohangcheck subtest:
> 
> (gem_ctx_exec:1115) CRITICAL: Test assertion failure function nohangcheck_hostile, file ../../../usr/src/igt-gpu-tools/tests/intel/gem_ctx_exec.c:374:
> (gem_ctx_exec:1115) CRITICAL: Failed assertion: err == 0
> (gem_ctx_exec:1115) CRITICAL: Last errno: 2, No such file or directory
> (gem_ctx_exec:1115) CRITICAL: Hostile unpreemptable context was not cancelled immediately upon closure
> 
> The subtest sets 50 ms preempt timeout on each engine before proceding
> with submission of spins, then it waits up to 1 second for those spins to
> be terminated.  However, dump of engines' debugfs data performed by the
> subtest after the failure shows preempt timeouts still at their default
> values: 7500 ms on rcs0 and 640 ms on other class engines.  Dmesg records
> confirm preemption timeouts triggered on other engines after 640 ms and
> not on rcs0 within the 1 second limit.
> 
> As a first step, let the subtest verify return values of function calls
> supposed to update the preempt timeouts with the new values.  If failed
> on any engine then report that at debug level as a useful hint displayed
> when the test times out on waiting for spin termination.
> 
> v2: No changes.
> v3: Don't fail on unsuccessful update of preempt_timeout_ms, older
>     platforms don't support it but can still succeed.
> 
> Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/6268
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>

LGTM,

Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>


> ---
>  tests/intel/gem_ctx_exec.c | 11 +++++++----
>  1 file changed, 7 insertions(+), 4 deletions(-)
> 
> diff --git a/tests/intel/gem_ctx_exec.c b/tests/intel/gem_ctx_exec.c
> index d6aa8ba0aa..f3e252d10e 100644
> --- a/tests/intel/gem_ctx_exec.c
> +++ b/tests/intel/gem_ctx_exec.c
> @@ -308,8 +308,7 @@ static void nohangcheck_hostile(int i915)
>  	igt_hang_t hang;
>  	int fence = -1;
>  	const intel_ctx_t *ctx;
> -	int err = 0;
> -	int dir;
> +	int dir, err;
>  	uint64_t ahnd;
>  
>  	/*
> @@ -333,8 +332,11 @@ static void nohangcheck_hostile(int i915)
>  		int new;
>  
>  		/* Set a fast hang detection for a dead context */
> -		gem_engine_property_printf(i915, e->name,
> -					   "preempt_timeout_ms", "%d", 50);
> +		err = gem_engine_property_printf(i915, e->name,
> +						 "preempt_timeout_ms", "%d", 50);
> +		igt_debug_on_f(err < 0,
> +			       "%s preempt_timeout_ms update failed: %d\n",
> +			       e->name, err);
>  
>  		spin = __igt_spin_new(i915,
>  				      .ahnd = ahnd,
> @@ -362,6 +364,7 @@ static void nohangcheck_hostile(int i915)
>  	intel_ctx_destroy(i915, ctx);
>  	igt_assert(fence != -1);
>  
> +	err = 0;
>  	if (sync_fence_wait(fence, MSEC_PER_SEC)) { /* 640ms preempt-timeout */
>  		igt_debugfs_dump(i915, "i915_engine_info");
>  		err = -ETIME;
> -- 
> 2.45.2
> 
