Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C9A3D1E66F
	for <lists+intel-gfx@lfdr.de>; Wed, 14 Jan 2026 12:30:02 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E81D410E5F6;
	Wed, 14 Jan 2026 11:30:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="d94j90U1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C84A110E0F8;
 Wed, 14 Jan 2026 11:29:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768390199; x=1799926199;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=ip/Bg+KZwvNQ9Pd5B9qyG+O+xxL9Voug5EsBdJBiKb0=;
 b=d94j90U1AlvkFb9m0lzMsrc9KeTcUdlz2/cVU6aow5tvT4fIb0t93Cvw
 2xWUnYViz49bSYxgIoY8ObB53AHKSYpnEpDIylk3FOODGiuLvlU2cKi/P
 KBVa+zg5/rHMO4Me0GaKOwMU2UrH9iy7FycQlViI7fUU2XWandLfmmjA3
 3B6fAYkJA10OY8zSAJQ5GhG5b9dma6Noce0a6qmJTRdMWQyKhnyDBx/ay
 6WFCYNxT1wo52NCBUQqVOiqV72ptnTdbfCPxp6CF6xfJ9XOaVmAEIklwO
 vCBtvZjzGdEm3jgtSPK9JYDW9Z1NPujNdwQk5WpBcATSuw9hL+89F9DIf Q==;
X-CSE-ConnectionGUID: shXY0PaWRiufmVEy0cMx9w==
X-CSE-MsgGUID: Z8WULfqeSWqlRQupszj/+w==
X-IronPort-AV: E=McAfee;i="6800,10657,11670"; a="68693732"
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="68693732"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 03:29:58 -0800
X-CSE-ConnectionGUID: 5leNaMlMQuaAVMJoDhEC1g==
X-CSE-MsgGUID: 5F2IrfdvQ9e6noCPTa6aOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,225,1763452800"; d="scan'208";a="209703831"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.97])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Jan 2026 03:29:55 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>
Subject: Re: [PATCH i-g-t v3] tests/intel/gem_lmem_swapping: Avoid false
 failures from oom-killer
Date: Wed, 14 Jan 2026 12:29:52 +0100
Message-ID: <1802707.QkHrqEjB74@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20260114081936.nzaexclj6ioqgwvl@kamilkon-DESK.igk.intel.com>
References: <20260113160043.694106-2-janusz.krzysztofik@linux.intel.com>
 <20260114081936.nzaexclj6ioqgwvl@kamilkon-DESK.igk.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="utf-8"
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

On Wednesday, 14 January 2026 09:19:36 CET Kamil Konieczny wrote:
> Hi Janusz,
> On 2026-01-13 at 16:59:36 +0100, Janusz Krzysztofik wrote:
> > The smem-oom subtest can expectedly result in oom-killer being triggered,
> > which then dumps a call trace from a process that triggered it.  If that
> > happens to be a process that executes drm or i915 functions then the call
> > trace dump contains lines recognized by igt_runner running in piglit mode
> > as potential warnings.  If severity of the call trace dump messages is
> > NOTICE or higher, which isn't unlikely, then a dmesg-warn result is
> > reported despite successful completion of the subtest.
> > 
> > Fortunately, severity of those call trace dump messages depends on kernel
> > default log level which can be controlled from user space over sysctl.
> > 
> > To avoid false failure reports, relax kernel default log level to INFO so
> > those log lines are ignored by igt_runner in piglit mode at an expense of
> > call traces from real issues potentially detected by the subtest not
> > contributing to the igt_runner reported result.  Since those call traces
> > are still available to developers, only submitted with reduced severity,
> > that shouldn't hurt as long as the igt_runner still abandons further
> > execution and reports an abort result on a kernel taint.
> > 
> > v3: Move cleanup to an exit handler in case we are killed (Kamil).
> > v2: Move default log level setup inside subtest smem-oom (Kamil),
> >   - move cleanup there as well.
> > 
> > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
> > Cc: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  tests/intel/gem_lmem_swapping.c | 61 +++++++++++++++++++++++++++++++--
> >  1 file changed, 59 insertions(+), 2 deletions(-)
> > 
> > diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
> > index adae26716c..e68d318fd0 100644
> > --- a/tests/intel/gem_lmem_swapping.c
> > +++ b/tests/intel/gem_lmem_swapping.c
> > @@ -661,6 +661,21 @@ static void gem_leak(int fd, uint64_t alloc)
> >  	gem_madvise(fd, handle, I915_MADV_DONTNEED);
> >  }
> >  
> > +static FILE *printk;
> > +static int console_log_level, default_log_level;
> > +
> > +static void printk_exit_handler(int sig)
> > +{
> > +	if (printk) {
> > +		rewind(printk);
> > +		igt_debug_on(fprintf(printk, "%d %d",
> > +				     console_log_level,
> > +				     default_log_level) != 3);
> > +		fclose(printk);
> > +		printk = NULL;
> > +	}
> > +}
> > +
> 
> I would prefer just using write() with already prepared buf,
> not fprintf, as this is for at_exit path and should be fast,

I see your point.
To keep it simple, how about switching to open() + dprintf()?

Thanks,
Janusz


> but this is maybe a matter of style.
> 
> Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> 
> Regards,
> Kamil
> 
> >  static int *lmem_done;
> >  
> >  static void smem_oom_exit_handler(int sig)
> > @@ -861,8 +876,50 @@ int igt_main_args("", long_options, help_str, opt_handler, NULL)
> >  	}
> >  
> >  	igt_describe("Exercise local memory swapping during exhausting system memory");
> > -	dynamic_lmem_subtest(region, regions, "smem-oom")
> > -		test_smem_oom(i915, ctx, region);
> > +	igt_subtest_with_dynamic("smem-oom") {
> > +		unsigned int i;
> > +
> > +		/*
> > +		 * This subtest can result in oom-killer being triggered, which
> > +		 * then dumps a call trace from a process that triggered it.
> > +		 * If that happens to be a process that executes drm or i915
> > +		 * functions then the call trace dump contains lines recognized
> > +		 * by igt_runner as warnings and a dmesg-warn result is
> > +		 * reported.  To avoid false failure reports, relax kernel
> > +		 * default log level to INFO for those lines to be ignored by
> > +		 * igt_runner in piglit mode, at an expense of call traces from
> > +		 * potential real issues not contributing to the igt_runner
> > +		 * reported result.  Since those call traces are still available
> > +		 * to developers, only displayed with relaxed severity, that
> > +		 * shouldn't hurt as long as igt_runner still abandons further
> > +		 * execution and reports an abort result on a kernel taint.
> > +		 */
> > +		printk = fopen("/proc/sys/kernel/printk", "r+");
> > +		if (!igt_debug_on(!printk)) {
> > +			if (!igt_debug_on(fscanf(printk, "%d %d",
> > +						 &console_log_level,
> > +						 &default_log_level) != 2) &&
> > +			    default_log_level < 6) {
> > +				igt_install_exit_handler(printk_exit_handler);
> > +
> > +				rewind(printk);
> > +				igt_debug_on(fprintf(printk, "%d 6",
> > +						     console_log_level) != 3);
> > +			} else {
> > +				fclose(printk);
> > +				printk = NULL;
> > +			}
> > +		}
> > +
> > +		for (i = 0; i < regions->num_regions; i++) {
> > +			region = &regions->regions[i];
> > +			if (region->region.memory_class == I915_MEMORY_CLASS_DEVICE)
> > +				igt_dynamic_f("lmem%u", region->region.memory_instance)
> > +					test_smem_oom(i915, ctx, region);
> > +		}
> > +
> > +		printk_exit_handler(0);
> > +	}
> >  
> >  	igt_fixture() {
> >  		intel_allocator_multiprocess_stop();
> 




