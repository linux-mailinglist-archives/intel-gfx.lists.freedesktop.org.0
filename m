Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B6BCADC58A
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 11:00:20 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 6AACF10E574;
	Tue, 17 Jun 2025 09:00:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Cin/NNK/";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3B48910E574;
 Tue, 17 Jun 2025 09:00:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750150810; x=1781686810;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=DH98pmatN1JCbkredxHB7JQ+2f2lkIt3qhfajC4q/qI=;
 b=Cin/NNK/2mz7Snahv01ewWahFO21gutMCc3Pq/u5uzUPF83z3upzQJgb
 I8fcZYFgWUc1natO64EWPkN/eU4ZAhTmZkMc4DuQl9gPbdIc3w59qKdXI
 +vkzQrGhrmgmkqF09Rt0UBMeZZL6U0uWnCTjA6dGXiRgYJRNTR25WmNZ7
 f3dI3xFSZ2lwMSphAfobkYfJe4ARS+iQ6y+7E7wxPXS9oL46IrWKAQHYv
 9cHZMQIn63S2163rishCW5YOCETP6oskaGg7Cx+p1n9VtJlkGdvVXZ0U6
 XYoQp0K/J8BSzXC/WO0DDcsZMYDRMMQrRfgS81iLhqSOFYoBBLRbTdSn/ A==;
X-CSE-ConnectionGUID: zaokvUoOTymzYEZfJu4CCg==
X-CSE-MsgGUID: 0gxhhdgjS1yywwg5R4ipRQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="52453676"
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="52453676"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 02:00:10 -0700
X-CSE-ConnectionGUID: WMi7m1Q8Qyy9zawuRMeIVA==
X-CSE-MsgGUID: gTaV6AryRmuctm/rHDJzOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="154016332"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.111])
 by orviesa005-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 02:00:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Suraj Kandpal <suraj.kandpal@intel.com>, intel-xe@lists.freedesktop.org,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, Suraj Kandpal <suraj.kandpal@intel.com>,
 Jonathan Cavitt <jonathan.cavitt@intel.com>
Subject: Re: [PATCH] drm/i915/xe3lpd: Prune modes for YUV420
In-Reply-To: <20250617044305.3079459-1-suraj.kandpal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250617044305.3079459-1-suraj.kandpal@intel.com>
Date: Tue, 17 Jun 2025 12:00:03 +0300
Message-ID: <fe5e1c5c968aaa9667a303981c45486c07291bb5@intel.com>
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

On Tue, 17 Jun 2025, Suraj Kandpal <suraj.kandpal@intel.com> wrote:
> We only support resolution up to 4k for single pipe when using
> YUV420 format so we prune these modes and restrict the plane size
> at src. This is because pipe scaling will not support YUV420 scaling
> for hwidth > 4096.
>
> --v2
> -Use output format to check [Ville]
> -Add Bspec references
> -Modify commit messge to point to why this is needed
>
> --v3
> -Use a function skl_scaler_mode_valid which is routed throug
> intel_pfit_mode_valid [Ville]
> -Combine the check conditons [Jonathan]
>
> Bspec: 49247, 50441
> Signed-off-by: Suraj Kandpal <suraj.kandpal@intel.com>
> Reviewed-by: Jonathan Cavitt <jonathan.cavitt@intel.com> #v2
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 10 +++++++---
>  drivers/gpu/drm/i915/display/intel_hdmi.c |  3 +++
>  drivers/gpu/drm/i915/display/intel_pfit.c | 12 ++++++++++++
>  drivers/gpu/drm/i915/display/intel_pfit.h | 12 +++++++++++-
>  drivers/gpu/drm/i915/display/skl_scaler.c | 18 ++++++++++++++++++
>  drivers/gpu/drm/i915/display/skl_scaler.h | 12 ++++++++++++
>  6 files changed, 63 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 277b40b13948..7af936e6ea46 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1418,6 +1418,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	struct intel_display *display = to_intel_display(_connector->dev);
>  	struct intel_connector *connector = to_intel_connector(_connector);
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	enum intel_output_format sink_format, output_format;
>  	const struct drm_display_mode *fixed_mode;
>  	int target_clock = mode->clock;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
> @@ -1451,6 +1452,12 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  						     mode->hdisplay, target_clock);
>  	max_dotclk *= num_joined_pipes;
>  
> +	sink_format = intel_dp_sink_format(connector, mode);
> +	output_format = intel_dp_output_format(connector, sink_format);
> +
> +	if (!intel_pfit_mode_valid(display, mode, output_format, num_joined_pipes, &status))
> +		return status;

I think all _mode_valid() functions should return enum drm_mode_status.

This now returns pretty much the same thing in two different ways, and
leaves status unset if it returns true. That's not a great interface.

> +
>  	if (target_clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
>  
> @@ -1466,11 +1473,8 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  					   intel_dp_mode_min_output_bpp(connector, mode));
>  
>  	if (intel_dp_has_dsc(connector)) {
> -		enum intel_output_format sink_format, output_format;
>  		int pipe_bpp;
>  
> -		sink_format = intel_dp_sink_format(connector, mode);
> -		output_format = intel_dp_output_format(connector, sink_format);
>  		/*
>  		 * TBD pass the connector BPC,
>  		 * for now U8_MAX so that max BPC on that platform would be picked
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 9961ff259298..53ba1e16100d 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2053,6 +2053,9 @@ intel_hdmi_mode_valid(struct drm_connector *_connector,
>  	else
>  		sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  
> +	if (!intel_pfit_mode_valid(display, mode, sink_format, 0, &status))
> +		return status;
> +
>  	status = intel_hdmi_mode_clock_valid(&connector->base, clock, has_hdmi_sink, sink_format);
>  	if (status != MODE_OK) {
>  		if (ycbcr_420_only ||
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.c b/drivers/gpu/drm/i915/display/intel_pfit.c
> index 13541be4d6df..a8fb92c3417a 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.c
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.c
> @@ -14,6 +14,7 @@
>  #include "intel_lvds_regs.h"
>  #include "intel_pfit.h"
>  #include "intel_pfit_regs.h"
> +#include "skl_scaler.h"
>  
>  static int intel_pch_pfit_check_dst_window(const struct intel_crtc_state *crtc_state)
>  {
> @@ -546,6 +547,17 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
>  	return intel_gmch_pfit_check_timings(crtc_state);
>  }
>  
> +bool
> +intel_pfit_mode_valid(struct intel_display *display,
> +		      const struct drm_display_mode *mode,
> +		      enum intel_output_format output_format,
> +		      int num_joined_pipes,
> +		      enum drm_mode_status *status)
> +{
> +	return skl_scaler_mode_valid(display, mode, output_format,
> +				     num_joined_pipes, status);
> +}
> +

Please explain why we're adding the extra dummy layer. Do we expect more
to be added here?

BR,
Jani.


>  int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
>  			      const struct drm_connector_state *conn_state)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_pfit.h b/drivers/gpu/drm/i915/display/intel_pfit.h
> index ef34f9b49d09..ce68ceebc700 100644
> --- a/drivers/gpu/drm/i915/display/intel_pfit.h
> +++ b/drivers/gpu/drm/i915/display/intel_pfit.h
> @@ -6,8 +6,14 @@
>  #ifndef __INTEL_PFIT_H__
>  #define __INTEL_PFIT_H__
>  
> +#include <linux/types.h>
> +
> +enum drm_mode_status;
> +struct drm_display_mode;
>  struct drm_connector_state;
>  struct intel_crtc_state;
> +struct intel_display;
> +enum intel_output_format;
>  
>  int intel_pfit_compute_config(struct intel_crtc_state *crtc_state,
>  			      const struct drm_connector_state *conn_state);
> @@ -17,5 +23,9 @@ void ilk_pfit_get_config(struct intel_crtc_state *crtc_state);
>  void i9xx_pfit_enable(const struct intel_crtc_state *crtc_state);
>  void i9xx_pfit_disable(const struct intel_crtc_state *old_crtc_state);
>  void i9xx_pfit_get_config(struct intel_crtc_state *crtc_state);
> -
> +bool intel_pfit_mode_valid(struct intel_display *display,
> +			   const struct drm_display_mode *mode,
> +			   enum intel_output_format output_format,
> +			   int num_joined_pipes,
> +			   enum drm_mode_status *status);
>  #endif /* __INTEL_PFIT_H__ */
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.c b/drivers/gpu/drm/i915/display/skl_scaler.c
> index d77798499c57..27001b52daf8 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.c
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.c
> @@ -134,6 +134,24 @@ static void skl_scaler_max_dst_size(struct intel_crtc *crtc,
>  	}
>  }
>  
> +bool
> +skl_scaler_mode_valid(struct intel_display *display,
> +		      const struct drm_display_mode *mode,
> +		      enum intel_output_format output_format,
> +		      int num_joined_pipes,
> +		      enum drm_mode_status *status)
> +{
> +	if (num_joined_pipes < 2 && output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> +		if (DISPLAY_VER(display) >= 14 &&
> +		    mode->hdisplay > 4096) {
> +			*status = MODE_NO_420;
> +			return false;
> +		}
> +	}
> +
> +	return true;
> +}
> +
>  static int
>  skl_update_scaler(struct intel_crtc_state *crtc_state, bool force_detach,
>  		  unsigned int scaler_user, int *scaler_id,
> diff --git a/drivers/gpu/drm/i915/display/skl_scaler.h b/drivers/gpu/drm/i915/display/skl_scaler.h
> index 355ea15260ca..37c6543b4731 100644
> --- a/drivers/gpu/drm/i915/display/skl_scaler.h
> +++ b/drivers/gpu/drm/i915/display/skl_scaler.h
> @@ -5,10 +5,16 @@
>  #ifndef INTEL_SCALER_H
>  #define INTEL_SCALER_H
>  
> +#include <linux/types.h>
> +
> +enum drm_mode_status;
> +struct drm_display_mode;
>  struct intel_atomic_state;
>  struct intel_crtc;
>  struct intel_crtc_state;
> +struct intel_display;
>  struct intel_dsb;
> +enum intel_output_format;
>  struct intel_plane;
>  struct intel_plane_state;
>  
> @@ -32,4 +38,10 @@ void skl_scaler_disable(const struct intel_crtc_state *old_crtc_state);
>  
>  void skl_scaler_get_config(struct intel_crtc_state *crtc_state);
>  
> +bool skl_scaler_mode_valid(struct intel_display *display,
> +			   const struct drm_display_mode *mode,
> +			   enum intel_output_format output_format,
> +			   int num_joined_pipes,
> +			   enum drm_mode_status *status);
> +
>  #endif

-- 
Jani Nikula, Intel
