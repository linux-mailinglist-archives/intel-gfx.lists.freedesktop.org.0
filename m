Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 221739F4922
	for <lists+intel-gfx@lfdr.de>; Tue, 17 Dec 2024 11:43:49 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5D09810E8F3;
	Tue, 17 Dec 2024 10:43:47 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="emv9ikqX";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0D82610E8EC;
 Tue, 17 Dec 2024 10:43:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1734432225; x=1765968225;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=AVmvKu03boyP2oZvO8HflyWRhCNk+66FDDZ7C7JMcPc=;
 b=emv9ikqXx2f035DexE9CizEC6np1+cLZX5+DPU9/DR6vBlWsFbySezas
 UtXimCZI4mYXyqtwQ1+0Y4mm8iNMLC1nDEr+AXi7EGgo+ahomnmmflnsa
 18K1TasuILH+nRrCGuKN2YkGGItvYEEdA648cCjYh8H/yjzsOV/F23lcy
 Xj3NRb33kXucLZecd0L0xSzVTH85bjyO8mYzL3a9MVaFq/e3EDH7EnW9r
 p92evrW6Lwbmw5M9ah8Af2z/JcTJsL4xdxpMDijAe4IDFJqO/NHkKpibq
 V3WHHyzSfjXdLhVLlccwKko9F7v/u9CZgEZbz9zBmsdg3NJmFueTcj5pu w==;
X-CSE-ConnectionGUID: jaoHO9ohQKu0LWuvdE3kwA==
X-CSE-MsgGUID: GreUAOqBRuObXBcZYaHZFw==
X-IronPort-AV: E=McAfee;i="6700,10204,11288"; a="34581288"
X-IronPort-AV: E=Sophos;i="6.12,241,1728975600"; d="scan'208";a="34581288"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 02:43:45 -0800
X-CSE-ConnectionGUID: iLwvu48QQQ6xkndtpFTEkg==
X-CSE-MsgGUID: /j1sQWYpS2qPIpoi3b5srg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="128476225"
Received: from carterle-desk.ger.corp.intel.com (HELO localhost)
 ([10.245.246.55])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2024 02:43:42 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: intel-xe@lists.freedesktop.org, suraj.kandpal@intel.com,
 imre.deak@intel.com
Subject: Re: [PATCH 01/14] drm/i915/dp: Refactor FEC support check in
 intel_dp_supports_dsc
In-Reply-To: <20241217093244.3938132-2-ankit.k.nautiyal@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20241217093244.3938132-1-ankit.k.nautiyal@intel.com>
 <20241217093244.3938132-2-ankit.k.nautiyal@intel.com>
Date: Tue, 17 Dec 2024 12:43:39 +0200
Message-ID: <874j32si78.fsf@intel.com>
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

On Tue, 17 Dec 2024, Ankit Nautiyal <ankit.k.nautiyal@intel.com> wrote:
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
> v2: Pass intel_dp to adjust_limits_for_dsc_hblank_expansion_quirk
> instead of deriving it from connector. (Jani)
>
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     |  8 +++++---
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 ++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++----
>  3 files changed, 13 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index fba3af338280..908b9887f89b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1627,13 +1627,15 @@ bool intel_dp_supports_fec(struct intel_dp *intel_dp,
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

Unrelated side note, I wonder if we should start using
intel_dp_link_foo() naming for things that imply intel_dp_source_foo()
&& intel_dp_sink_foo(). I find myself too often double checking if
things like intel_dp_supports_something() actually means the source or
the combination of source and sink (i.e. link).

Anyway,

Reviewed-by: Jani Nikula <jani.nikula@intel.com>


>  
>  	return intel_dsc_source_support(crtc_state);
> @@ -2373,7 +2375,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  		 intel_dp_supports_fec(intel_dp, connector, pipe_config) &&
>  		 !intel_dp_is_uhbr(pipe_config));
>  
> -	if (!intel_dp_supports_dsc(connector, pipe_config))
> +	if (!intel_dp_supports_dsc(intel_dp, connector, pipe_config))
>  		return -EINVAL;
>  
>  	if (!intel_dp_dsc_supports_format(connector, pipe_config->output_format))
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index a1fd21c3b792..03dde9756bdc 100644
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
>  u32 intel_dp_dsc_nearest_valid_bpp(struct intel_display *display, u32 bpp, u32 pipe_bpp);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 326ff20a5a49..4217350eefb0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -519,7 +519,8 @@ hblank_expansion_quirk_needs_dsc(const struct intel_connector *connector,
>  }
>  
>  static bool
> -adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *connector,
> +adjust_limits_for_dsc_hblank_expansion_quirk(struct intel_dp *intel_dp,
> +					     const struct intel_connector *connector,
>  					     const struct intel_crtc_state *crtc_state,
>  					     struct link_config_limits *limits,
>  					     bool dsc)
> @@ -532,7 +533,7 @@ adjust_limits_for_dsc_hblank_expansion_quirk(const struct intel_connector *conne
>  		return true;
>  
>  	if (!dsc) {
> -		if (intel_dp_supports_dsc(connector, crtc_state)) {
> +		if (intel_dp_supports_dsc(intel_dp, connector, crtc_state)) {
>  			drm_dbg_kms(display->drm,
>  				    "[CRTC:%d:%s][CONNECTOR:%d:%s] DSC needed by hblank expansion quirk\n",
>  				    crtc->base.base.id, crtc->base.name,
> @@ -588,7 +589,8 @@ mst_stream_compute_config_limits(struct intel_dp *intel_dp,
>  					    limits))
>  		return false;
>  
> -	return adjust_limits_for_dsc_hblank_expansion_quirk(connector,
> +	return adjust_limits_for_dsc_hblank_expansion_quirk(intel_dp,
> +							    connector,
>  							    crtc_state,
>  							    limits,
>  							    dsc);
> @@ -651,7 +653,7 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
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
