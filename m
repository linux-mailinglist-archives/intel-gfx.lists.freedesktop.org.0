Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B5D29BC4BA1
	for <lists+intel-gfx@lfdr.de>; Wed, 08 Oct 2025 14:15:35 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 47DE510E2A5;
	Wed,  8 Oct 2025 12:15:34 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="GTJgr3os";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 959FA10E2A5;
 Wed,  8 Oct 2025 12:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759925734; x=1791461734;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=2w0+gGT/bBn55urEXG7g5nunWG3fb7a8t71EGiLUz4E=;
 b=GTJgr3osyojYKtfIifusFOr7h5XYp4zf1ByN1fK7NNPEzpmUAU/e4hD0
 6r+6v1f9A6BfQIEhE5bJuSN6LO931kUcjUMH9fMgJ0kd6X3X0WSsyKyuh
 wKiD0xvAWn3InDimhfq53Tg8w4VPyQmichkWsMZxSgEgQrOdVALZRXa+3
 ASVkZ0kHOW/6kwkJ/0gJFmY5WJSzZnWvTYJBubVFxxlls7F9cq0GtanU7
 usQ5g9mbnMrElwsrUmH+JSjmo+Y+PQXWD/pf2fzd6K8I/TLMqaAL+0zTI
 aIJ+wLwcMphaJTkP0n6q2yYb3R4AXv2qdNj7UO4QCl5F0G3QB7wyQsJWf A==;
X-CSE-ConnectionGUID: 08Yp8DJZTiyjIaGg7hEafg==
X-CSE-MsgGUID: NiMfaxoYQBuwTrp7H9X79g==
X-IronPort-AV: E=McAfee;i="6800,10657,11575"; a="72375892"
X-IronPort-AV: E=Sophos;i="6.19,323,1754982000"; d="scan'208";a="72375892"
Received: from fmviesa010.fm.intel.com ([10.60.135.150])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 05:15:33 -0700
X-CSE-ConnectionGUID: KtXGXytIR1WGi9ZYfjxXUQ==
X-CSE-MsgGUID: ww+o6ZJFQLu1FlH/uusM6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,323,1754982000"; d="scan'208";a="181182556"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.244.124])
 by fmviesa010-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Oct 2025 05:15:31 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>,
 igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>,
 Krzysztof Karas <krzysztof.karas@intel.com>
Subject: Re: [PATCH i-g-t v2 1/5] tests/gem_eio: Skip on too few reset-resume
 cycles
Date: Wed, 08 Oct 2025 14:15:28 +0200
Message-ID: <2717763.tIAgqjz4sF@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <20251008115911.ihnnpmj33gcwsh23@kamilkon-DESK.igk.intel.com>
References: <20251007113910.3336564-7-janusz.krzysztofik@linux.intel.com>
 <20251007113910.3336564-8-janusz.krzysztofik@linux.intel.com>
 <20251008115911.ihnnpmj33gcwsh23@kamilkon-DESK.igk.intel.com>
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

Thanks for review.

On Wednesday, 8 October 2025 13:59:11 CEST Kamil Konieczny wrote:
> Hi Janusz,
> On 2025-10-07 at 13:38:24 +0200, Janusz Krzysztofik wrote:
> > Subtests that measure time of resume after engine reset compare a median
> > value calculated from the measurements against a presumed limit and fail
> > if the limit has been exceeded.  However, if it occurs not possible to
> > collect enough measurements required for stable median value calculation,
> > that condition is now ignored and success is reported, as if the measured
> > time fit below the limit.
> > 
> > Skip if not able to collect sufficient number of time measurements.  CI
> > results from slow platforms that always skip may be handled as expected
> > skips.
> > 
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  tests/intel/gem_eio.c | 5 +++--
> >  1 file changed, 3 insertions(+), 2 deletions(-)
> > 
> > diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> > index b65b914faf..0a00ef026e 100644
> > --- a/tests/intel/gem_eio.c
> > +++ b/tests/intel/gem_eio.c
> > @@ -409,8 +409,9 @@ static void check_wait_elapsed(const char *prefix, int fd, igt_stats_t *st)
> >  		 igt_stats_get_median(st)*1e-6,
> >  		 igt_stats_get_max(st)*1e-6);
> >  
> > -	if (st->n_values < 9)
> > -		return; /* too few for stable median */
> > +	igt_require_f(st->n_values > 8,
> > +		      "at least 9 resets completed for stable median calculation, %d is too few\n",
> 
> imho add 'Test needs' at begin of sentence:
> 		      "Test needs at least 9 resets completed for stable median calculation, %d is too few\n",

It was never clear enough to me if the message should explain the requirement, 
or describe the problem.  I've always been assuming the former, and my stderr 
messages usually looked like this one:

    Test requirement: st->n_values > 8
    at least 9 resets completed for stable median calculation, 8 is too few

see https://intel-gfx-ci.01.org/tree/drm-tip/IGTPW_13866/shard-mtlp-8/igt@gem_eio@unwedge-stress.html

If you think my understanding is wrong then I'll fix this as you suggest.

Thanks,
Janusz


> 
> With this
> Reviewed-by: Kamil Konieczny <kamil.konieczny@linux.intel.com>
> 
> > +		      st->n_values);
> >  
> >  	/*
> >  	 * Older platforms need to reset the display (incl. modeset to off,
> 




