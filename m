Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 522F4A465F7
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 17:04:35 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D367210E950;
	Wed, 26 Feb 2025 16:04:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="XJv8Mo7z";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1B20010E074;
 Wed, 26 Feb 2025 16:04:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740585872; x=1772121872;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=eNdTv5OSKOgqgnQDh37p2CW2GS4vPHAMrPp/lSc3pcg=;
 b=XJv8Mo7zZPnKw4To5JglVQLesWjMBxjBNH1xYQbo/cWkO3VGRmgKzQb4
 DEX7jDLJoQwbeACUKJhm0BN9SfaaJSM1XLQJRKRtQrSlMBLbHjdsUWUZm
 k0mBxcins+Y27BkG7SeyTnWkaYSgv3GSjRir5NhIhFLeZEPdGqfdVstLH
 Qeg6ahxknrq1WwbRuZ4JG6V3/rNFHuuJkSYWFzdVrGfJDNSLGR/1NLUAW
 2oUp/fDiygaz6l3w9rFLrY0sT9YxRLojRZTm07oH4kfNSzxAG3hfACBwF
 j8D81NnLeFKVqJNZcTyaYlf+vbsN8QZo9v8CWhfzqxqc6tBPUe83n6tHa A==;
X-CSE-ConnectionGUID: sls0lU4zSCSlSbSae3uQAA==
X-CSE-MsgGUID: de03W9xZQDOzkdDY8xW/Mg==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="58858981"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="58858981"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 08:04:30 -0800
X-CSE-ConnectionGUID: kTN6+LMhQCyGlXW4vBvAZQ==
X-CSE-MsgGUID: y1DSMRvxQEqu9DJGShbe6A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121993951"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 08:04:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 18:04:26 +0200
Date: Wed, 26 Feb 2025 18:04:26 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 17/20] drm/i915/display: Use fixed_rr timings in modeset
 sequence
Message-ID: <Z787ipgTzS970VNH@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-18-ankit.k.nautiyal@intel.com>
 <Z78t-r9fZwr15eMo@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <Z78t-r9fZwr15eMo@intel.com>
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

On Wed, Feb 26, 2025 at 05:06:34PM +0200, Ville Syrjälä wrote:
> On Mon, Feb 24, 2025 at 11:47:14AM +0530, Ankit Nautiyal wrote:
> > During modeset enable sequence, program the fixed timings, and turn on the
> > VRR Timing Generator (VRR TG) for platforms that always use VRR TG.
> > 
> > For this intel_vrr_set_transcoder now always programs fixed timings.
> > Later if vrr timings are required, vrr_enable() will switch
> > to the real VRR timings.
> > 
> > For platforms that will always use VRR TG, the VRR_CTL Enable bit is set
> > and reset in the transcoder enable/disable path.
> > 
> > v2: Update intel_vrr_set_transcoder_timings for fixed_rr.
> > v3: Update intel_set_transcoder_timings_lrr for fixed_rr. (Ville)
> > v4: Have separate functions to enable/disable VRR CTL
> > 
> > Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_ddi.c    |  5 +++
> >  drivers/gpu/drm/i915/display/intel_dp_mst.c |  4 +++
> >  drivers/gpu/drm/i915/display/intel_vrr.c    | 40 +++++++++++++--------
> >  drivers/gpu/drm/i915/display/intel_vrr.h    |  3 ++
> >  4 files changed, 38 insertions(+), 14 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> > index 5082f38b0a02..8863d1526aea 100644
> > --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> > +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> > @@ -77,6 +77,7 @@
> >  #include "intel_tc.h"
> >  #include "intel_vdsc.h"
> >  #include "intel_vdsc_regs.h"
> > +#include "intel_vrr.h"
> >  #include "skl_scaler.h"
> >  #include "skl_universal_plane.h"
> >  
> > @@ -3276,6 +3277,8 @@ static void intel_ddi_post_disable(struct intel_atomic_state *state,
> >  				   const struct intel_crtc_state *old_crtc_state,
> >  				   const struct drm_connector_state *old_conn_state)
> >  {
> > +	intel_vrr_transcoder_disable(old_crtc_state);
> > +
> >  	if (!intel_crtc_has_type(old_crtc_state, INTEL_OUTPUT_DP_MST))
> >  		intel_ddi_post_disable_hdmi_or_sst(state, encoder, old_crtc_state,
> >  						   old_conn_state);
> > @@ -3524,6 +3527,8 @@ static void intel_ddi_enable(struct intel_atomic_state *state,
> >  
> >  	intel_ddi_enable_transcoder_func(encoder, crtc_state);
> >  
> > +	intel_vrr_transcoder_enable(crtc_state);
> > +
> >  	/* Enable/Disable DP2.0 SDP split config before transcoder */
> >  	intel_audio_sdp_split_update(crtc_state);
> >  
> > diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > index 2c4a9ac6f61e..5ec353eceab4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> > @@ -1048,6 +1048,8 @@ static void mst_stream_post_disable(struct intel_atomic_state *state,
> >  		intel_crtc_vblank_off(old_pipe_crtc_state);
> >  	}
> >  
> > +	intel_vrr_transcoder_disable(old_crtc_state);
> > +
> >  	intel_disable_transcoder(old_crtc_state);
> >  
> >  	drm_dp_remove_payload_part1(&intel_dp->mst_mgr, new_mst_state, new_payload);
> > @@ -1325,6 +1327,8 @@ static void mst_stream_enable(struct intel_atomic_state *state,
> >  
> >  	intel_ddi_enable_transcoder_func(encoder, pipe_config);
> >  
> > +	intel_vrr_transcoder_enable(pipe_config);
> > +
> >  	intel_ddi_clear_act_sent(encoder, pipe_config);
> >  
> >  	intel_de_rmw(display, TRANS_DDI_FUNC_CTL(display, trans), 0,
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index e77f5b483b09..551dcc16f0d4 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -434,6 +434,7 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
> >  {
> >  	struct intel_display *display = to_intel_display(crtc_state);
> >  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> > +	bool needs_modeset = intel_crtc_needs_modeset(crtc_state);
> >  
> >  	if (intel_crtc_is_joiner_secondary(crtc_state))
> >  		return;
> > @@ -447,12 +448,6 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
> >  		intel_de_rmw(display, CHICKEN_TRANS(display, cpu_transcoder),
> >  			     0, PIPE_VBLANK_WITH_DELAY);
> >  
> > -	if (!intel_vrr_possible(crtc_state)) {
> > -		intel_de_write(display,
> > -			       TRANS_VRR_CTL(display, cpu_transcoder), 0);
> > -		return;
> > -	}
> > -
> >  	if (crtc_state->cmrr.enable) {
> >  		intel_de_write(display, TRANS_CMRR_M_HI(display, cpu_transcoder),
> >  			       upper_32_bits(crtc_state->cmrr.cmrr_m));
> > @@ -464,14 +459,8 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
> >  			       lower_32_bits(crtc_state->cmrr.cmrr_n));
> >  	}
> >  
> > -	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
> > -		       crtc_state->vrr.vmin - 1);
> > -	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> > -		       crtc_state->vrr.vmax - 1);
> > -	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> > -		       trans_vrr_ctl(crtc_state));
> > -	intel_de_write(display, TRANS_VRR_FLIPLINE(display, cpu_transcoder),
> > -		       crtc_state->vrr.flipline - 1);
> > +	intel_vrr_set_fixed_rr_timings(crtc_state);
> > +	intel_vrr_update_guardband(crtc_state, needs_modeset);
> >  
> >  	if (HAS_AS_SDP(display))
> >  		intel_de_write(display,
> > @@ -614,6 +603,29 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
> >  	intel_vrr_set_fixed_rr_timings(old_crtc_state);
> >  }
> >  
> > +void intel_vrr_transcoder_enable(const struct intel_crtc_state *crtc_state)
> > +{
> > +	struct intel_display *display = to_intel_display(crtc_state);
> > +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> > +
> > +	if (!intel_vrr_always_use_vrr_tg(display))
> > +		return;
> > +
> > +	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
> > +		       VRR_CTL_VRR_ENABLE | trans_vrr_ctl(crtc_state));
> 
> Hmm. Maybe we should actually program this even for the
> !intel_vrr_always_use_vrr_tg() case, but just leave the enable
> bit unset. That way we shouldn't need the intel_vrr_update_guardband()
> stuff in vrr_set_transcoder_timings().
> 
> We'd still need something for the _lrr() case, but I think that
> could simply call intel_vrr_transcoder_enable() as well.

Oh and for the intel_vrr_always_use_vrr_tg()==true case we
probably want to also enable push.

When I was testing this stuff at least tgl and adl seemed to
require require push to be enabled whenever we use the VRR TG.
If we always enable it then we can easily test this on those
platforms witout having to touch any code outside of
intel_vrr_always_use_vrr_tg().

And even if some more modern hardware doesn't strictly require
push to be enabled, I don't think there should be any harm from
enabling it anyway.

-- 
Ville Syrjälä
Intel
