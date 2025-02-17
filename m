Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C5C74A37BA8
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 07:45:51 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B8D3D10E371;
	Mon, 17 Feb 2025 06:45:49 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="mfsyTlj2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C74B610E142;
 Mon, 17 Feb 2025 06:45:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739774748; x=1771310748;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ej9HZstJYG9/G7q53cNVQ8BclvFxEqBqCzcS2va9j+8=;
 b=mfsyTlj2hxxPKZQHZEwzUE5C/gjbF7csBHVAYOKPBG/iRfjBdvYFtv8/
 oLy4J7/ZOX0VWLnZCyJ2jnzFqpTAbEAJ5g24r7npO7da5Ybc7a5qnOYp1
 e2zLme5/V3xMjn1yjMp2ZmVF4j2GAxhVYEBWY1WiimfczaXcRvReNa0X2
 hQTmNlikGBRzs5ONBfBiw6uqqzHS6ulB3gguBGOnaor27NzGeZfIKmMpO
 ukseWXoMn+wkxCGLvODRM47rAsbcwWIsCtgkpyEhteORu7ip3446FEZ9u
 0XfWG/H8dnA2hDCBxxgChLNGVXDa2epcloEOwQz2mfY1uIFdsdX5ZBa6J Q==;
X-CSE-ConnectionGUID: R4APCLTqQFGmi/q3g05UTg==
X-CSE-MsgGUID: HtuGQvnFRNOgZaL4fS7NHA==
X-IronPort-AV: E=McAfee;i="6700,10204,11347"; a="51429319"
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="51429319"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Feb 2025 22:45:42 -0800
X-CSE-ConnectionGUID: Yd8H5lBGRrCTJrZmHynv+w==
X-CSE-MsgGUID: EZy8+rtjSNelQcKOwkKImg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,292,1732608000"; d="scan'208";a="114230271"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 16 Feb 2025 22:45:35 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 08:45:34 +0200
Date: Mon, 17 Feb 2025 08:45:34 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Cc: "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "Saarinen, Jani" <jani.saarinen@intel.com>,
 "Reddy Guddati, Santhosh" <santhosh.reddy.guddati@intel.com>,
 "Syrjala, Ville" <ville.syrjala@intel.com>
Subject: Re: [PATCH v1 8/8] drm/i915/fbc: handle dirty rect coords for the
 first frame
Message-ID: <Z7LbDvQuMXPTncGK@intel.com>
References: <20250213132559.136815-1-vinod.govindapillai@intel.com>
 <20250216200906.266532-1-vinod.govindapillai@intel.com>
 <ec66cadd32ae2be4a944f845b7dc84a11e058487.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ec66cadd32ae2be4a944f845b7dc84a11e058487.camel@intel.com>
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

On Sun, Feb 16, 2025 at 08:16:44PM +0000, Govindapillai, Vinod wrote:
> Hi Ville,
> 
> During some testing I noticed that for the very first frame while enabling we wouldnt have executed
> the intel_fbc_prepare_dirty_rect() as fbc_state->plane will be NULL. So we will end-up programming
> wrong values for the first frame. And for the very first frame after the boot it will be completely
> bogus! Added this patch to the list and if you could Ack this, then I can squash this patch to the
> fbc dirty rect patch (patch 6) in the list
> 
> Br
> Vinod
> 
> 
> On Sun, 2025-02-16 at 22:09 +0200, Vinod Govindapillai wrote:
> > During enablig FBC, for the very first frame, the prepare dirty
> > rect routine wouldnt have executed as at that time the plane
> > reference in the fbc_state would be NULL. So this could make
> > driver program some invalid entries as the damage area. Though
> > fbc hw ignores the dirty rect values programmed for the first
> > frame after enabling FBC, driver must ensure that valid dirty
> > rect coords are programmed. So ensure that for the first frame
> > prepare dirty rect is called at the time enabling FBC.
> > 
> > Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_fbc.c | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> > index 6222eea4b1ce..21fd57c7f163 100644
> > --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> > +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> > @@ -1230,6 +1230,8 @@ intel_fbc_dirty_rect_update(struct intel_dsb *dsb, struct intel_fbc *fbc)
> >  
> >  	lockdep_assert_held(&fbc->lock);
> >  
> > +	drm_WARN_ON(display->drm, fbc_dirty_rect->y2 == 0);
> > +
> >  	intel_de_write_dsb(display, dsb, XE3_FBC_DIRTY_RECT(fbc->id),
> >  			   FBC_DIRTY_RECT_START_LINE(fbc_dirty_rect->y1) |
> >  			   FBC_DIRTY_RECT_END_LINE(fbc_dirty_rect->y2 - 1));
> > @@ -1313,6 +1315,13 @@ static void intel_fbc_update_state(struct intel_atomic_state *state,
> >  	WARN_ON(plane_state->no_fbc_reason);
> >  	WARN_ON(fbc_state->plane && fbc_state->plane != plane);
> >  
> > +	/*
> > +	 * For the very first frame while enabling FBC, ensure that we have a
> > +	 * valid dirty rect coords.
> > +	 */
> > +	if (HAS_FBC_DIRTY_RECT(display) && !fbc_state->plane)
> > +		__intel_fbc_prepare_dirty_rect(plane_state);

I don't think this will do quite the right thing when
using the DSB for the commit.

I think to make it more correct we'd have to do somethig like this
perhaps:
- invalidate fbc_state->dirty rect in intel_fbc_prepare_dirty_rect()
  if we are going to call __intel_fbc_disable() later, which
  I think would happen for
  'crtc_needs_modeset() || !intel_fbc_is_ok()'
- probably invalidate fbc_state->dirty_rect in
  __intel_fbc_disable() as well for good measure (in case we call
  it outside the normal commit path, ie. due to underruns).
- program some kind of valid dirty rectangle directly from
  __intel_fbc_enable()
- skip the dirty rectangle programming in
  intel_fbc_dirty_rect_update_noarm() if the dirty rectangle
  is invalid

That way we reprogram the dirty rect from noarm only if FBC
is guaranteed to stay on its current plane, and we should
end up programming it the same way regardless of whether we
use DSB or MMIO for the commit.

> > +
> >  	fbc_state->plane = plane;
> >  
> >  	/* FBC1 compression interval: arbitrary choice of 1 second */
> 

-- 
Ville Syrjälä
Intel
