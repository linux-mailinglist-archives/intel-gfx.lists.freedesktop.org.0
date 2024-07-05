Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id BE3CD928D10
	for <lists+intel-gfx@lfdr.de>; Fri,  5 Jul 2024 19:36:52 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60E4F10E0F0;
	Fri,  5 Jul 2024 17:36:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="nw5W1hV8";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id ACF8610E0F0
 for <intel-gfx@lists.freedesktop.org>; Fri,  5 Jul 2024 17:36:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1720201011; x=1751737011;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lRI6t6sN9Yy/gv7Ibq4UmrwJrQfojpDI7K3Nbszi7TU=;
 b=nw5W1hV812gvqzAMKZEijNuVs6LIyzZwJcCp+iewncAj1Kz2NqhnvEJk
 thOvL09dmmv4sNW1/vi8nskPVBs3+d2yQlevbGdMQ9xex6cdXOuV0QDNC
 DzC/EzgJinez5MEq7Vzm3FX23E7OwN+rdlqU9y/wwRKPr00YVXeWcKFCs
 lgVqbp8w1moZUnvAc3jbFmYH59/RQVeaCSbYnvuzBSN1TUnEkns5+tVQ3
 AObHdyLvZgs+CpBBlOVv9Og4W/mP7f/VVxdyPjvetkHm5hCGtkEJoU9fV
 16ybpsX3eTTw5G2Pit7+ZDa0c3LVn6j+kAe9zEeVV3PJUUEV972s1lzk7 A==;
X-CSE-ConnectionGUID: kfP270efSA+LDXkKwkIUMw==
X-CSE-MsgGUID: Lv3qRrGkQTCTVJxY3X+e4g==
X-IronPort-AV: E=McAfee;i="6700,10204,11123"; a="17629795"
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="17629795"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jul 2024 10:36:51 -0700
X-CSE-ConnectionGUID: /KX4undAQgCTPvofnLQrgA==
X-CSE-MsgGUID: NIos3pAoQKyhBvYV/fJrTg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,185,1716274800"; d="scan'208";a="46896150"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 05 Jul 2024 10:36:48 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 05 Jul 2024 20:36:47 +0300
Date: Fri, 5 Jul 2024 20:36:47 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Manna, Animesh" <animesh.manna@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to use
 DSB_WAIT_FOR_VBLANK
Message-ID: <ZogvL2qmPOMeXbo1@intel.com>
References: <20240624191032.27333-1-ville.syrjala@linux.intel.com>
 <20240624191032.27333-12-ville.syrjala@linux.intel.com>
 <PH7PR11MB59817808A0D51050365D665FF9DF2@PH7PR11MB5981.namprd11.prod.outlook.com>
 <PH7PR11MB5981221BB55DAD977C2F4CE7F9DF2@PH7PR11MB5981.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH7PR11MB5981221BB55DAD977C2F4CE7F9DF2@PH7PR11MB5981.namprd11.prod.outlook.com>
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

On Fri, Jul 05, 2024 at 04:09:43PM +0000, Manna, Animesh wrote:
> 
> 
> > -----Original Message-----
> > From: Manna, Animesh
> > Sent: Friday, July 5, 2024 9:29 PM
> > To: Ville Syrjala <ville.syrjala@linux.intel.com>; intel-
> > gfx@lists.freedesktop.org
> > Subject: RE: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to use
> > DSB_WAIT_FOR_VBLANK
> > 
> > 
> > 
> > > -----Original Message-----
> > > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of
> > Ville
> > > Syrjala
> > > Sent: Tuesday, June 25, 2024 12:40 AM
> > > To: intel-gfx@lists.freedesktop.org
> > > Subject: [PATCH 11/14] drm/i915/dsb: Allow intel_dsb_chain() to use
> > > DSB_WAIT_FOR_VBLANK
> > >
> > > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > >
> > > Allow intel_dsb_chain() to start the chained DSB
> > > at start of the undelaye vblank. This is slightly
> > > more involved than simply setting the bit as we
> > > must use the DEwake mechanism to eliminate pkgC
> > > latency.
> > >
> > > And DSB_ENABLE_DEWAKE itself is problematic in that
> > > it allows us to configure just a single scanline,
> > > and if the current scanline is already past that
> > > DSB_ENABLE_DEWAKE won't do anything, rendering the
> > > whole thing moot.
> > >
> > > The current workaround involves checking the pipe's current
> > > scanline with the CPU, and if it looks like we're about to
> > > miss the configured DEwake scanline we set DSB_FORCE_DEWAKE
> > > to immediately assert DEwake. This is somewhat racy since the
> > > hardware is making progress all the while we're checking it on
> > > the CPU.
> > >
> > > We can make things less racy by chaining two DSBs and handling
> > > the DSB_FORCE_DEWAKE stuff entirely without CPU involvement:
> > > 1. CPU starts the first DSB immediately
> > > 2. First DSB configures the second DSB, including its dewake_scanline
> > > 3. First DSB starts the second w/ DSB_WAIT_FOR_VBLANK
> > > 4. First DSB asserts DSB_FORCE_DEWAKE
> > > 5. First DSB waits until we're outside the dewake_scanline-vblank_start
> > >    window
> > > 6. First DSB deasserts DSB_FORCE_DEWAKE
> > >
> > > That will guarantee that the we are fully awake when the second
> > > DSB starts to actually execute.
> > >
> > > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > > ---
> > >  drivers/gpu/drm/i915/display/intel_dsb.c | 43 +++++++++++++++++++++---
> > >  drivers/gpu/drm/i915/display/intel_dsb.h |  3 +-
> > >  2 files changed, 40 insertions(+), 6 deletions(-)
> > >
> > > diff --git a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > index 4c0519c41f16..cf710f0bf430 100644
> > > --- a/drivers/gpu/drm/i915/display/intel_dsb.c
> > > +++ b/drivers/gpu/drm/i915/display/intel_dsb.c
> > > @@ -130,8 +130,8 @@ static int dsb_vtotal(struct intel_atomic_state
> > *state,
> > >  		return intel_mode_vtotal(&crtc_state->hw.adjusted_mode);
> > >  }
> > >
> > > -static int dsb_dewake_scanline(struct intel_atomic_state *state,
> > > -			       struct intel_crtc *crtc)
> > > +static int dsb_dewake_scanline_start(struct intel_atomic_state *state,
> > > +				     struct intel_crtc *crtc)
> > >  {
> > >  	const struct intel_crtc_state *crtc_state =
> > > pre_commit_crtc_state(state, crtc);
> > >  	struct drm_i915_private *i915 = to_i915(state->base.dev);
> > > @@ -141,6 +141,14 @@ static int dsb_dewake_scanline(struct
> > > intel_atomic_state *state,
> > >  		intel_usecs_to_scanlines(&crtc_state->hw.adjusted_mode,
> > > latency);
> > >  }
> > >
> > > +static int dsb_dewake_scanline_end(struct intel_atomic_state *state,
> > > +				   struct intel_crtc *crtc)
> > > +{
> > > +	const struct intel_crtc_state *crtc_state =
> > > pre_commit_crtc_state(state, crtc);
> > > +
> > > +	return intel_mode_vdisplay(&crtc_state->hw.adjusted_mode);
> > > +}
> > > +
> > >  static int dsb_scanline_to_hw(struct intel_atomic_state *state,
> > >  			      struct intel_crtc *crtc, int scanline)
> > >  {
> > > @@ -529,19 +537,44 @@ static void _intel_dsb_chain(struct
> > > intel_atomic_state *state,
> > >  			    dsb_error_int_status(display) |
> > > DSB_PROG_INT_STATUS |
> > >  			    dsb_error_int_en(display));
> > >
> > > +	if (ctrl & DSB_WAIT_FOR_VBLANK) {
> > > +		int dewake_scanline = dsb_dewake_scanline_start(state,
> > > crtc);
> > > +		int hw_dewake_scanline = dsb_scanline_to_hw(state, crtc,
> > > dewake_scanline);
> > > +
> > > +		intel_dsb_reg_write(dsb, DSB_PMCTRL(pipe, chained_dsb-
> > > >id),
> > > +				    DSB_ENABLE_DEWAKE |
> > > +
> > > DSB_SCANLINE_FOR_DEWAKE(hw_dewake_scanline));
> 
> One quick check: As per bspec DSB_PMCTRL  can be updated only before the DSB_CTRL register is programmed to enable the DSB engine. Here programming is done later, not sure if it causes any negative impact.

It seems to say that in a bunch of places, and then contradicts itself
in other places where it says to reprogram the registers from the DSB
commands themselves. A lot of the interesting bits are spread around
on byte boundaries, which implies they are very much meant to be
updated using DSB register writes with byte enables.

Anyways, I've not observed any behavioural differences when updating
this stuff before/after the DSB enable bit has been set. And IIRC some
DSB registers even stop working when the DSB is disabled (might have
been the head/tail pointers at least, not sure about the rest).
I do know DSB_PMCTRL_2 at least is accesible when the DSB is not
enabled, so technically we could reoder some of this at least. But
we'd need to double check the behaviour of each register to be sure
that it still works.

-- 
Ville Syrjälä
Intel
