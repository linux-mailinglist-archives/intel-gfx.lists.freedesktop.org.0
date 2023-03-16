Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id D94F66BDD21
	for <lists+intel-gfx@lfdr.de>; Fri, 17 Mar 2023 00:46:42 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 44D5310E24B;
	Thu, 16 Mar 2023 23:46:41 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0A48E10E24B
 for <intel-gfx@lists.freedesktop.org>; Thu, 16 Mar 2023 23:46:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1679010399; x=1710546399;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tj3MZGZZAaGaa87grGfjTJkCvKaekVuhszBuVYYsE/Q=;
 b=G/xUrtjrrxDheIUL8mlMSnQUOgBFjuc2K2pSU4moOsw2ZG22FaLqteu/
 3aTuHEeI2wYjSc6QAm0auljo3O8CpOX4V4XloFjgD2PK6+scsOl536UiI
 J9FEbQqYm2yD8jqYibArrFVLp23+Da5ev9YRvBuU+PD2gogBzwRXNbkWM
 RzA3sG0HAhFT8fwEtJAmwcUuGFv0ArD/acaQ9WdRZjowOs28SqgAofBkF
 L32hB3qLxGp+UpsQt+qLFucKG18S4Lr1rmORstFz9O62N7DHsl/fS4im2
 hjM0G53mvz06C68aBO5jb4BmwA3BtMi1rO1BSnhgRW34Z4djcPKh0Bzix Q==;
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="318534021"
X-IronPort-AV: E=Sophos;i="5.98,267,1673942400"; d="scan'208";a="318534021"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 Mar 2023 16:46:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10651"; a="682489390"
X-IronPort-AV: E=Sophos;i="5.98,267,1673942400"; d="scan'208";a="682489390"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by fmsmga007.fm.intel.com with SMTP; 16 Mar 2023 16:46:36 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 17 Mar 2023 01:46:35 +0200
Date: Fri, 17 Mar 2023 01:46:35 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZBOqW3MselbJN93w@intel.com>
References: <20230314110415.2882484-1-ankit.k.nautiyal@intel.com>
 <20230314110415.2882484-4-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230314110415.2882484-4-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v11 03/11] drm/i915/dp: Replace intel_dp.dfp
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

On Tue, Mar 14, 2023 at 04:34:07PM +0530, Ankit Nautiyal wrote:
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
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 182 +++++++++++++++++-------
>  1 file changed, 129 insertions(+), 53 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index e52e2ffc355c..c31ec9c91c64 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -817,24 +817,82 @@ u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
>  	return 0;
>  }
>  
> +static bool source_can_output(struct intel_dp *intel_dp,
> +			      enum intel_output_format format)
> +{
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	bool is_branch = drm_dp_is_branch(intel_dp->dpcd);
> +
> +	if (format == INTEL_OUTPUT_FORMAT_RGB)
> +		return true;
> +
> +	/*
> +	 * No YCbCr output support on gmch platforms.
> +	 * Also, ILK doesn't seem capable of DP YCbCr output.
> +	 * The displayed image is severly corrupted. SNB+ is fine.
> +	 */
> +	if (HAS_GMCH(i915) || IS_IRONLAKE(i915))
> +		return false;
> +
> +	if (format == INTEL_OUTPUT_FORMAT_YCBCR444)
> +		return true;
> +
> +	/* Platform < Gen 11 cannot output YCbCr420 format */
> +	if (DISPLAY_VER(i915) < 11)
> +		return false;
> +
> +	/* If branch device then PCONs should support YCbCr420 Passthrough */
> +	if (format == INTEL_OUTPUT_FORMAT_YCBCR420)
> +		return !is_branch || intel_dp->dfp.ycbcr420_passthrough;

This part isn't really about the source capabilities.
I think it would be more appropriate to do these checks
in the caller.

> +
> +	return false;
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
>  
> -	if (!connector->base.ycbcr_420_allowed ||
> -	    sink_format != INTEL_OUTPUT_FORMAT_YCBCR420)
> -		return INTEL_OUTPUT_FORMAT_RGB;
> -
> -	if (intel_dp->dfp.rgb_to_ycbcr &&
> -	    intel_dp->dfp.ycbcr_444_to_420)
> +	if (sink_format == INTEL_OUTPUT_FORMAT_RGB ||
> +	    dfp_can_convert_from_rgb(intel_dp, sink_format))
>  		return INTEL_OUTPUT_FORMAT_RGB;
>  
> -	if (intel_dp->dfp.ycbcr_444_to_420)
> +	if (sink_format == INTEL_OUTPUT_FORMAT_YCBCR444 ||
> +	    dfp_can_convert_from_ycbcr444(intel_dp, sink_format))
>  		return INTEL_OUTPUT_FORMAT_YCBCR444;
> -	else
> -		return INTEL_OUTPUT_FORMAT_YCBCR420;
> +
> +	return INTEL_OUTPUT_FORMAT_YCBCR420;
>  }

I'm thinking the caller of intel_dp_output_format() might want
to do a drm_WARN_ON(!source_can_output(output_format))
just to make sure we didn't screw things up too badly.

Or maybe we want to have that assert in intel_dp_output_format()
itself in case there are many callers.

>  
>  int intel_dp_min_bpp(enum intel_output_format output_format)
> @@ -2751,6 +2809,8 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>  					   const struct intel_crtc_state *crtc_state)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
> +	bool ycbcr444_to_420 = false;
> +	bool rgb_to_ycbcr = false;
>  	u8 tmp;
>  
>  	if (intel_dp->dpcd[DP_DPCD_REV] < 0x13)
> @@ -2767,8 +2827,35 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>  		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
>  			    str_enable_disable(intel_dp->has_hdmi_sink));
>  
> -	tmp = crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
> -		intel_dp->dfp.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
> +	if (crtc_state->sink_format == INTEL_OUTPUT_FORMAT_YCBCR420) {

I was wondering where YCBCR444 went here, but then I
remembered that we don't have uapi for it. 

But even so, we could consider making this code already
handle it. Would make it that much easier to test
YCbCr 4:4:4 output. Should just take a one line hack
to intel_dp_sink_format() at that point. Could be
a followup patch though.

> +		switch (crtc_state->output_format) {
> +		case INTEL_OUTPUT_FORMAT_YCBCR420:
> +			/*
> +			 * sink_format is YCbCr420, output_format is also YCbCr420:
> +			 * Passthrough.
> +			 */

These comments seem a bit redundant.

> +			break;
> +		case INTEL_OUTPUT_FORMAT_YCBCR444:
> +			/*
> +			 * sink_format is YCbCr420, output_format is YCbCr444:
> +			 * Downsample.
> +			 */
> +			ycbcr444_to_420 = true;
> +			break;
> +		case INTEL_OUTPUT_FORMAT_RGB:
> +			/*
> +			 * sink_format is YCbCr420, output_format is RGB:
> +			 * Convert to YCbCr444 and Downsample.
> +			 */
> +			rgb_to_ycbcr = true;
> +			ycbcr444_to_420 = true;
> +			break;
> +		default:
> +			break;
> +		}
> +	}
> +
> +	tmp = ycbcr444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>  
>  	if (drm_dp_dpcd_writeb(&intel_dp->aux,
>  			       DP_PROTOCOL_CONVERTER_CONTROL_1, tmp) != 1)
> @@ -2776,13 +2863,12 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
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
> @@ -4572,57 +4658,47 @@ intel_dp_update_dfp(struct intel_dp *intel_dp,
>  	intel_dp_get_pcon_dsc_cap(intel_dp);
>  }
>  
> +static bool
> +intel_dp_can_ycbcr420(struct intel_dp *intel_dp)
> +{
> +	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR420))
> +		return true;

Should have an empty line here.

> +	/*
> +	 * If source cannot support YCbCr420, and PCON has color conv. support:
> +	 * Source sends YCbCr444, PCON converts YCbCr444->420 Or
> +	 * Source sends RGB444, PCON converts RGB->YCbCr444 + YCbCr444->YCbCr420)
> +	 */

I think the code already explains that pretty well. Comment seems
a bit redundant.

> +	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_RGB) &&
> +	    dfp_can_convert_from_rgb(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR420))
> +		return true;
> +
> +	if (source_can_output(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR444) &&
> +	    dfp_can_convert_from_ycbcr444(intel_dp, INTEL_OUTPUT_FORMAT_YCBCR420))
> +		return INTEL_OUTPUT_FORMAT_YCBCR444;
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

Looks good. With the minor issues sorted this is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  
>  	drm_dbg_kms(&i915->drm,
>  		    "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
