Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 5623BCCCA2C
	for <lists+intel-gfx@lfdr.de>; Thu, 18 Dec 2025 17:07:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E7CA510EA1E;
	Thu, 18 Dec 2025 16:07:18 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nWDHL1I/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id E873510EA1E;
 Thu, 18 Dec 2025 16:07:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1766074038; x=1797610038;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=RTeQtx7Ozk0C8BXbjeN9iTqKoc3YELSe4kcL2u3VWDQ=;
 b=nWDHL1I/WgX7LeTqE7EJaWDlznQeQMYl/kORMBoU5sOX7Hir0fZwzqn6
 in+23i3DNc5qepZgXnTu1f3ZWb2Hn5REcODL4KQ0ZsF1tMuFULdh86ypw
 TWyShbq7ELQ6AX5MCPhOg0cC7n5edzxC5com5KC9Sj95p6uyRfw6Is8WQ
 5GKcFJgj0zsFBCDv9tltsF6sUJBp853Hh0WCzi7ytGTSa88wxgBNpQqkB
 iaJbgv0reDfmww1TAIfmkhYbvfhQhMvRaWoo49K0PB56H3Q149AUzR/wv
 QFWRHGUnRUCNIzgWtz9a5/H4SYkRdLYnJ8Z7gz0IawlBZbT17plVFe+hm A==;
X-CSE-ConnectionGUID: KMYxj+N5RPidKqKPwmR3yQ==
X-CSE-MsgGUID: BwgHC9wQQcGElGo+Yt7lUg==
X-IronPort-AV: E=McAfee;i="6800,10657,11646"; a="68185892"
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="68185892"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 08:07:17 -0800
X-CSE-ConnectionGUID: Gj47cCzTQtaPKbXjirYP4A==
X-CSE-MsgGUID: WMqfocIGRPKlkCJZyTO8ow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,158,1763452800"; d="scan'208";a="198887008"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.252])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Dec 2025 08:07:15 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, Andi Shyti <andi.shyti@linux.intel.com>,
 Krzysztof Karas <krzysztof.karas@intel.com>,
 Krzysztof Niemiec <krzysztof.niemiec@intel.com>,
 Sebastian Brzezinka <sebastian.brzezinka@intel.com>,
 intel-gfx@lists.freedesktop.org,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Subject: Re: [PATCH i-g-t] tests/intel/gem_lmem_swapping: Avoid false failures
 from oom-killer
Date: Thu, 18 Dec 2025 17:07:12 +0100
Message-ID: <14360181.RDIVbhacDa@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <2277720.NgBsaNRSFp@jkrzyszt-mobl2.ger.corp.intel.com>
References: <20251217145110.131121-2-janusz.krzysztofik@linux.intel.com>
 <20251218142125.i75a6km3wm7nxjsc@kamilkon-DESK.igk.intel.com>
 <2277720.NgBsaNRSFp@jkrzyszt-mobl2.ger.corp.intel.com>
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

Hi,
Commenting myself ...

On Thursday, 18 December 2025 16:09:43 CET Janusz Krzysztofik wrote:
> Hi Kamil,
> 
> Thank you for looking at this.
> 
> On Thursday, 18 December 2025 15:21:25 CET Kamil Konieczny wrote:
> > Hi Janusz,
> > On 2025-12-17 at 15:50:30 +0100, Janusz Krzysztofik wrote:
> > > The smem-oom subtest can expectedly result in oom-killer being triggered,
> > > which then dumps a call trace from a process that triggered it.  If that
> > > happens to be a process that executes drm or i915 functions then the call
> > > trace dump contains lines recognized by igt_runner running in piglit mode
> > > as potential warnings.  If severity of the call trace dump messages is
> > > NOTICE or higher, which isn't unlikely, then a dmesg-warn result is
> > > reported despite successful completion of the subtest.
> > > 
> > > Fortunately, severity of those call trace dump messages depends on kernel
> > > default log level which can be controlled from user space over sysctl.
> > > 
> > > To avoid false failure reports, relax kernel default log level to INFO so
> > > those log lines are ignored by igt_runner in piglit mode at an expense of
> > > call traces from real issues potentially detected by the subtest not
> > > contributing to the igt_runner reported result.  Since those call traces
> > > are still available to developers, only submitted with reduced severity,
> > > that shouldn't hurt as long as the igt_runner still abandons further
> > > execution and reports an abort result on a kernel taint.
> > > 
> > > Closes: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
> > > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > > ---
> > >  tests/intel/gem_lmem_swapping.c | 40 ++++++++++++++++++++++++++++++++-
> > >  1 file changed, 39 insertions(+), 1 deletion(-)
> > > 
> > > diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
> > > index adae26716c..ab951a7414 100644
> > > --- a/tests/intel/gem_lmem_swapping.c
> > > +++ b/tests/intel/gem_lmem_swapping.c
> > > @@ -804,8 +804,9 @@ int igt_main_args("", long_options, help_str, opt_handler, NULL)
> > >  		{ "parallel-random-verify-ccs", TEST_PARALLEL | TEST_RANDOM | TEST_CCS },
> > >  		{ }
> > >  	};
> > > +	int i915 = -1, console_log_level, default_log_level;
> > >  	const intel_ctx_t *ctx;
> > > -	int i915 = -1;
> > > +	FILE *printk;
> > 
> > 	FILE *printk = NULL;
> > 
> > For a reason see below.
> > 
> > >  
> > >  	igt_fixture() {
> > >  		struct intel_execution_engine2 *e;
> > > @@ -860,11 +861,48 @@ int igt_main_args("", long_options, help_str, opt_handler, NULL)
> > >  			test_evict(i915, ctx, region, test->flags);
> > >  	}
> > >  
> > > +	/*
> > > +	 * The smem-oom subtest can result in oom-killer being triggered, which
> > > +	 * then dumps a call trace from a process that triggered it.  If that
> > > +	 * happens to be a process that executes drm or i915 functions then the
> > > +	 * call trace dump contains lines recognized by igt_runner as warnings
> > > +	 * and a dmesg-warn result is reported.  To avoid false failure reports,
> > > +	 * relax kernel default log level to INFO for those lines to be ignored
> > > +	 * by igt_runner in piglit mode, at an expense of call traces from
> > > +	 * potential real issues not contributing to the igt_runner reported
> > > +	 * result.  Since those call traces are still available to developers,
> > > +	 * only displayed with relaxed severity, that shouldn't hurt as long as
> > > +	 * igt_runner still abandons further execution and reports an abort
> > > +	 * result on a kernel taint.
> > > +	 */
> > > +	igt_fixture() {
> > > +		printk = fopen("/proc/sys/kernel/printk", "r+");
> > > +		if (igt_debug_on(!printk))
> > > +			break;
> > > +
> > > +		if (!igt_debug_on(fscanf(printk, "%d %d",
> > > +					 &console_log_level, &default_log_level) != 2) &&
> > > +		    default_log_level < 6) {
> > > +			rewind(printk);
> > > +			igt_debug_on(fprintf(printk, "%d 6", console_log_level) != 3);
> > > +		} else {
> > > +			fclose(printk);
> > > +			printk = NULL;
> > > +		}
> > > +	}
> > > +
> > 
> > Looks good but please move it inside subtest smem-oom,
> > so it will affect only it. Cleanup should be done in final fixup
> > so that code is ok.
> 
> The only way I can imagine other subtests affected is if someone adds a 
> new subtest below without taking care of splitting the loglevel cleanup 
> out of the final igt_fixture() into a separate one, placed right after 
> the "smem_oom" subtest and before any other future subtests.  

As an option, maybe still better, we could convert from using a locally 
introduced dynamic_lmem_subtest() macro to a less compact, generic 
igt_subtest_with_dynamic(), with an explicit loop on LMEM regions around 
igt_dynamic_subtest().  Then we could surround the loop with loglevel 
setup / cleanup steps still inside the subtest body -- still better, 
I think, than placing the cleanup steps inside an igt_fixture() section 
that follows.

Thanks,
Janusz


> But we can 
> take care now, either by already splitting it into two consecutive 
> igt_fixture sections, or by adding a reminder to do that before adding 
> new subtests in between.  I think that would be more clear then hiding 
> the loglevel setup steps inside the test_smem_oom().  Moreover, your 
> approach doesn't address potential cases of running more than one 
> subtest in a single invocation of the test, which is perfectly possible 
> when igt_runner is used with --multiple-mode option or in manual runs.
> 
> As additional benefits, we neither have to pass extra arguments to the 
> test_smem_oom(), nor have to take care for the loglevel setup being 
> processed only once in case more than one LMEM region exists and 
> test_smmem_oom() is called several times.
> 
> Thanks,
> Janusz
> 
> 
> > 
> > Regards,
> > Kamil
> > 
> > >  	igt_describe("Exercise local memory swapping during exhausting system memory");
> > >  	dynamic_lmem_subtest(region, regions, "smem-oom")
> > >  		test_smem_oom(i915, ctx, region);
> > >  
> > >  	igt_fixture() {
> > > +		if (printk) {
> > > +			rewind(printk);
> > > +			igt_debug_on(fprintf(printk, "%d %d",
> > > +					     console_log_level, default_log_level) != 3);
> > > +			fclose(printk);
> > > +		}
> > > +
> > >  		intel_allocator_multiprocess_stop();
> > >  		intel_ctx_destroy(i915, ctx);
> > >  		free(regions);
> > 
> 
> 




