Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 404CF71F0F7
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 19:40:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F406410E24F;
	Thu,  1 Jun 2023 17:40:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4455E10E24F
 for <intel-gfx@lists.freedesktop.org>; Thu,  1 Jun 2023 17:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685641251; x=1717177251;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=W29tvmqUxhg0QhI8fEIknsvGsjh3CpjREUwf6m4Obwk=;
 b=O/V0UIKZaU5xPEpeoa+N7uLKAAcmgY6LTZwVJT7V/4JYBkO4AZl4csKm
 Yb6wU5irOsb6yeCw3eR5VJW/Q5SkPGE0nnOoczho5NMER23GF/uUncKfT
 6COfd201oHPR3ne92+kq1PrilpR7yb4u0cveKHGkYnj8fv6AhnO5MTDUR
 udHOdDQXVpohLXaePuNOQCMcg4iRJ00akl8IPar+LSF301io+MMm+Rvp1
 7uwgg7GY7FVxgFzsLrCw7UCB8kA6O15c67Gp39ezGoEMwMQ6gpRvkGlOx
 GM2maOt8aOsRMC5dbdb5p9D0Qxe8QIDH3oinfIfmwDQUhy6fPLh36GmkK g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="419157945"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="419157945"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 10:40:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10728"; a="831655314"
X-IronPort-AV: E=Sophos;i="6.00,210,1681196400"; d="scan'208";a="831655314"
Received: from mborsali-mobl.amr.corp.intel.com (HELO intel.com)
 ([10.251.208.75])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Jun 2023 10:40:49 -0700
Date: Thu, 1 Jun 2023 19:40:46 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Andi Shyti <andi.shyti@linux.intel.com>
Message-ID: <ZHjYHkAbzfd2lEBo@ashyti-mobl2.lan>
References: <20230531213547.1525692-1-matthew.s.atwood@intel.com>
 <ZHfAsU7tQ+qD5sBk@ashyti-mobl2.lan>
 <ZHfFGr2j14/pK+tX@msatwood-mobl>
 <ZHfHA7jAMh3TjtIl@ashyti-mobl2.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZHfHA7jAMh3TjtIl@ashyti-mobl2.lan>
Subject: Re: [Intel-gfx] [PATCH] drm/i915: sync I915_PMU_MAX_GTS to
 I915_MAX_GT
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi Matt,

> > > > --- a/drivers/gpu/drm/i915/i915_pmu.h
> > > > +++ b/drivers/gpu/drm/i915/i915_pmu.h
> > > > @@ -38,7 +38,7 @@ enum {
> > > >  	__I915_NUM_PMU_SAMPLERS
> > > >  };
> > > >  
> > > > -#define I915_PMU_MAX_GTS 2
> > > > +#define I915_PMU_MAX_GTS 4
> > > 
> > > right! Why not having
> > > 
> > > 	#define I915_PMU_MAX_GTS	I915_MAX_GT
> > > 
> > > or... why having I915_PMU_MAX_GTS at all?
> > Originally I went the route of s/I915_PMU_MAX_GTS/I915_MAX_GT/g.
> > However, this introduces many changes to where you then move
> > I915_MAX_GT to and #include blocks in fiels that require these values.
> > In the end I decided it was better to keep define and just change the
> > value.
> 
> OK, makes sense, then how about
> 
>  	#define I915_PMU_MAX_GTS	I915_MAX_GT
> 
> i915_pmu.h has visibility on I915_MAX_GT.

ops... it doesn't... sorry!

Reviewed-by: Andi Shyti <andi.shyti@linux.intel.com> 

Andi

> Andi
> 
> > > 
> > > Andi
> > > 
> > > >  /*
> > > >   * How many different events we track in the global PMU mask.
> > > > -- 
> > > > 2.40.0
> > MattA
