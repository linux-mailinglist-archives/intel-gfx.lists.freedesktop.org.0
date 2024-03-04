Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3798886FED4
	for <lists+intel-gfx@lfdr.de>; Mon,  4 Mar 2024 11:20:39 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AD41810FF56;
	Mon,  4 Mar 2024 10:20:37 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TAHms7Bk";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 139DF10FF56
 for <intel-gfx@lists.freedesktop.org>; Mon,  4 Mar 2024 10:20:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709547636; x=1741083636;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wM6PeHrcawcdmkXR3vF3aZfx6RUJg2MQcnCfAb6iNEI=;
 b=TAHms7BkwHl/ZMoRR2AfFI17o18Hjb4rZXgP6ZNbHn+s3hU370romzel
 L8A1b34jgSCrOIp5d5eOs2MEElYnutWF9/iFLvRN5k/ByD/zacfTByruJ
 B/5zdzj6okP5BTsXw0CVMYSBNla+A+9KbwdbqjOo866OztYJKT3FIfKEk
 Sr1EsBbuZKZpCrftIJ8DtI5tZPaMgygByYO7gPzA0ppF9o8DUXEeoyk1q
 L8rTo//boiWYCuMK4xrF2Cyi4hvzzwrikzCDU24N0cDKbenLvUdQnl8+p
 yOm1TrETLuk0U/iAwP5Js59KiGIqkZ0Ed0OFPtCDkEx+nJVqmWNHIkt8Z A==;
X-IronPort-AV: E=McAfee;i="6600,9927,11002"; a="4194087"
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; 
   d="scan'208";a="4194087"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 02:20:36 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.06,203,1705392000"; d="scan'208";a="13507038"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2024 02:20:34 -0800
Date: Mon, 4 Mar 2024 12:20:25 +0200
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: "Srinivas, Vidya" <vidya.srinivas@intel.com>
Cc: Ville Syrjala <ville.syrjala@linux.intel.com>,
 "intel-gfx@lists.freedesktop.org" <intel-gfx@lists.freedesktop.org>
Subject: Re: [PATCH v2 8/8] drm/i915: Handle joined pipes inside
 hsw_crtc_disable()
Message-ID: <ZeWgXQv3VRkOg2N6@intel.com>
References: <20240301143600.1334-9-ville.syrjala@linux.intel.com>
 <20240301172346.4393-1-ville.syrjala@linux.intel.com>
 <PH7PR11MB8252F3058EB670059A0123A489232@PH7PR11MB8252.namprd11.prod.outlook.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <PH7PR11MB8252F3058EB670059A0123A489232@PH7PR11MB8252.namprd11.prod.outlook.com>
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

On Mon, Mar 04, 2024 at 08:44:35AM +0200, Srinivas, Vidya wrote:
> Thank you very much Ville and Stan.
> With https://patchwork.freedesktop.org/series/130619/ and https://patchwork.freedesktop.org/series/130449/ tested that 6K works
> Tested-by: Vidya Srinivas <vidya.srinivas@intel.com>

The thing is that we still don't handle crtc enable(i.e actual enabling of displays)
here at all, only disabling part. So fact that it works could be also related to this.

Ville, should I use your series, plus the things we had discussed in my series to implement
hsw_crtc_enable on top of your series?
Of course things related to transcoder have to be clarified still. 
Or do you plan to do it yourself?

Stan

> 
> > -----Original Message-----
> > From: Intel-gfx <intel-gfx-bounces@lists.freedesktop.org> On Behalf Of Ville
> > Syrjala
> > Sent: Friday, March 1, 2024 10:54 PM
> > To: intel-gfx@lists.freedesktop.org
> > Cc: Lisovskiy, Stanislav <stanislav.lisovskiy@intel.com>
> > Subject: [PATCH v2 8/8] drm/i915: Handle joined pipes inside
> > hsw_crtc_disable()
> > 
> > From: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > 
> > Reorganize the crtc disable path to only deal with the master
> > pipes/transcoders in intel_old_crtc_state_disables() and offload the handling
> > of joined pipes to hsw_crtc_disable().
> > This makes the whole thing much more sensible since we can actually control
> > the order in which we do the per-pipe vs.
> > per-transcoder modeset steps.
> > 
> > v2: Pass the correct crtc pointer to .crtc_disable()
> > 
> > Signed-off-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c | 66 ++++++++++++--------
> >  1 file changed, 39 insertions(+), 27 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c
> > b/drivers/gpu/drm/i915/display/intel_display.c
> > index 1df3923cc30d..e01536983303 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -1793,29 +1793,27 @@ static void hsw_crtc_disable(struct
> > intel_atomic_state *state,
> >  	const struct intel_crtc_state *old_master_crtc_state =
> >  		intel_atomic_get_old_crtc_state(state, master_crtc);
> >  	struct drm_i915_private *i915 = to_i915(master_crtc->base.dev);
> > +	u8 pipe_mask = intel_crtc_joined_pipe_mask(old_master_crtc_state);
> > +	struct intel_crtc *crtc;
> > 
> >  	/*
> >  	 * FIXME collapse everything to one hook.
> >  	 * Need care with mst->ddi interactions.
> >  	 */
> > -	if (!intel_crtc_is_bigjoiner_slave(old_master_crtc_state)) {
> > -		intel_encoders_disable(state, master_crtc);
> > -		intel_encoders_post_disable(state, master_crtc);
> > -	}
> > -
> > -	intel_disable_shared_dpll(old_master_crtc_state);
> > +	intel_encoders_disable(state, master_crtc);
> > +	intel_encoders_post_disable(state, master_crtc);
> > 
> > -	if (!intel_crtc_is_bigjoiner_slave(old_master_crtc_state)) {
> > -		struct intel_crtc *slave_crtc;
> > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask) {
> > +		const struct intel_crtc_state *old_crtc_state =
> > +			intel_atomic_get_old_crtc_state(state, crtc);
> > 
> > -		intel_encoders_post_pll_disable(state, master_crtc);
> > +		intel_disable_shared_dpll(old_crtc_state);
> > +	}
> > 
> > -		intel_dmc_disable_pipe(i915, master_crtc->pipe);
> > +	intel_encoders_post_pll_disable(state, master_crtc);
> > 
> > -		for_each_intel_crtc_in_pipe_mask(&i915->drm, slave_crtc,
> > -
> > intel_crtc_bigjoiner_slave_pipes(old_master_crtc_state))
> > -			intel_dmc_disable_pipe(i915, slave_crtc->pipe);
> > -	}
> > +	for_each_intel_crtc_in_pipe_mask(&i915->drm, crtc, pipe_mask)
> > +		intel_dmc_disable_pipe(i915, crtc->pipe);
> >  }
> > 
> >  static void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state) @@ -
> > 6753,24 +6751,33 @@ static void intel_update_crtc(struct intel_atomic_state
> > *state,  }
> > 
> >  static void intel_old_crtc_state_disables(struct intel_atomic_state *state,
> > -					  struct intel_crtc *crtc)
> > +					  struct intel_crtc *master_crtc)
> >  {
> >  	struct drm_i915_private *dev_priv = to_i915(state->base.dev);
> > -	const struct intel_crtc_state *new_crtc_state =
> > -		intel_atomic_get_new_crtc_state(state, crtc);
> > +	const struct intel_crtc_state *old_master_crtc_state =
> > +		intel_atomic_get_old_crtc_state(state, master_crtc);
> > +	u8 pipe_mask = intel_crtc_joined_pipe_mask(old_master_crtc_state);
> > +	struct intel_crtc *crtc;
> > 
> >  	/*
> >  	 * We need to disable pipe CRC before disabling the pipe,
> >  	 * or we race against vblank off.
> >  	 */
> > -	intel_crtc_disable_pipe_crc(crtc);
> > +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask)
> > +		intel_crtc_disable_pipe_crc(crtc);
> > 
> > -	dev_priv->display.funcs.display->crtc_disable(state, crtc);
> > -	crtc->active = false;
> > -	intel_fbc_disable(crtc);
> > +	dev_priv->display.funcs.display->crtc_disable(state, master_crtc);
> > 
> > -	if (!new_crtc_state->hw.active)
> > -		intel_initial_watermarks(state, crtc);
> > +	for_each_intel_crtc_in_pipe_mask(&dev_priv->drm, crtc, pipe_mask)
> > {
> > +		const struct intel_crtc_state *new_crtc_state =
> > +			intel_atomic_get_new_crtc_state(state, crtc);
> > +
> > +		crtc->active = false;
> > +		intel_fbc_disable(crtc);
> > +
> > +		if (!new_crtc_state->hw.active)
> > +			intel_initial_watermarks(state, crtc);
> > +	}
> >  }
> > 
> >  static void intel_commit_modeset_disables(struct intel_atomic_state *state)
> > @@ -6810,19 +6817,21 @@ static void
> > intel_commit_modeset_disables(struct intel_atomic_state *state)
> >  		if ((disable_pipes & BIT(crtc->pipe)) == 0)
> >  			continue;
> > 
> > +		if (intel_crtc_is_bigjoiner_slave(old_crtc_state))
> > +			continue;
> > +
> >  		/* In case of Transcoder port Sync master slave CRTCs can be
> >  		 * assigned in any order and we need to make sure that
> >  		 * slave CRTCs are disabled first and then master CRTC since
> >  		 * Slave vblanks are masked till Master Vblanks.
> >  		 */
> >  		if (!is_trans_port_sync_slave(old_crtc_state) &&
> > -		    !intel_dp_mst_is_slave_trans(old_crtc_state) &&
> > -		    !intel_crtc_is_bigjoiner_slave(old_crtc_state))
> > +		    !intel_dp_mst_is_slave_trans(old_crtc_state))
> >  			continue;
> > 
> >  		intel_old_crtc_state_disables(state, crtc);
> > 
> > -		disable_pipes &= ~BIT(crtc->pipe);
> > +		disable_pipes &=
> > ~intel_crtc_joined_pipe_mask(old_crtc_state);
> >  	}
> > 
> >  	/* Disable everything else left on */
> > @@ -6830,9 +6839,12 @@ static void intel_commit_modeset_disables(struct
> > intel_atomic_state *state)
> >  		if ((disable_pipes & BIT(crtc->pipe)) == 0)
> >  			continue;
> > 
> > +		if (intel_crtc_is_bigjoiner_slave(old_crtc_state))
> > +			continue;
> > +
> >  		intel_old_crtc_state_disables(state, crtc);
> > 
> > -		disable_pipes &= ~BIT(crtc->pipe);
> > +		disable_pipes &=
> > ~intel_crtc_joined_pipe_mask(old_crtc_state);
> >  	}
> > 
> >  	drm_WARN_ON(&i915->drm, disable_pipes);
> > --
> > 2.43.0
> 
