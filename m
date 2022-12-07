Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EDF0645D3A
	for <lists+intel-gfx@lfdr.de>; Wed,  7 Dec 2022 16:06:27 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7874389ABE;
	Wed,  7 Dec 2022 15:06:25 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2081589ABE
 for <intel-gfx@lists.freedesktop.org>; Wed,  7 Dec 2022 15:06:21 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1670425581; x=1701961581;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=oOtly/rCaVzmm0j8z0PYDRtMBNBX1kqoVQlMaCcOev0=;
 b=YqivPqnDOEP2Q/BUw1eQtpyNNHCspcxOGSerPvYS752ErLsOHOIl0Pb4
 L2jyj0KQajAcSmAE//lbQ0Gmaj/c7HH/EP59Bl7mMhbOfvi6/Wto/FMXF
 hcWbx3EC8lJWBI+1kH+FwypnhXB6WxwM8rWl6R7WH5zS/UOtOWPQg+Q41
 xC6kT40FGUBCalXQkpufkDkHlGk7PDWgBLFUlGY26F2JxbIJ1ae026IsV
 KlFigDYNZQ7cbMnfVp7pxLsAZDkjpElmAXf3EiiPljrDTXxvy+817/xpZ
 /pPKeG4VoBpB8LKc9XfVdIuKehSDgMVS4J3ZmtIfysEjblcLWlpsKoCA7 g==;
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="296604837"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="296604837"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Dec 2022 07:06:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10553"; a="753129129"
X-IronPort-AV: E=Sophos;i="5.96,225,1665471600"; d="scan'208";a="753129129"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga002.fm.intel.com with SMTP; 07 Dec 2022 07:06:11 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 07 Dec 2022 17:06:10 +0200
Date: Wed, 7 Dec 2022 17:06:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Navare, Manasi" <manasi.d.navare@intel.com>
Message-ID: <Y5Cr4ro8OQjDqeMD@intel.com>
References: <20221202134412.21943-1-ville.syrjala@linux.intel.com>
 <20221202134412.21943-2-ville.syrjala@linux.intel.com>
 <20221205201309.GA1208376@mdnavare-mobl1.jf.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221205201309.GA1208376@mdnavare-mobl1.jf.intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 1/4] drm/i915/vrr: Make registers latch in a
 consitent place on icl/tgl
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

On Mon, Dec 05, 2022 at 12:13:09PM -0800, Navare, Manasi wrote:
> On Fri, Dec 02, 2022 at 03:44:09PM +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Account for the framestart delay when calculating the "pipeline full"
> > value for icl/tgl vrr. This puts the start of vblank (ie. where the
> > double bufferd registers get latched) to a consistent place regardless
> > of what framestart delay value is used. framestart delay does not
> > change where start of vblank occurs in non-vrr mode and I can't see
> > any reason why we'd want different behaviour in vrr mode.
> > 
> > Currently framestart delay is always set to 1, and the hardcoded 4
> > scanlines in the code means we're currently delaying the start of
> > vblank by three extra lines. And with framestart delay set to 4 we'd
> > have no extra delay.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> 
> So now basically if we want to delay the vblank, then we will need to
> update framestart_delay to somethin other than 1.

No. framestart_delay does not affect where vblank starts. Or rather
it's not supposed to, but before this patch it was was affect when
VRR was enabled.

> Currently with framestart_delay = 1, there is no vblank delay, its just
> vrr.vmin - vdisplay so the vblank start right after?
> 
> Is this the correct understanding?
> 
> Anyway, if this logic is validated to work then should be fine.
> Basically this will only impact display <13, so as long as we dont
> regress anything on TGL then we should be good.
> 
> Reviewed-by: Manasi Navare <manasi.d.navare@intel.com>
> 
> Manasi
> 
> > ---
> >  drivers/gpu/drm/i915/display/intel_vrr.c | 13 ++-----------
> >  1 file changed, 2 insertions(+), 11 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 7b1357e82b69..6655dd2c1684 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -153,18 +153,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> >  		crtc_state->vrr.guardband =
> >  			crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay;
> >  	} else {
> > -		/*
> > -		 * FIXME: s/4/framestart_delay/ to get consistent
> > -		 * earliest/latest points for register latching regardless
> > -		 * of the framestart_delay used?
> > -		 *
> > -		 * FIXME: this really needs the extra scanline to provide consistent
> > -		 * behaviour for all framestart_delay values. Otherwise with
> > -		 * framestart_delay==4 we will end up extending the min vblank by
> > -		 * one extra line.
> > -		 */
> >  		crtc_state->vrr.pipeline_full =
> > -			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay - 4 - 1);
> > +			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vdisplay -
> > +			    crtc_state->framestart_delay - 1);
> >  	}
> >  
> >  	crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> > -- 
> > 2.37.4
> > 

-- 
Ville Syrjälä
Intel
