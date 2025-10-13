Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BE6ABD61E7
	for <lists+intel-gfx@lfdr.de>; Mon, 13 Oct 2025 22:35:30 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id DD88010E54D;
	Mon, 13 Oct 2025 20:35:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="aWDxGl+H";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D814310E560;
 Mon, 13 Oct 2025 20:35:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1760387727; x=1791923727;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=h3aA3GMdcF/pFQU0CJDB9tdNRnZDhrAr8vsKG00lsBg=;
 b=aWDxGl+Hfkw+iaDjWtgO5ahTHFiQav16wTvw99f78mfLsILELCy6H4D0
 oj21SBcY1QslS6N24VoxlG7hQqKdaa/RqLqFU3eUnoN7g0RzZLImRYe5G
 VFOnj2FJfzeQgnfEECGPZJmCSH/VaB6mEWazYyVJBMoBX0oTV74qhj4cP
 YOmxQ3iYfJ38gA8pxHDBG4X6TY93JtGmKl0rGgoIlqIrUnCEz/CRz03vZ
 hZck5t9CCuZDDKmGsathGtJ/0qNgBDJuzOdQ4Ql/yNy1TCqnkIN23l20P
 P5+Wkhsjz4HmLuIpbkmWhfIBJPND4H2u2nzuy1UDdUTTjfshzsRLYrO1+ Q==;
X-CSE-ConnectionGUID: 2tOHBkhyQCmZUQ76Zgq/pQ==
X-CSE-MsgGUID: +ATMAI+QQfSh2VcU2pnTjA==
X-IronPort-AV: E=McAfee;i="6800,10657,11581"; a="72802245"
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="72802245"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:35:27 -0700
X-CSE-ConnectionGUID: 0eSDbwd+SyiHGq2ujE7S3A==
X-CSE-MsgGUID: v1v8TjW0Tki7hjTW2vcycg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,226,1754982000"; d="scan'208";a="181254368"
Received: from smoticic-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.105])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2025 13:35:25 -0700
Date: Mon, 13 Oct 2025 23:35:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Shankar, Uma" <uma.shankar@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>,
 "intel-xe@lists.freedesktop.org" <intel-xe@lists.freedesktop.org>
Subject: Re: [RFC][PATCH 07/11] drm/i915: Introduce
 intel_compute_global_watermarks_late()
Message-ID: <aO1iikBS2VJait84@intel.com>
References: <20251008182559.20615-1-ville.syrjala@linux.intel.com>
 <20251008182559.20615-8-ville.syrjala@linux.intel.com>
 <DM4PR11MB63602F44FE09479C15AF92EFF4EAA@DM4PR11MB6360.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <DM4PR11MB63602F44FE09479C15AF92EFF4EAA@DM4PR11MB6360.namprd11.prod.outlook.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Mon, Oct 13, 2025 at 06:36:07PM +0000, Shankar, Uma wrote:
> 
> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Wednesday, October 8, 2025 11:56 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: intel-xe@lists.freedesktop.org
> > Subject: [RFC][PATCH 07/11] drm/i915: Introduce
> > intel_compute_global_watermarks_late()
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Add a late watermarks computation stage for skl+. Need this (temporarily
> > perhaps) to get the final cdclk values into skl_wm_check_vblank().
> > 
> > But the order is actually wrong now for SAGV. For SAGV we want to first do
> > skl_wm_check_vblank(), then copute crttc_state->use_sagv_wm, and then do
> 
> Nit: Typo in crtc
> 
> > intel_bw_atomic_check().
> > 
> > Scalers are completely borked as far as skl_wm_check_vblank() goes as well.
> > 
> > TODO: just a hack really, need to figure out the correct order
> >       for real
> 
> We can go with hack for now and take up the re-factoring later to sort out the correct order.

I just send a series that should solve this particular problem
as far as the cdclk goes:
https://patchwork.freedesktop.org/series/155860/

I still need to rebase this prefill stuff on top of it, at
which point I should know for sure whether it really fixes
the order or not.

> Reviewed-by: Uma Shankar <uma.shankar@intel.com>
> 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  4 ++
> > .../gpu/drm/i915/display/intel_display_core.h |  1 +
> >  drivers/gpu/drm/i915/display/intel_wm.c       | 10 +++++
> >  drivers/gpu/drm/i915/display/intel_wm.h       |  1 +
> >  drivers/gpu/drm/i915/display/skl_watermark.c  | 38 ++++++++++++++++---
> >  5 files changed, 48 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index afa78774eaeb..54ed36183ebe 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -6455,6 +6455,10 @@ int intel_atomic_check(struct drm_device *dev,
> >  			return ret;
> >  	}
> > 
> > +	ret = intel_compute_global_watermarks_late(state);
> > +	if (ret)
> > +		goto fail;
> > +
> >  	ret = intel_pmdemand_atomic_check(state);
> >  	if (ret)
> >  		goto fail;
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_core.h
> > b/drivers/gpu/drm/i915/display/intel_display_core.h
> > index df4da52cbdb3..62bd894a72f9 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_core.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_core.h
> > @@ -89,6 +89,7 @@ struct intel_wm_funcs {
> >  	void (*optimize_watermarks)(struct intel_atomic_state *state,
> >  				    struct intel_crtc *crtc);
> >  	int (*compute_global_watermarks)(struct intel_atomic_state *state);
> > +	int (*compute_global_watermarks_late)(struct intel_atomic_state
> > +*state);
> >  	void (*get_hw_state)(struct intel_display *display);
> >  	void (*sanitize)(struct intel_display *display);  }; diff --git
> > a/drivers/gpu/drm/i915/display/intel_wm.c
> > b/drivers/gpu/drm/i915/display/intel_wm.c
> > index f887a664fe22..3035d9879d83 100644
> > --- a/drivers/gpu/drm/i915/display/intel_wm.c
> > +++ b/drivers/gpu/drm/i915/display/intel_wm.c
> > @@ -104,6 +104,16 @@ int intel_compute_global_watermarks(struct
> > intel_atomic_state *state)
> >  	return 0;
> >  }
> > 
> > +int intel_compute_global_watermarks_late(struct intel_atomic_state
> > +*state) {
> > +	struct intel_display *display = to_intel_display(state);
> > +
> > +	if (display->funcs.wm->compute_global_watermarks_late)
> > +		return display->funcs.wm-
> > >compute_global_watermarks_late(state);
> > +
> > +	return 0;
> > +}
> > +
> >  void intel_wm_get_hw_state(struct intel_display *display)  {
> >  	if (display->funcs.wm->get_hw_state)
> > diff --git a/drivers/gpu/drm/i915/display/intel_wm.h
> > b/drivers/gpu/drm/i915/display/intel_wm.h
> > index 9ad4e9eae5ca..9f69dc5dfda5 100644
> > --- a/drivers/gpu/drm/i915/display/intel_wm.h
> > +++ b/drivers/gpu/drm/i915/display/intel_wm.h
> > @@ -24,6 +24,7 @@ void intel_atomic_update_watermarks(struct
> > intel_atomic_state *state,  void intel_optimize_watermarks(struct
> > intel_atomic_state *state,
> >  			       struct intel_crtc *crtc);
> >  int intel_compute_global_watermarks(struct intel_atomic_state *state);
> > +int intel_compute_global_watermarks_late(struct intel_atomic_state
> > +*state);
> >  void intel_wm_get_hw_state(struct intel_display *display);  void
> > intel_wm_sanitize(struct intel_display *display);  bool
> > intel_wm_plane_visible(const struct intel_crtc_state *crtc_state, diff --git
> > a/drivers/gpu/drm/i915/display/skl_watermark.c
> > b/drivers/gpu/drm/i915/display/skl_watermark.c
> > index aac3ca8f6c0f..5c18fe9a5237 100644
> > --- a/drivers/gpu/drm/i915/display/skl_watermark.c
> > +++ b/drivers/gpu/drm/i915/display/skl_watermark.c
> > @@ -2433,7 +2433,7 @@ static int skl_build_pipe_wm(struct intel_atomic_state
> > *state,
> > 
> >  	crtc_state->wm.skl.optimal = crtc_state->wm.skl.raw;
> > 
> > -	return skl_wm_check_vblank(crtc_state);
> > +	return 0;
> >  }
> > 
> >  static bool skl_wm_level_equals(const struct skl_wm_level *l1, @@ -3002,11
> > +3002,6 @@ skl_compute_wm(struct intel_atomic_state *state)
> >  	if (ret)
> >  		return ret;
> > 
> > -	/*
> > -	 * skl_compute_ddb() will have adjusted the final watermarks
> > -	 * based on how much ddb is available. Now we can actually
> > -	 * check if the final watermarks changed.
> > -	 */
> >  	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> >  		struct skl_pipe_wm *pipe_wm = &new_crtc_state-
> > >wm.skl.optimal;
> > 
> > @@ -3030,6 +3025,36 @@ skl_compute_wm(struct intel_atomic_state *state)
> >  		pipe_wm->use_sagv_wm = !HAS_HW_SAGV_WM(display) &&
> >  			DISPLAY_VER(display) >= 12 &&
> >  			intel_crtc_can_enable_sagv(new_crtc_state);
> > +	}
> > +
> > +	return 0;
> > +}
> > +
> > +static int
> > +skl_compute_wm_late(struct intel_atomic_state *state) {
> > +	struct intel_crtc *crtc;
> > +	struct intel_crtc_state __maybe_unused *new_crtc_state;
> > +	int i;
> > +
> > +	for_each_new_intel_crtc_in_state(state, crtc, new_crtc_state, i) {
> > +		int ret;
> > +
> > +		/*
> > +		 * FIXME we need something along the lins of the following order:
> > +		 * 1. intel_atomic_setup_scalers() (needed by
> > skl_wm_check_vblank())
> > +		 * 2. intel_modeset_calc_cdclk() (needed by
> > skl_wm_check_vblank())
> > +		 * 3. skl_compute_wm() (skl_wm_check_vblank() + update
> > use_sagv_wm)
> > +		 * 4. intel_bw_atomic_check() (needs use_sagv_wm)
> > +		 * but shuffling all that needs a lot more work...
> > +		 *
> > +		 * For now hack it by deferreing skl_wm_check_vblank() until
> > +		 * intel_modeset_calc_cdclk() has been done. Scalers are still
> > +		 * completely broken wrt. skl_wm_check_vblank().
> > +		 */
> > +		ret = skl_wm_check_vblank(new_crtc_state);
> > +		if (ret)
> > +			return ret;
> > 
> >  		ret = skl_wm_add_affected_planes(state, crtc);
> >  		if (ret)
> > @@ -4060,6 +4085,7 @@ void intel_wm_state_verify(struct intel_atomic_state
> > *state,
> > 
> >  static const struct intel_wm_funcs skl_wm_funcs = {
> >  	.compute_global_watermarks = skl_compute_wm,
> > +	.compute_global_watermarks_late = skl_compute_wm_late,
> >  	.get_hw_state = skl_wm_get_hw_state,
> >  	.sanitize = skl_wm_sanitize,
> >  };
> > --
> > 2.49.1
> 

-- 
Ville Syrjälä
Intel
