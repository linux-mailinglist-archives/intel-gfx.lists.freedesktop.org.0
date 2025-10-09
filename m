Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id ABCE6BC8759
	for <lists+intel-gfx@lfdr.de>; Thu, 09 Oct 2025 12:22:22 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3536E10E204;
	Thu,  9 Oct 2025 10:22:20 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="n8CCaaPc";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 5EEAC10E1FE;
 Thu,  9 Oct 2025 10:22:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760005338; x=1791541338;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2yMPl39cZzRlvcORBiml8WrDorZ+0SCxGQk0IW7gfSs=;
 b=n8CCaaPcD2td72ZT6GWwYhNYG4vRtra2UtnpH7CeeAd2TMuY1kYLo1mw
 g4uS7lU5NVjkO7tG0D+RSq7Iic72XVo03a7w9JHXnwTFwnu+WP8K9CRd1
 O31S1OhEjBM5dY9NE+ZHijp6pIVfytsDL8etj0F2suQl/QPHZsnvnbuPo
 X7hzZMFdzJFKSYIyNzEnC3aQDYR2bPJGof7Ra8zYZzb9HhhWrYbHD+XMf
 JJkpRGXlJ9rX4p5JRoHprpXEcbJ0doCEAIFArL2LaZS21u8Js+CwbflLM
 lcZzVpzI+N9iBje6OI0aEkywn9EralPbzeitbxFDxTo8+1EGw7g1CKbdn g==;
X-CSE-ConnectionGUID: cVGrgiJ0SOCRrOz4vd6ilQ==
X-CSE-MsgGUID: FOPHa+BqR3ex+DqePGphsA==
X-IronPort-AV: E=McAfee;i="6800,10657,11576"; a="87670489"
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="87670489"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 03:22:17 -0700
X-CSE-ConnectionGUID: 3zU1BFfISdekcb2qGuZZTw==
X-CSE-MsgGUID: NztXUYWRQPCvIP0KRR0YkQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,215,1754982000"; d="scan'208";a="180258264"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.14])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Oct 2025 03:22:15 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH i-g-t v2 2/5] tests/gem_eio: Try harder to measure median
 resume time
Date: Thu, 09 Oct 2025 12:22:12 +0200
Message-ID: <3173009.ktpJ11cQ8Q@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20251008164242.hm7u3f5ujaw457gc@kamilkon-DESK.igk.intel.com>
References: <20251007113910.3336564-7-janusz.krzysztofik@linux.intel.com>
 <2326700.3ZeAukHxDK@jkrzyszt-mobl2.ger.corp.intel.com>
 <20251008164242.hm7u3f5ujaw457gc@kamilkon-DESK.igk.intel.com>
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

On Wednesday, 8 October 2025 18:42:42 CEST Kamil Konieczny wrote:
> Hi Janusz,
> On 2025-10-08 at 14:52:44 +0200, Janusz Krzysztofik wrote:
> > Hi Kamil,
> > 
> > On Wednesday, 8 October 2025 14:14:47 CEST Kamil Konieczny wrote:
> > > Hi Janusz,
> > > On 2025-10-07 at 13:38:25 +0200, Janusz Krzysztofik wrote:
> > > > Subtests that measure time of resume after engine reset require results
> > > > from at least 9 reset-resume cycles for reasonable calculation of a median
> > > > value to be compared against a presumed limit.  On most Gen12+ platforms,
> > > > as well as on some older ones like JSL, CHV, ILK or ELK, the current limit
> > > > of 5 seconds for collecting those results occurs too short.
> > > > 
> > > > Raise the limit to an empirically determined value of 20 seconds and break
> > > > the loop as soon as 9 results are collected.
> > > > 
> > > > v2: Split out a change in handling of not enough measurements to a
> > > >     separate patch (Kamil),
> > > >   - reword commit message to be more distinct from other patches in
> > > >     series (Kamil),
> > > >   - reword commit message and description so they no longer state the
> > > >     scope of the issue is limited to Gen12+, and list other (non-Gen12+)
> > > >     platforms found also affected.
> > > > 
> > > > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > > > ---
> > > >  tests/intel/gem_eio.c | 5 ++++-
> > > >  1 file changed, 4 insertions(+), 1 deletion(-)
> > > > 
> > > > diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> > > > index 0a00ef026e..79dcef8fa6 100644
> > > > --- a/tests/intel/gem_eio.c
> > > > +++ b/tests/intel/gem_eio.c
> > > > @@ -929,7 +929,7 @@ static void reset_stress(int fd, uint64_t ahnd, const 
> > intel_ctx_t *ctx0,
> > > >  	gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
> > > >  
> > > >  	igt_stats_init(&stats);
> > > > -	igt_until_timeout(5) {
> > > > +	igt_until_timeout(20) {
> > > 
> > > What I wanted here was actually (in pseudocode):
> > > 
> > > mtime = gen < 5 || gen >= 12 ? 20 : 5;
> > 
> > That's incorrect.  JSL, now mentioned in commit description (see also 
> > changelog), is gen11, and it's the only one of that gen that exhibits the 
> > problem.  Moreover, some affected CI machines need more time in unwedge-stress 
> > and not necessarily in reset-stress, some vice versa, and still some need more 
> > time in both.  That may sound strange, but that's how results from my many 
> > trybot attempts look like.  Also, not all pre-gen5 machines require a higher 
> > limit on resume time, as it is handled now and extended over gen12+ in next 
> > patch.  So before I try to fulfil your expectation and use a formula here, not 
> > a constant, we have to agree on how much precise that formula should be.  If 
> > you don't accept a simplified approach then I have to spend more time on 
> > finding out what exactly takes time on kernel side in each of those distinct 
> > cases and maybe then I will be able to formulate exact conditions when we 
> > should wait longer and when not.
> > 
> 
> One more note - maybe it is related with two GTs: GT0 and GT1?

Maybe, but that's only one of potential factors, not covering cases like DG2 
or ILK as an example of two cases completely different, I believe.

> 
> It could go with simplified formula here and just use some value,
> 20 or 10?

I still don't understand what your goal here is.  What issue do you expect to 
be avoided or resolved by replacing the new, higher constant value with a 
formula?  If I understood your point than I should be able to propose a 
solution.

> 
> Btw did you see results for v1? The gem_eio@kms subtests
> is failing due to disk limit in CI, and in logs there are
> 21 'Forcing GPU reset' messages.
> 
> https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_13866/shard-dg2-5/igt@gem_eio@kms.html
> https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_13866/shard-tglu-8/igt@gem_eio@kms.html
> 
> Is it not related to your series?

Yes, that's related, in the sense that before, there was a shorter, 5s limit 
for performing resets and measuring resume time, so less noise was accumulated 
in dmesg than now when we wait up to 20s for 9 measurements collected in order 
to avoid falsely reporting success when we don't evaluate results because less 
than 9 have been collected.

> Maybe number of resets should also be lowered?

The kms subtest consist of 3 exercises.  The first one -- inflight -- triggers 
7 resets (1 reset per ring), the remaining two ones are equivalents of reset-
stress and unwedge-stress, with 9 resets per each of the 2 scenarios required 
as a minimum for stable median calculation, so 25 resets in total.

Are you sure we are free to lower that limit of 9 measurements required for 
stable median?

I think we should rather convince CI and display developers to limit the 
amount of noise in dmesg generated in CI runs by display debugging.

> Also test took over 20 seconds after it was killed.

I can see "Disk usage limit exceeded" event reported at timestamp 340.998570, 
and next subtest scheduled at 342.958470.  Where do you see those 20 seconds?

Thanks,
Janusz


> 
> Regards,
> Kamil
> 
> > > 
> > > 	igt_until_timeout(mtime) {
> > > 
> > > >  		const intel_ctx_t *ctx = context_create_safe(fd);
> > > >  		igt_spin_t *hang;
> > > >  		unsigned int i;
> > > > @@ -978,6 +978,9 @@ static void reset_stress(int fd, uint64_t ahnd, const 
> > intel_ctx_t *ctx0,
> > > >  		gem_sync(fd, obj.handle);
> > > >  		igt_spin_free(fd, hang);
> > > >  		intel_ctx_destroy(fd, ctx);
> > > > +
> > > > +		if (stats.n_values > 8)
> > > 
> > > Can it be a define as it is used in other places, for example:
> > > #define NUMER_OF_MEASURED_CYCLES_NEEDED 9
> > > 
> > > so you will use it elsewhere, and here it will be:
> > > 
> > > 		if (stats.n_values >= NUMER_OF_MEASURED_CYCLES_NEEDED)
> > > 			break;
> > 
> > OK.
> > 
> > > 
> > > >  	}
> > > >  	check_wait_elapsed(name, fd, &stats);
> > > 
> > > I did give you r-b for patch 1/5 but I am not sure how
> > > reliable are measurements, should it be an assert instead of skip?
> > > Maybe function check_wait_elapsed() should return bool to tell if
> > > median is ready, and in each place subtests itself decide if it
> > > should skip or assert? Up to you.
> > 
> > check_wait_elapsed() is called only from reset_stress(), which in turn is 
> > called only by 3 subtests, all in scope of this series.  Can you suggest some 
> > criteria when you think a subtest should skip and when it should fail if not 
> > enough results have been collected?  I've chosen skip because we couldn't do 
> > much with fail other than blocklisting the failing subtest, while CI can 
> > handle skips as expected skips on selected platforms if we really can't find 
> > a balance among the loop long enough for collecting enough measurements and 
> > short enough for not exceeding per test timeout on platforms with many 
> > engines.
> > 
> > Thanks,
> > Janusz
> > 
> > 
> > > 
> > > Regards,
> > > Kamil
> > > 
> > > >  	igt_stats_fini(&stats);
> > > 
> > 
> > 
> > 
> > 
> 




