Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B4BCF88C0F4
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Mar 2024 12:40:26 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0693010EEBE;
	Tue, 26 Mar 2024 11:40:24 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bem+I1TV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB00210EEBE
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Mar 2024 11:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1711453222; x=1742989222;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=HSrcWmxETJ8E8spBRNHk4NS3co0WzT5Z4jEDA/qhCp8=;
 b=bem+I1TVCs+JwS6LazdssXKKTEr7HNzgNUBfM86+TA3UIGTw6PN1khtp
 z+KG87ZxKRFWh8cYUptE/+r+SGizAIgd9xinwZ9zEzhtGdC4xmadcsHlu
 yP4Ph/HU/+ci2mxIDQMFJYfqQi4GAa9q+LywbgA5wjJ7ezLTDQSvM76DU
 oaa+9k2Iq3o5u7+FdyP21IAeqoCMRi9kNykjHx3Bf3+sE8osuPSR2aXYL
 IDFgiGPDoeukTWGO20gyk2dvf7z7WQnjporN7ZLkzFH1M+P3Rm9RApPJS
 LtJ3p0gwPbBd4DsAj1CTzZAmEopJCffLeHdK45yiWR1Q/x3yXYRQync/B g==;
X-CSE-ConnectionGUID: 97Pk1BChQSiz4MNZ8KWFTw==
X-CSE-MsgGUID: VPI004taSpuE0UkgcD9Vnw==
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="28978976"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="28978976"
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2024 04:40:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,11024"; a="827785181"
X-IronPort-AV: E=Sophos;i="6.07,156,1708416000"; d="scan'208";a="827785181"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga001.jf.intel.com with SMTP; 26 Mar 2024 04:40:19 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 26 Mar 2024 13:40:19 +0200
Date: Tue, 26 Mar 2024 13:40:19 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Borah, Chaitanya Kumar" <chaitanya.kumar.borah@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "stable@vger.kernel.org" <stable@vger.kernel.org>,
 Borislav Petkov <bp@alien8.de>
Subject: Re: [PATCH] drm/i915: Pre-populate the cursor physical dma address
Message-ID: <ZgK0IxB3I81KdFsh@intel.com>
References: <20240325175738.3440-1-ville.syrjala@linux.intel.com>
 <SJ1PR11MB612907EA0F41B6CD6ECC9B1AB9352@SJ1PR11MB6129.namprd11.prod.outlook.com>
 <ZgKzPZWovqa-hm30@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZgKzPZWovqa-hm30@intel.com>
X-Patchwork-Hint: comment
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

On Tue, Mar 26, 2024 at 01:36:29PM +0200, Ville Syrjälä wrote:
> On Tue, Mar 26, 2024 at 04:57:57AM +0000, Borah, Chaitanya Kumar wrote:
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > > Syrjala
> > > Sent: Monday, March 25, 2024 11:28 PM
> > > To: intel-gfx@lists.freedesktop.org
> > > Cc: stable@vger.kernel.org; Borislav Petkov <bp@alien8.de>
> > > Subject: [PATCH] drm/i915: Pre-populate the cursor physical dma address
> > > 
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > 
> > > Calling i915_gem_object_get_dma_address() from the vblank evade critical
> > > section triggers might_sleep().
> > > 
> > > While we know that we've already pinned the framebuffer and thus
> > > i915_gem_object_get_dma_address() will in fact not sleep in this case, it
> > > seems reasonable to keep the unconditional might_sleep() for maximum
> > > coverage.
> > > 
> > > So let's instead pre-populate the dma address during fb pinning, which all
> > > happens before we enter the vblank evade critical section.
> > > 
> > > We can use u32 for the dma address as this class of hardware doesn't
> > > support >32bit addresses.
> > > 
> > > Cc: stable@vger.kernel.org
> > > Fixes: 0225a90981c8 ("drm/i915: Make cursor plane registers unlocked")
> > > Link: https://lore.kernel.org/intel-
> > > gfx/20240227100342.GAZd2zfmYcPS_SndtO@fat_crate.local/
> > 
> > Nit. This could be changed to Closes and moved after Reported-by to keep checkpatch happy but otherwise, LGTM.
> 
> It's not a gitlab link, so Closes doesn't seem appropriate.

Hmm. Seems people have started to used Closes: for non-gitlab stuff
as well. I suppose it's OK then.

> 
> > 
> > Reviewed-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> 
> Thanks.
> 
> > 
> > > Reported-by: Borislav Petkov <bp@alien8.de>
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_cursor.c        |  4 +---
> > >  drivers/gpu/drm/i915/display/intel_display_types.h |  1 +
> > >  drivers/gpu/drm/i915/display/intel_fb_pin.c        | 10 ++++++++++
> > >  3 files changed, 12 insertions(+), 3 deletions(-)
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_cursor.c
> > > b/drivers/gpu/drm/i915/display/intel_cursor.c
> > > index f8b33999d43f..0d3da55e1c24 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_cursor.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_cursor.c
> > > @@ -36,12 +36,10 @@ static u32 intel_cursor_base(const struct
> > > intel_plane_state *plane_state)  {
> > >  	struct drm_i915_private *dev_priv =
> > >  		to_i915(plane_state->uapi.plane->dev);
> > > -	const struct drm_framebuffer *fb = plane_state->hw.fb;
> > > -	struct drm_i915_gem_object *obj = intel_fb_obj(fb);
> > >  	u32 base;
> > > 
> > >  	if (DISPLAY_INFO(dev_priv)->cursor_needs_physical)
> > > -		base = i915_gem_object_get_dma_address(obj, 0);
> > > +		base = plane_state->phys_dma_addr;
> > >  	else
> > >  		base = intel_plane_ggtt_offset(plane_state);
> > > 
> > > diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > index 8a35fb6b2ade..68f26a33870b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> > > +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> > > @@ -728,6 +728,7 @@ struct intel_plane_state {  #define PLANE_HAS_FENCE
> > > BIT(0)
> > > 
> > >  	struct intel_fb_view view;
> > > +	u32 phys_dma_addr; /* for cursor_needs_physical */
> > > 
> > >  	/* Plane pxp decryption state */
> > >  	bool decrypt;
> > > diff --git a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > > b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > > index 7b42aef37d2f..b6df9baf481b 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_fb_pin.c
> > > @@ -255,6 +255,16 @@ int intel_plane_pin_fb(struct intel_plane_state
> > > *plane_state)
> > >  			return PTR_ERR(vma);
> > > 
> > >  		plane_state->ggtt_vma = vma;
> > > +
> > > +		/*
> > > +		 * Pre-populate the dma address before we enter the vblank
> > > +		 * evade critical section as
> > > i915_gem_object_get_dma_address()
> > > +		 * will trigger might_sleep() even if it won't actually sleep,
> > > +		 * which is the case when the fb has already been pinned.
> > > +		 */
> > > +		if (phys_cursor)
> > > +			plane_state->phys_dma_addr =
> > > +
> > > 	i915_gem_object_get_dma_address(intel_fb_obj(fb), 0);
> > >  	} else {
> > >  		struct intel_framebuffer *intel_fb = to_intel_framebuffer(fb);
> > > 
> > > --
> > > 2.43.2
> > 
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
