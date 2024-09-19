Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3CF397CB66
	for <lists+intel-gfx@lfdr.de>; Thu, 19 Sep 2024 17:12:36 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5657210E71E;
	Thu, 19 Sep 2024 15:12:35 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cgAbuGNI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6DFB10E71E;
 Thu, 19 Sep 2024 15:12:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726758755; x=1758294755;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=lhFZu6Bl9anJM4kn8lvv7kdeB6DCSTzl8s7C+Sl23EU=;
 b=cgAbuGNImRdUtjlGFY1BxUs7MWH8AG06FigPWAjpNDD+i2NR9NRnMr7i
 o5uz8ehhsNaTW81TljASABvXt0FdJnoaWG9Ki3YNPLDdY7jrpZTkYOloD
 gMD/93v/qzuZO9WgTZ5yOimFhyPjqYkW9S6qG9EXKRFtpGvEkNK16FzFO
 ayf6QVpruWe9kolRf9Yx/3YIQsuYINNmWaTt8PpgbNth+wo98BC/LAvNz
 PQP2uWcA1EyscDgwXgm/dC7uqLCxLQNnlALXgW+NNDNTgusLS1LMTfJgT
 xEhLZe9cCIQIfk54auraxyMLsQZh2Qna/Y+PLSPmqvISmgHB/zqvgCdIa g==;
X-CSE-ConnectionGUID: dBstINTMTpi3LWv2l3jmvQ==
X-CSE-MsgGUID: KCAYimzNQJO1YYgopkwXjg==
X-IronPort-AV: E=McAfee;i="6700,10204,11200"; a="25872635"
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="25872635"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Sep 2024 08:12:29 -0700
X-CSE-ConnectionGUID: A/5QAW4yRn6j3in+MatKwQ==
X-CSE-MsgGUID: Ghs0sNNrRTuUxGDyXoPkkw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,242,1719903600"; d="scan'208";a="70092367"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 19 Sep 2024 08:12:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 19 Sep 2024 18:12:26 +0300
Date: Thu, 19 Sep 2024 18:12:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 suraj.kandpal@intel.com
Subject: Re: [PATCH 05/15] drm/i915/dp: Add helper to compute num pipes
 required
Message-ID: <Zuw_WgxPU_BrhAmZ@intel.com>
References: <20240918144343.2876184-1-ankit.k.nautiyal@intel.com>
 <20240918144343.2876184-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240918144343.2876184-6-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 18, 2024 at 08:13:33PM +0530, Ankit Nautiyal wrote:
> Add a helper to compute the number of pipes required.
> This will depend on whether the joiner is required or is forced through
> the debugfs. If no joiner is required the helper returns 1.
> 
> v2:
> -Return 1 if no joiner is required. (Ville)
> -Change the suffix from joined_pipes to num_pipes. (Ville)
> -Use number of pipes while calculating joined_pipe masks and
> max_dotclk. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 51 +++++++++++++--------
>  drivers/gpu/drm/i915/display/intel_dp.h     |  6 +--
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 23 ++++------
>  3 files changed, 44 insertions(+), 36 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 2e35a81fa6d1..96ad048b68cf 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1270,17 +1270,35 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
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
>  	if (!intel_dp_has_joiner(intel_dp))
>  		return false;
>  
> -	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120 ||
> -	       connector->force_joined_pipes == 2;
> +	return clock > i915->display.cdclk.max_dotclk_freq || hdisplay > 5120;
> +}
> +
> +int intel_dp_compute_num_pipes(struct intel_dp *intel_dp,
> +			       struct intel_connector *connector,
> +			       int hdisplay, int clock)

intel_dp_compute_num_joined_pipes() to be a bit more specfic?
Or even just intel_dp_num_joined_pipes()?

> +{
> +	switch (connector->force_joined_pipes) {
> +	case 2:
> +		return connector->force_joined_pipes;
> +	default:
> +		MISSING_CASE(connector->force_joined_pipes);
> +		fallthrough;
> +	case 0:
> +		if (intel_dp_needs_bigjoiner(intel_dp, connector, hdisplay, clock))
> +			return 2;
> +	}
> +
> +	return 1;

I think that could be simplified to just:
{
	if (force_joined_pipes)
		return force_joined_pipes;
	
	if (need_bigjoiner())
		return 2;
	
	return 1;
}

Apart from that this looks good.
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  }
>  
>  bool intel_dp_has_dsc(const struct intel_connector *connector)
> @@ -1317,7 +1335,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	u16 dsc_max_compressed_bpp = 0;
>  	u8 dsc_slice_count = 0;
>  	enum drm_mode_status status;
> -	bool dsc = false, joiner = false;
> +	bool dsc = false;
>  	int num_joined_pipes;
>  
>  	status = intel_cpu_transcoder_mode_valid(dev_priv, mode);
> @@ -1339,13 +1357,9 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  		target_clock = fixed_mode->clock;
>  	}
>  
> -	if (intel_dp_need_joiner(intel_dp, connector,
> -				 mode->hdisplay, target_clock)) {
> -		joiner = true;
> -		max_dotclk *= 2;
> -	}
> -
> -	num_joined_pipes = joiner ? 2 : 1;
> +	num_joined_pipes = intel_dp_compute_num_pipes(intel_dp, connector,
> +						      mode->hdisplay, target_clock);
> +	max_dotclk *= num_joined_pipes;
>  
>  	if (target_clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
> @@ -2552,12 +2566,11 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	    !intel_dp_supports_fec(intel_dp, connector, pipe_config))
>  		return -EINVAL;
>  
> -	if (intel_dp_need_joiner(intel_dp, connector,
> -				 adjusted_mode->crtc_hdisplay,
> -				 adjusted_mode->crtc_clock))
> -		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
> -
> -	num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
> +	num_joined_pipes = intel_dp_compute_num_pipes(intel_dp, connector,
> +						      adjusted_mode->crtc_hdisplay,
> +						      adjusted_mode->crtc_clock);
> +	if (num_joined_pipes > 1)
> +		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
>  
>  	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, num_joined_pipes);
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index a0a31fb64716..d72ca99e3a1c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -154,9 +154,9 @@ int intel_dp_dsc_sink_max_compressed_bpp(const struct intel_connector *connector
>  u8 intel_dp_dsc_get_slice_count(const struct intel_connector *connector,
>  				int mode_clock, int mode_hdisplay,
>  				int num_joined_pipes);
> -bool intel_dp_need_joiner(struct intel_dp *intel_dp,
> -			  struct intel_connector *connector,
> -			  int hdisplay, int clock);
> +int intel_dp_compute_num_pipes(struct intel_dp *intel_dp,
> +			       struct intel_connector *connector,
> +			       int hdisplay, int clock);
>  
>  static inline unsigned int intel_dp_unused_lane_mask(int lane_count)
>  {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 7debefd4a0d6..df380f6ee76c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -580,12 +580,11 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> -	if (intel_dp_need_joiner(intel_dp, connector,
> -				 adjusted_mode->crtc_hdisplay,
> -				 adjusted_mode->crtc_clock))
> -		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
> -
> -	num_joined_pipes = intel_crtc_num_joined_pipes(pipe_config);
> +	num_joined_pipes = intel_dp_compute_num_pipes(intel_dp, connector,
> +						      adjusted_mode->crtc_hdisplay,
> +						      adjusted_mode->crtc_clock);
> +	if (num_joined_pipes > 1)
> +		pipe_config->joiner_pipes = GENMASK(crtc->pipe + num_joined_pipes - 1, crtc->pipe);
>  
>  	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
> @@ -1427,7 +1426,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  	int max_dotclk = to_i915(connector->dev)->display.cdclk.max_dotclk_freq;
>  	int max_rate, mode_rate, max_lanes, max_link_clock;
>  	int ret;
> -	bool dsc = false, joiner = false;
> +	bool dsc = false;
>  	u16 dsc_max_compressed_bpp = 0;
>  	u8 dsc_slice_count = 0;
>  	int target_clock = mode->clock;
> @@ -1471,13 +1470,9 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  	 *   corresponding link capabilities of the sink) in case the
>  	 *   stream is uncompressed for it by the last branch device.
>  	 */
> -	if (intel_dp_need_joiner(intel_dp, intel_connector,
> -				 mode->hdisplay, target_clock)) {
> -		joiner = true;
> -		max_dotclk *= 2;
> -	}
> -
> -	num_joined_pipes = joiner ? 2 : 1;
> +	num_joined_pipes = intel_dp_compute_num_pipes(intel_dp, intel_connector,
> +						      mode->hdisplay, target_clock);
> +	max_dotclk *= num_joined_pipes;
>  
>  	ret = drm_modeset_lock(&mgr->base.lock, ctx);
>  	if (ret)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
