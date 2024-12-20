Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 587C89F8E93
	for <lists+intel-gfx@lfdr.de>; Fri, 20 Dec 2024 10:05:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id EC2D710EF2D;
	Fri, 20 Dec 2024 09:05:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PH1RyLWO";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7626310EF2D;
 Fri, 20 Dec 2024 09:05:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734685502; x=1766221502;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=O89kC78bTLmzvylw9+DotOAgyjstdZukqUA7qyYC2bg=;
 b=PH1RyLWO7FIYX+0T5Bj79CwHn4uh5nqaKeSvzgSPt0/lQh+ZaExbFivp
 Od2s04LEdhYzB9fLAlvGzWWoIUWaHYHnQks7Gqo8PzPuvXTlKL4UDWjCP
 VyKH8tiw/Rv2qDgvzpzvIwmp6ZfIgK4FxZ2KXFz51bGCptpgi4oYKd7yh
 kFn3UJNQ1OdSVoEm7bdh/E51Ci1h32MsJ2lcD71/WUfRpdPzUpSo/djpx
 n6e3JoB/KNH42aVE8V/X9G1xF7Q1AlGSnDHrNuUrd3MRdLwXyNBHtllCy
 zvP9pKWVmW/sQdY+o+FzrT56FfK90/o+gXljjBPrSl3+CZlILZiJ6ERYo Q==;
X-CSE-ConnectionGUID: 6dOynS94R5mOjjDryh1YJQ==
X-CSE-MsgGUID: X5WFXF9wTK22sZJ+Qk9G5Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11291"; a="60612319"
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="60612319"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Dec 2024 01:05:02 -0800
X-CSE-ConnectionGUID: X5DUZ4UPTpuKkQg9sWFtig==
X-CSE-MsgGUID: RAtkq6/xQQOm6m+fQE1CKQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,250,1728975600"; d="scan'208";a="98655873"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 20 Dec 2024 01:04:59 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 20 Dec 2024 11:04:58 +0200
Date: Fri, 20 Dec 2024 11:04:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 1/2] drm/i915/display: After joiner compute pfit_dst
Message-ID: <Z2UzOhulIWgjP7oL@intel.com>
References: <20241212143329.938202-1-nemesa.garg@intel.com>
 <20241212143329.938202-2-nemesa.garg@intel.com>
 <Z2RDkcPdNv5vMJOl@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z2RDkcPdNv5vMJOl@intel.com>
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

On Thu, Dec 19, 2024 at 06:02:25PM +0200, Ville Syrjälä wrote:
> On Thu, Dec 12, 2024 at 08:03:28PM +0530, Nemesa Garg wrote:
> > In panel fitter/pipe scaler scenario the pch_pfit configuration
> > currently takes place before accounting for pipe_src width for
> > joiner. This causes issue when pch_pfit and joiner get enabled
> > together.So once pipe src is computed adjust the pfit_dst.
> > It can be done by computing per pipe output area first and then
> > and then find the intersection of above area with pfit_dst and
> > then adjust the coordinates.
> > 
> > Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 41 ++++++++++++++++++++
> >  1 file changed, 41 insertions(+)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index 21319f753a34..7be2ea11b8b0 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -2563,6 +2563,36 @@ static int intel_crtc_compute_pipe_src(struct intel_crtc_state *crtc_state)
> >  	return 0;
> >  }
> >  
> > +/*
> > + * The x-coordinate for Primary should be calculated in such a way
> > + * that it remains consistent whether the pipes are joined or not.
> > + * This means we need to consider the full width of the display even
> > + * when the pipes are joined. The x-coordinate for secondaries is 0
> > + * because it starts at the leftmost point of its own display area,
> > + * ensuring that the framebuffer is centered within Pipe B’s portion
> > + * of the overall display.
> > + */
> > +static int intel_crtc_compute_pfit(struct intel_atomic_state *state,
> > +				   struct intel_crtc_state *crtc_state)
> > +{
> > +	struct drm_display_mode *mode = &crtc_state->hw.pipe_mode;
> 
> const struct drm_display_mode *pipe_mode = ...
> 
> > +	struct drm_rect area;
> > +
> > +	if (!crtc_state->pch_pfit.enabled)
> > +		return 0;
> > +
> > +	drm_rect_init(&area, 0, 0,
> 
> This needs a proper x offset to match the pipe's positon in
> the overall screen layout (can be determined similarly to
> intel_joiner_adjust_pipe_src(), except using crtc_hdisplay
> as the width instead of the pipe_src width).
> 
> > +		      mode->crtc_hdisplay,
> > +		      mode->crtc_vdisplay);
> > +
> > +	if (!drm_rect_intersect(&crtc_state->pch_pfit.dst, &area))
> > +		return -EINVAL;
> > +
> > +	drm_rect_translate(&crtc_state->pch_pfit.dst, -area.x1, -area.y1);
> 
> And this needs to remove the same offset we added originally.

Hmm. Now that I looked at this a bit I think we need a lot
more than this to make things actually work correctly.

I think what we need is roughly:
- move pipesrc/pfit.dst/pixel_rate calculations out from
  intel_crtc_compute_config() into some new function (could
  call it something like intel_crtc_compute_config_final(())
  which needs to be called after the joiner state copy has been
  performed (ie. where we now call intel_joiner_adjust_pipe_src()
  in intel_atomic_check()).
- redesign the pipesrc readout to iterate through all the joined
  pipes to accumulate the x offset for the pipes, since not all
  the joined pipes necessarily have the same pipesrc width
- reuse the same for the uapi.mode hdisplay/vdisplay fixup
- steal the scaled clipping code from
  intel_atomic_plane_check_clipping() to properly calculate
  both pipesrc and pfit.dst

-- 
Ville Syrjälä
Intel
