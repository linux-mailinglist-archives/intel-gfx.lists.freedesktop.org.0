Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E565A928D19
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 19:39:28 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADA7F10E1C4;
	Fri,  5 Jul 2024 17:39:26 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="CPwhiSev";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A939810E1C4
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2024 17:39:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720201166; x=1751737166;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=BlCcx9pXXyLozWZ87Taf7Vb8Ro8XPcDNucW3Euv+d1o=;
 b=CPwhiSevg99zIchkoaEeqG/uzlvq1lJFIk2h9N8Qlh5gBJ3a2zGyCsa9
 IwdXsG9c/kBBrWOOMOM6r+21mg9RaMS0MtEe9bABJKqxU71hnXxNw89kP
 UuvJeZMUP+3jF3I6+4MlU6DwO9cSmQd8sWad3Ubz+tk5+PLio3ITnhpuK
 Sx48WRv6JiYxqvPrXpn1EDfsQtwS775gIlp6mi1MNW7wLB4cIJ77Kngqr
 RVvc06T2drQ2Dg8GIoo31VFCmMgCg/ceqR0oRTwa+RcDtghoix26zYV6a
 GTA/t7+z7bvzmVXsAflj2mKxvr+mou1qWdDex3tOt8sSpI5+6TrWgxYdD w==;
X-CSE-ConnectionGUID: HLdLXgRUQ7GUD6gIm5m8pg==
X-CSE-MsgGUID: TNdMYJHUQWeiEl438y4oqg==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17629972"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17629972"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 10:39:26 -0700
X-CSE-ConnectionGUID: bDapKhviRjelXf+UuboUtg==
X-CSE-MsgGUID: Bozy2WzFRSmGGX4ufO0ifA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46896683"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 10:39:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 20:39:22 +0300
Date: Fri, 5 Jul 2024 20:39:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to use
 DSB_WAIT_FOR_VBLANK
Message-ID: <ZogvyhAqaZc11zyw@intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-12-ville.syrjala@linux.intel.com>
 <PH7PR11MB59817808A0D51050365D665FF9DF2@PH7PR11MB5981.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH7PR11MB59817808A0D51050365D665FF9DF2@PH7PR11MB5981.namprd11.prod.outlook.com>
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

On Fri, Jul 05, 2024 at 03:58:32PM +0000, Manna, Animesh wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Tuesday, June 25, 2024 12:40 AM
> > To: intel-gfx@lists.freedesktop.org
> > Subject: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to use
> > DSB_WAIT_FOR_VBLANK
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Allow intel_dsb_chain() to start the chained DSB
> > at start of the undelaye vblank. This is slightly
> > more involved than simply setting the bit as we
> > must use the DEwake mechanism to eliminate pkgC
> > latency.
> > 
> > And DSB_ENABLE_DEWAKE itself is problematic in that
> > it allows us to configure just a single scanline,
> > and if the current scanline is already past that
> > DSB_ENABLE_DEWAKE won't do anything, rendering the
> > whole thing moot.
> > 
> > The current workaround involves checking the pipe's current
> > scanline with the CPU, and if it looks like we're about to
> > miss the configured DEwake scanline we set DSB_FORCE_DEWAKE
> > to immediately assert DEwake. This is somewhat racy since the
> > hardware is making progress all the while we're checking it on
> > the CPU.
> > 
> > We can make things less racy by chaining two DSBs and handling
> > the DSB_FORCE_DEWAKE stuff entirely without CPU involvement:
> > 1. CPU starts the first DSB immediately
> > 2. First DSB configures the second DSB, including its dewake_scanline
> > 3. First DSB starts the second w/ DSB_WAIT_FOR_VBLANK
> > 4. First DSB asserts DSB_FORCE_DEWAKE
> > 5. First DSB waits until we're outside the dewake_scanline-vblank_start
> >    window
> > 6. First DSB deasserts DSB_FORCE_DEWAKE
> > 
> > That will guarantee that the we are fully awake when the second
> > DSB starts to actually execute.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_dsb.c | 43 +++++++++++++++++++++---
> >  drivers/gpu/drm/i915/display/intel_dsb.h |  3 +-
> >  2 files changed, 40 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > index 4c0519c41f16..cf710f0bf430 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > @@ -130,8 +130,8 @@ static int dsb_vtotal(struct intel_atomic_state *state,
> >  		return intel_mode_vtotal(&crtc_state->hw.adjusted_mode);
> >  }
> > 
> > -static int dsb_dewake_scanline(struct intel_atomic_state *state,
> > -			       struct intel_crtc *crtc)
> > +static int dsb_dewake_scanline_start(struct intel_atomic_state *state,
> > +				     struct intel_crtc *crtc)
> >  {
> >  	const struct intel_crtc_state *crtc_state =
> > pre_commit_crtc_state(state, crtc);
> >  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> > @@ -141,6 +141,14 @@ static int dsb_dewake_scanline(struct
> > intel_atomic_state *state,
> >  		intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
> > latency);
> >  }
> > 
> > +static int dsb_dewake_scanline_end(struct intel_atomic_state *state,
> > +				   struct intel_crtc *crtc)
> > +{
> > +	const struct intel_crtc_state *crtc_state =
> > pre_commit_crtc_state(state, crtc);
> > +
> > +	return intel_mode_vdisplay(&crtc_state->hw.adjusted_mode);
> > +}
> > +
> >  static int dsb_scanline_to_hw(struct intel_atomic_state *state,
> >  			      struct intel_crtc *crtc, int scanline)
> >  {
> > @@ -529,19 +537,44 @@ static void _intel_dsb_chain(struct
> > intel_atomic_state *state,
> >  			    dsb_error_int_status(display) |
> > DSB_PROG_INT_STATUS |
> >  			    dsb_error_int_en(display));
> > 
> > +	if (ctrl & DSB_WAIT_FOR_VBLANK) {
> > +		int dewake_scanline = dsb_dewake_scanline_start(state,
> > crtc);
> > +		int hw_dewake_scanline = dsb_scanline_to_hw(state, crtc,
> > dewake_scanline);
> > +
> > +		intel_dsb_reg_write(dsb, DSB_PMCTRL(pipe, chained_dsb-
> > >id),
> > +				    DSB_ENABLE_DEWAKE |
> > +
> > DSB_SCANLINE_FOR_DEWAKE(hw_dewake_scanline));
> > +	}
> > +
> >  	intel_dsb_reg_write(dsb, DSB_HEAD(pipe, chained_dsb->id),
> >  			    intel_dsb_buffer_ggtt_offset(&chained_dsb-
> > >dsb_buf));
> > 
> >  	intel_dsb_reg_write(dsb, DSB_TAIL(pipe, chained_dsb->id),
> >  			    intel_dsb_buffer_ggtt_offset(&chained_dsb-
> > >dsb_buf) + tail);
> > +
> > +	if (ctrl & DSB_WAIT_FOR_VBLANK) {
> > +		/*
> > +		 * Keep DEwake alive via the first DSB, in
> > +		 * case we're already past dewake_scanline,
> > +		 * and thus DSB_ENABLE_DEWAKE on the second
> > +		 * DSB won't do its job.
> > +		 */
> > +		intel_dsb_reg_write_masked(dsb, DSB_PMCTRL_2(pipe, dsb-
> > >id),
> > +					   DSB_FORCE_DEWAKE,
> > DSB_FORCE_DEWAKE);
> > +
> > +		intel_dsb_wait_scanline_out(state, dsb,
> > +					    dsb_dewake_scanline_start(state,
> > crtc),
> > +					    dsb_dewake_scanline_end(state,
> > crtc));
> > +	}
> >  }
> > 
> >  void intel_dsb_chain(struct intel_atomic_state *state,
> >  		     struct intel_dsb *dsb,
> > -		     struct intel_dsb *chained_dsb)
> > +		     struct intel_dsb *chained_dsb,
> > +		     bool wait_for_vblank)
> >  {
> >  	_intel_dsb_chain(state, dsb, chained_dsb,
> > -			 0);
> > +			 wait_for_vblank ? DSB_WAIT_FOR_VBLANK : 0);
> 
> As per commit description and current implementation always need DSB_WAIT_FOR_VBLANK. Just wondering is there any scenario where will pass false through wait_for_vblank flag to  intel_dsb_chain()? If no can we drop the wait_for_vblank flag?

Shrug. For now I wanted to model it on intel_dsb_commit().
I'm actually thinking of removing the wait_for_vblank stuff
from intel_dsb_commit() after this lands. We could think about
making the wait_for_vblank unconditional for intel_dsb_chain()
at that point, assuming no one comes up with a use case for
the immediate start version.

-- 
Ville Syrjälä
Intel
