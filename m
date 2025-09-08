Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6F6FEB495C7
	for <lists+intel-gfx@lfdr.de>; Mon,  8 Sep 2025 18:43:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0096510E570;
	Mon,  8 Sep 2025 16:43:13 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="UwJ5Gmzo";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id CB50710E570;
 Mon,  8 Sep 2025 16:43:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1757349792; x=1788885792;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=d31/gEBHYN9EflmI/bax/rIyTfDodeoFdni7fV4Xt7w=;
 b=UwJ5Gmzol3ItbUdSIu/+19lwYcG8V10VNUBAp2aa9c6JxotIT/rFVFAy
 Vs7d1NcG8WOvAwMiPnZYzAuTMUyEpTf3/PfVqJMK4/kwCPAcLazVQ8viY
 D4d5aMTTzUn3dNhfBIS83WmIHY0By3ABiDyn0tQ53vJ29JIDgLxdCqbmk
 O0QwQdGtuzfwzOnQbHQNpRPz5GMj/bgEQI34RFO2BeP9/QC3/zwDH37EL
 RmtUW5H9RvrXpe7aQvAH8OoLQ8G8VwQyabcca85n9L3z9jLELsXZOlxzK
 0u9gHSVRzrMfr2NvjydbxrmguJqyC8KUDMVpXdXGzoPgEhYC6O2dojSK9 Q==;
X-CSE-ConnectionGUID: N7PmbmWESPSY7Dca6L2Nmg==
X-CSE-MsgGUID: iDvy5H8iT1yCMjbqQI3DVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11531"; a="59565519"
X-IronPort-AV: E=Sophos;i="6.17,312,1747724400"; d="scan'208";a="59565519"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 09:43:11 -0700
X-CSE-ConnectionGUID: 77XMHAPpRuqsxLW+EBfmJg==
X-CSE-MsgGUID: X93UCeCqQECTffaMurN4LQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.18,249,1751266800"; d="scan'208";a="172417373"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.244.61])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Sep 2025 09:43:08 -0700
Date: Mon, 8 Sep 2025 19:43:05 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
Subject: Re: [PATCH 12/14] drm/i915/vrr: Use static guardband to support
 seamless LRR switching
Message-ID: <aL8HmW0mXKvHNGF5@intel.com>
References: <20250907073241.19632-1-ankit.k.nautiyal@intel.com>
 <20250907073241.19632-13-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250907073241.19632-13-ankit.k.nautiyal@intel.com>
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

On Sun, Sep 07, 2025 at 01:02:39PM +0530, Ankit Nautiyal wrote:
> In the current VRR implementation, vrr.vmin and vrr.guardband are set such
> that they do not need to change when switching from fixed refresh rate to
> variable refresh rate. Specifically, vrr.guardband is always set to match
> the vblank length. This approach works for most cases, but not for LRR,
> where the guardband would need to change while the VRR timing generator is
> still active.
> 
> With the VRR TG always active, live updates to guardband are unsafe and not
> recommended. To ensure hardware safety, guardband was moved out of the
> !fastset block, meaning any change now requires a full modeset.
> This breaks seamless LRR switching, which was previously supported.
> 
> Since the problem arises from guardband being matched to the vblank length,
> solution is to use a minimal, sufficient static value, instead. So we use a
> static guardband defined during mode-set that fits within the smallest
> expected vblank and remains unchanged in case of features like LRR where
> vtotal changes. To compute this minimum guardband we take into account
> latencies/delays due to different features as mentioned in the Bspec.
> 
> v2:
> -Use helpers for dsc/scaler prefill latencies. (Mitul)
> -Account for pkgc latency and take max of pkgc and sagv latencies.
> v3: Use new helper for PSR2/Panel Replay latency.
> v4: Avoid re-setting the Vmin/Flipline for optimized guardband.
> 
> Bspec: 70151
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> (#v3)
> ---
>  drivers/gpu/drm/i915/display/intel_display.c |   2 +-
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 127 ++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_vrr.h     |   3 +-
>  3 files changed, 128 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index fb072275b1c7..3fa94675d5e1 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -4902,7 +4902,6 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
>  	struct drm_connector *connector;
>  	int i;
>  
> -	intel_vrr_compute_config_late(crtc_state);
>  
>  	for_each_new_connector_in_state(&state->base, connector,
>  					conn_state, i) {
> @@ -4914,6 +4913,7 @@ intel_modeset_pipe_config_late(struct intel_atomic_state *state,
>  		    !encoder->compute_config_late)
>  			continue;
>  
> +		intel_vrr_compute_config_late(crtc_state, conn_state);
>  		ret = encoder->compute_config_late(encoder, crtc_state,
>  						   conn_state);
>  		if (ret)
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 855974174afd..fff684eb2514 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -6,12 +6,15 @@
>  
>  #include <drm/drm_print.h>
>  
> +#include "intel_alpm.h"
>  #include "intel_de.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
>  #include "intel_vrr.h"
>  #include "intel_vrr_regs.h"
> +#include "skl_scaler.h"
> +#include "skl_watermark.h"
>  
>  #define FIXED_POINT_PRECISION		100
>  #define CMRR_PRECISION_TOLERANCE	10
> @@ -413,15 +416,135 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	}
>  }
>  
> -void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state)
> +static
> +int scaler_prefill_latency(struct intel_crtc_state *crtc_state, int linetime_us)
> +{
> +	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
> +	u64 hscale_k, vscale_k;
> +	int cdclk_adjustment;
> +	int num_scaler_users;
> +
> +	/*
> +	 * Assuming:
> +	 * Both scaler enabled.
> +	 * scaler 1 downscaling factor as 2 x 2 (Horiz x Vert)
> +	 * scaler 2 downscaling factor as 2 x 1 (Horiz x Vert)
> +	 * Cdclk Adjustment : 1
> +	 */
> +	num_scaler_users = 2;
> +	hscale_k = 2 * 1000;
> +	vscale_k = 2 * 1000;
> +	cdclk_adjustment = 1;
> +
> +	return intel_vrr_guardband_scaler_latency(num_scaler_users, hscale_k, vscale_k,
> +						  chroma_downscaling_factor,
> +						  cdclk_adjustment,
> +						  linetime_us);
> +}
> +
> +static
> +int dsc_prefill_latency(struct intel_crtc_state *crtc_state, int linetime_us)
> +{
> +#define MAX_SCALERS 2
> +	int chroma_downscaling_factor = skl_scaler_chroma_downscale_factor(crtc_state);
> +	u64 hscale_k[MAX_SCALERS], vscale_k[MAX_SCALERS];
> +	int cdclk_adjustment;
> +	int num_scaler_users;
> +
> +	/*
> +	 * Assuming:
> +	 * Both scaler enabled.
> +	 * scaler 1 downscaling factor as 2 x 2 (Horiz x Vert)
> +	 * scaler 2 downscaling factor as 2 x 1 (Horiz x Vert)
> +	 * Cdclk Adjustment : 1
> +	 */
> +	num_scaler_users = MAX_SCALERS;
> +	hscale_k[0] = 2 * 1000;
> +	vscale_k[0] = 2 * 1000;
> +	hscale_k[1] = 2 * 1000;
> +	vscale_k[1] = 1 * 1000;
> +
> +	cdclk_adjustment = 1;
> +
> +	return intel_vrr_guardband_dsc_latency(num_scaler_users, hscale_k, vscale_k,
> +					       chroma_downscaling_factor,
> +					       cdclk_adjustment,
> +					       linetime_us);
> +}
> +
> +static
> +int intel_vrr_compute_guardband(struct intel_crtc_state *crtc_state,
> +				struct intel_connector *connector)
> +{
> +	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	int dsc_prefill_time = 0;
> +	int psr2_pr_latency = 0;
> +	int scaler_prefill_time;
> +	int wm0_prefill_time;
> +	int pkgc_max_latency;
> +	int sagv_latency;
> +	int sdp_latency = 0;
> +	int guardband_us;
> +	int linetime_us;
> +	int guardband;
> +	int pm_delay;
> +
> +	linetime_us = DIV_ROUND_UP(adjusted_mode->crtc_htotal * 1000,
> +				   adjusted_mode->crtc_clock);
> +
> +	pkgc_max_latency = skl_watermark_max_latency(display, 1);
> +	sagv_latency = display->sagv.block_time_us;
> +
> +	/* Assuming max wm0 lines = 4 */
> +	wm0_prefill_time = 4 * linetime_us + 20;
> +
> +	scaler_prefill_time = scaler_prefill_latency(crtc_state, linetime_us);
> +
> +	if (crtc_state->dsc.compression_enable)
> +		dsc_prefill_time = dsc_prefill_latency(crtc_state, linetime_us);
> +
> +	pm_delay = crtc_state->framestart_delay +
> +		   max(sagv_latency, pkgc_max_latency) +
> +		   wm0_prefill_time +
> +		   scaler_prefill_time +
> +		   dsc_prefill_time;
> +
> +	switch (connector->base.connector_type) {
> +	case DRM_MODE_CONNECTOR_eDP:
> +	case DRM_MODE_CONNECTOR_DisplayPort:
> +		psr2_pr_latency = intel_alpm_compute_max_link_wake_latency(crtc_state, true);
> +		sdp_latency = intel_dp_compute_sdp_latency(crtc_state, true);
> +		break;
> +	default:
> +		break;
> +	}
> +
> +	guardband_us = max(sdp_latency, psr2_pr_latency);
> +	guardband_us = max(guardband_us, pm_delay);
> +
> +	guardband = DIV_ROUND_UP(guardband_us, linetime_us);
> +
> +	/* guardband cannot be more than the Vmax vblank */
> +	guardband = min(guardband, crtc_state->vrr.vmax - adjusted_mode->crtc_vblank_start);
> +
> +	return guardband;
> +}
> +
> +void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state,
> +				   struct drm_connector_state *conn_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	struct intel_connector *connector =
> +		to_intel_connector(conn_state->connector);
>  
>  	if (!intel_vrr_possible(crtc_state))
>  		return;
>  
> -	if (DISPLAY_VER(display) >= 13) {
> +	if (intel_vrr_always_use_vrr_tg(display)) {
> +		crtc_state->vrr.guardband = intel_vrr_compute_guardband(crtc_state, connector);

This all looks to be in the wrong place. It needs to be done as part of
intel_crtc_compute_vblank_delay() which then updates crtc_vblank_start
to reflect reality instead of leaving some incorrect junk in there.
Presumably that is why you also had to do that
intel_dsb_wait_for_delayed_vblank() hack.

> +	} else if (DISPLAY_VER(display) >= 13) {
>  		crtc_state->vrr.guardband =
>  			crtc_state->vrr.vmin - adjusted_mode->crtc_vblank_start;
>  	} else {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.h b/drivers/gpu/drm/i915/display/intel_vrr.h
> index 950041647e47..362638fd0d66 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.h
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.h
> @@ -21,7 +21,8 @@ bool intel_vrr_possible(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_check_modeset(struct intel_atomic_state *state);
>  void intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			      struct drm_connector_state *conn_state);
> -void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state);
> +void intel_vrr_compute_config_late(struct intel_crtc_state *crtc_state,
> +				   struct drm_connector_state *conn_state);
>  void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_enable(const struct intel_crtc_state *crtc_state);
>  void intel_vrr_send_push(struct intel_dsb *dsb,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
