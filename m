Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DD316B0C3F
	for <lists+intel-gfx@lfdr.de>; Wed,  8 Mar 2023 16:11:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id ADD6D10E0FE;
	Wed,  8 Mar 2023 15:11:03 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 51BF010E0FE
 for <intel-gfx@lists.freedesktop.org>; Wed,  8 Mar 2023 15:11:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1678288261; x=1709824261;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=PI/T1NyewhoA1uqT1/iRbtXEyhhW+mVneozMORZ1STM=;
 b=EXqbHg4Fb0WHCGPIAzucMwMaUHgltTRQnohyuqRrv5VDwvtv9Ks1Af9W
 vB1FRUtIUDG0jmZsYMA4TuWLg5ERtvrYRgCpaotDzb+vgBWnZo/+wayfC
 w26fw3kB6howZWRr/4/Zo5wobfaZxa+YB2cIkOGLYAjoDhmZYP1qSdN5A
 mX9TAnMTNDEo5lJEdsIDdQMNG4L8mfa3lzaqoUKVSZnxDHCbxNIdX4DTj
 YL3hvthLDbt6PhfVd26XsTRVpvTjMIxupVAFso6PjY1GR9zkOcURaMius
 vbVgeofAw5m1oMq1K1sFOb8kI7ODimHBvvEDmvNrEMjnhUEQanYp5SVq/ A==;
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="315833560"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="315833560"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2023 07:11:00 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10642"; a="787149257"
X-IronPort-AV: E=Sophos;i="5.98,244,1673942400"; d="scan'208";a="787149257"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga002.fm.intel.com with SMTP; 08 Mar 2023 07:10:58 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 08 Mar 2023 17:10:57 +0200
Date: Wed, 8 Mar 2023 17:10:57 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZAilganP5W3sCgG1@intel.com>
References: <20230227040324.130811-1-ankit.k.nautiyal@intel.com>
 <20230227040324.130811-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230227040324.130811-4-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v10 03/13] drm/i915/dp: Add Scaler
 constraint for YCbCr420 output
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

On Mon, Feb 27, 2023 at 09:33:14AM +0530, Ankit Nautiyal wrote:
> For YCbCr420 output, scaler is required for downsampling.
> Scaler can be used only when source size smaller than max_src_w and
> max_src_h as defined by for the platform.
> So go for native YCbCr420 only if there are no scaler constraints.
> 
> v2: Corrected max-width based on Display Version.
> 
> v3: Updated max-width as per latest Bspec change.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 41 ++++++++++++++++++++++---
>  1 file changed, 37 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 1a30cc021b25..e95fc0f0d13a 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -804,11 +804,36 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>  	return 0;
>  }
>  
> +static bool
> +ycbcr420_scaler_constraints(struct drm_i915_private *i915,
> +			    const struct drm_display_mode *mode)
> +{
> +	int max_src_w, max_src_h;
> +
> +	if (DISPLAY_VER(i915) < 11) {
> +		max_src_w = 4096;
> +		max_src_h = 4096;
> +	} else if (DISPLAY_VER(i915) < 12) {
> +		max_src_w = 5120;
> +		max_src_h = 4096;
> +	} else if (DISPLAY_VER(i915) < 14) {
> +		max_src_w = 5120;
> +		max_src_h = 8192;
> +	} else {
> +		max_src_w = 4096;
> +		max_src_h = 8192;
> +	}
> +
> +	return mode->hdisplay > max_src_w || mode->vdisplay > max_src_h;
> +}
> +

I don't really like this. If we do something like this
then it should be the scaler code that checks this stuff.

However, after pondering about this more I'm actually
leaning towards using 4:4:4 output whenever possible,
only going for 4:2:0 if absolutely necessary. That
avoids having to deal with all the annoying scaler/etc
limitations.

>  static enum intel_output_format
>  intel_dp_output_format(struct intel_connector *connector,
> +		       const struct drm_display_mode *mode,
>  		       enum intel_output_format sink_format)
>  {
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	struct drm_i915_private *i915 = to_i915(connector->base.dev);
>  
>  	if (!connector->base.ycbcr_420_allowed ||
>  	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
> @@ -820,8 +845,15 @@ intel_dp_output_format(struct intel_connector *connector,
>  
>  	if (intel_dp->dfp.ycbcr_444_to_420)
>  		return INTEL_OUTPUT_FORMAT_YCBCR444;
> -	else
> +
> +	/*
> +	 * For YCbCr420 output, scaler is required for downsampling
> +	 * So go for native YCbCr420 only if there are no scaler constraints.
> +	 */
> +	if (!ycbcr420_scaler_constraints(i915, mode))
>  		return INTEL_OUTPUT_FORMAT_YCBCR420;
> +
> +	return INTEL_OUTPUT_FORMAT_RGB;
>  }
>  
>  int intel_dp_min_bpp(enum intel_output_format output_format)
> @@ -857,7 +889,7 @@ intel_dp_mode_min_output_bpp(struct intel_connector *connector,
>  	else
>  		sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  
> -	output_format = intel_dp_output_format(connector, sink_format);
> +	output_format = intel_dp_output_format(connector, mode, sink_format);
>  
>  	return intel_dp_output_bpp(output_format, intel_dp_min_bpp(output_format));
>  }
> @@ -2052,7 +2084,8 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>  		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	}
>  
> -	crtc_state->output_format = intel_dp_output_format(connector, crtc_state->sink_format);
> +	crtc_state->output_format = intel_dp_output_format(connector, adjusted_mode,
> +							   crtc_state->sink_format);
>  
>  	ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>  					   respect_downstream_limits);
> @@ -2063,7 +2096,7 @@ intel_dp_compute_output_format(struct intel_encoder *encoder,
>  			return ret;
>  
>  		crtc_state->sink_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> -		crtc_state->output_format = intel_dp_output_format(connector,
> +		crtc_state->output_format = intel_dp_output_format(connector, adjusted_mode,
>  								   crtc_state->sink_format);
>  		ret = intel_dp_compute_link_config(encoder, crtc_state, conn_state,
>  						   respect_downstream_limits);
> -- 
> 2.25.1

-- 
Ville Syrj�l�
Intel
