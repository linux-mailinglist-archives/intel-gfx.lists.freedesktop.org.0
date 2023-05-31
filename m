Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BB30718E49
	for <lists+intel-gfx@lfdr.de>; Thu,  1 Jun 2023 00:15:44 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 42EAB10E0C3;
	Wed, 31 May 2023 22:15:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EEA6D10E0C3
 for <intel-gfx@lists.freedesktop.org>; Wed, 31 May 2023 22:15:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1685571339; x=1717107339;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=J0DUwvOe11iu9Nv2YZvxWwFSll1RiIYzGxvOLVfDDcY=;
 b=Ft8ipiMiA2HYI96ianXzanDL8cnuHZFQkdS92Os/E6dNbIw6/dlJ+EBB
 bS2n0tF/zBvpB3MphgLYt++bj/iXoTOEq5rQruxMzHXLPb2jHxDCACvh6
 NObbrAPWMIglWUqHtttdMf+GWtf0jKskU3Ts9hiULewQ1+gcsRk1snytD
 PKNfFqhWbX8ZX7kwI2PqEtCafTK741exsRgD4B+R3goKeF1EDBduBBy7I
 20ZZOJOiIo2u5vRBsuqBSIdqzCI6olXVUmpM5WnGK1FirVTI3HRm6+917
 +JjprRsUzRhbwIo0/ZHmYMbl93gqF+TJhKvmqe8Fqenw5GN+Ql+TmN1Bb Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="354229667"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="354229667"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 15:15:39 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10727"; a="736826246"
X-IronPort-AV: E=Sophos;i="6.00,207,1681196400"; d="scan'208";a="736826246"
Received: from itaraban-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.252.47.19])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 31 May 2023 15:15:33 -0700
Date: Thu, 1 Jun 2023 00:15:31 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: Matt Atwood <matthew.s.atwood@intel.com>
Message-ID: <ZHfHA7jAMh3TjtIl@ashyti-mobl2.lan>
References: <20230531213547.1525692-1-matthew.s.atwood@intel.com>
 <ZHfAsU7tQ+qD5sBk@ashyti-mobl2.lan>
 <ZHfFGr2j14/pK+tX@msatwood-mobl>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZHfFGr2j14/pK+tX@msatwood-mobl>
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

On Wed, May 31, 2023 at 03:07:22PM -0700, Matt Atwood wrote:
> On Wed, May 31, 2023 at 11:48:33PM +0200, Andi Shyti wrote:
> > Hi Matt,
> > 
> > On Wed, May 31, 2023 at 02:35:47PM -0700, Matt Atwood wrote:
> > > Set I915_PMU_MAX_GTS to value in I915_MAX_GT, theres no reason for these
> > > values to be different.
> > > 
> > > Cc: Tvrtko Ursulin <tvrtko.ursulin@intel.com>
> > > Cc: Umesh Nerlige Ramappa <umesh.nerlige.ramappa@intel.com>
> > > Cc: Ashutosh Dixit <ashutosh.dixit@intel.com>
> > > Signed-off-by: Matt Atwood <matthew.s.atwood@intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/i915_pmu.h | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/i915_pmu.h b/drivers/gpu/drm/i915/i915_pmu.h
> > > index 33d80fbaab8b..aa929d8c224a 100644
> > > --- a/drivers/gpu/drm/i915/i915_pmu.h
> > > +++ b/drivers/gpu/drm/i915/i915_pmu.h
> > > @@ -38,7 +38,7 @@ enum {
> > >  	__I915_NUM_PMU_SAMPLERS
> > >  };
> > >  
> > > -#define I915_PMU_MAX_GTS 2
> > > +#define I915_PMU_MAX_GTS 4
> > 
> > right! Why not having
> > 
> > 	#define I915_PMU_MAX_GTS	I915_MAX_GT
> > 
> > or... why having I915_PMU_MAX_GTS at all?
> Originally I went the route of s/I915_PMU_MAX_GTS/I915_MAX_GT/g.
> However, this introduces many changes to where you then move
> I915_MAX_GT to and #include blocks in fiels that require these values.
> In the end I decided it was better to keep define and just change the
> value.

OK, makes sense, then how about

 	#define I915_PMU_MAX_GTS	I915_MAX_GT

i915_pmu.h has visibility on I915_MAX_GT.

Andi

> > 
> > Andi
> > 
> > >  /*
> > >   * How many different events we track in the global PMU mask.
> > > -- 
> > > 2.40.0
> MattA
