Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id DE1C19DB7E3
	for <lists+intel-gfx@lfdr.de>; Thu, 28 Nov 2024 13:46:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ACF9F10E469;
	Thu, 28 Nov 2024 12:46:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="DrspfwsP";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A6E6D10E44B;
 Thu, 28 Nov 2024 12:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1732798000; x=1764334000;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=A+A5U9X+Yn4TtGluMC1XOjZhWouIzcBY1K07JqEv3Io=;
 b=DrspfwsP56/nlgPsdQTLlija/yuUkKnndRdLAaOL+G0wxN6L3ypRSDKG
 B+9dPBKDsk4solWh3pM4Rg81zmGaOZm7JMOY5qM4cXvaQc/bsFSE7Egmw
 Pn3Cd9nT9Wsv07hsYIQJxOZu1vKI0y3EhYCXE8YJ8t3s1IushCwC3bTSx
 meuPoi2Ay0lO4uDJBbUq4Y58/qtuKTshD7iw21V6Y+FAkFLIJxZanmt9a
 r9hd19p7TnhGPipb9ieaLla7KA1eFn66TSN0t/V5XkWBJwYfCle2kplJz
 AWzPHB6hbGgBxMjND+DEmG7VomMdIi9xvBXQ7WRNjc153Q6gVuma4cA69 w==;
X-CSE-ConnectionGUID: XiS0VYIFQt2433g0PoudOw==
X-CSE-MsgGUID: vivG0jRMSqWFWPR/+5hLog==
X-IronPort-AV: E=McAfee;i="6700,10204,11270"; a="44406705"
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="44406705"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 04:46:40 -0800
X-CSE-ConnectionGUID: LXf6XNK1Q8295fLBUQdmwA==
X-CSE-MsgGUID: OEuQBKfhRRiFU3KjmzZKrA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,192,1728975600"; d="scan'208";a="123076585"
Received: from unknown (HELO localhost) ([10.237.66.160])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Nov 2024 04:46:38 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 imre.deak@intel.com
Subject: Re: [PATCH 01/12] drm/i915/dp: Refactor FEC support check in
 intel_dp_supports_dsc
In-Reply-To: <20241120103802.134295-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241120103802.134295-1-ankit.k.nautiyal@intel.com>
 <20241120103802.134295-2-ankit.k.nautiyal@intel.com>
Date: Thu, 28 Nov 2024 14:46:34 +0200
Message-ID: <878qt38r11.fsf@intel.com>
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

On Wed, 20 Nov 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
> Forward Error Correction is required for DP if we are using DSC but
> is optional for eDP.
>
> Currently the helper intel_dp_supports_dsc checks if fec_enable is set for
> DP or not. The helper is called after fec_enable is set in crtc_state.
>
> Instead of this a better approach would be to:
> first, call intel_dp_supports_dsc to check for DSC support
> (along with FEC requirement for DP) and then set fec_enable for DP
> (if not already set) in crtc_state.
>
> To achieve this, remove the check for fec_enable in the helper and instead
> check for FEC support for DP. With this change the helper
> intel_dp_supports_dsc can be called earlier and return early if DSC is
> not supported. The structure intel_dp is added to the helper to get the
> FEC support for DP.
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 8 +++++---
>  drivers/gpu/drm/i915/display/intel_dp.h     | 3 ++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 +++--
>  3 files changed, 10 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 053a9a4182e7..db9ddbcdd159 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1632,13 +1632,15 @@ bool intel_dp_supports_fec(struct intel_dp *intel_dp,
>  		drm_dp_sink_supports_fec(connector->dp.fec_capability);
>  }
>  
> -bool intel_dp_supports_dsc(const struct intel_connector *connector,
> +bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
> +			   const struct intel_connector *connector,
>  			   const struct intel_crtc_state *crtc_state)
>  {
>  	if (!intel_dp_has_dsc(connector))
>  		return false;
>  
> -	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) && !crtc_state->fec_enable)
> +	if (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) &&
> +	    !intel_dp_supports_fec(intel_dp, connector, crtc_state))
>  		return false;
>  
>  	return intel_dsc_source_support(crtc_state);
> @@ -2376,7 +2378,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
>  		 !intel_dp_is_uhbr(pipe_config));
>  
> -	if (!intel_dp_supports_dsc(connector, pipe_config))
> +	if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
>  		return -EINVAL;
>  
>  	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 48f10876be65..4ae54e9718ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -170,7 +170,8 @@ bool intel_dp_supports_fec(struct intel_dp *intel_dp,
>  			   const struct intel_connector *connector,
>  			   const struct intel_crtc_state *pipe_config);
>  
> -bool intel_dp_supports_dsc(const struct intel_connector *connector,
> +bool intel_dp_supports_dsc(struct intel_dp *intel_dp,
> +			   const struct intel_connector *connector,
>  			   const struct intel_crtc_state *crtc_state);
>  
>  u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 pipe_bpp);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index f058360a2641..0662736849ac 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -498,12 +498,13 @@ adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *conne
>  	struct intel_display *display = to_intel_display(connector);
>  	const struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
>  	int min_bpp_x16 = limits->link.min_bpp_x16;
> +	struct intel_dp *intel_dp = connector->mst_port;

Maybe better to pass in intel_dp here too for clarity. The caller has it
from to_primary_dp().

BR,
Jani.

>  
>  	if (!hblank_expansion_quirk_needs_dsc(connector, crtc_state, limits))
>  		return true;
>  
>  	if (!dsc) {
> -		if (intel_dp_supports_dsc(connector, crtc_state)) {
> +		if (intel_dp_supports_dsc(intel_dp, connector, crtc_state)) {
>  			drm_dbg_kms(display->drm,
>  				    "[CRTC:%d:%s][CONNECTOR:%d:%s] DSC needed by hblank expansion quirk\n",
>  				    crtc->base.base.id, crtc->base.name,
> @@ -648,7 +649,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  			    str_yes_no(ret), str_yes_no(joiner_needs_dsc),
>  			    str_yes_no(intel_dp->force_dsc_en));
>  
> -		if (!intel_dp_supports_dsc(connector, pipe_config))
> +		if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
>  			return -EINVAL;
>  
>  		if (!mst_stream_compute_config_limits(intel_dp, connector,

-- 
Jani Nikula, Intel
