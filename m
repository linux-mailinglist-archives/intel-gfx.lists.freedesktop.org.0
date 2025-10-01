Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id AB920BB181B
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 20:34:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8838610E741;
	Wed,  1 Oct 2025 18:34:16 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JFZUDSqP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B2E3210E15B;
 Wed,  1 Oct 2025 18:34:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759343655; x=1790879655;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=h0HUbtUdtX1Li4YnzOJi0M8GTKG+nBgoACKfuefx1mM=;
 b=JFZUDSqPnkJ+d70W/SxetXbeQOrKhYngVtJb6keJXruV4sDRaAFWNIcC
 5RPdU3chO1GO4pQ6O4X/OI+XhFFAYI1egWhcH/jn6VLfcndXWlb8B6eNJ
 y+DUXxgSeWKEfyAGHaOJKkz12DhBZ8h2cX/+mSCrCqXWbrXKzkFaSvuyq
 qythcngnR15LYGx58EAhEWIiNKZjsg44fozsGZ2qzp6dkBFQ8S0Jz9lkj
 TWrb7CIibWvGAzIBRpbC7t5ZyWSEYdbWMT0/SwtFl0qIBW0nqxdJNqY6z
 r54N90t/nHUgTSNBSFpg2COVL5xvdEIMJyVIye8m7zwiUYYOsp+uAj0S1 A==;
X-CSE-ConnectionGUID: AodQerKoQlC5wPTXiNbElg==
X-CSE-MsgGUID: l8WBj1snTtmkDCrMfafHlg==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="61730199"
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; d="scan'208";a="61730199"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 11:34:14 -0700
X-CSE-ConnectionGUID: ZHqLAFYuTfesjs1pbGfLQQ==
X-CSE-MsgGUID: x6srVE6DToi9uECfNdULJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,307,1751266800"; d="scan'208";a="178808613"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by fmviesa006-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 01 Oct 2025 11:34:13 -0700
Date: Wed, 1 Oct 2025 20:34:10 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH i-g-t 1/3] tests/gem_eio: Adjust for long reset-resume
 cycle on Gen12+
Message-ID: <20251001183410.emqpwidf2hpbmtf3@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
References: <20250930125430.2323555-5-janusz.krzysztofik@linux.intel.com>
 <20250930125430.2323555-6-janusz.krzysztofik@linux.intel.com>
 <20251001133600.cfkspqz3mc4wggvx@kamilkon-DESK.igk.intel.com>
 <1813705.X513TT2pbd@jkrzyszt-mobl2.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <1813705.X513TT2pbd@jkrzyszt-mobl2.ger.corp.intel.com>
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
On 2025-10-01 at 17:15:13 +0200, Janusz Krzysztofik wrote:
> Hi Kamil,
> 
> Thanks for looking at this.
> 
> On Wednesday, 1 October 2025 15:36:00 CEST Kamil Konieczny wrote:
> > Hi Janusz,
> > On 2025-09-30 at 14:49:01 +0200, Janusz Krzysztofik wrote:
> > 
> > could you improve subject? Now it is a little confusing why
> > there are two, very similar changes needed, see first and
> > second subjects:
> > 
> > [i-g-t,1/3] tests/gem_eio: Adjust for long reset-resume cycle on Gen12+
> > 
> > [i-g-t,2/3] tests/gem_eio: Adjust for slow resume after reset on Gen12+
> > 
> > At first I do not know why two very similar changes are made with
> > two different commits.
> 
> In my opinion these two patches address two separate issues.  The first issue 
> -- not enough measurements for median calculation -- prevents the exercise 
> from calculating and reporting results.  The second issue in turn sometimes 
> applies not quite realistic expectations to those results.  In order to learn 
> which platforms suffer from the second issue, you have to resolve the first 
> one to see those results.  To avoid confusion, I can try to reword those 
> commit messages so they don't look so similar.
> 
> > 
> > See also below.
> > 
> > > Subtests that measure time of resume after engine reset require results
> > > from at least 9 reset-resume cycles for reasonable calculation of a median
> > > value to be compared against presumed limits.  On most of Gen12+
> > > platforms, the limit of 5 seconds for collecting those results occurs too
> > > short for executing 9 reset-resum cycles.
> > > 
> > > Raise the limit to 20 seconds, and break the loop as soon as 9 results are
> > > collected.  Also, warn if less than 9 resets have been completed within
> > > the limit instead of silently succeeding despite the check being skipped.
> > > 
> > > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > > ---
> > >  tests/intel/gem_eio.c | 11 ++++++++---
> > >  1 file changed, 8 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> > > index b65b914faf..b6155c7fc4 100644
> > > --- a/tests/intel/gem_eio.c
> > > +++ b/tests/intel/gem_eio.c
> > > @@ -409,8 +409,10 @@ static void check_wait_elapsed(const char *prefix, int fd, igt_stats_t *st)
> > >  		 igt_stats_get_median(st)*1e-6,
> > >  		 igt_stats_get_max(st)*1e-6);
> > >  
> > > -	if (st->n_values < 9)
> > > -		return; /* too few for stable median */
> > > +	if (igt_warn_on_f(st->n_values < 9,
> > > +	    "%d resets completed -- less than 9, too few for stable median\n",
> > > +	    st->n_values))
> > > +		return;
> > 
> > imho this could be a separate change, as there was silence before.
> 
> OK, unless I kill that warning, taking into account the comment from Krzysztof 
> Karaś.
> 
> > 
> > >  
> > >  	/*
> > >  	 * Older platforms need to reset the display (incl. modeset to off,
> > > @@ -928,7 +930,7 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
> > >  	gem_write(fd, obj.handle, 0, &bbe, sizeof(bbe));
> > >  
> > >  	igt_stats_init(&stats);
> > > -	igt_until_timeout(5) {
> > > +	igt_until_timeout(20) {
> > 
> > Could you increase it only when needed?
> 
> Taking into account the other part of this change that breaks this loop as 
> soon as enough measurements are collected, I don't think such complication is 
> worth of effort, can you please explain why you think it is?

You need it for gen12+ so why 20 for all gens?

Regards,
Kamil

> 
> Thanks,
> Janusz
> 
> > 
> > Regards,
> > Kamil
> > 
> > >  		const intel_ctx_t *ctx = context_create_safe(fd);
> > >  		igt_spin_t *hang;
> > >  		unsigned int i;
> > > @@ -977,6 +979,9 @@ static void reset_stress(int fd, uint64_t ahnd, const intel_ctx_t *ctx0,
> > >  		gem_sync(fd, obj.handle);
> > >  		igt_spin_free(fd, hang);
> > >  		intel_ctx_destroy(fd, ctx);
> > > +
> > > +		if (stats.n_values > 8)
> > > +			break;
> > >  	}
> > >  	check_wait_elapsed(name, fd, &stats);
> > >  	igt_stats_fini(&stats);
> > 
> 
> 
> 
> 
