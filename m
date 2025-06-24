Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F684AE5ED4
	for <lists+intel-gfx@lfdr.de>; Tue, 24 Jun 2025 10:15:08 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 385C610E04D;
	Tue, 24 Jun 2025 08:15:00 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DD1ZfbrJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AD0910E04D;
 Tue, 24 Jun 2025 08:14:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1750752900; x=1782288900;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=RAlqaCxCPbROVnBS9+qnh3V3SB++VBOKILT02aOgrdU=;
 b=DD1ZfbrJD8HNMmh7KATlrmXDAE3BrfPE0Zvcihn39a5ZYSBWLGO9f34s
 8WOmb1evoYlRAIuZAKrQo51TPFKdRvXofFjuSuoMCacls78KkLotRK2KJ
 /mcfp4mRtfwn+LoBmYXJk9GOkHXjy7toLtJX04WsPXHGkQKrhbuNUi8Ju
 oboTzyxtOroU1q4oPZ2cQ5xARYUmm8fhsmhfrIR+f1MGBxB3knrfZRZbZ
 Dah961Hdy9mDoZfIZZchoxrKMKshaMVGta/dNqoaBLeLreNlq07SEG6kI
 A9BiuSIplzr8QFfbeJl7uSrbfT2cOzqKj9gwicCohqr2H7XcR7InpCO/o g==;
X-CSE-ConnectionGUID: LJRSoIM+R46UUQbUzgqkkg==
X-CSE-MsgGUID: d4owCwRuR0iRJQYysZMLAA==
X-IronPort-AV: E=McAfee;i="6800,10657,11473"; a="55610959"
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="55610959"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 01:14:59 -0700
X-CSE-ConnectionGUID: mN5UBeBOQneOMMGI59nMlQ==
X-CSE-MsgGUID: v37lMgP3SyCWvYGWLInmOg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,261,1744095600"; d="scan'208";a="151429979"
Received: from fdefranc-mobl3.ger.corp.intel.com (HELO localhost)
 ([10.245.246.37])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Jun 2025 01:14:57 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, ankit.k.nautiyal@intel.com
Subject: Re: [PATCH v7 06/18] drm/i915/vrr: Add DC Balance params to crtc_state
In-Reply-To: <20250624074948.671761-7-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250624074948.671761-1-mitulkumar.ajitkumar.golani@intel.com>
 <20250624074948.671761-7-mitulkumar.ajitkumar.golani@intel.com>
Date: Tue, 24 Jun 2025 11:14:54 +0300
Message-ID: <a96572a3450ff97380e25e831ebaf6593f1d75be@intel.com>
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

On Tue, 24 Jun 2025, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Add DC Balance params to crtc_state, also add state checker
> params for related properties.
>
> --v3:
> - Seggregate crtc_state params with this patch. (Ankit)
>
> --v4:
> - Update commit message and header. (Ankit)
> - Add +1 to VMIN and VMAX only when it is non-zero. (Ankit)
>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> Reviewed-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c  |  7 ++++++
>  .../drm/i915/display/intel_display_types.h    |  7 ++++++
>  drivers/gpu/drm/i915/display/intel_vrr.c      | 22 +++++++++++++++++++
>  3 files changed, 36 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index de8bf292897c..939366ecea85 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -5429,6 +5429,13 @@ intel_pipe_config_compare(const struct intel_crtc_state *current_config,
>  		PIPE_CONF_CHECK_LLI(cmrr.cmrr_m);
>  		PIPE_CONF_CHECK_LLI(cmrr.cmrr_n);
>  		PIPE_CONF_CHECK_BOOL(cmrr.enable);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vmin);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vmax);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.guardband);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.slope);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.max_increase);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.max_decrease);
> +		PIPE_CONF_CHECK_I(vrr.dc_balance.vblank_target);
>  	}
>  
>  	if (!fastset || intel_vrr_always_use_vrr_tg(display)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 30c7315fc25e..e5461900c15b 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1316,6 +1316,13 @@ struct intel_crtc_state {
>  		u8 pipeline_full;
>  		u16 flipline, vmin, vmax, guardband;
>  		u32 vsync_end, vsync_start;
> +		struct {
> +			bool enable;
> +			u16 vmin, vmax;
> +			u16 guardband, slope;
> +			u16 max_increase, max_decrease;
> +			u16 vblank_target;
> +		} dc_balance;
>  	} vrr;
>  
>  	/* Content Match Refresh Rate state */
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index d7bc35b07bab..4016da70ece2 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -10,6 +10,7 @@
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
>  #include "intel_dp.h"
> +#include "intel_dmc_regs.h"

Please keep the includes sorted.

>  #include "intel_vrr.h"
>  #include "intel_vrr_regs.h"
>  
> @@ -699,6 +700,8 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> +	enum pipe pipe = crtc->pipe;
>  	u32 trans_vrr_ctl, trans_vrr_vsync;
>  	bool vrr_enable;
>  
> @@ -761,6 +764,25 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  	else
>  		crtc_state->vrr.enable = vrr_enable;
>  
> +	if (HAS_VRR_DC_BALANCE(display)) {
> +		crtc_state->vrr.dc_balance.vmin =
> +			intel_de_read(display, PIPEDMC_DCB_VMIN(pipe)) ?
> +			intel_de_read(display, PIPEDMC_DCB_VMIN(pipe)) + 1 : 0;
> +		crtc_state->vrr.dc_balance.vmax =
> +			intel_de_read(display, PIPEDMC_DCB_VMAX(pipe)) ?
> +			intel_de_read(display, PIPEDMC_DCB_VMAX(pipe)) + 1 : 0;
> +		crtc_state->vrr.dc_balance.guardband =
> +			intel_de_read(display, PIPEDMC_DCB_GUARDBAND(pipe));
> +		crtc_state->vrr.dc_balance.max_increase =
> +			intel_de_read(display, PIPEDMC_DCB_MAX_INCREASE(pipe));
> +		crtc_state->vrr.dc_balance.max_decrease =
> +			intel_de_read(display, PIPEDMC_DCB_MAX_DECREASE(pipe));
> +		crtc_state->vrr.dc_balance.slope =
> +			intel_de_read(display, PIPEDMC_DCB_SLOPE(pipe));
> +		crtc_state->vrr.dc_balance.vblank_target =
> +			intel_de_read(display, PIPEDMC_DCB_VBLANK(pipe));
> +	}
> +
>  	/*
>  	 * #TODO: For Both VRR and CMRR the flag I915_MODE_FLAG_VRR is set for mode_flags.
>  	 * Since CMRR is currently disabled, set this flag for VRR for now.

-- 
Jani Nikula, Intel
