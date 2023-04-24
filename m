Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D85D6ECC10
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 14:31:49 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BEF3B10E4E8;
	Mon, 24 Apr 2023 12:31:47 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by gabe.freedesktop.org (Postfix) with ESMTPS id B6F0010E4E8
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 12:31:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682339505; x=1713875505;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VDyhWR39ksHL65o6pXHNLh7Uis9D9vJ8G+fzlE+norI=;
 b=CQgVaDYjGQtNJ5FjjNFG4kQ3wW3q13jOnz/XxNc81liX1+C7bcmIqB3O
 pHzrauPBtem8zPallQ6VnPRvDHMTU4Bcba2rH9suXU8eoaZ6eGLM5WTVX
 LdfQGWl2q0f2MyK7woe+VXJiNHAJ7sfMANTLgELNV1qyYsX6nS9mB0Vc7
 kFHQSEiYQ5jwt7ofL7Q5qXWLjROPeoxLTHQmhw05vOr7wRBrarJMcA8oJ
 QEuVsXwEBhFM6MAhhu/Gz201BvquOZfYQVWRh4nyiTd/hj7Ju8wAeEvX/
 JF48epznsFi4oYXTwaEe5awbhNAqyklyAVjlLQVZjg85lJv+ZklNZPw6t A==;
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="411715825"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="411715825"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 05:31:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10689"; a="686825678"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="686825678"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 24 Apr 2023 05:31:42 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Apr 2023 15:31:41 +0300
Date: Mon, 24 Apr 2023 15:31:41 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZEZ2rWpuujlwbMN5@intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
 <20230331101613.936776-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230331101613.936776-4-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 03/13] drm/i915/dp: Replace intel_dp.dfp
 members with the new crtc_state sink_format
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

On Fri, Mar 31, 2023 at 03:46:03PM +0530, Ankit Nautiyal wrote:
> The decision to use DFP output format conversion capabilities should be
> during compute_config phase.
> 
> This patch uses the members of intel_dp->dfp to only store the
> format conversion capabilities of the DP device and uses the crtc_state
> sink_format member, to program the protocol-converter for
> colorspace/format conversion.
> 
> v2: Use sink_format to determine the color conversion config for the
> pcon (Ville).
> 
> v3: Fix typo: missing 'break' in switch case (lkp kernel test robot).
> 
> v4: Add helper to check if DP supports YCBCR420.
> 
> v5: Simplify logic for computing output_format, based on the given
> sink_format. (Ville).
> Added scaler constraint for YCbCr420 output.
> 
> v6: Split the patch for Scaler constraint for Ycbcr420.
> 
> v7: Simplify the policy for selecting output_format:
> Always try for RGB first, followed by YCBCR444, and finally by YCBCR420.
> 
> v8: Removed redundant comments, minor refactoring. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 178 +++++++++++++++++-------
>  1 file changed, 125 insertions(+), 53 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 450cb8ba3805..837532952936 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -827,24 +827,92 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>  	return 0;
>  }
>  
> +static bool source_can_output(struct intel_dp *intel_dp,
> +			      enum intel_output_format format)
> +{
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	bool ycbcr_supported = true;
> +
> +	/*
> +	 * No YCbCr output support on gmch platforms.
> +	 * Also, ILK doesn't seem capable of DP YCbCr output.
> +	 * The displayed image is severly corrupted. SNB+ is fine.
> +	 */
> +	if (HAS_GMCH(i915) || IS_IRONLAKE(i915))
> +		ycbcr_supported = false;

That extra variable seems rather pointless...

> +
> +	switch (format) {
> +	case INTEL_OUTPUT_FORMAT_RGB :
> +		return true;
> +
> +	case INTEL_OUTPUT_FORMAT_YCBCR444:
> +		return ycbcr_supported;

could just 'return !GMCH && !ILK' here

> +
> +	case INTEL_OUTPUT_FORMAT_YCBCR420:
> +		/* Platform < Gen 11 cannot output YCbCr420 format */
> +		if (!ycbcr_supported || DISPLAY_VER(i915) < 11)
> +			return false;
> +
> +		return true;

and 'return DISPLAY_VER >= 11' here.

> +
> +	default:
> +		MISSING_CASE(format);
> +		return false;
> +	}
> +}
> +
> +static bool
> +dfp_can_convert_from_rgb(struct intel_dp *intel_dp,
> +			 enum intel_output_format sink_format)
> +{
> +	if (!drm_dp_is_branch(intel_dp->dpcd))
> +		return false;
> +
> +	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR444)
> +		return intel_dp->dfp.rgb_to_ycbcr;
> +
> +	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
> +		return intel_dp->dfp.rgb_to_ycbcr &&
> +			intel_dp->dfp.ycbcr_444_to_420;
> +
> +	return false;
> +}
> +
> +static bool
> +dfp_can_convert_from_ycbcr444(struct intel_dp *intel_dp,
> +			      enum intel_output_format sink_format)
> +{
> +	if (!drm_dp_is_branch(intel_dp->dpcd))
> +		return false;
> +
> +	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR420)
> +		return intel_dp->dfp.ycbcr_444_to_420;
> +
> +	return false;
> +}
> +
>  static enum intel_output_format
>  intel_dp_output_format(struct intel_connector *connector,
>  		       enum intel_output_format sink_format)
>  {
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	enum intel_output_format output_format;
>  
> -	if (!connector->base.ycbcr_420_allowed ||
> -	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
> -		return INTEL_OUTPUT_FORMAT_RGB;
> +	if (sink_format == INTEL_OUTPUT_FORMAT_RGB ||
> +	    dfp_can_convert_from_rgb(intel_dp, sink_format))
> +		output_format = INTEL_OUTPUT_FORMAT_RGB;
>  
> -	if (intel_dp->dfp.rgb_to_ycbcr &&
> -	    intel_dp->dfp.ycbcr_444_to_420)
> -		return INTEL_OUTPUT_FORMAT_RGB;
> +	else if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR444 ||
> +	    dfp_can_convert_from_ycbcr444(intel_dp, sink_format))
> +		output_format = INTEL_OUTPUT_FORMAT_YCBCR444;
>  
> -	if (intel_dp->dfp.ycbcr_444_to_420)
> -		return INTEL_OUTPUT_FORMAT_YCBCR444;
>  	else
> -		return INTEL_OUTPUT_FORMAT_YCBCR420;
> +		output_format = INTEL_OUTPUT_FORMAT_YCBCR420;
> +
> +	drm_WARN_ON(&i915->drm, !source_can_output(intel_dp, output_format));
> +
> +	return output_format;
>  }
>  
>  int intel_dp_min_bpp(enum intel_output_format output_format)
> @@ -2761,6 +2829,8 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>  					   const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	bool ycbcr444_to_420 = false;
> +	bool rgb_to_ycbcr = false;
>  	u8 tmp;
>  
>  	if (intel_dp->dpcd[DP_DPCD_REV] < 0x13)
> @@ -2777,8 +2847,24 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>  		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
>  			    str_enable_disable(intel_dp->has_hdmi_sink));
>  
> -	tmp = crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
> -		intel_dp->dfp.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
> +	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> +		switch (crtc_state->output_format) {
> +		case INTEL_OUTPUT_FORMAT_YCBCR420:
> +			break;
> +		case INTEL_OUTPUT_FORMAT_YCBCR444:
> +			ycbcr444_to_420 = true;
> +			break;
> +		case INTEL_OUTPUT_FORMAT_RGB:
> +			rgb_to_ycbcr = true;
> +			ycbcr444_to_420 = true;
> +			break;
> +		default:
> +			MISSING_CASE(crtc_state->output_format);
> +			break;
> +		}
> +	}
> +
> +	tmp = ycbcr444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>  
>  	if (drm_dp_dpcd_writeb(&intel_dp->aux,
>  			       DP_PROTOCOL_CONVERTER_CONTROL_1, tmp) != 1)
> @@ -2786,13 +2872,12 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>  			    "Failed to %s protocol converter YCbCr 4:2:0 conversion mode\n",
>  			    str_enable_disable(intel_dp->dfp.ycbcr_444_to_420));
>  
> -	tmp = intel_dp->dfp.rgb_to_ycbcr ?
> -		DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
> +	tmp = rgb_to_ycbcr ? DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
>  
>  	if (drm_dp_pcon_convert_rgb_to_ycbcr(&intel_dp->aux, tmp) < 0)
>  		drm_dbg_kms(&i915->drm,
> -			   "Failed to %s protocol converter RGB->YCbCr conversion mode\n",
> -			   str_enable_disable(tmp));
> +			    "Failed to %s protocol converter RGB->YCbCr conversion mode\n",
> +			    str_enable_disable(tmp));
>  }
>  
>  bool intel_dp_get_colorimetry_status(struct intel_dp *intel_dp)
> @@ -4582,57 +4667,44 @@ intel_dp_update_dfp(struct intel_dp *intel_dp,
>  	intel_dp_get_pcon_dsc_cap(intel_dp);
>  }
>  
> +static bool
> +intel_dp_can_ycbcr420(struct intel_dp *intel_dp)
> +{
> +	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR420) &&
> +	    (!drm_dp_is_branch(intel_dp->dpcd) || intel_dp->dfp.ycbcr420_passthrough))
> +		return true;
> +
> +	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_RGB) &&
> +	    dfp_can_convert_from_rgb(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR420))
> +		return true;
> +
> +	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR444) &&
> +	    dfp_can_convert_from_ycbcr444(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR420))
> +		return INTEL_OUTPUT_FORMAT_YCBCR444;

return true

The rest looks good.

> +
> +	return false;
> +}
> +
>  static void
>  intel_dp_update_420(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	struct intel_connector *connector = intel_dp->attached_connector;
> -	bool is_branch, ycbcr_420_passthrough, ycbcr_444_to_420, rgb_to_ycbcr;
> -
> -	/* No YCbCr output support on gmch platforms */
> -	if (HAS_GMCH(i915))
> -		return;
>  
> -	/*
> -	 * ILK doesn't seem capable of DP YCbCr output. The
> -	 * displayed image is severly corrupted. SNB+ is fine.
> -	 */
> -	if (IS_IRONLAKE(i915))
> -		return;
> -
> -	is_branch = drm_dp_is_branch(intel_dp->dpcd);
> -	ycbcr_420_passthrough =
> +	intel_dp->dfp.ycbcr420_passthrough =
>  		drm_dp_downstream_420_passthrough(intel_dp->dpcd,
>  						  intel_dp->downstream_ports);
>  	/* on-board LSPCON always assumed to support 4:4:4->4:2:0 conversion */
> -	ycbcr_444_to_420 =
> +	intel_dp->dfp.ycbcr_444_to_420 =
>  		dp_to_dig_port(intel_dp)->lspcon.active ||
>  		drm_dp_downstream_444_to_420_conversion(intel_dp->dpcd,
>  							intel_dp->downstream_ports);
> -	rgb_to_ycbcr = drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
> -								 intel_dp->downstream_ports,
> -								 DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
> -
> -	if (DISPLAY_VER(i915) >= 11) {
> -		/* Let PCON convert from RGB->YCbCr if possible */
> -		if (is_branch && rgb_to_ycbcr && ycbcr_444_to_420) {
> -			intel_dp->dfp.rgb_to_ycbcr = true;
> -			intel_dp->dfp.ycbcr_444_to_420 = true;
> -			connector->base.ycbcr_420_allowed = true;
> -		} else {
> -		/* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
> -			intel_dp->dfp.ycbcr_444_to_420 =
> -				ycbcr_444_to_420 && !ycbcr_420_passthrough;
> +	intel_dp->dfp.rgb_to_ycbcr =
> +		drm_dp_downstream_rgb_to_ycbcr_conversion(intel_dp->dpcd,
> +							  intel_dp->downstream_ports,
> +							  DP_DS_HDMI_BT709_RGB_YCBCR_CONV);
>  
> -			connector->base.ycbcr_420_allowed =
> -				!is_branch || ycbcr_444_to_420 || ycbcr_420_passthrough;
> -		}
> -	} else {
> -		/* 4:4:4->4:2:0 conversion is the only way */
> -		intel_dp->dfp.ycbcr_444_to_420 = ycbcr_444_to_420;
> -
> -		connector->base.ycbcr_420_allowed = ycbcr_444_to_420;
> -	}
> +	connector->base.ycbcr_420_allowed = intel_dp_can_ycbcr420(intel_dp);
>  
>  	drm_dbg_kms(&i915->drm,
>  		    "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
