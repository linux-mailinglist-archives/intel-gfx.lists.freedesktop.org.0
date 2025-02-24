Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 68C28A4219F
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Feb 2025 14:44:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8B40210E412;
	Mon, 24 Feb 2025 13:43:05 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="WjWodTSe";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 1C92F10E210;
 Mon, 24 Feb 2025 10:45:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740393906; x=1771929906;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=TC5JKuSwTOwKpgp1iZoA9OkT3PUONHk+kHFW8kXUrhw=;
 b=WjWodTSeNkMhwhagFYIRkkmbo++rT/3shbjnSJpmE/NT4rz/GpJcsnFh
 xvZYCUtMfNV15A3Y7D8Z3fTM0/Pcm/cUQKwcIDwKT8gDrfWzh4nXT0wBl
 8fx/bO8jrTLcCHJQwPHTGV0V3daHtkEimxPWHOdNWxs7FkH0eXPe2ht45
 +MRgRDqKlccqk3syB0OSkNj+CJZjXomqT7UAOIsHMaN8klSkm5ZcX6Rbw
 nPuHJhrCz5HZ/+DMZuvAZfezHvae56AJdE55SRO0K3frA3mQDxTTIUJ7t
 LO8dwVxw3/T5Gdn9Eki6LD4POJyjc/BK5+G0pBtJlWnBBiSnZdfX25xZh A==;
X-CSE-ConnectionGUID: yuj6si0uToyFBj0ZFSO10Q==
X-CSE-MsgGUID: sgmA37BlQOuRvewg/B/XhQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11354"; a="63611881"
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="63611881"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:45:06 -0800
X-CSE-ConnectionGUID: 67vSYBaSS9W/wFQV3uUYOQ==
X-CSE-MsgGUID: 9lHnM6ecRfSF/1PN7qWsaQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,309,1732608000"; d="scan'208";a="115815470"
Received: from mwiniars-desk2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.133])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Feb 2025 02:45:02 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Animesh Manna <animesh.manna@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: jouni.hogander@intel.com, jeevan.b@intel.com, Animesh Manna
 <animesh.manna@intel.com>
Subject: Re: [PATCH v4 2/8] drm/i915/lobf: Disintegrate alpm_disable from
 psr_disable
In-Reply-To: <20250224080847.326350-3-animesh.manna@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250224080847.326350-1-animesh.manna@intel.com>
 <20250224080847.326350-3-animesh.manna@intel.com>
Date: Mon, 24 Feb 2025 12:45:00 +0200
Message-ID: <87wmdf7har.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Mon, 24 Feb 2025, Animesh Manna <animesh.manna@intel.com> wrote:
> Currently clearing of alpm registers is done through psr_disable()
> which is always not correct, without psr also alpm can exist. So
> dis-integrate alpm_disable() from psr_disable().
>
> Signed-off-by: Animesh Manna <animesh.manna@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c     | 21 +++++++++++++++++++
>  drivers/gpu/drm/i915/display/intel_alpm.h     |  1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c      |  2 ++
>  .../drm/i915/display/intel_display_types.h    |  1 +
>  drivers/gpu/drm/i915/display/intel_psr.c      | 11 ----------
>  5 files changed, 25 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index a53ed83f6b22..d94c96ba46b1 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -365,6 +365,7 @@ void intel_alpm_configure(struct intel_dp *intel_dp,
>  			  const struct intel_crtc_state *crtc_state)
>  {
>  	lnl_alpm_configure(intel_dp, crtc_state);
> +	intel_dp->alpm_parameters.transcoder = crtc_state->cpu_transcoder;

Why do we need to store this?

>  }
>  
>  void intel_alpm_post_plane_update(struct intel_atomic_state *state,
> @@ -440,3 +441,23 @@ void intel_alpm_lobf_debugfs_add(struct intel_connector *connector)
>  	debugfs_create_file("i915_edp_lobf_info", 0444, root,
>  			    connector, &i915_edp_lobf_info_fops);
>  }
> +
> +void intel_alpm_disable(struct intel_dp *intel_dp)
> +{
> +	struct intel_display *display = to_intel_display(intel_dp);
> +	enum transcoder cpu_transcoder = intel_dp->alpm_parameters.transcoder;
> +
> +	if (DISPLAY_VER(display) < 20)
> +		return;
> +
> +	if (!(intel_de_read(display, ALPM_CTL(display, cpu_transcoder)) & ALPM_CTL_ALPM_ENABLE))
> +		return;

Why are we checking the hardware state here? We should know what state
the hardware is in, right?

> +
> +	intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
> +		     ALPM_CTL_ALPM_ENABLE | ALPM_CTL_LOBF_ENABLE |
> +		     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
> +
> +	intel_de_rmw(display,
> +		     PORT_ALPM_CTL(cpu_transcoder),
> +		     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
> +}
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.h b/drivers/gpu/drm/i915/display/intel_alpm.h
> index 2f862b0476a8..91f51fb24f98 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.h
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.h
> @@ -28,4 +28,5 @@ void intel_alpm_post_plane_update(struct intel_atomic_state *state,
>  void intel_alpm_lobf_debugfs_add(struct intel_connector *connector);
>  bool intel_alpm_aux_wake_supported(struct intel_dp *intel_dp);
>  bool intel_alpm_aux_less_wake_supported(struct intel_dp *intel_dp);
> +void intel_alpm_disable(struct intel_dp *intel_dp);
>  #endif
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 7937f4de66cb..26aa32d4d50e 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -35,6 +35,7 @@
>  #include "i915_drv.h"
>  #include "i915_reg.h"
>  #include "icl_dsi.h"
> +#include "intel_alpm.h"
>  #include "intel_audio.h"
>  #include "intel_audio_regs.h"
>  #include "intel_backlight.h"
> @@ -3570,6 +3571,7 @@ static void intel_ddi_disable_dp(struct intel_atomic_state *state,
>  	intel_dp->link_trained = false;
>  
>  	intel_psr_disable(intel_dp, old_crtc_state);
> +	intel_alpm_disable(intel_dp);

We have old crtc state here, why do we save the transcoder to intel_dp
and use that?

>  	intel_edp_backlight_off(old_conn_state);
>  	/* Disable the decompression in DP Sink */
>  	intel_dp_sink_disable_decompression(state,
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 4440521e3e9e..b78721c451b8 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1801,6 +1801,7 @@ struct intel_dp {
>  	struct {
>  		u8 io_wake_lines;
>  		u8 fast_wake_lines;
> +		enum transcoder transcoder;
>  
>  		/* LNL and beyond */
>  		u8 check_entry_lines;
> diff --git a/drivers/gpu/drm/i915/display/intel_psr.c b/drivers/gpu/drm/i915/display/intel_psr.c
> index c1dd9c739fd4..1d202f2eb356 100644
> --- a/drivers/gpu/drm/i915/display/intel_psr.c
> +++ b/drivers/gpu/drm/i915/display/intel_psr.c
> @@ -2141,17 +2141,6 @@ static void intel_psr_disable_locked(struct intel_dp *intel_dp)
>  	if (intel_dp_is_edp(intel_dp))
>  		intel_snps_phy_update_psr_power_state(&dp_to_dig_port(intel_dp)->base, false);
>  
> -	/* Panel Replay on eDP is always using ALPM aux less. */
> -	if (intel_dp->psr.panel_replay_enabled && intel_dp_is_edp(intel_dp)) {
> -		intel_de_rmw(display, ALPM_CTL(display, cpu_transcoder),
> -			     ALPM_CTL_ALPM_ENABLE |
> -			     ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
> -
> -		intel_de_rmw(display,
> -			     PORT_ALPM_CTL(cpu_transcoder),
> -			     PORT_ALPM_CTL_ALPM_AUX_LESS_ENABLE, 0);
> -	}
> -
>  	/* Disable PSR on Sink */
>  	if (!intel_dp->psr.panel_replay_enabled) {
>  		drm_dp_dpcd_writeb(&intel_dp->aux, DP_PSR_EN_CFG, 0);

-- 
Jani Nikula, Intel
