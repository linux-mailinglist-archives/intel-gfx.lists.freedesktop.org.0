Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 558E8C56C06
	for <lists+intel-gfx@lfdr.de>; Thu, 13 Nov 2025 11:07:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D6D3E10E655;
	Thu, 13 Nov 2025 10:07:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lG0kyyUs";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7E76610E351;
 Thu, 13 Nov 2025 10:07:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763028469; x=1794564469;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=16TUFoT+oY0D9YMmQSyX5NP9mawK/9LoIar1Fpvdriw=;
 b=lG0kyyUsFE1TVt30tpL+eugByMHssCO3gpb+kKqekClRY1i1Pp5iFggS
 XjKwl1alyHSUqPieH4d0kZKe5BjkQtwcTVJjzi1e37P3eAz6EKSWc7DYr
 lYBVG6vE3ldSCMsI7U5sHds0nc400euJ0605NvNKZaiK47gybh8xOjdtl
 TfU6LcO66i/1u50niMGOG2Ue42wzPx03y83N6/1b/vhGvSPy/+n6OCX4Q
 KtonOdnnxYLdWYyqAIc1EeeScEqOZ0zo5dn5OZdd6ameDLF2t+mdfryY0
 P+wMdQfuSDpOUmRju/NYZg5pHTMhzAe8Z89/ipWeQ17+01I7sp0kp8Dwf w==;
X-CSE-ConnectionGUID: exNJUTSwSC+PhXZH2Vaa3Q==
X-CSE-MsgGUID: gN6xJtIsRLGR3oofWTeU7g==
X-IronPort-AV: E=McAfee;i="6800,10657,11611"; a="65263035"
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="65263035"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 02:07:48 -0800
X-CSE-ConnectionGUID: OTcfBsgERRGK5llboT+tEg==
X-CSE-MsgGUID: DdeEWx6KSP+xy0DxWIB4mg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,301,1754982000"; d="scan'208";a="226766224"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.246.158])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Nov 2025 02:07:45 -0800
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Petri Latvala <adrinael@adrinael.net>,
 Zbigniew =?UTF-8?B?S2VtcGN6ecWEc2tp?= <zbigniew.kempczynski@intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Thomas =?UTF-8?B?SGVsbHN0csO2bQ==?= <thomas.hellstrom@linux.intel.com>,
 Ayaz A Siddiqui <ayaz.siddiqui@intel.com>,
 Ashutosh Dixit <ashutosh.dixit@intel.com>,
 Tvrtko Ursulin <tvrtko.ursulin@igalia.com>
Subject: Re: [PATCH i-g-t] tests/gem_lmem_swapping: Run smem-oom helper loop in
 background
Date: Thu, 13 Nov 2025 11:07:42 +0100
Message-ID: <2291547.ZfL8zNpBrT@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <dfaualx72dk55fq7bdo7tf5lpdjf6qgzjwgsk77yflgzaelwnq@jw4fjrwqwion>
References: <20251112104913.701052-2-janusz.krzysztofik@linux.intel.com>
 <dfaualx72dk55fq7bdo7tf5lpdjf6qgzjwgsk77yflgzaelwnq@jw4fjrwqwion>
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

Thanks for looking at this.

On Thursday, 13 November 2025 08:55:01 CET Krzysztof Karas wrote:
> Hi Janusz,
> 
> > The smem-oom subtest forks SMEM helper processes from a loop run in the
> > main process.  That loop is supposed to be terminated only when exit
> > handler of a formerly forked LMEM process signals completion.  However,
> I'd add "eviction" keyword:
> ...formerly forked LMEM eviction process signals completion.

OK

> 
> > since the subtest arranges OOM conditions, the LMEM process may get killed
> > and never signal its completion.  When that happens, the subtest may keep
> > respawning SMEM helpers indefinitely and complete only when killed, e.g.,
> > by igt_runner on per-test timeout expiration.
> > 
> > Instead of waiting form completion of the loop of the SMEM helpers, run
> form -> for

Thanks.

> 
> > the loop in background and wait for completion of the LMEM process.  Also,
> > take care of signaling the SMEM helper processes about LMEM process
> > completion in case it has got killed and hasn't had a chance to do that
> > itself.
> > 
> > This patch addresses timeout results reported to the below mentioned
> > upstream issue.  Other failures (incomplete / dmesg-warn / crash) may
> > need additional patches, but let's fix those timeouts first to get a more
> > clear picture.
> > 
> > Link: https://gitlab.freedesktop.org/drm/i915/kernel/-/issues/5493
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  tests/intel/gem_lmem_swapping.c | 19 ++++++++++++++-----
> >  1 file changed, 14 insertions(+), 5 deletions(-)
> > 
> > diff --git a/tests/intel/gem_lmem_swapping.c b/tests/intel/gem_lmem_swapping.c
> > index 8e0dac42d8..45bd94adbb 100644
> > --- a/tests/intel/gem_lmem_swapping.c
> > +++ b/tests/intel/gem_lmem_swapping.c
> > @@ -678,6 +678,7 @@ static void test_smem_oom(int i915,
> >  	const unsigned int num_alloc = 1 + smem_size / (alloc >> 20);
> >  	struct igt_helper_process smem_proc = {};
> >  	unsigned int n;
> > +	int lmem_err;
> >  
> >  	lmem_done = mmap(0, sizeof(*lmem_done), PROT_WRITE,
> >  			 MAP_SHARED | MAP_ANON, -1, 0);
> > @@ -703,8 +704,8 @@ static void test_smem_oom(int i915,
> >  	}
> >  
> >  	/* smem memory hog process, respawn till the lmem process completes */
> > -	while (!READ_ONCE(*lmem_done)) {
> > -		igt_fork_helper(&smem_proc) {
> > +	igt_fork_helper(&smem_proc) {
> > +		while (!READ_ONCE(*lmem_done)) {
> Huh, so instead of having a single helper that handles spawning
> grand-children for manual leaks, we had many of them. Since all
> but one processes were waiting for lelm_done flag, if the lmem
> eviction fork got killed, everything would spin indefinitely.
> Good catch!
> 
> >  			igt_fork(child, 1) {
> >  				for (int pass = 0; pass < num_alloc; pass++) {
> >  					if (READ_ONCE(*lmem_done))
> > @@ -730,11 +731,19 @@ static void test_smem_oom(int i915,
> >  			for (n = 0; n < 2; n++)
> >  				wait(NULL);
> >  		}
> > -		igt_wait_helper(&smem_proc);
> >  	}
> > -	munmap(lmem_done, sizeof(*lmem_done));
> > +
> >  	/* Reap exit status of the lmem process */
> > -	igt_waitchildren();
> > +	lmem_err = __igt_waitchildren();
> By changing igt_waitchildren() to __igt_waitchildren() you
> wanted to outline that this test is not supposed to run on multi
> GPU systems?

No, my intention was to avoid potential longjmp from inside 
igt_waitchildren()->igt_fail() if the lmem eviction process returns a failure, 
so we are still able to signal completion to the smem helpers as below.  Once 
cleaned up, we are then free to fail on lmem_err.

Thanks,
Janusz

> 
> > +
> > +	/* Make sure SMEM helpers stop even when the LMEM process gets killed */
> > +	if (lmem_err)
> > +		(*lmem_done)++;
> > +	munmap(lmem_done, sizeof(*lmem_done));
> > +
> > +	igt_wait_helper(&smem_proc);
> > +
> > +	igt_assert_eq(lmem_err, 0);
> >  }
> >  
> >  #define dynamic_lmem_subtest(reg, regs, subtest_name...) \
> 
> 




