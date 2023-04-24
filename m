Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 1D43A6ECC2C
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 14:40:09 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F387610E4E7;
	Mon, 24 Apr 2023 12:40:05 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0E78A10E4E7
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 12:40:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682340002; x=1713876002;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nEpDgdqZPzsBx+CDULEP8tx2HUnF9nz1uNAdv56ToEQ=;
 b=Pbp37fLdk/8DrB+2PI5eMnvsncVRkfqNYJ+C0IYQgric1IYjSbvclg5M
 T8kIUtQwQudEBLZjf/gOmr+Oox68mxJElDUbMrWoasbYawUf/u0eSoqu1
 thPY0YSWxNMVtJjquyBDbU2QNPmqUDte43uFScO93U5FIwSKJKANV1ijj
 vDoVYI+LO/SyTIn0hNrzCrgfOC5C/xwlFRE1c6tFBVdg208lPMB9rHBs/
 wko+5Arkk/FVF9G4XryNXaY6N6GyaqC1uW1rqBaL1CNCRFEVJcZgJQqPZ
 oSLJnQyCbDhpNPnJ/sQIXfrvR5xxgj6xR6fxAK0K5Kq0U8ogzRh5gp/sC g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="411717649"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="411717649"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 05:39:00 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="686828212"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="686828212"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 24 Apr 2023 05:38:50 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Apr 2023 15:38:50 +0300
Date: Mon, 24 Apr 2023 15:38:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZEZ4WkedPrKL9AqT@intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
 <20230331101613.936776-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230331101613.936776-7-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 06/13] drm/i915/dp: Add helper to get
 sink_format
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Fri, Mar 31, 2023 at 03:46:06PM +0530, Ankit Nautiyal wrote:
> Common function to get the sink format for a given mode for DP.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 30 ++++++++++++-------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index ce9384a0d153..352b5fbd805a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -936,17 +936,25 @@ static int intel_dp_output_bpp(enum intel_output_format output_format, int bpp)
>  	return bpp;
>  }
>  
> +static enum intel_output_format
> +intel_dp_sink_format(struct intel_connector *connector,
> +		     const struct drm_display_mode *mode)
> +{
> +	const struct drm_display_info *info = &connector->base.display_info;
> +
> +	if (drm_mode_is_420_only(info, mode))
> +		return INTEL_OUTPUT_FORMAT_YCBCR420;
> +
> +	return INTEL_OUTPUT_FORMAT_RGB;
> +}
> +
>  static int
>  intel_dp_mode_min_output_bpp(struct intel_connector *connector,
>  			     const struct drm_display_mode *mode)
>  {
> -	const struct drm_display_info *info = &connector->base.display_info;
>  	enum intel_output_format output_format, sink_format;
>  
> -	if (drm_mode_is_420_only(info, mode))
> -		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> -	else
> -		sink_format = INTEL_OUTPUT_FORMAT_RGB;
> +	sink_format = intel_dp_sink_format(connector, mode);
>  
>  	output_format = intel_dp_output_format(connector, sink_format);
>  
> @@ -1018,7 +1026,6 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
>  	const struct drm_display_info *info = &connector->base.display_info;
>  	enum drm_mode_status status;
> -	bool ycbcr_420_only;
>  	enum intel_output_format sink_format;
>  
>  	/* If PCON supports FRL MODE, check FRL bandwidth constraints */
> @@ -1044,12 +1051,7 @@ intel_dp_mode_valid_downstream(struct intel_connector *connector,
>  	    target_clock > intel_dp->dfp.max_dotclock)
>  		return MODE_CLOCK_HIGH;
>  
> -	ycbcr_420_only = drm_mode_is_420_only(info, mode);
> -
> -	if (ycbcr_420_only)
> -		sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> -	else
> -		sink_format = INTEL_OUTPUT_FORMAT_RGB;
> +	sink_format = intel_dp_sink_format(connector, mode);
>  
>  	/* Assume 8bpc for the DP++/HDMI/DVI TMDS clock check */
>  	status = intel_dp_tmds_clock_valid(intel_dp, target_clock,
> @@ -2127,10 +2129,8 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>  		drm_dbg_kms(&i915->drm,
>  			    "YCbCr 4:2:0 mode but YCbCr 4:2:0 output not possible. Falling back to RGB.\n");
>  		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> -	} else if (ycbcr_420_only) {
> -		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
>  	} else {
> -		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
> +		crtc_state->sink_format = intel_dp_sink_format(connector, adjusted_mode);
>  	}
>  
>  	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
