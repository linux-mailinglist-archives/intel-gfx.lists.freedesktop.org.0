Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E5960975B60
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 22:10:29 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7C8D710EA85;
	Wed, 11 Sep 2024 20:10:27 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="TZ8m4UNt";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A4AE10EA85
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 20:10:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726085426; x=1757621426;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=1Sf7qBO4+dzSRfsTkRgDvZmXNIZWJLAQAyKtZ5ufSLM=;
 b=TZ8m4UNtptBdULPRc9DHDoGq7hXaZ6XEpGy5bM9P52xrkdTOpQ4aZy2+
 mOCU2yfU2S0UeR+DZv5He5FzQF/YgR1mg732osr6A3nkOodnZThI/thfi
 ZeZ9CIrTmt5J/JcHNzsBpTt99RfGhM9pRDgCA723hMM3qW/zl+j0QRtS7
 iZPmZdI/8MHsp2T1Y1eocFxm/K0RCBixvNEFISSSBCzRAAhIy9q1Tm9O0
 tGe9O26JjRG5M2eS8aYLLsLfzPt1YhkXfz6UOokeeAR5CYpx+LZJ2OkMG
 AhFiiTpzy103VBHGzN6mpwT84hmMJjSKKVfeU1JxkoNg0DRSAm54IHQEN w==;
X-CSE-ConnectionGUID: vYr8rdNlT2a+gKjZgHXejw==
X-CSE-MsgGUID: OMzOO7U+R5q6sbnfUVsEvQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="42427880"
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="42427880"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 13:10:26 -0700
X-CSE-ConnectionGUID: z44jpb5DSbGTdl2KfNX7dw==
X-CSE-MsgGUID: lKLyY7TRQ5eHAKr4y3jp5g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,220,1719903600"; d="scan'208";a="67537723"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Sep 2024 13:10:23 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2024 23:10:22 +0300
Date: Wed, 11 Sep 2024 23:10:22 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 04/19] drm/i915/dp: Add helper to compute num pipes joined
Message-ID: <ZuH5LhZknO8l4duq@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <20240911131349.933814-5-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240911131349.933814-5-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 11, 2024 at 06:43:34PM +0530, Ankit Nautiyal wrote:
> Add a helper to compute the number of pipes to be joined.
> The num of pipes joined will depend on whether the joiner is required or
> is forced through the debugfs.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 46 +++++++++++++++------
>  drivers/gpu/drm/i915/display/intel_dp.h     |  6 +--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 14 ++++---
>  3 files changed, 46 insertions(+), 20 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 5c30d4488141..333624fcebd7 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1261,17 +1261,33 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>  	return MODE_OK;
>  }
>  
> -bool intel_dp_need_joiner(struct intel_dp *intel_dp,
> -			  struct intel_connector *connector,
> -			  int hdisplay, int clock)
> +static
> +bool intel_dp_needs_bigjoiner(struct intel_dp *intel_dp,
> +			      struct intel_connector *connector,
> +			      int hdisplay, int clock)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  
> -	if (!intel_dp_has_joiner(intel_dp))
> -		return false;
> +	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120;
> +}
>  
> -	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120 ||
> -	       connector->force_joined_pipes == 2;
> +int intel_dp_compute_joiner_pipes(struct intel_dp *intel_dp,
> +				  struct intel_connector *connector,
> +				  int hdisplay, int clock)

s/joiner_pipes/num_pipes/ would seem a more appropriate name
if we want to make i return 1 for the non-joiner cases...

> +{
> +	switch (connector->force_joined_pipes) {
> +	case 2:
> +		return connector->force_joined_pipes;
> +	default:
> +		MISSING_CASE(connector->force_joined_pipes);
> +		fallthrough;
> +	case 0:
> +		if (intel_dp_has_joiner(intel_dp) &&
> +		    intel_dp_needs_bigjoiner(intel_dp, connector, hdisplay, clock))
> +			return 2;
> +	}
> +
> +	return 0;

... which I thought we did, but here we are returning 0?

>  }
>  
>  bool intel_dp_has_dsc(const struct intel_connector *connector)
> @@ -1309,6 +1325,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	u8 dsc_slice_count = 0;
>  	enum drm_mode_status status;
>  	bool dsc = false, joiner = false;
> +	int num_joined_pipes;
>  
>  	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
>  	if (status != MODE_OK)
> @@ -1329,11 +1346,14 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  		target_clock = fixed_mode->clock;
>  	}
>  
> -	if (intel_dp_need_joiner(intel_dp, connector,
> -				 mode->hdisplay, target_clock)) {
> +	num_joined_pipes = intel_dp_compute_joiner_pipes(intel_dp, connector,
> +							 mode->hdisplay, target_clock);
> +
> +	if (num_joined_pipes == 2) {
>  		joiner = true;
>  		max_dotclk *= 2;
>  	}

This could become nan unconditional
	max_dotclock *= num_pipes;
if we did the return 1 for non-joiner cases.

> +
>  	if (target_clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
>  
> @@ -2523,15 +2543,17 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	struct intel_dp *intel_dp = enc_to_intel_dp(encoder);
>  	struct link_config_limits limits;
>  	bool dsc_needed, joiner_needs_dsc;
> +	int num_joined_pipes;
>  	int ret = 0;
>  
>  	if (pipe_config->fec_enable &&
>  	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
>  		return -EINVAL;
>  
> -	if (intel_dp_need_joiner(intel_dp, connector,
> -				 adjusted_mode->crtc_hdisplay,
> -				 adjusted_mode->crtc_clock))
> +	num_joined_pipes = intel_dp_compute_joiner_pipes(intel_dp, connector,
> +							 adjusted_mode->crtc_hdisplay,
> +							 adjusted_mode->crtc_clock);
> +	if (num_joined_pipes == 2)
>  		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);

This could be a bit more generic with something like:
	if (num_pipes > 1)
		joiner_pipes = GENNMASK(pipe + num_pipes - 1, pipe);

But maybe you're doing some that stuff later. I'll keep reading...

>  
>  	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, pipe_config->joiner_pipes);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index 1b9aaddd8c35..bc9a82d82df2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -153,9 +153,9 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
>  				bool bigjoiner);
> -bool intel_dp_need_joiner(struct intel_dp *intel_dp,
> -			  struct intel_connector *connector,
> -			  int hdisplay, int clock);
> +int intel_dp_compute_joiner_pipes(struct intel_dp *intel_dp,
> +				  struct intel_connector *connector,
> +				  int hdisplay, int clock);
>  
>  static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 15541932b809..383b3e38df52 100644
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
> @@ -577,9 +578,10 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> -	if (intel_dp_need_joiner(intel_dp, connector,
> -				 adjusted_mode->crtc_hdisplay,
> -				 adjusted_mode->crtc_clock))
> +	num_joined_pipes = intel_dp_compute_joiner_pipes(intel_dp, connector,
> +							 adjusted_mode->crtc_hdisplay,
> +							 adjusted_mode->crtc_clock);
> +	if (num_joined_pipes == 2)
>  		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
>  
>  	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> @@ -1426,6 +1428,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  	u16 dsc_max_compressed_bpp = 0;
>  	u8 dsc_slice_count = 0;
>  	int target_clock = mode->clock;
> +	int num_joined_pipes;
>  
>  	if (drm_connector_is_unregistered(connector)) {
>  		*status = MODE_ERROR;
> @@ -1465,8 +1468,9 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  	 *   corresponding link capabilities of the sink) in case the
>  	 *   stream is uncompressed for it by the last branch device.
>  	 */
> -	if (intel_dp_need_joiner(intel_dp, intel_connector,
> -				 mode->hdisplay, target_clock)) {
> +	num_joined_pipes = intel_dp_compute_joiner_pipes(intel_dp, intel_connector,
> +							 mode->hdisplay, target_clock);
> +	if (num_joined_pipes == 2) {
>  		joiner = true;
>  		max_dotclk *= 2;
>  	}
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
