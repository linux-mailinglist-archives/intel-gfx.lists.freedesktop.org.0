Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 95FBABB0324
	for <lists+intel-gfx@lfdr.de>; Wed, 01 Oct 2025 13:38:31 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF2D010E3C9;
	Wed,  1 Oct 2025 11:38:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="itYn2i3m";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id AEAB910E36A;
 Wed,  1 Oct 2025 11:38:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1759318709; x=1790854709;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wmSOtvYDuM6nbumPqIgVEj0i78dCxD9sU7/BBG6kWS4=;
 b=itYn2i3mMT3zTM8cyLwGt1/8RhEJsoAPd8ajZUaPjGg52W4haRqQ3hze
 wcKQzLZRFKeHqjIA9u2m2q6K/omJerRmFMIdXDnUw+rYaVgL39RrG9/ZM
 IWWJPDC/4mm3RRVTxIkvD44BFcucsocP0iZaP5TiOuTPVC8qRUxFcnb6c
 pjy2SF5D3N0WFjcfAW2Lg0d/3XvB0aX+JYY5WtOPlJugtG8yxGYSCqMvE
 NNmq+YwLjlYxy0vedjXKRx3bmg1zB0Vi64RwgfgOyMSDwxnYvYfpsHvIQ
 q3dYrdpSyIFYL0KqIL+3MNJncUbcp3VKqaoDNOZahBfx2GTo8xKYW246X w==;
X-CSE-ConnectionGUID: w9zSi0g4QgWz/yQOIAE9xw==
X-CSE-MsgGUID: qRmlW9S8QDCWFwLsmHV5WA==
X-IronPort-AV: E=McAfee;i="6800,10657,11569"; a="72263209"
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="72263209"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 04:38:28 -0700
X-CSE-ConnectionGUID: 2r3EJ4ZVQ5Gn03T5V+aIyw==
X-CSE-MsgGUID: KVLAHiidT+2EmXv3DGe5TQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,306,1751266800"; d="scan'208";a="183948296"
Received: from jkrzyszt-mobl2.ger.corp.intel.com ([10.245.245.78])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Oct 2025 04:38:25 -0700
From: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
To: Krzysztof Karas <krzysztof.karas@intel.com>
Cc: igt-dev@lists.freedesktop.org, intel-gfx@lists.freedesktop.org,
 Kamil Konieczny <kamil.konieczny@linux.intel.com>,
 Chris Wilson <chris.p.wilson@linux.intel.com>,
 Tvrtko Ursulin <tursulin@ursulin.net>
Subject: Re: [PATCH i-g-t 1/3] tests/gem_eio: Adjust for long reset-resume
 cycle on Gen12+
Date: Wed, 01 Oct 2025 13:38:22 +0200
Message-ID: <2071615.PIDvDuAF1L@jkrzyszt-mobl2.ger.corp.intel.com>
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
In-Reply-To: <7sanw2t5euulqqukkaopvqyl5nogzz5srahbc3klbmuduh3pah@s4e5gyvy75gc>
References: <20250930125430.2323555-5-janusz.krzysztofik@linux.intel.com>
 <20250930125430.2323555-6-janusz.krzysztofik@linux.intel.com>
 <7sanw2t5euulqqukkaopvqyl5nogzz5srahbc3klbmuduh3pah@s4e5gyvy75gc>
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

On Wednesday, 1 October 2025 08:36:38 CEST Krzysztof Karas wrote:
> Hi Janusz,
> 
> > Subtests that measure time of resume after engine reset require results
> > from at least 9 reset-resume cycles for reasonable calculation of a median
> > value to be compared against presumed limits.  On most of Gen12+
> > platforms, the limit of 5 seconds for collecting those results occurs too
> > short for executing 9 reset-resum cycles.
> reset-resum -> reset-resume, just a small typo.
> > 
> > Raise the limit to 20 seconds, and break the loop as soon as 9 results are
> > collected.  Also, warn if less than 9 resets have been completed within
> > the limit instead of silently succeeding despite the check being skipped.
> > 
> > Signed-off-by: Janusz Krzysztofik <janusz.krzysztofik@linux.intel.com>
> > ---
> >  tests/intel/gem_eio.c | 11 ++++++++---
> >  1 file changed, 8 insertions(+), 3 deletions(-)
> > 
> > diff --git a/tests/intel/gem_eio.c b/tests/intel/gem_eio.c
> > index b65b914faf..b6155c7fc4 100644
> > --- a/tests/intel/gem_eio.c
> > +++ b/tests/intel/gem_eio.c
> > @@ -409,8 +409,10 @@ static void check_wait_elapsed(const char *prefix, 
int fd, igt_stats_t *st)
> >  		 igt_stats_get_median(st)*1e-6,
> >  		 igt_stats_get_max(st)*1e-6);
> >  
> > -	if (st->n_values < 9)
> > -		return; /* too few for stable median */
> > +	if (igt_warn_on_f(st->n_values < 9,
> > +	    "%d resets completed -- less than 9, too few for stable 
median\n",
> > +	    st->n_values))
> > +		return;
> Is this warning indicative of a bug? I wonder if this will
> result in having more WARN runs from CI. If there is nothing we
> can do to amend this, as slow reset-resume cycles are caused by
> hardware limitations, maybe igt_info would suffice?

If we want to be informed about resume after reset unexpectedly still longer 
on future platforms then an info message won't bring our attention, I believe.  
OTOH, I understand your concern on CI reported warnings we can't do much 
about.  Let me think it over again.

Thanks,
Janusz

> 
> 




