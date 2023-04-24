Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 8D2AE6ECC5E
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Apr 2023 14:51:50 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CF34010E4E8;
	Mon, 24 Apr 2023 12:51:45 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6AE5D10E1C7
 for <intel-gfx@lists.freedesktop.org>; Mon, 24 Apr 2023 12:51:43 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1682340703; x=1713876703;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bKl5c5DyoFFnN8XulAQ//LZI5ZvVRvSr3SXZ/pp3YzA=;
 b=fOORpFAYJR3QsqYeIxQ0Jk0YM2g4fbkS2GNtvrzJalP3HtsftClj/h2g
 TZVnKJmvUygkSq92sT8+bS5Wz++4/NAzJOt3cEaXm3bGQ722ifrIJSNzL
 qHdTlXJ30j6VyaRqE0nR5O9PaKj28cRpHxeIEwyKDVMoonlFps8/n8x+J
 t3cY2f9wjNV8xxRWXhfcxA4Is/VLTPlcX1xiqEINqca8Z6en6UfCiVQgr
 4voozcNo9QJch6OXcl60uMNxZ9XF3TQncys4Iv9Im83DvF5WOygJyx81A
 gM/SP7URPuvkOlY1ElGrSCsndpfdx9JizpJPYporS3OQ9BfCgd7Swiegt w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="349242067"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="349242067"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2023 05:51:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10690"; a="686832767"
X-IronPort-AV: E=Sophos;i="5.99,222,1677571200"; d="scan'208";a="686832767"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga007.jf.intel.com with SMTP; 24 Apr 2023 05:51:39 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Apr 2023 15:51:38 +0300
Date: Mon, 24 Apr 2023 15:51:38 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZEZ7Wqy+E9p1xsB6@intel.com>
References: <20230331101613.936776-1-ankit.k.nautiyal@intel.com>
 <20230331101613.936776-9-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230331101613.936776-9-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 08/13] drm/i915/dp: Consider output_format
 while computing dsc bpp
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

On Fri, Mar 31, 2023 at 03:46:08PM +0530, Ankit Nautiyal wrote:
> While using DSC the compressed bpp is computed assuming RGB output
> format. Consider the output_format and compute the compressed bpp
> during mode valid and compute config steps.
> 
> For DP-MST we currently use RGB output format only, so continue
> using RGB while computing compressed bpp for MST case.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 14 +++++++++++++-
>  drivers/gpu/drm/i915/display/intel_dp.h     |  1 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  1 +
>  3 files changed, 15 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 4d5c74a1bd29..e5903b5e511b 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -712,6 +712,7 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  				u32 link_clock, u32 lane_count,
>  				u32 mode_clock, u32 mode_hdisplay,
>  				bool bigjoiner,
> +				enum intel_output_format output_format,
>  				u32 pipe_bpp,
>  				u32 timeslots)
>  {
> @@ -736,6 +737,10 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  	bits_per_pixel = ((link_clock * lane_count) * timeslots) /
>  			 (intel_dp_mode_to_fec_clock(mode_clock) * 8);
>  
> +	/* Bandwidth required for 420 is half, that of 444 format */
> +	if (output_format == INTEL_OUTPUT_FORMAT_YCBCR420)
> +		bits_per_pixel *= 2;

/2 ?

> +
>  	drm_dbg_kms(&i915->drm, "Max link bpp is %u for %u timeslots "
>  				"total bw %u pixel clock %u\n",
>  				bits_per_pixel, timeslots,
> @@ -1133,11 +1138,16 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  
>  	if (HAS_DSC(dev_priv) &&
>  	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
> +		enum intel_output_format sink_format, output_format;
> +		int pipe_bpp;
> +
> +		sink_format = intel_dp_sink_format(connector, mode);
> +		output_format = intel_dp_output_format(connector, sink_format);
>  		/*
>  		 * TBD pass the connector BPC,
>  		 * for now U8_MAX so that max BPC on that platform would be picked
>  		 */
> -		int pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
> +		pipe_bpp = intel_dp_dsc_compute_bpp(intel_dp, U8_MAX);
>  
>  		/*
>  		 * Output bpp is stored in 6.4 format so right shift by 4 to get the
> @@ -1157,6 +1167,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  							    target_clock,
>  							    mode->hdisplay,
>  							    bigjoiner,
> +							    output_format,
>  							    pipe_bpp, 64) >> 4;
>  			dsc_slice_count =
>  				intel_dp_dsc_get_slice_count(intel_dp,
> @@ -1655,6 +1666,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  							    adjusted_mode->crtc_clock,
>  							    adjusted_mode->crtc_hdisplay,
>  							    pipe_config->bigjoiner_pipes,
> +							    pipe_config->output_format,
>  							    pipe_bpp,
>  							    timeslots);
>  			if (!dsc_max_output_bpp) {
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index ef39e4f7a329..db86c2b71c1f 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -107,6 +107,7 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  				u32 link_clock, u32 lane_count,
>  				u32 mode_clock, u32 mode_hdisplay,
>  				bool bigjoiner,
> +				enum intel_output_format output_format,
>  				u32 pipe_bpp,
>  				u32 timeslots);
>  u8 intel_dp_dsc_get_slice_count(struct intel_dp *intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 2cc4239cfa5b..daa1591a9ae8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -927,6 +927,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  							    target_clock,
>  							    mode->hdisplay,
>  							    bigjoiner,
> +							    INTEL_OUTPUT_FORMAT_RGB,
>  							    pipe_bpp, 64) >> 4;
>  			dsc_slice_count =
>  				intel_dp_dsc_get_slice_count(intel_dp,
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
