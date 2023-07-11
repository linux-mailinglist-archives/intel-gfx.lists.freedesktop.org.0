Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B18874F2AF
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Jul 2023 16:51:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A2CB310E3C3;
	Tue, 11 Jul 2023 14:51:07 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0481D10E3B4
 for <intel-gfx@lists.freedesktop.org>; Tue, 11 Jul 2023 14:51:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689087066; x=1720623066;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=tDPkcu/D803tg5jwXFJuJFzO9ZctdH4RTPh1hPBrOhg=;
 b=Cth51iMXI9ugR5d0xyniqbrHskdGXmrDiazzfkgriYT5ppLIhRTbWAmq
 /Dy6vcy/Sg4UZMOlrNPsEoHncPGycSOt0rCKW2Pelcql5m7PJ1TMxJKzD
 LFOQwUHsZUkg1D4vVOtUqDFmEo4nS5IKous4Zdzogr6KmjluEVRg5FD4D
 01VqtnA46DUru/13sEKKqvhFdOS8zzIgqlFoSRjaZHgymV3BbDTM26I+l
 eQ29FkNhpM8x/xRfu7q/0m/SZdXBtl1zPrGrn2dTyChCf11Gq5+h1amjq
 JG5eDhbGOVyuJrMFR6h3zZgUZkg+PNnAWdNs2L+3psuf2LtyURvhqURbi A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="430726029"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="430726029"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 07:51:04 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10768"; a="671398038"
X-IronPort-AV: E=Sophos;i="6.01,196,1684825200"; d="scan'208";a="671398038"
Received: from tpichler-mobl.ger.corp.intel.com (HELO intel.com)
 ([10.251.221.137])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jul 2023 07:51:01 -0700
Date: Tue, 11 Jul 2023 16:50:53 +0200
From: Andi Shyti <andi.shyti@linux.intel.com>
To: "Zeng, Oak" <oak.zeng@intel.com>
Message-ID: <ZK1sTRhW5QkZ4kHM@ashyti-mobl2.lan>
References: <20230630170140.17319-1-nirmoy.das@intel.com>
 <SA1PR11MB699124CCEFAA2F67C424EA27922EA@SA1PR11MB6991.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <SA1PR11MB699124CCEFAA2F67C424EA27922EA@SA1PR11MB6991.namprd11.prod.outlook.com>
Subject: Re: [Intel-gfx] [PATCH 1/2] drm/i915/gt: Do not use stolen on MTL
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>, "Hajda,
 Andrzej" <andrzej.hajda@intel.com>, "Das, Nirmoy" <nirmoy.das@intel.com>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

Hi,

On Tue, Jul 04, 2023 at 03:01:01PM +0000, Zeng, Oak wrote:
> Hi Nirmoy,
> 
> The changes in this series make sense to me. I searched my code base, there are a few other places where stolen memory is allocated:
> 
> 1) intel_dpt_create: I don't know what is dpt. Should we also consider this one? Maybe we never read from cpu?
> 2) create_ring_vma: I think cpu only write ring buffer but never read it. So should be okay.
> 3) vlv_rc6_init
> 4) there are a few places calling i915_gem_object_create_stolen_for_preallocated. I think this is also stolen memory?

sounds like we need a wrapper?

Andi

> For integrated gpu like MTL, do we use stolen memory for ggtt? If yes, does CPU only write ggtt/never read? 
> 
> Thanks,
> Oak
> 
> > -----Original Message-----
> > From: Das, Nirmoy <nirmoy.das@intel.com>
> > Sent: June 30, 2023 1:02 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Das, Nirmoy <nirmoy.das@intel.com>; Zeng, Oak <oak.zeng@intel.com>; Jani
> > Nikula <jani.nikula@linux.intel.com>; Joonas Lahtinen
> > <joonas.lahtinen@linux.intel.com>; Andi Shyti <andi.shyti@linux.intel.com>;
> > Hajda, Andrzej <andrzej.hajda@intel.com>
> > Subject: [PATCH 1/2] drm/i915/gt: Do not use stolen on MTL
> > 
> > Use smem on MTL due to a HW bug in MTL that prevents
> > reading from stolen memory using LMEM BAR.
> > 
> > Cc: Oak Zeng <oak.zeng@intel.com>
> > Cc: Jani Nikula <jani.nikula@linux.intel.com>
> > Cc: Joonas Lahtinen <joonas.lahtinen@linux.intel.com>
> > Cc: Andi Shyti <andi.shyti@linux.intel.com>
> > Cc: Andrzej Hajda <andrzej.hajda@intel.com>
> > Signed-off-by: Nirmoy Das <nirmoy.das@intel.com>
> > ---
> >  drivers/gpu/drm/i915/gt/intel_gt.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/gt/intel_gt.c
> > b/drivers/gpu/drm/i915/gt/intel_gt.c
> > index 33a61046ba58..9f64d61dd5fc 100644
> > --- a/drivers/gpu/drm/i915/gt/intel_gt.c
> > +++ b/drivers/gpu/drm/i915/gt/intel_gt.c
> > @@ -466,7 +466,7 @@ static int intel_gt_init_scratch(struct intel_gt *gt, unsigned
> > int size)
> >  	obj = i915_gem_object_create_lmem(i915, size,
> >  					  I915_BO_ALLOC_VOLATILE |
> >  					  I915_BO_ALLOC_GPU_ONLY);
> > -	if (IS_ERR(obj))
> > +	if (IS_ERR(obj) && !IS_METEORLAKE(i915)) /* Wa_22018444074 */
> >  		obj = i915_gem_object_create_stolen(i915, size);
> >  	if (IS_ERR(obj))
> >  		obj = i915_gem_object_create_internal(i915, size);
> > --
> > 2.39.0
