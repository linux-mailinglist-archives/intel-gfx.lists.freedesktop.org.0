Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id CEFD0975B88
	for <lists+intel-gfx@lfdr.de>; Wed, 11 Sep 2024 22:17:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5BD0A10EA93;
	Wed, 11 Sep 2024 20:17:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jM7WIrhz";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id BC1A910EA8F
 for <intel-gfx@lists.freedesktop.org>; Wed, 11 Sep 2024 20:17:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1726085828; x=1757621828;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bUYJHHLm/FTVNSrRO4OyN/XB4JAJgZqdBCIejfCLg/Q=;
 b=jM7WIrhzr9SVhgYHR5ckw0wklv9DweELaPNRK6KRGDrM8AOg1Fl8o5B+
 +1gbsm62ujaxKmnl1w9coTW63wmlDHz4My+m02+9bs7WRbZOdZXBV1GTj
 gi82ACx0pwY5APdA7Iwl1kiuqL5jNIeIiyYYbP3yoL7oyxmNsvHYf4OW7
 OsljDnwd1PFhoAmtjR+hY3NjE86jQGfM0nKQixtgQXFGPJlV4j7b0h6Xg
 SyECBgv+d6LO3yRL6j9SIOyzlZFw6EU+YKTNJoe3/nPL/TIpCyOI4ltEZ
 mcRZgNo1JW9RmZn3aeja6j/LY+ZXkaxLyq6HYTmTF9XLUtSS86cepZbp2 w==;
X-CSE-ConnectionGUID: 5dcMfm5CTAS5C+cSXij5KQ==
X-CSE-MsgGUID: Yv1KcG+MTDCFekJ296J4gg==
X-IronPort-AV: E=McAfee;i="6700,10204,11192"; a="42428492"
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="42428492"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Sep 2024 13:17:07 -0700
X-CSE-ConnectionGUID: soxkjxggRVKAOpdBgpsn2A==
X-CSE-MsgGUID: /ZLgD1NLSxWAqGsDmKiPsw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,221,1719903600"; d="scan'208";a="67540498"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 11 Sep 2024 13:17:04 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 11 Sep 2024 23:17:03 +0300
Date: Wed, 11 Sep 2024 23:17:03 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, suraj.kandpal@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH 07/19] drm/i915/display: Use joined pipes in
 intel_dp_joiner_needs_dsc
Message-ID: <ZuH6v1ysrM5zp4rN@intel.com>
References: <20240911131349.933814-1-ankit.k.nautiyal@intel.com>
 <20240911131349.933814-8-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240911131349.933814-8-ankit.k.nautiyal@intel.com>
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

On Wed, Sep 11, 2024 at 06:43:37PM +0530, Ankit Nautiyal wrote:
> In preparation of ultrajoiner, use number of joined pipes in the
> intel_dp_joiner_needs_dsc helper, instead of joiner flag.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 9 +++++----
>  drivers/gpu/drm/i915/display/intel_dp.h     | 3 ++-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 5 +++--
>  3 files changed, 10 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 65044f63d1f5..6c503b5968d2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1412,7 +1412,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  		dsc = dsc_max_compressed_bpp && dsc_slice_count;
>  	}
>  
> -	if (intel_dp_joiner_needs_dsc(dev_priv, joiner) && !dsc)
> +	if (intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes) && !dsc)
>  		return MODE_CLOCK_HIGH;
>  
>  	if (mode_rate > max_rate && !dsc)
> @@ -2520,14 +2520,15 @@ int intel_dp_config_required_rate(const struct intel_crtc_state *crtc_state)
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
> +	return DISPLAY_VER(i915) < 13 && (num_joined_pipes == 2);

Pointless parens.

>  }
>  
>  static int
> @@ -2558,7 +2559,7 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  	if (num_joined_pipes == 2)
>  		pipe_config->joiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
>  
> -	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, pipe_config->joiner_pipes);
> +	joiner_needs_dsc = intel_dp_joiner_needs_dsc(i915, num_joined_pipes);
>  
>  	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
>  		     !intel_dp_compute_config_limits(intel_dp, pipe_config,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index bc9a82d82df2..cc08a309eb78 100644
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
> index 383b3e38df52..fb067749f3a0 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -588,7 +588,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_pch_encoder = false;
>  
> -	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, pipe_config->joiner_pipes);
> +	joiner_needs_dsc = intel_dp_joiner_needs_dsc(dev_priv, num_joined_pipes);
>  
>  	dsc_needed = joiner_needs_dsc || intel_dp->force_dsc_en ||
>  		     !intel_dp_mst_compute_config_limits(intel_dp,
> @@ -1472,6 +1472,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  							 mode->hdisplay, target_clock);
>  	if (num_joined_pipes == 2) {
>  		joiner = true;
> +		num_joined_pipes = 2;
>  		max_dotclk *= 2;
>  	}
>  
> @@ -1512,7 +1513,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
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
