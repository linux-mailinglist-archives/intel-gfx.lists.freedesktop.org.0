Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A87A7ED5D6
	for <lists+intel-gfx@lfdr.de>; Wed, 15 Nov 2023 22:17:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 174D710E245;
	Wed, 15 Nov 2023 21:17:06 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.88])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7002710E245
 for <intel-gfx@lists.freedesktop.org>; Wed, 15 Nov 2023 21:17:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1700083024; x=1731619024;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=LJNLgdsKm4tnJfIGy02/gzCPROUGqlAmw7A3xO0ScgU=;
 b=IoNytD6azyN8x7o8OuR36m7VN2SXPq3VMJsNo5U6+URD2R9ZK1myOqVJ
 dFR9nebRnluFmP4Wk9M/bWPCJTHx44NHSazRQyd28lxntoFKJwThXCIY4
 HJq5IEeBfgS2QfQJYGPSYg/Ynehun/woG5rCKK4E82HFM3/Io1G1rTT9v
 rgsuUQYKFLCbU8f1wE1l6ilv3Fm7QiGSYf8RCqkAzuR1rDoYp7hfu7wHf
 oEayQ2+K65dPt71LIoYxUw7EayjWu1pBC1JFC26QI1vMv0nNb4IXxMHWQ
 AF+EWd6S60k92Q8iEJAdvq62XjPTyCMnIffZ7FclPynCXqKZibhyLJjyn w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="422053316"
X-IronPort-AV: E=Sophos;i="6.03,306,1694761200"; d="scan'208";a="422053316"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Nov 2023 13:17:03 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10895"; a="758620874"
X-IronPort-AV: E=Sophos;i="6.03,306,1694761200"; d="scan'208";a="758620874"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orsmga007.jf.intel.com with SMTP; 15 Nov 2023 13:17:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 15 Nov 2023 23:16:59 +0200
Date: Wed, 15 Nov 2023 23:16:59 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Message-ID: <ZVU1S09mwR0YorBn@intel.com>
References: <20231115134326.3794326-1-mitulkumar.ajitkumar.golani@intel.com>
 <20231115134326.3794326-4-mitulkumar.ajitkumar.golani@intel.com>
 <ZVUqUxkqzDMdoJL-@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <ZVUqUxkqzDMdoJL-@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 3/3] drm/i915: Compute CMRR and calculate
 vtotal
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
Cc: jani.nikula@intel.com, intel-gfx@lists.freedesktop.org,
 ville.syrjala@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Nov 15, 2023 at 10:30:11PM +0200, Ville Syrjälä wrote:
> On Wed, Nov 15, 2023 at 07:13:26PM +0530, Mitul Golani wrote:
> > Compute Fixed Average Vtotal/CMRR with resepect to
> > userspace VRR enablement. Also calculate required
> > parameters in case of CMRR is  enabled. During
> > intel_vrr_compute_config, CMRR is getting enabled
> > based on userspace has enabled Adaptive Sync Vtotal
> > mode (Legacy VRR) or not.
> > 
> > Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> > ---
> >  drivers/gpu/drm/i915/display/intel_display.c  |  1 +
> >  .../drm/i915/display/intel_display_device.h   |  1 +
> >  drivers/gpu/drm/i915/display/intel_vrr.c      | 76 +++++++++++++++++--
> >  3 files changed, 72 insertions(+), 6 deletions(-)
> > 
> > diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> > index ae7cc4eca064..7e38ac4d6185 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display.c
> > +++ b/drivers/gpu/drm/i915/display/intel_display.c
> > @@ -5482,6 +5482,7 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
> >  		PIPE_CONF_CHECK_I(vrr.guardband);
> >  		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
> >  		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
> > +		PIPE_CONF_CHECK_BOOL(cmrr.enable);
> >  	}
> >  
> >  #undef PIPE_CONF_CHECK_X
> > diff --git a/drivers/gpu/drm/i915/display/intel_display_device.h b/drivers/gpu/drm/i915/display/intel_display_device.h
> > index 4299cc452e05..66cbc3a6bbe8 100644
> > --- a/drivers/gpu/drm/i915/display/intel_display_device.h
> > +++ b/drivers/gpu/drm/i915/display/intel_display_device.h
> > @@ -68,6 +68,7 @@ struct drm_printer;
> >  #define HAS_TRANSCODER(i915, trans)	((DISPLAY_RUNTIME_INFO(i915)->cpu_transcoder_mask & \
> >  					  BIT(trans)) != 0)
> >  #define HAS_VRR(i915)			(DISPLAY_VER(i915) >= 11)
> > +#define HAS_CMRR(i915)			(DISPLAY_VER(i915) >= 20)
> >  #define INTEL_NUM_PIPES(i915)		(hweight8(DISPLAY_RUNTIME_INFO(i915)->pipe_mask))
> >  #define I915_HAS_HOTPLUG(i915)		(DISPLAY_INFO(i915)->has_hotplug)
> >  #define OVERLAY_NEEDS_PHYSICAL(i915)	(DISPLAY_INFO(i915)->overlay_needs_physical)
> > diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> > index 6da14c18a3e3..ab124e997ef2 100644
> > --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> > +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> > @@ -105,6 +105,52 @@ int intel_vrr_vmax_vblank_start(const struct intel_crtc_state *crtc_state)
> >  	return crtc_state->vrr.vmax - intel_vrr_vblank_exit_length(crtc_state);
> >  }
> >  
> > +static bool
> > +is_cmrr_frac_required(struct intel_crtc_state *crtc_state)
> > +{
> > +	int calculated_refresh_k, actual_refresh_k;
> > +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> > +
> > +	actual_refresh_k = drm_mode_vrefresh(adjusted_mode) * 1000;
> > +	calculated_refresh_k = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> > +					    adjusted_mode->crtc_htotal) * 1000;
> > +	calculated_refresh_k /= adjusted_mode->crtc_vtotal;
> > +
> > +	if (calculated_refresh_k == actual_refresh_k)
> > +		return false;
> > +
> > +	return true;
> > +}
> > +
> > +static unsigned int
> > +cmrr_get_vtotal(struct intel_crtc_state *crtc_state)
> > +{
> > +	int multiplier_m = 1, multiplier_n = 1, vtotal;
> > +	int actual_refresh_rate, desired_refresh_rate;
> > +	long long actual_pixel_rate, adjusted_pixel_rate;
> > +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> > +
> > +	actual_refresh_rate = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> > +					   adjusted_mode->crtc_htotal) * 1000;
> > +	actual_refresh_rate /= adjusted_mode->crtc_vtotal;
> > +	desired_refresh_rate = drm_mode_vrefresh(adjusted_mode);
> 
> The actual refresh rate is the desired refresh rate. None of this
> stuff makes any sense.

Just to elaborate a bit more, there is no mechanism in the uapi to
specify refresh rate and dotclock independently, so we have no use
for CMRR without some kind of new uapi.

Hmm. I suppose one slight exception might be eDP where we pick the
dotclock from the set of fixed modes, and thus we try to extend the
vblank to achieve the target refresh rate with a fixed dotclock.
So perhaps CMRR could be used there to achieve a slightly more
accurate average refresh rate. But there are a lot of details to
think about since the frame timings would change semi-randomly so
all the vblank timing stuff might get a lot more complicated.

> 
> > +	actual_pixel_rate = actual_refresh_rate * adjusted_mode->crtc_vtotal;
> > +	actual_pixel_rate = (actual_pixel_rate * adjusted_mode->crtc_htotal) / 1000;
> > +
> > +	if (is_cmrr_frac_required(crtc_state)) {
> > +		multiplier_m = 1001;
> > +		multiplier_n = 1000;
> > +	}
> > +
> > +	crtc_state->cmrr.cmrr_n = DIV_ROUND_UP(desired_refresh_rate *
> > +			adjusted_mode->crtc_htotal * multiplier_n, multiplier_m) * multiplier_n;
> > +	vtotal = DIV_ROUND_UP(actual_pixel_rate * multiplier_n, crtc_state->cmrr.cmrr_n);
> > +	adjusted_pixel_rate = actual_pixel_rate * multiplier_m;
> > +	crtc_state->cmrr.cmrr_m = do_div(adjusted_pixel_rate, crtc_state->cmrr.cmrr_n);
> > +
> > +	return vtotal;
> > +}
> > +
> >  void
> >  intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> >  			 struct drm_connector_state *conn_state)
> > @@ -149,6 +195,22 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> >  
> >  	crtc_state->vrr.flipline = crtc_state->vrr.vmin + 1;
> >  
> > +	/*
> > +	 * When panel is VRR capable and userspace has
> > +	 * not enabled adaptive sync mode then Fixed Average
> > +	 * Vtotal mode should be enabled.
> > +	 */
> > +	if (crtc_state->uapi.vrr_enabled) {
> > +		crtc_state->vrr.enable = true;
> > +		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> > +	} else if (HAS_CMRR(i915)) {
> > +		crtc_state->cmrr.enable = true;
> > +		crtc_state->vrr.vmax = cmrr_get_vtotal(crtc_state);
> > +		crtc_state->vrr.vmin = crtc_state->vrr.vmax;
> > +		crtc_state->vrr.flipline = crtc_state->vrr.vmin;
> > +		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> > +	}
> > +
> >  	/*
> >  	 * For XE_LPD+, we use guardband and pipeline override
> >  	 * is deprecated.
> > @@ -161,11 +223,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
> >  			min(255, crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start -
> >  			    crtc_state->framestart_delay - 1);
> >  	}
> > -
> > -	if (crtc_state->uapi.vrr_enabled) {
> > -		crtc_state->vrr.enable = true;
> > -		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
> > -	}
> >  }
> >  
> >  static u32 trans_vrr_ctl(const struct intel_crtc_state *crtc_state)
> > @@ -292,7 +349,14 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
> >  
> >  	trans_vrr_ctl = intel_de_read(dev_priv, TRANS_VRR_CTL(cpu_transcoder));
> >  
> > -	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> > +	if (HAS_CMRR(dev_priv)) {
> > +		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE) &&
> > +					  (trans_vrr_ctl & VRR_CTL_VRR_ENABLE);
> > +		crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
> > +					 !(trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
> > +	} else {
> > +		crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
> > +	}
> >  
> >  	if (crtc_state->cmrr.enable) {
> >  		crtc_state->cmrr.cmrr_n =
> > -- 
> > 2.25.1
> 
> -- 
> Ville Syrjälä
> Intel

-- 
Ville Syrjälä
Intel
