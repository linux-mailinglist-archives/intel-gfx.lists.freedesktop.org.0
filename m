Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 16840CCC3EE
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 15:21:34 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 9196410E9F0;
	Thu, 18 Dec 2025 14:21:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SYdN0GFT";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 54DBC10E13A;
 Thu, 18 Dec 2025 14:21:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766067691; x=1797603691;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=Iv8WtMsUayM9ge7ciysbUkZsM90vzaFtWLD2/P1YxAA=;
 b=SYdN0GFTaO5/9G2Qn/9zz2JUIISIfFMPSbsyy4owWK1zBxJnbe+KdSqq
 RrY3HtBQIo5mfiOLvJD7si1KqYxK25axFeS7F7jgecUVMH1VDyamclVK/
 DrTFpuFGzIv5ko3e/sEhUd4TvZC2lky8wrikzCSb+L2jmuDbn1BJ6+BMX
 U0xzcVFGX1LJYLEe7EKGYuaGhl3yaqkaIHrBb8rPvIuRmtrU0ZFGzqjcF
 Q5G4EyDcWybCKX00o+HD3QA4esEy686Iks83uxiEsC3sWTaaAp8+8y3Wu
 ksUF2VSL4mT74lnqk9tPVs+kTsyHcLD15NgqpspGS3ecM0a3kVTaYdD/G w==;
X-CSE-ConnectionGUID: etgesWOOT7KZvz9ZJxvRrw==
X-CSE-MsgGUID: uO7N2wVARlupawPOgzhruw==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="85438578"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="85438578"
Received: from orviesa010.jf.intel.com ([10.64.159.150])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 06:21:30 -0800
X-CSE-ConnectionGUID: n3n6xYo5RBucgxmjXMgwuQ==
X-CSE-MsgGUID: LLruB8hhTRekiltCYRdPKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="197849257"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by orviesa010-auth.jf.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 18 Dec 2025 06:21:28 -0800
Date: Thu, 18 Dec 2025 15:21:25 +0100
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH i-g-t] tests/intel/gem_lmem_swapping: Avoid false
 failures from oom-killer
Message-ID: <20251218142125.i75a6km3wm7nxjsc@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org
References: <20251217145110.131121-2-janusz.krzysztofik@linux.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20251217145110.131121-2-janusz.krzysztofik@linux.intel.com>
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
On 2025-12-17 at 15:50:30 +0100, Janusz Krzysztofik wrote:
> The smem-oom subtest can expectedly result in oom-killer being triggered,
> which then dumps a call trace from a process that triggered it.  If that
> happens to be a process that executes drm or i915 functions then the call
> trace dump contains lines recognized by igt_runner running in piglit mode
> as potential warnings.  If severity of the call trace dump messages is
> NOTICE or higher, which isn't unlikely, then a dmesg-warn result is
> reported despite successful completion of the subtest.
> 
> Fortunately, severity of those call trace dump messages depends on kernel
> default log level which can be controlled from user space over sysctl.
> 
> To avoid false failure reports, relax kernel default log level to INFO so
> those log lines are ignored by igt_runner in piglit mode at an expense of
> call traces from real issues potentially detected by the subtest not
> contributing to the igt_runner reported result.  Since those call traces
> are still available to developers, only submitted with reduced severity,
> that shouldn't hurt as long as the igt_runner still abandons further
> execution and reports an abort result on a kernel taint.
> 
> Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
> Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> ---
>  tests/intel/gem_lmem_swapping.c | 40 ++++++++++++++++++++++++++++++++-
>  1 file changed, 39 insertions(+), 1 deletion(-)
> 
> diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
> index adae26716c..ab951a7414 100644
> --- a/tests/intel/gem_lmem_swapping.c
> +++ b/tests/intel/gem_lmem_swapping.c
> @@ -804,8 +804,9 @@ int igt_main_args("", long_options, help_str, opt_handler, NULL)
>  		{ "parallel-random-verify-ccs", TEST_PARALLEL | TEST_RANDOM | TEST_CCS },
>  		{ }
>  	};
> +	int i915 = -1, console_log_level, default_log_level;
>  	const intel_ctx_t *ctx;
> -	int i915 = -1;
> +	FILE *printk;

	FILE *printk = NULL;

For a reason see below.

>  
>  	igt_fixture() {
>  		struct intel_execution_engine2 *e;
> @@ -860,11 +861,48 @@ int igt_main_args("", long_options, help_str, opt_handler, NULL)
>  			test_evict(i915, ctx, region, test->flags);
>  	}
>  
> +	/*
> +	 * The smem-oom subtest can result in oom-killer being triggered, which
> +	 * then dumps a call trace from a process that triggered it.  If that
> +	 * happens to be a process that executes drm or i915 functions then the
> +	 * call trace dump contains lines recognized by igt_runner as warnings
> +	 * and a dmesg-warn result is reported.  To avoid false failure reports,
> +	 * relax kernel default log level to INFO for those lines to be ignored
> +	 * by igt_runner in piglit mode, at an expense of call traces from
> +	 * potential real issues not contributing to the igt_runner reported
> +	 * result.  Since those call traces are still available to developers,
> +	 * only displayed with relaxed severity, that shouldn't hurt as long as
> +	 * igt_runner still abandons further execution and reports an abort
> +	 * result on a kernel taint.
> +	 */
> +	igt_fixture() {
> +		printk = fopen("/proc/sys/kernel/printk", "r+");
> +		if (igt_debug_on(!printk))
> +			break;
> +
> +		if (!igt_debug_on(fscanf(printk, "%d %d",
> +					 &console_log_level, &default_log_level) != 2) &&
> +		    default_log_level < 6) {
> +			rewind(printk);
> +			igt_debug_on(fprintf(printk, "%d 6", console_log_level) != 3);
> +		} else {
> +			fclose(printk);
> +			printk = NULL;
> +		}
> +	}
> +

Looks good but please move it inside subtest smem-oom,
so it will affect only it. Cleanup should be done in final fixup
so that code is ok.

Regards,
Kamil

>  	igt_describe("Exercise local memory swapping during exhausting system memory");
>  	dynamic_lmem_subtest(region, regions, "smem-oom")
>  		test_smem_oom(i915, ctx, region);
>  
>  	igt_fixture() {
> +		if (printk) {
> +			rewind(printk);
> +			igt_debug_on(fprintf(printk, "%d %d",
> +					     console_log_level, default_log_level) != 3);
> +			fclose(printk);
> +		}
> +
>  		intel_allocator_multiprocess_stop();
>  		intel_ctx_destroy(i915, ctx);
>  		free(regions);
> -- 
> 2.52.0
> 
