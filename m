Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E30535B615D
	for <lists+intel-gfx@lfdr.de>; Mon, 12 Sep 2022 20:57:06 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id BCE2010E16D;
	Mon, 12 Sep 2022 18:57:04 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 095E710E17A
 for <intel-gfx@lists.freedesktop.org>; Mon, 12 Sep 2022 18:57:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1663009022; x=1694545022;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=7swLWfG6NA+y9ZIuHa0kN1y8BuCav0jI9eJ2jrMZbGQ=;
 b=loivJyQ6HY4ifzRra8cWHMykt4/lRBO49BN+BtfexnbyhtWnJqnJui63
 3Olps/qcVjFsNYar18D9aFiznLKrQodNOSPrl4CFiS/HtIAsRsCej/g7C
 bM6QEaXuDlgKH7xsDUlaWjLWO57zHsiw3Mo/HggqxKCqazdTVdT0+BYqn
 WMus296rofORl8+b6SN2iS4AXsdy2AUYmHnZIADHox2l4VgImwx+86oUP
 RcshWM7aRzSvNfP9+jNrU3cHEk6c1oVXJb7YfWmbQ7nctX/N1Iu2iSf8n
 /oR86rCEOGcAI6R1PqLZkjfraag9ZWnpT2OZfug1rMhRJV4enz4PF/LuV Q==;
X-IronPort-AV: E=McAfee;i="6500,9779,10468"; a="298743070"
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="298743070"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2022 11:57:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.93,310,1654585200"; d="scan'208";a="618656407"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.191])
 by fmsmga007.fm.intel.com with SMTP; 12 Sep 2022 11:56:58 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 12 Sep 2022 21:56:57 +0300
Date: Mon, 12 Sep 2022 21:56:57 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <Yx+A+XHRzxJevOKr@intel.com>
References: <20220901060101.1000290-1-ankit.k.nautiyal@intel.com>
 <20220901060101.1000290-8-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220901060101.1000290-8-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH v2 7/9] drm/i915/dp: Replace intel_dp.dfp
 members with the new crtc_state dp_dfp members
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

On Thu, Sep 01, 2022 at 11:30:59AM +0530, Ankit Nautiyal wrote:
> The decision to use DFP output format conversion capabilities should be
> during compute_config phase.
> 
> This patch uses the members of intel_dp->dfp to only store the
> format conversion capabilities of the DP device and uses the crtc_state
> dp_dfp members that are computed earlier, to program the
> protocol-converter for colorspace/format conversion.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c | 46 +++++++++----------------
>  1 file changed, 17 insertions(+), 29 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index f3c2aeda0c1d..409bd9cdf450 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -805,6 +805,7 @@ intel_dp_output_format(struct intel_connector *connector,
>  		       bool ycbcr_420_output)
>  {
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
> +	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  
>  	if (!connector->base.ycbcr_420_allowed || !ycbcr_420_output)
>  		return INTEL_OUTPUT_FORMAT_RGB;
> @@ -813,6 +814,10 @@ intel_dp_output_format(struct intel_connector *connector,
>  	    intel_dp->dfp.ycbcr_444_to_420)
>  		return INTEL_OUTPUT_FORMAT_RGB;
>  
> +	/* Prefer 4:2:0 passthrough over 4:4:4->4:2:0 conversion */
> +	if (DISPLAY_VER(i915) >= 11 && intel_dp->dfp.ycbcr420_passthrough)
> +		return INTEL_OUTPUT_FORMAT_YCBCR420;
> +
>  	if (intel_dp->dfp.ycbcr_444_to_420)
>  		return INTEL_OUTPUT_FORMAT_YCBCR444;
>  	else
> @@ -2698,8 +2703,8 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>  		drm_dbg_kms(&i915->drm, "Failed to %s protocol converter HDMI mode\n",
>  			    str_enable_disable(intel_dp->has_hdmi_sink));
>  
> -	tmp = crtc_state->output_format == INTEL_OUTPUT_FORMAT_YCBCR444 &&
> -		intel_dp->dfp.ycbcr_444_to_420 ? DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
> +	tmp = crtc_state->dp_dfp_config.ycbcr_444_to_420 ?
> +		DP_CONVERSION_TO_YCBCR420_ENABLE : 0;
>  
>  	if (drm_dp_dpcd_writeb(&intel_dp->aux,
>  			       DP_PROTOCOL_CONVERTER_CONTROL_1, tmp) != 1)
> @@ -2707,7 +2712,7 @@ void intel_dp_configure_protocol_converter(struct intel_dp *intel_dp,
>  			    "Failed to %s protocol converter YCbCr 4:2:0 conversion mode\n",
>  			    str_enable_disable(intel_dp->dfp.ycbcr_444_to_420));
>  
> -	tmp = intel_dp->dfp.rgb_to_ycbcr ?
> +	tmp = crtc_state->dp_dfp_config.rgb_to_ycbcr ?
>  		DP_CONVERSION_BT709_RGB_YCBCR_ENABLE : 0;
>  
>  	if (drm_dp_pcon_convert_rgb_to_ycbcr(&intel_dp->aux, tmp) < 0)
> @@ -4563,7 +4568,7 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>  {
>  	struct drm_i915_private *i915 = dp_to_i915(intel_dp);
>  	struct intel_connector *connector = intel_dp->attached_connector;
> -	bool is_branch, ycbcr_420_passthrough, ycbcr_444_to_420, rgb_to_ycbcr;
> +	bool is_branch;
>  
>  	/* No YCbCr output support on gmch platforms */
>  	if (HAS_GMCH(i915))
> @@ -4577,38 +4582,21 @@ intel_dp_update_420(struct intel_dp *intel_dp)
>  		return;
>  
>  	is_branch = drm_dp_is_branch(intel_dp->dpcd);
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
> +	if (!is_branch || intel_dp->dfp.ycbcr420_passthrough || intel_dp->dfp.ycbcr_444_to_420)
> +		connector->base.ycbcr_420_allowed = true;

That part looks wrong for pre-icl now. They can't do the 4:2:0
passthrough.

>  
>  	drm_dbg_kms(&i915->drm,
>  		    "[CONNECTOR:%d:%s] RGB->YcbCr conversion? %s, YCbCr 4:2:0 allowed? %s, YCbCr 4:4:4->4:2:0 conversion? %s\n",
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
