Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 816E6ADC553
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Jun 2025 10:48:37 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 08B4110E530;
	Tue, 17 Jun 2025 08:48:33 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="LjVuQ2vQ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 8DADC10E242;
 Tue, 17 Jun 2025 08:48:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750150112; x=1781686112;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=UG9C5FDZpc4cJsu7XSfRUxbPEX5G/ueFG4eNpbguZkw=;
 b=LjVuQ2vQQONxOAivsuG6fLCroX9hM4MV354rsHipsgDXjKMGnBNB5309
 m9/CvNFuN0W2UP4pZ+kyIRl1uSRNsbHF4Dcwju2nWZn9fSvYT17WCl2XT
 6QyT44lku/zyi3QUi/9CHCIU9Ri+9YS+Cj30xUnpdlBPC9b1nKj3shyA+
 sSqUqqWQhLK6kEn1dKFq2sM0FGhlK1LkDusDDGueFnz5C0zA552uukOHs
 bLQxEe+Fn30UomYWojKYJH8eyM5H7xfr56uCBGMszxiHD/djQFnn6QFow
 CYcznDeNJ3ItSwLOzF+GZeRDGdESF1Rg/C2mAJ3WqvGqx0N96+eoe9Cu1 w==;
X-CSE-ConnectionGUID: J/JMMdmWRI+VXEM6g7yWeQ==
X-CSE-MsgGUID: afnBlRWyRPavoGPUVLNWhA==
X-IronPort-AV: E=McAfee;i="6800,10657,11465"; a="62967057"
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="62967057"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 01:48:30 -0700
X-CSE-ConnectionGUID: mehNIyKNRCe/SvdY2ajh9Q==
X-CSE-MsgGUID: ahuxhzNyQiCRj52Dk82Jlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,242,1744095600"; d="scan'208";a="149080295"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.111])
 by fmviesa008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jun 2025 01:48:28 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: shawn.c.lee@intel.com, Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH] drm/i915/panel: register drm_panel and call
 prepare/unprepare for eDP
In-Reply-To: <20250617-edp_panel-v1-1-ce1a581e8fcd@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250617-edp_panel-v1-1-ce1a581e8fcd@intel.com>
Date: Tue, 17 Jun 2025 11:48:25 +0300
Message-ID: <03326a6c7e533816fd8e247c388fcb4284610a88@intel.com>
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

On Tue, 17 Jun 2025, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> Allocate and register drm_panel to allow the panel_follower framework to
> detect the eDP panel and pass drm_connector::kdev device to drm_panel
> allocation for matching.
> Call drm_panel_prepare/unprepare in ddi_enable for eDP to allow the
> followers to get notified of the panel power state changes.
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>
> ---
> v1: Initial patch version based on the panel_follower added for DSI by
> Jani.
> ---
>  drivers/gpu/drm/i915/display/intel_backlight.h |  1 +
>  drivers/gpu/drm/i915/display/intel_ddi.c       |  4 ++++
>  drivers/gpu/drm/i915/display/intel_dp.c        |  6 +++---
>  drivers/gpu/drm/i915/display/intel_dp.h        |  1 +
>  drivers/gpu/drm/i915/display/intel_panel.c     | 20 ++++++++++++++++----
>  5 files changed, 25 insertions(+), 7 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_backlight.h b/drivers/gpu/drm/i915/display/intel_backlight.h
> index 339643f6389789a9b52c4c1d74e03d8f15a6efa6..ebeb6448188f0b8cf45edd1093439bd6b6e63111 100644
> --- a/drivers/gpu/drm/i915/display/intel_backlight.h
> +++ b/drivers/gpu/drm/i915/display/intel_backlight.h
> @@ -18,6 +18,7 @@ enum pipe;
>  
>  void intel_backlight_init_funcs(struct intel_panel *panel);
>  int intel_backlight_setup(struct intel_connector *connector, enum pipe pipe);
> +void intel_edp_backlight_setup(struct intel_connector *connector);
>  void intel_backlight_destroy(struct intel_panel *panel);
>  
>  void intel_backlight_enable(const struct intel_crtc_state *crtc_state,
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index cbd1060e966431e0884aa9df7b5e6d2f27fde6d5..36aa6d14589d37614fe13ba15baf4c7e60014e2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -73,6 +73,7 @@
>  #include "intel_lspcon.h"
>  #include "intel_mg_phy_regs.h"
>  #include "intel_modeset_lock.h"
> +#include "intel_panel.h"
>  #include "intel_pfit.h"
>  #include "intel_pps.h"
>  #include "intel_psr.h"
> @@ -3355,6 +3356,8 @@ static void intel_ddi_enable_dp(struct intel_atomic_state *state,
>  	drm_connector_update_privacy_screen(conn_state);
>  	intel_edp_backlight_on(crtc_state, conn_state);
>  
> +	intel_panel_prepare(crtc_state, conn_state);
> +
>  	if (!intel_lspcon_active(dig_port) || intel_dp_has_hdmi_sink(&dig_port->dp))
>  		intel_dp_set_infoframes(encoder, true, crtc_state, conn_state);
>  
> @@ -3552,6 +3555,7 @@ static void intel_ddi_disable_dp(struct intel_atomic_state *state,
>  
>  	intel_dp->link.active = false;
>  
> +	intel_panel_unprepare(old_conn_state);
>  	intel_psr_disable(intel_dp, old_crtc_state);
>  	intel_alpm_disable(intel_dp);
>  	intel_edp_backlight_off(old_conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 277b40b13948ed964f20aa1243f76aa263615360..451b6be6106d6ac244d23fe2d997b4f7b3e9f002 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -6464,9 +6464,9 @@ intel_edp_add_properties(struct intel_dp *intel_dp)
>  						       fixed_mode->vdisplay);
>  }
>  
> -static void intel_edp_backlight_setup(struct intel_dp *intel_dp,
> -				      struct intel_connector *connector)
> +void intel_edp_backlight_setup(struct intel_connector *connector)

Why?

>  {
> +	struct intel_dp *intel_dp = intel_attached_dp(connector);
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	enum pipe pipe = INVALID_PIPE;
>  
> @@ -6627,7 +6627,7 @@ static bool intel_edp_init_connector(struct intel_dp *intel_dp,
>  
>  	intel_panel_init(connector, drm_edid);
>  
> -	intel_edp_backlight_setup(intel_dp, connector);
> +	intel_panel_register(connector);

First, this is *way* too early to register the panel. Second, now it's
being done twice, and you'll have errors at probe.

This change is not needed.

>  
>  	intel_edp_add_properties(intel_dp);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 0657f568119662828344cfddbe876f2acf2596d9..2544783d3d5ad0d8e334fbe3a9ab874e7fee559e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -214,5 +214,6 @@ int intel_dp_compute_min_hblank(struct intel_crtc_state *crtc_state,
>  
>  int intel_dp_dsc_bpp_step_x16(const struct intel_connector *connector);
>  void intel_dp_dpcd_set_probe(struct intel_dp *intel_dp, bool force_on_external);
> +void intel_edp_backlight_setup(struct intel_connector *connector);
>  
>  #endif /* __INTEL_DP_H__ */
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index f956919dc648eab507cdcca149672c1ce0173481..e884d9de3666b17197e3003af7bd9388b2889e6f 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -511,11 +511,21 @@ int intel_panel_register(struct intel_connector *connector)
>  	struct intel_panel *panel = &connector->panel;
>  	int ret;
>  
> -	ret = intel_backlight_device_register(connector);
> -	if (ret)
> -		return ret;
> +	switch (connector->base.connector_type) {
> +	case DRM_MODE_CONNECTOR_DSI:
> +		ret = intel_backlight_device_register(connector);
> +		if (ret)
> +			return ret;
> +		break;
> +	case DRM_MODE_CONNECTOR_eDP:
> +		intel_edp_backlight_setup(connector);
> +		break;
> +	default:
> +		break;
> +	}

Yeah, this is completely wrong. Setup and register are two different
phases, and now you'll end up setting up backlight twice and not
registering it even once for eDP.

This change is not needed.

>  
> -	if (connector->base.connector_type == DRM_MODE_CONNECTOR_DSI) {
> +	if (connector->base.connector_type == DRM_MODE_CONNECTOR_DSI ||
> +	    connector->base.connector_type == DRM_MODE_CONNECTOR_eDP) {
>  		struct device *dev = connector->base.kdev;
>  		struct drm_panel *base;
>  
> @@ -561,6 +571,7 @@ int intel_panel_register(struct intel_connector *connector)
>  
>  err:
>  	intel_backlight_device_unregister(connector);
> +	intel_backlight_destroy(panel);

This is the register failure path, you can't call destroy here.

>  
>  	return ret;
>  }
> @@ -573,6 +584,7 @@ void intel_panel_unregister(struct intel_connector *connector)
>  		drm_panel_remove(panel->base);
>  
>  	intel_backlight_device_unregister(connector);
> +	intel_backlight_destroy(panel);

This is the unregister path, you can't call destroy here.

>  }
>  
>  /* Notify followers, if any, about power being up. */
>
> ---
> base-commit: 6f72990d9e0fe084afe257621edd730444a8bc52
> change-id: 20250617-edp_panel-fb90b1c7362a
>
> Best regards,

-- 
Jani Nikula, Intel
