Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F08FCA54F74
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 16:47:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6445689358;
	Thu,  6 Mar 2025 15:47:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="AFSMl+aC";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3A57310E2BF
 for <intel-gfx@lists.freedesktop.org>; Thu,  6 Mar 2025 15:47:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741276067; x=1772812067;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=qiz9SCdLlHRuwQwkVD2d1WngghrtQSUdTBYDjW6Aaqc=;
 b=AFSMl+aCROJFFiXDKnGHxiUklj+lbtZ0YqqClKclZBJ5x6/PwNxfzlcq
 g0q2SyX8AzIGA2qd8gbMGiGMx6DwrbwW8QzlK0U96u/R6+hj9vJeO1bFV
 vwL5pQ6f7m0A5GCFwMaZAzdjytac7Tu7+aYo2HRLOfaeKsAEmm5ohi3B4
 OHhsTLKrCOB2iCMAWKIq//l1RQU/upnqogyPTzFReoKR6F5PM+IOaQ9E6
 AoEcsTPVyfnw4p5jKOi3xYyk0+uBqVLLfFe40dsilSUCeNbBU9/eJ2noK
 ROLKgp3lMdFeFTOe3J+kyGJ6N1HTUOEI3590CCiWctExFfhmvmrY5Uxq6 g==;
X-CSE-ConnectionGUID: cHzu8Xc/Sbu7dZfAkxMB/g==
X-CSE-MsgGUID: PZxIf1CkSBKjqwNpvE4c9Q==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53688633"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53688633"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 07:46:54 -0800
X-CSE-ConnectionGUID: 14byYl1lQbat/7O+C6S/1w==
X-CSE-MsgGUID: jKiaEQYsTDWLJmcx+VFwIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124268463"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 07:46:51 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 17:46:50 +0200
Date: Thu, 6 Mar 2025 17:46:50 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: "Govindapillai, Vinod" <vinod.govindapillai@intel.com>
Cc: "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH 10/19] drm/i915: Extract intel_cdclk_update_hw_state()
Message-ID: <Z8nDasTzrE-HEG8n@intel.com>
References: <20250218211913.27867-1-ville.syrjala@linux.intel.com>
 <20250218211913.27867-11-ville.syrjala@linux.intel.com>
 <b5a9654c673f08a35297bcc1b0b1d6b96461a193.camel@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <b5a9654c673f08a35297bcc1b0b1d6b96461a193.camel@intel.com>
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

On Tue, Mar 04, 2025 at 02:04:02PM +0000, Govindapillai, Vinod wrote:
> On Tue, 2025-02-18 at 23:19 +0200, Ville Syrjala wrote:
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Hoist the cdclk stuff into a separate function from
> > intel_modeset_readout_hw_state() so that the details
> > are better hidden inside intel_cdclk.c.
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_cdclk.c    | 29 ++++++++++++++++++-
> >  drivers/gpu/drm/i915/display/intel_cdclk.h    |  2 +-
> >  .../drm/i915/display/intel_modeset_setup.c    | 16 ++--------
> >  3 files changed, 31 insertions(+), 16 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > index 4b7058e65588..947833a96ab7 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.c
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.c
> > @@ -2788,7 +2788,7 @@ static int intel_planes_min_cdclk(const struct intel_crtc_state *crtc_state)
> >  	return min_cdclk;
> >  }
> >  
> > -int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
> > +static int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state)
> >  {
> >  	int min_cdclk;
> >  
> > @@ -3340,6 +3340,33 @@ int intel_modeset_calc_cdclk(struct intel_atomic_state *state)
> >  	return 0;
> >  }
> >  
> > +void intel_cdclk_update_hw_state(struct intel_display *display)
> > +{
> > +	struct intel_cdclk_state *cdclk_state =
> > +		to_intel_cdclk_state(display->cdclk.obj.state);
> > +	struct intel_crtc *crtc;
> > +
> > +	cdclk_state->active_pipes = 0;
> 
> As active_pipes are already calculated in intel_modeset_readout_hw_state, wonder will it be useful
> if we pass active_pipes as a parameter to this function and use it above? Same applies to bwstate-
> >active_pipes as well in couple of patches later.

We want to make things more independent, not dependent. So everyone 
should handle their own stuff as much as reasonably possible.

> 
> Anyway, 
> 
> Reviewed-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> 
> > +
> > +	for_each_intel_crtc(display->drm, crtc) {
> > +		const struct intel_crtc_state *crtc_state =
> > +			to_intel_crtc_state(crtc->base.state);
> > +		enum pipe pipe = crtc->pipe;
> > +		int min_cdclk = 0;
> > +
> > +		if (crtc_state->hw.active) {
> > +			cdclk_state->active_pipes |= BIT(pipe);
> > +
> > +			min_cdclk = intel_crtc_compute_min_cdclk(crtc_state);
> > +			if (drm_WARN_ON(display->drm, min_cdclk < 0))
> > +				min_cdclk = 0;
> > +		}
> > +
> > +		cdclk_state->min_cdclk[pipe] = min_cdclk;
> > +		cdclk_state->min_voltage_level[pipe] = crtc_state->min_voltage_level;
> > +	}
> > +}
> > +
> >  void intel_cdclk_crtc_disable_noatomic(struct intel_crtc *crtc)
> >  {
> >  	struct intel_display *display = to_intel_display(crtc);
> > diff --git a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > index 689e12e2196b..a1cefd455d92 100644
> > --- a/drivers/gpu/drm/i915/display/intel_cdclk.h
> > +++ b/drivers/gpu/drm/i915/display/intel_cdclk.h
> > @@ -59,7 +59,6 @@ struct intel_cdclk_state {
> >  	bool disable_pipes;
> >  };
> >  
> > -int intel_crtc_compute_min_cdclk(const struct intel_crtc_state *crtc_state);
> >  void intel_cdclk_init_hw(struct intel_display *display);
> >  void intel_cdclk_uninit_hw(struct intel_display *display);
> >  void intel_init_cdclk_hooks(struct intel_display *display);
> > @@ -84,6 +83,7 @@ int intel_cdclk_atomic_check(struct intel_atomic_state *state,
> >  int intel_cdclk_state_set_joined_mbus(struct intel_atomic_state *state, bool joined_mbus);
> >  struct intel_cdclk_state *
> >  intel_atomic_get_cdclk_state(struct intel_atomic_state *state);
> > +void intel_cdclk_update_hw_state(struct intel_display *display);
> >  void intel_cdclk_crtc_disable_noatomic(struct intel_crtc *crtc);
> >  
> >  #define to_intel_cdclk_state(global_state) \
> > diff --git a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > index e9b0533526f6..1cfa03bd3224 100644
> > --- a/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > +++ b/drivers/gpu/drm/i915/display/intel_modeset_setup.c
> > @@ -693,8 +693,6 @@ static void readout_plane_state(struct drm_i915_private *i915)
> >  static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
> >  {
> >  	struct intel_display *display = &i915->display;
> > -	struct intel_cdclk_state *cdclk_state =
> > -		to_intel_cdclk_state(i915->display.cdclk.obj.state);
> >  	struct intel_dbuf_state *dbuf_state =
> >  		to_intel_dbuf_state(i915->display.dbuf.obj.state);
> >  	struct intel_pmdemand_state *pmdemand_state =
> > @@ -730,7 +728,6 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
> >  			    str_enabled_disabled(crtc_state->hw.active));
> >  	}
> >  
> > -	cdclk_state->active_pipes = active_pipes;
> >  	dbuf_state->active_pipes = active_pipes;
> >  
> >  	readout_plane_state(i915);
> > @@ -833,7 +830,6 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
> >  		struct intel_crtc_state *crtc_state =
> >  			to_intel_crtc_state(crtc->base.state);
> >  		struct intel_plane *plane;
> > -		int min_cdclk = 0;
> >  
> >  		if (crtc_state->hw.active) {
> >  			/*
> > @@ -882,22 +878,14 @@ static void intel_modeset_readout_hw_state(struct drm_i915_private *i915)
> >  				    crtc_state->min_cdclk[plane->id]);
> >  		}
> >  
> > -		if (crtc_state->hw.active) {
> > -			min_cdclk = intel_crtc_compute_min_cdclk(crtc_state);
> > -			if (drm_WARN_ON(&i915->drm, min_cdclk < 0))
> > -				min_cdclk = 0;
> > -		}
> > -
> > -		cdclk_state->min_cdclk[crtc->pipe] = min_cdclk;
> > -		cdclk_state->min_voltage_level[crtc->pipe] =
> > -			crtc_state->min_voltage_level;
> > -
> >  		intel_pmdemand_update_port_clock(display, pmdemand_state, pipe,
> >  						 crtc_state->port_clock);
> >  
> >  		intel_bw_crtc_update(bw_state, crtc_state);
> >  	}
> >  
> > +	intel_cdclk_update_hw_state(display);
> > +
> >  	intel_pmdemand_init_pmdemand_params(display, pmdemand_state);
> >  }
> >  
> 

-- 
Ville Syrjälä
Intel
