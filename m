Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA52976847
	for <lists+intel-gfx@lfdr.de>; Thu, 12 Sep 2024 13:52:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id A736F10E176;
	Thu, 12 Sep 2024 11:52:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="OOxINGaV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.17])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BD10310E176
 for <intel-gfx@lists.freedesktop.org>; Thu, 12 Sep 2024 11:52:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726141947; x=1757677947;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=6w6gV5DDg3L5nP6EUG9DqQG4wt26sTPOhbxGVZzHa+g=;
 b=OOxINGaVNshQKx2H2UWSDchkyBaL4GISPA/jKjiv8gFnPmkd08M9i3Uk
 E5WPQojFAPgn4yPgG2mhPIOH5/+NSvYs6gBA+dlFAFs1JmWGCk5reGOKC
 cG0FRFYVPuvUALXECc7WmwlfB4Ltpi6jJTDTyhILGvuXL+13Uaz97L2np
 jNeqg3cS1a70IVn/MR7s9o1hDNMg+c9sZy3pL72HSKBJt2FGcuUaNebXo
 fnBilExoYndO2nQSzBE18v0L5ZHmGaL6LfKmgvFzNakDDBz8F4l76TcoN
 /FKX5XnwmptdSvMp5C2877X8caxDRXs5FmYgxOQrsYt7mBUcv7+i5Psbk w==;
X-CSE-ConnectionGUID: b6TqZWA7RLakqnCdGsLJqQ==
X-CSE-MsgGUID: LTHzdk7ITDmJYF60iGXtXA==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="25137352"
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="25137352"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa109.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2024 04:52:26 -0700
X-CSE-ConnectionGUID: cLtQIV1dTZmn8gh1EZZHrg==
X-CSE-MsgGUID: XVkqeuJxTTeAERPjgwySOw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,222,1719903600"; d="scan'208";a="67751278"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 12 Sep 2024 04:52:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 12 Sep 2024 14:52:22 +0300
Date: Thu, 12 Sep 2024 14:52:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 2/4] drm/i915/display: Use joined pipes in
 intel_dp_joiner_needs_dsc
Message-ID: <ZuLV9t26JlPgwSoR@intel.com>
References: <20240912114330.1244982-1-ankit.k.nautiyal@intel.com>
 <20240912114330.1244982-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240912114330.1244982-3-ankit.k.nautiyal@intel.com>
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

On Thu, Sep 12, 2024 at 05:13:28PM +0530, Ankit Nautiyal wrote:
> In preparation of ultrajoiner, use number of joined pipes in the
> intel_dp_joiner_needs_dsc helper, instead of joiner flag.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 16 ++++++++++++----
>  drivers/gpu/drm/i915/display/intel_dp.h     |  3 ++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 10 ++++++++--
>  3 files changed, 22 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index cb0f6db5f8e7..f6900f1ff36f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1318,6 +1318,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	u8 dsc_slice_count = 0;
>  	enum drm_mode_status status;
>  	bool dsc = false, joiner = false;
> +	int num_joined_pipes;
>  
>  	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
>  	if (status != MODE_OK)
> @@ -1343,6 +1344,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  		joiner = true;
>  		max_dotclk *= 2;
>  	}
> +
> +	num_joined_pipes = joiner ? 2 : 1;
> +
>  	if (target_clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
>  
> @@ -1399,7 +1403,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  		dsc = dsc_max_compressed_bpp && dsc_slice_count;
>  	}
>  
> -	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc)
> +	if (intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes) && !dsc)
>  		return MODE_CLOCK_HIGH;
>  
>  	if (mode_rate > max_rate && !dsc)
> @@ -2513,14 +2517,15 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
>  	return intel_dp_link_required(adjusted_mode->crtc_clock, bpp);
>  }
>  
> -bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner)
> +bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
> +			       int num_joined_pipes)
>  {
>  	/*
>  	 * Pipe joiner needs compression up to display 12 due to bandwidth
>  	 * limitation. DG2 onwards pipe joiner can be enabled without
>  	 * compression.
>  	 */
> -	return DISPLAY_VER(i915) < 13 && use_joiner;
> +	return DISPLAY_VER(i915) < 13 && num_joined_pipes == 2;
>  }
>  
>  static int
> @@ -2538,6 +2543,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct link_config_limits limits;
>  	bool dsc_needed, joiner_needs_dsc;
> +	int num_joined_pipes;
>  	int ret = 0;
>  
>  	if (pipe_config->fec_enable &&
> @@ -2549,7 +2555,9 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  				 adjusted_mode->crtc_clock))
>  		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
>  
> -	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, pipe_config->joiner_pipes);
> +	num_joined_pipes = pipe_config->joiner_pipes ? 2 : 1;

This could use intel_crtc_num_joined_pipes() already.

> +
> +	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, num_joined_pipes);
>  
>  	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
>  		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 1b9aaddd8c35..3aef57dd463a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -123,7 +123,8 @@ int intel_dp_effective_data_rate(int pixel_clock, int bpp_x16,
>  				 int bw_overhead);
>  int intel_dp_max_link_data_rate(struct intel_dp *intel_dp,
>  				int max_dprx_rate, int max_dprx_lanes);
> -bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915, bool use_joiner);
> +bool intel_dp_joiner_needs_dsc(struct drm_i915_private *i915,
> +			       int num_joined_pipes);
>  bool intel_dp_has_joiner(struct intel_dp *intel_dp);
>  bool intel_dp_needs_vsc_sdp(const struct intel_crtc_state *crtc_state,
>  			    const struct drm_connector_state *conn_state);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 15541932b809..1868747cfb12 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -568,6 +568,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  		&pipe_config->hw.adjusted_mode;
>  	struct link_config_limits limits;
>  	bool dsc_needed, joiner_needs_dsc;
> +	int num_joined_pipes;
>  	int ret = 0;
>  
>  	if (pipe_config->fec_enable &&
> @@ -582,11 +583,13 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  				 adjusted_mode->crtc_clock))
>  		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
>  
> +	num_joined_pipes = pipe_config->joiner_pipes ? 2 : 1;

same here

Otherwise lgtm.

> +
>  	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_pch_encoder = false;
>  
> -	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, pipe_config->joiner_pipes);
> +	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes);
>  
>  	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
>  		     !intel_dp_mst_compute_config_limits(intel_dp,
> @@ -1426,6 +1429,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  	u16 dsc_max_compressed_bpp = 0;
>  	u8 dsc_slice_count = 0;
>  	int target_clock = mode->clock;
> +	int num_joined_pipes;
>  
>  	if (drm_connector_is_unregistered(connector)) {
>  		*status = MODE_ERROR;
> @@ -1471,6 +1475,8 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  		max_dotclk *= 2;
>  	}
>  
> +	num_joined_pipes = joiner ? 2 : 1;
> +
>  	ret = drm_modeset_lock(&mgr->base.lock, ctx);
>  	if (ret)
>  		return ret;
> @@ -1508,7 +1514,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  		dsc = dsc_max_compressed_bpp && dsc_slice_count;
>  	}
>  
> -	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc) {
> +	if (intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes) && !dsc) {
>  		*status = MODE_CLOCK_HIGH;
>  		return 0;
>  	}
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
