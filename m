Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 00E8D7C8728
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 15:48:26 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 153DC10E0BF;
	Fri, 13 Oct 2023 13:48:24 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.120])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F39B610E0BF
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 13:48:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697204900; x=1728740900;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Tfucnk+pJ3cdXFWo/xqWzZyoD2bwgDZKpPvKgKK99Ig=;
 b=S6UJAsSmr12BYMvGknziXx4VMYAUe8AVWsuLlIqGf1KOXYwfpbXV0ILm
 89e9obUjBwTNxdtVhl2hiTS1iBwwLudID2pXq8ilWyzsk/2RYfqC6tw71
 2hLliJk8NwgmDyktNOXQC+oMDxjZ8k8aD4lRS47iW+yQHqy9igBixLq/I
 AKZU4a844UloKQQl+8VMwuq8sosn20nDIuJYS8EzR0+xVUr+rAQFMH176
 KQFZGnP1ZwKnij2u1IIKibDXwJM6jXJfV3B5JrhaahyszTe0hXlBqek5J
 3SRG8fB9weNu58zGlyTBOS//Djah0cH64u3vM/Yxuv36UYx8C39uM2Kz/ g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="384046115"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="384046115"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 06:48:20 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10862"; a="820633796"
X-IronPort-AV: E=Sophos;i="6.03,222,1694761200"; d="scan'208";a="820633796"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmsmga008.fm.intel.com with SMTP; 13 Oct 2023 06:48:18 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Oct 2023 16:48:17 +0300
Date: Fri, 13 Oct 2023 16:48:17 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Message-ID: <ZSlKoSr2WMp8eQM8@intel.com>
References: <20231009132204.15098-1-ville.syrjala@linux.intel.com>
 <20231009132204.15098-2-ville.syrjala@linux.intel.com>
 <DM4PR11MB63604202F27DECE62EA33E99F4D3A@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB63604202F27DECE62EA33E99F4D3A@DM4PR11MB6360.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/4] drm/i915/dsb: Correct DSB command
 buffer cache coherency settings
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
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Oct 12, 2023 at 09:40:23PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Monday, October 9, 2023 6:52 PM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [Intel-gfx] [PATCH 2/4] drm/i915/dsb: Correct DSB command buffer
> > cache coherency settings
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > The display engine does not snoop the caches so shoukd to mark the DSB
> 
> Nit: Typo here
> 
> I am not sure on the cache behaviour so someone from core can also ack.
> To me , looks logically correct.
> Reviewed-by: Uma Shankar <uma.shankar@intel.com>

Thanks. This series is now merged. Fingers crossed DSB will behave
nicely...

> 
> > command buffer as I915_CACHE_NONE.
> > i915_gem_object_create_internal() always gives us I915_CACHE_LLC on LLC
> > platforms. And to make things 100% correct we should also clflush at the end, if
> > necessary.
> > 
> > Note that currently this is a non-issue as we always write the command buffer
> > through a WC mapping, so a cache flush is not actually needed. But we might
> > actually want to consider a WB mapping since we also end up reading from the
> > command buffer (in the indexed reg write handling). Either that or we should do
> > something else to avoid those reads (might actually be even more sensible on
> > DGFX since we end up reading over PCIe). But we should measure the overhead
> > first...
> > 
> > Anyways, no real harm in adding the belts and suspenders here so that the code
> > will work correctly regardless of how we map the buffer. If we do get a WC
> > mapping (as we request)
> > i915_gem_object_flush_map() will be a nop. Well, apart form a wmb() which may
> > just flush the WC buffer a bit earlier than would otherwise happen (at the latest
> > the mmio accesses would trigger the WC flush).
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dsb.c | 15 +++++++++++----
> >  1 file changed, 11 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > index 7410ba3126f9..78b6fe24dcd8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > @@ -316,6 +316,8 @@ void intel_dsb_finish(struct intel_dsb *dsb)
> >  				   DSB_FORCE_DEWAKE, 0);
> > 
> >  	intel_dsb_align_tail(dsb);
> > +
> > +	i915_gem_object_flush_map(dsb->vma->obj);
> >  }
> > 
> >  static int intel_dsb_dewake_scanline(const struct intel_crtc_state *crtc_state)
> > @@ -462,13 +464,18 @@ struct intel_dsb *intel_dsb_prepare(const struct
> > intel_crtc_state *crtc_state,
> >  	/* ~1 qword per instruction, full cachelines */
> >  	size = ALIGN(max_cmds * 8, CACHELINE_BYTES);
> > 
> > -	if (HAS_LMEM(i915))
> > +	if (HAS_LMEM(i915)) {
> >  		obj = i915_gem_object_create_lmem(i915, PAGE_ALIGN(size),
> > 
> > I915_BO_ALLOC_CONTIGUOUS);
> > -	else
> > +		if (IS_ERR(obj))
> > +			goto out_put_rpm;
> > +	} else {
> >  		obj = i915_gem_object_create_internal(i915, PAGE_ALIGN(size));
> > -	if (IS_ERR(obj))
> > -		goto out_put_rpm;
> > +		if (IS_ERR(obj))
> > +			goto out_put_rpm;
> > +
> > +		i915_gem_object_set_cache_coherency(obj,
> > I915_CACHE_NONE);
> > +	}
> > 
> >  	vma = i915_gem_object_ggtt_pin(obj, NULL, 0, 0, 0);
> >  	if (IS_ERR(vma)) {
> > --
> > 2.41.0
> 

-- 
Ville Syrjälä
Intel
