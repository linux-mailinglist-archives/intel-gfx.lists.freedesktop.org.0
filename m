Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D225C350ED
	for <lists+intel-gfx@lfdr.de>; Wed, 05 Nov 2025 11:15:20 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0535710E6EE;
	Wed,  5 Nov 2025 10:15:19 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kLtMqHIG";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0F83B10E2BE;
 Wed,  5 Nov 2025 10:15:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762337716; x=1793873716;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=DNhIeBjCxh9weFihntukzyFUHo/b9hyRABG7gPKyRrg=;
 b=kLtMqHIGX9P/1cMsiWjQmENvLToVaFoKs4QdfFDJ9Z/rVM7YSXBmC1ps
 ito1CWcH+nCiHajMSk8aVQ5ZZGdFxdUtvrIwmHG5qLCLOfr2KujpD6ZYL
 0/VFYVFL30bwv/CUdDAnCE6PY6kJM3VztkRIB07z1bk2qtnh0/QQcXblU
 lER/7gn+KNoElff4piohUHFoOWFHfi6c+9Rd8mGFMMG1ZS4gbYI7DaUoM
 gHElXQVvfpQVMVTpIdeVlLlLCY/axqbim24alAbUo6rkLj9bRzNqEo6mu
 eeTKqqAuMo8jgVo1hsptNE/+LcUtLnlc3QFJa3joOR24+tXmAy9lOsECC A==;
X-CSE-ConnectionGUID: WUja/1H0S9SIDZqpGxnvhA==
X-CSE-MsgGUID: P9F8bXeSQkyMyWsbp1IkYg==
X-IronPort-AV: E=McAfee;i="6800,10657,11603"; a="63652857"
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="63652857"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 02:15:15 -0800
X-CSE-ConnectionGUID: IWTSxzQkTjW0d1odzPpUUg==
X-CSE-MsgGUID: ljm+1h8xR6uWl+xtNScYOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,281,1754982000"; d="scan'208";a="187263317"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.2])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 02:15:14 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Rodrigo Vivi <rodrigo.vivi@intel.com>,
 Andi Shyti <andi.shyti@linux.intel.com>, Nitin Gote <nitin.r.gote@intel.com>
Subject: Re: [PATCH i-g-t] tests/dmabuf: Avoid soft lockups on slow platforms
Date: Wed, 05 Nov 2025 11:15:12 +0100
Message-ID: <5124974.0VBMTVartN@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <r5cgmntobqaj2ou75odamzl75itjp7hbkmxbkb4ek3tnw67wai@lqryev5nzshq>
References: <20251104112116.432508-2-janusz.krzysztofik@linux.intel.com>
 <r5cgmntobqaj2ou75odamzl75itjp7hbkmxbkb4ek3tnw67wai@lqryev5nzshq>
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

Hi Krzysztof,

Thanks for taking a look.

On Wednesday, 5 November 2025 09:37:14 CET Krzysztof Karas wrote:
> Hi Janusz,
> 
> On 2025-11-04 at 12:20:24 +0100, Janusz Krzysztofik wrote:
> > Certain selftests, while basically correct, may fail on certain platforms.
> > E.g., igt@dmabuf@all-test@dma_fence_chain used to complete successfully,
> > but on slow machines it triggers soft lockup warnings which taint the
> > kernel.
> > 
> > Sometimes, like in the above mentioned case, it's not possible to fix a
> > root cause of the issue since it is not recognized as a bug.  To avoid
> > ever returning CI bug reports in such cases, allow selftests to be called
> > via user provided wrappers that take care of not triggering unavoidable
> > failures, e.g. by skipping specific selftests if some conditions are not
> > met, or watching their execution and acting upon certain conditions or
> > events.
> > 
> > With that in place, update the dmabuf test so it, as the first user of the
> > new feature, skips the dma_fence_chain selftest if a machine looks too
> > slow.  Since that's a hardware agnostic selftest, running it on a limited
> > subset of machines seems acceptable, especially when the soft lockups it
> > can trigger aren't recognized as bugs on the kernel side.
> > 
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  
> 
> [...]
> 
> > +static unsigned int bogomips(void)
> > +{
> > +	unsigned int bogomips, ret = 0;
> > +	char *line = NULL;
> > +	size_t size = 0;
> > +	FILE *cpuinfo;
> > +
> > +	cpuinfo = fopen("/proc/cpuinfo", "r");
> > +	if (igt_debug_on(!cpuinfo))
> > +		return UINT_MAX;
> Could this result in running the test on a slower machine
> unintentionally? fopen() could fail, the bogomips() would return
> a large value and wrapper function would behave as if the test
> is running on a faster platform.

Yes, if opening /proc/cpuinfo fails then my approach could result in running 
the test on a machine that occurs too slow.  If that happens then an abort 
caused by soft lockup will be reported again, but this time with the fopen() 
failure also pointed out among debug messages.  But why could that failing 
fopen() happen in practice?

One possible case is an environment with no /proc/cpuinfo (non-Linux, e.g., 
FreeBSD).

> 
> > +
> > +	while (getline(&line, &size, cpuinfo) != -1) {
> It is unlikely, but getline() may fail with EINVAL or ENOMEM, so
> maybe while(getline(&line, &size, cpuinfo) > 0)?

No, getline returns -1 on any error, errno provides those extra error codes, 
if that's what you had on mind.

> 
> > +		char *colon;
> > +
> > +		if (strncmp(line, "bogomips", 8))
> > +			continue;
> > +
> > +		colon = strchr(line, ':');
> > +		if (igt_debug_on(!colon))
> > +			bogomips = 0;
> > +		else
> > +			bogomips = atoi(colon + 1);
> > +
> > +		if (igt_debug_on(!bogomips))
> > +			break;
> > +
> > +		ret += bogomips;
> > +	}
> > +	free(line);
> > +	fclose(cpuinfo);
> > +
> > +	return igt_debug_on(!bogomips) ? UINT_MAX : ret;
> Same as my first comment in this function: will this not cause
> sporadic runs on machines that are supposed to skip the test?

Yes, but if you think that's wrong then please first think of e.g. fopen() 
failing on a fast machine for some reason, and then suggest a behaviour that 
you think would be more correct in any of possible cases.  My thinking is that 
it's more important to execute the selftest and preserve coverage than fail on 
potential test issues that don't mean the selftest can't be executed.

> 
> > +}
> > +
> > +static int wrapper(const char *dynamic_name,
> The name could be more descriptive about what function does/is
> used for, so maybe "check_skip_wrapper" would better achieve
> that?

If that was a global function then sure, its name should be more descriptive, 
but here in this context I don't think that name may introduce any doubts.  
But anyway, I can try to propose a more descriptive name if v2 is needed.

Thanks,
Janusz

> 
> [...]
> 
> 




