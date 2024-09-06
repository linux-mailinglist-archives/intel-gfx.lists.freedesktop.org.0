Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9741796F772
	for <lists+intel-gfx@lfdr.de>; Fri,  6 Sep 2024 16:52:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7A39910EA7D;
	Fri,  6 Sep 2024 14:52:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dLpTeRDb";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.8])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 090F710EA7B
 for <intel-gfx@lists.freedesktop.org>; Fri,  6 Sep 2024 14:52:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1725634328; x=1757170328;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=wYwrLLR+4E6xe7L4QKS8kTQnFVU4tbOlXa/DsJFOGGQ=;
 b=dLpTeRDbh/XRa12sH5yekfQEUrQMPq4JBFRYCPZq2kaHNTEaJUnP3COM
 18pIvkYZhXgnMzk3kzTV1k4PLsWFsBddfCRr/0PinIyBiEsbORtREWYLk
 eeoDwg/2Un0zO4iqPJfsHmoXspR3sqKra6ZkHJWEfipcaGNLaQIWfYsk/
 ncfapbh85glJwTXG1QBITbk0XA8OUH9380b3rPx8yXD9JFFJSf5IYduh2
 9j2rCivMDWah14QAXPI461APIJHakcUtKX+YvqvY2kdEXSUrUMLe+00nV
 0jrYzXyZaO8yygzOOXydio9DqFuOk/4q3UP+fG612Vh5spVb71Se/LUbL g==;
X-CSE-ConnectionGUID: hrPIs8WBQsm1TDXWjPmJxg==
X-CSE-MsgGUID: CWgxuScWR/qR0z1/y+/YDQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11187"; a="41904732"
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="41904732"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by fmvoesa102.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2024 07:52:07 -0700
X-CSE-ConnectionGUID: Bz70IU6bRiGlfTzGNh8Y5Q==
X-CSE-MsgGUID: UPLxOe0qS6im32+nEIOl/w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,208,1719903600"; d="scan'208";a="66006526"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 06 Sep 2024 07:52:05 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 06 Sep 2024 17:52:04 +0300
Date: Fri, 6 Sep 2024 17:52:04 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, jani.saarinen@intel.com
Subject: Re: [PATCH 03/14] drm/i915/display: Use joined pipes in
 intel_mode_valid_max_plane_size
Message-ID: <ZtsXFNV4bxJQPE1r@intel.com>
References: <20240906125807.3960642-1-ankit.k.nautiyal@intel.com>
 <20240906125807.3960642-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240906125807.3960642-4-ankit.k.nautiyal@intel.com>
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

On Fri, Sep 06, 2024 at 06:27:56PM +0530, Ankit Nautiyal wrote:
> In preparation of ultrajoiner, use number of joined pipes in the
> intel_mode_valid_max_plane_size helper, instead of joiner flag.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Suraj Kandpal <suraj.kandpal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_display.h | 3 ++-
>  drivers/gpu/drm/i915/display/intel_dp.c      | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c  | 2 +-
>  drivers/gpu/drm/i915/display/intel_dsi.c     | 2 +-
>  drivers/gpu/drm/i915/display/intel_hdmi.c    | 2 +-
>  6 files changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 82492ee6c2e6..257e479310c2 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -8088,7 +8088,7 @@ enum drm_mode_status intel_cpu_transcoder_mode_valid(struct drm_i915_private *de
>  enum drm_mode_status
>  intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>  				const struct drm_display_mode *mode,
> -				bool joiner)
> +				enum intel_joiner_pipe_count joined_pipes)

Make that 'int num_joined_pipes' everywhere and I think the results
will be far less confusing.

>  {
>  	int plane_width_max, plane_height_max;
>  
> @@ -8105,7 +8105,7 @@ intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>  	 * too big for that.
>  	 */
>  	if (DISPLAY_VER(dev_priv) >= 11) {
> -		plane_width_max = 5120 << joiner;
> +		plane_width_max = 5120 << joined_pipes / 2;

5120 * num_joined_pipes

>  		plane_height_max = 4320;
>  	} else {
>  		plane_width_max = 5120;
> diff --git a/drivers/gpu/drm/i915/display/intel_display.h b/drivers/gpu/drm/i915/display/intel_display.h
> index 3b90c5190d65..c0f8bb7e5095 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.h
> +++ b/drivers/gpu/drm/i915/display/intel_display.h
> @@ -31,6 +31,7 @@
>  #include "intel_display_limits.h"
>  
>  enum drm_scaling_filter;
> +enum intel_joiner_pipe_count;
>  struct dpll;
>  struct drm_atomic_state;
>  struct drm_connector;
> @@ -415,7 +416,7 @@ u32 intel_plane_fb_max_stride(struct drm_i915_private *dev_priv,
>  enum drm_mode_status
>  intel_mode_valid_max_plane_size(struct drm_i915_private *dev_priv,
>  				const struct drm_display_mode *mode,
> -				bool joiner);
> +				enum intel_joiner_pipe_count joined_pipes);
>  enum drm_mode_status
>  intel_cpu_transcoder_mode_valid(struct drm_i915_private *i915,
>  				const struct drm_display_mode *mode);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f95b62a026b6..71f33470f7a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -1402,7 +1402,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  	if (status != MODE_OK)
>  		return status;
>  
> -	return intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
> +	return intel_mode_valid_max_plane_size(dev_priv, mode, joined_pipes);
>  }
>  
>  bool intel_dp_source_supports_tps3(struct drm_i915_private *i915)
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index d3ff22f53fd5..9aae14a2ed15 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -1525,7 +1525,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  		return 0;
>  	}
>  
> -	*status = intel_mode_valid_max_plane_size(dev_priv, mode, joiner);
> +	*status = intel_mode_valid_max_plane_size(dev_priv, mode, joined_pipes);
>  	return 0;
>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dsi.c b/drivers/gpu/drm/i915/display/intel_dsi.c
> index bd5888ce4852..92b3aa25366a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dsi.c
> +++ b/drivers/gpu/drm/i915/display/intel_dsi.c
> @@ -76,7 +76,7 @@ enum drm_mode_status intel_dsi_mode_valid(struct drm_connector *connector,
>  	if (fixed_mode->clock > max_dotclk)
>  		return MODE_CLOCK_HIGH;
>  
> -	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
> +	return intel_mode_valid_max_plane_size(dev_priv, mode, INTEL_NONE_JOINER_PIPES);
>  }
>  
>  struct intel_dsi_host *intel_dsi_host_init(struct intel_dsi *intel_dsi,
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index 869fa00f7ef2..21b72a0bddea 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2057,7 +2057,7 @@ intel_hdmi_mode_valid(struct drm_connector *connector,
>  			return status;
>  	}
>  
> -	return intel_mode_valid_max_plane_size(dev_priv, mode, false);
> +	return intel_mode_valid_max_plane_size(dev_priv, mode, INTEL_NONE_JOINER_PIPES);
>  }
>  
>  bool intel_hdmi_bpc_possible(const struct intel_crtc_state *crtc_state,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
