Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BF78BC4FDB
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 14:52:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 40F8F10E804;
	Wed,  8 Oct 2025 12:52:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="N9z/bl8h";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C93E10E32A;
 Wed,  8 Oct 2025 12:52:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759927969; x=1791463969;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=Gu463zZ5i5AFurqN+wGloNQsvz0k+dpFHgiy+8dDQuo=;
 b=N9z/bl8h30mSkqdmOR3dLEXFSJxmj8b+3OldddYOeakgob1go6ASpkVB
 Hq7Vnj32OVsMpSydDokMZTEBPt5O8UQJD/3OJDeVj+bLdVMXQct34Pf+Y
 qBNfGDG9rg+TbEsilCv18N2ADYOq9TQPft6uWGOgGrBU5YEl5bSpQVYKx
 B1VVU8MgCqjjGBs6gnqwUhiGulG61V9EUVVQOC+Va8ekELJFKMsHOxzkU
 nTiA0r7et3xrjekn2BBk5W+YIno7B9Eb80Sio5Huqml76YrRsCyDI33Fd
 x8ogUKe1FceIm5zEFIgdmGO9l/yeFM4QSvdEBN3XTPAYZHCcaoJIueMBA A==;
X-CSE-ConnectionGUID: Pz04emHYTJqEpXChCcagwg==
X-CSE-MsgGUID: NG0J2/iQSN+uQjfE6Jv4kg==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="65971645"
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="65971645"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 05:52:49 -0700
X-CSE-ConnectionGUID: M46fTeI/RsWE8h+cqNmhrA==
X-CSE-MsgGUID: DTP/n4CmSIyZkZ0TuFmQeA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="185723403"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.244.124])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 05:52:47 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH i-g-t v2 2/5] tests/gem_eio: Try harder to measure median
 resume time
Date: Wed, 08 Oct 2025 14:52:44 +0200
Message-ID: <2326700.3ZeAukHxDK@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20251008121447.wbteg7amzhgdoe63@kamilkon-DESK.igk.intel.com>
References: <20251007113910.3336564-7-janusz.krzysztofik@linux.intel.com>
 <20251007113910.3336564-9-janusz.krzysztofik@linux.intel.com>
 <20251008121447.wbteg7amzhgdoe63@kamilkon-DESK.igk.intel.com>
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

Hi Kamil,

On Wednesday, 8 October 2025 14:14:47 CEST Kamil Konieczny wrote:
> Hi Janusz,
> On 2025-10-07 at 13:38:25 +0200, Janusz Krzysztofik wrote:
> > Subtests that measure time of resume after engine reset require results
> > from at least 9 reset-resume cycles for reasonable calculation of a median
> > value to be compared against a presumed limit.  On most Gen12+ platforms,
> > as well as on some older ones like JSL, CHV, ILK or ELK, the current limit
> > of 5 seconds for collecting those results occurs too short.
> > 
> > Raise the limit to an empirically determined value of 20 seconds and break
> > the loop as soon as 9 results are collected.
> > 
> > v2: Split out a change in handling of not enough measurements to a
> >     separate patch (Kamil),
> >   - reword commit message to be more distinct from other patches in
> >     series (Kamil),
> >   - reword commit message and description so they no longer state the
> >     scope of the issue is limited to Gen12+, and list other (non-Gen12+)
> >     platforms found also affected.
> > 
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  tests/intel/gem_eio.c | 5 ++++-
> >  1 file changed, 4 insertions(+), 1 deletion(-)
> > 
> > diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> > index 0a00ef026e..79dcef8fa6 100644
> > --- a/tests/intel/gem_eio.c
> > +++ b/tests/intel/gem_eio.c
> > @@ -929,7 +929,7 @@ static void reset_stress(int fd, uint64_t ahnd, const 
intel_ctx_t *ctx0,
> >  	gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
> >  
> >  	igt_stats_init(&stats);
> > -	igt_until_timeout(5) {
> > +	igt_until_timeout(20) {
> 
> What I wanted here was actually (in pseudocode):
> 
> mtime = gen < 5 || gen >= 12 ? 20 : 5;

That's incorrect.  JSL, now mentioned in commit description (see also 
changelog), is gen11, and it's the only one of that gen that exhibits the 
problem.  Moreover, some affected CI machines need more time in unwedge-stress 
and not necessarily in reset-stress, some vice versa, and still some need more 
time in both.  That may sound strange, but that's how results from my many 
trybot attempts look like.  Also, not all pre-gen5 machines require a higher 
limit on resume time, as it is handled now and extended over gen12+ in next 
patch.  So before I try to fulfil your expectation and use a formula here, not 
a constant, we have to agree on how much precise that formula should be.  If 
you don't accept a simplified approach then I have to spend more time on 
finding out what exactly takes time on kernel side in each of those distinct 
cases and maybe then I will be able to formulate exact conditions when we 
should wait longer and when not.

> 
> 	igt_until_timeout(mtime) {
> 
> >  		const intel_ctx_t *ctx = context_create_safe(fd);
> >  		igt_spin_t *hang;
> >  		unsigned int i;
> > @@ -978,6 +978,9 @@ static void reset_stress(int fd, uint64_t ahnd, const 
intel_ctx_t *ctx0,
> >  		gem_sync(fd, obj.handle);
> >  		igt_spin_free(fd, hang);
> >  		intel_ctx_destroy(fd, ctx);
> > +
> > +		if (stats.n_values > 8)
> 
> Can it be a define as it is used in other places, for example:
> #define NUMER_OF_MEASURED_CYCLES_NEEDED 9
> 
> so you will use it elsewhere, and here it will be:
> 
> 		if (stats.n_values >= NUMER_OF_MEASURED_CYCLES_NEEDED)
> 			break;

OK.

> 
> >  	}
> >  	check_wait_elapsed(name, fd, &stats);
> 
> I did give you r-b for patch 1/5 but I am not sure how
> reliable are measurements, should it be an assert instead of skip?
> Maybe function check_wait_elapsed() should return bool to tell if
> median is ready, and in each place subtests itself decide if it
> should skip or assert? Up to you.

check_wait_elapsed() is called only from reset_stress(), which in turn is 
called only by 3 subtests, all in scope of this series.  Can you suggest some 
criteria when you think a subtest should skip and when it should fail if not 
enough results have been collected?  I've chosen skip because we couldn't do 
much with fail other than blocklisting the failing subtest, while CI can 
handle skips as expected skips on selected platforms if we really can't find 
a balance among the loop long enough for collecting enough measurements and 
short enough for not exceeding per test timeout on platforms with many 
engines.

Thanks,
Janusz


> 
> Regards,
> Kamil
> 
> >  	igt_stats_fini(&stats);
> 




