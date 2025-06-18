Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2AC65ADE92E
	for <lists+intel-gfx@lfdr.de>; Wed, 18 Jun 2025 12:39:53 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 28E8910E046;
	Wed, 18 Jun 2025 10:39:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="HydGfLqp";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 45C2810E037;
 Wed, 18 Jun 2025 10:39:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750243190; x=1781779190;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=8VBXvAOQwzWRgzGMy/6CXlW3i8znXlpFBu/nmR4APlo=;
 b=HydGfLqp+koG4c/jgoUwEQzT14mhBHlp5hNqD7o9b2XevjYXuJn9Dl4L
 xQkf8MEl08aGy8ydgYeOcgV7K+X/8RXRvAwQnIpQBiELcpaKZhS30QT6i
 z0kQGC47embqJCR/cMvESSGhPyhXO24PXE0PXFSOnf960CPgHK2I05nrv
 uqE2xhW2zN6wdzTdFZ2MFhEdXwEhvwXXP5kNLHL5Xw5IwfwhSlUQjCUtw
 KKXlxm/HIzes2IhEx4vmmzaxZtz+/xJx9nfY1WNBzBjbsbxwugmAPXF+L
 k3JV1CwD8yY9aPLJPQPueATqTTXMgs3ZlDmHDeUlZ6Mt92D9LaPv32jPA A==;
X-CSE-ConnectionGUID: vVXYVWxbRRmcvo4LV/pTgw==
X-CSE-MsgGUID: FbDwxJAARRCjg0b8Ikx12A==
X-IronPort-AV: E=McAfee;i="6800,10657,11467"; a="52322225"
X-IronPort-AV: E=Sophos;i="6.16,245,1744095600"; d="scan'208";a="52322225"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 03:39:49 -0700
X-CSE-ConnectionGUID: Nz1uYD6ZRuyyDAd/HsnpaQ==
X-CSE-MsgGUID: g0Xfm/FwQ+2QchoWPNwBiQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,245,1744095600"; d="scan'208";a="149275982"
Received: from cpetruta-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.161])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jun 2025 03:39:45 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Arun R Murthy <arun.r.murthy@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: shawn.c.lee@intel.com, Arun R Murthy <arun.r.murthy@intel.com>
Subject: Re: [PATCH v2] drm/i915/panel: register drm_panel and call
 prepare/unprepare for eDP
In-Reply-To: <20250618-edp_panel-v2-1-41487e741c9d@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250618-edp_panel-v2-1-41487e741c9d@intel.com>
Date: Wed, 18 Jun 2025 13:39:43 +0300
Message-ID: <06ba2f54806e3c7badcc2b89d0e1d70db8ebc409@intel.com>
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

On Wed, 18 Jun 2025, Arun R Murthy <arun.r.murthy@intel.com> wrote:
> Allocate and register drm_panel to allow the panel_follower framework to
> detect the eDP panel and pass drm_connector::kdev device to drm_panel
> allocation for matching.
> Call drm_panel_prepare/unprepare in ddi_enable for eDP to allow the
> followers to get notified of the panel power state changes.
>
> v2: remove backlight setup from panel_register (Jani)
>
> Signed-off-by: Arun R Murthy <arun.r.murthy@intel.com>

Might mention that this is not universally for eDP, but rather eDP on
DDI platforms.

Reviewed-by: Jani Nikula <jani.nikula@intel.com>

> ---
> v1: Initial patch version based on the panel_follower added for DSI by
> Jani.
> ---
> Changes in v2:
> - EDITME: describe what is new in this series revision.
> - EDITME: use bulletpoints and terse descriptions.
> - Link to v1: https://lore.kernel.org/r/20250617-edp_panel-v1-1-ce1a581e8fcd@intel.com
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c   | 4 ++++
>  drivers/gpu/drm/i915/display/intel_panel.c | 3 ++-
>  2 files changed, 6 insertions(+), 1 deletion(-)
>
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
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index f956919dc648eab507cdcca149672c1ce0173481..84de4d128b7bd34ae9bfad222c51aade01f06b8c 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -515,7 +515,8 @@ int intel_panel_register(struct intel_connector *connector)
>  	if (ret)
>  		return ret;
>  
> -	if (connector->base.connector_type == DRM_MODE_CONNECTOR_DSI) {
> +	if (connector->base.connector_type == DRM_MODE_CONNECTOR_DSI ||
> +	    connector->base.connector_type == DRM_MODE_CONNECTOR_eDP) {
>  		struct device *dev = connector->base.kdev;
>  		struct drm_panel *base;
>  
>
> ---
> base-commit: 6f72990d9e0fe084afe257621edd730444a8bc52
> change-id: 20250617-edp_panel-fb90b1c7362a
>
> Best regards,

-- 
Jani Nikula, Intel
