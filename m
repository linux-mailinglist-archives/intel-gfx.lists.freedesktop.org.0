Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C63BBC5596
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 16:03:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D443910E81E;
	Wed,  8 Oct 2025 14:03:50 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GQkzCRbQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D223410E81E;
 Wed,  8 Oct 2025 14:03:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759932230; x=1791468230;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=vt0aiJ4WZSw7018ak98NhcEnJmiX00EIllT0tXAHn9U=;
 b=GQkzCRbQQAg5sfvgXxUNHkw5y7vxtDc1F3YpUZ+P3jJjEOZRnXW/Cj6n
 jRhxPWCbuXQ5yeY0xd+K327jKHea4CsNYH/VOHTDMbEHrPbRBvG9P4IT9
 nnORhrNScjG7mRBVBj8xzRVFfL3dGpqlTxPazhV4wbGA/EWrcyOhxT5JG
 EASh0h1tmuPkgVflhKim831aBpv8wgiWqsUBJeGH9IcmoloigMQXCV1i7
 BYEbYWiD3Uwvp2kZ0gFnARW5/6ELXkEYuVCUGmEiMZKOrTvFGw/1FWboy
 t8Cjl1KxUaHwuV4y1mMc+04nY1BuNmYVk+/A282Rv2OZCAsr/44fKAGzV g==;
X-CSE-ConnectionGUID: bWZN7QNHTqC+UIBLKQufBA==
X-CSE-MsgGUID: bNh4XU5jSBG/ZtTkb0djJg==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="65953561"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="65953561"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 07:03:50 -0700
X-CSE-ConnectionGUID: zOaGA5EARge76QudAujzrQ==
X-CSE-MsgGUID: fL+V/wUSTX+93vZ7yBJpYw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,213,1754982000"; d="scan'208";a="180862259"
Received: from kamilkon-desk.igk.intel.com (HELO localhost) ([10.211.136.201])
 by fmviesa009-auth.fm.intel.com with
 ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 08 Oct 2025 07:03:47 -0700
Date: Wed, 8 Oct 2025 16:03:30 +0200
From: Kamil Konieczny <kamil.konieczny@linux.intel.com>
To: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH i-g-t v2 1/5] tests/gem_eio: Skip on too few reset-resume
 cycles
Message-ID: <20251008140330.zjuxak2udj4p4org@kamilkon-DESK.igk.intel.com>
Mail-Followup-To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Krzysztof Karas <krzysztof.karas@intel.com>
References: <20251007113910.3336564-7-janusz.krzysztofik@linux.intel.com>
 <20251007113910.3336564-8-janusz.krzysztofik@linux.intel.com>
 <20251008115911.ihnnpmj33gcwsh23@kamilkon-DESK.igk.intel.com>
 <2717763.tIAgqjz4sF@jkrzyszt-mobl2.ger.corp.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <2717763.tIAgqjz4sF@jkrzyszt-mobl2.ger.corp.intel.com>
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
On 2025-10-08 at 14:15:28 +0200, Janusz Krzysztofik wrote:
> Hi Kamil,
> 
> Thanks for review.
> 
> On Wednesday, 8 October 2025 13:59:11 CEST Kamil Konieczny wrote:
> > Hi Janusz,
> > On 2025-10-07 at 13:38:24 +0200, Janusz Krzysztofik wrote:
> > > Subtests that measure time of resume after engine reset compare a median
> > > value calculated from the measurements against a presumed limit and fail
> > > if the limit has been exceeded.  However, if it occurs not possible to
> > > collect enough measurements required for stable median value calculation,
> > > that condition is now ignored and success is reported, as if the measured
> > > time fit below the limit.
> > > 
> > > Skip if not able to collect sufficient number of time measurements.  CI
> > > results from slow platforms that always skip may be handled as expected
> > > skips.
> > > 
> > > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > > ---
> > >  tests/intel/gem_eio.c | 5 +++--
> > >  1 file changed, 3 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> > > index b65b914faf..0a00ef026e 100644
> > > --- a/tests/intel/gem_eio.c
> > > +++ b/tests/intel/gem_eio.c
> > > @@ -409,8 +409,9 @@ static void check_wait_elapsed(const char *prefix, int fd, igt_stats_t *st)
> > >  		 igt_stats_get_median(st)*1e-6,
> > >  		 igt_stats_get_max(st)*1e-6);
> > >  
> > > -	if (st->n_values < 9)
> > > -		return; /* too few for stable median */
> > > +	igt_require_f(st->n_values > 8,
> > > +		      "at least 9 resets completed for stable median calculation, %d is too few\n",
> > 
> > imho add 'Test needs' at begin of sentence:
> > 		      "Test needs at least 9 resets completed for stable median calculation, %d is too few\n",
> 
> It was never clear enough to me if the message should explain the requirement, 
> or describe the problem.  I've always been assuming the former, and my stderr 
> messages usually looked like this one:
> 
>     Test requirement: st->n_values > 8
>     at least 9 resets completed for stable median calculation, 8 is too few

Ok, looks reasonable, so up to you, you could keep your code
as is with my r-b here, imho this is more readable:

     Test requirement: st->n_values >= 9
     at least 9 completed resets are needed for stable median calculation, 8 is too few

Regards,
Kamil

> 
> see https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_13866/shard-mtlp-8/igt@gem_eio@unwedge-stress.html
> 
> If you think my understanding is wrong then I'll fix this as you suggest.
> 
> Thanks,
> Janusz
> 
> 
> > 
> > With this
> > Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> > 
> > > +		      st->n_values);
> > >  
> > >  	/*
> > >  	 * Older platforms need to reset the display (incl. modeset to off,
> > 
> 
> 
> 
> 
