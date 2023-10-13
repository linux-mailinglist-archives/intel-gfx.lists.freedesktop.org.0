Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 12AF37C836F
	for <lists+intel-gfx@lfdr.de>; Fri, 13 Oct 2023 12:43:54 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 91ADE10E073;
	Fri, 13 Oct 2023 10:43:51 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.55.52.43])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4C98410E073
 for <intel-gfx@lists.freedesktop.org>; Fri, 13 Oct 2023 10:43:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1697193830; x=1728729830;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=jEX9f+tgydN20srosSKlTF27pkoxr5GNL3tCo9GFgtg=;
 b=b+0/R590JoOyj/kPXg8gxXLeK91ozfKsER4gcA170QKyK1QtY6eF5E4m
 i7Q8R+SUiLBg3VWaDDXuoZZLr9PymoO3Gcc8EBILSxqVb1Ut5K0h9S5gw
 Ynd+9RPaA1ma18XjcOwoufTSrmKeVS4kPiSdyxoL/MpEmDKMnGme+pptP
 LKTLvuqi63Ry3xoy8dczDx1rxRXAPsG5Xjkrn8tUjx1HFtp/y76+SO9yd
 EujZguo4pN6pb4dW9yB+MXrJRFpSFs+hYXvdhYw0AWv4VMtQke9OwybJG
 Z/9tH/djoSPh4Pg7nfGEKxfCnUaHS1aG+dvXQQI1ZC43+sMGJzBW8ZuWp g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="471387570"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="471387570"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Oct 2023 03:43:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10861"; a="758455504"
X-IronPort-AV: E=Sophos;i="6.03,221,1694761200"; d="scan'208";a="758455504"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmsmga007.fm.intel.com with SMTP; 13 Oct 2023 03:43:47 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 13 Oct 2023 13:43:46 +0300
Date: Fri, 13 Oct 2023 13:43:46 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: vsrini4 <vidya.srinivas@intel.com>
Message-ID: <ZSkfYh9hhca-o0DL@intel.com>
References: <20231012193000.11917-1-vidya.srinivas@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20231012193000.11917-1-vidya.srinivas@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH] drm/i915: Fix bigjoiner case for DP2.0
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

On Fri, Oct 13, 2023 at 01:00:00AM +0530, vsrini4 wrote:
> Patch calculates bigjoiner pipes in mst compute.
> Patch also passes bigjoiner bool to validate plane
> max size.

I doubt this is sufficient. The modeset sequence is still all
wrong for bigjoiner+mst.

> 
> Signed-off-by: vsrini4 <vidya.srinivas@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index e3f176a093d2..f499ce39b2a8 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -308,6 +308,7 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  				       struct drm_connector_state *conn_state)
>  {
>  	struct drm_i915_private *dev_priv = to_i915(encoder->base.dev);
> +	struct intel_crtc *crtc = to_intel_crtc(pipe_config->uapi.crtc);
>  	struct intel_dp_mst_encoder *intel_mst = enc_to_mst(encoder);
>  	struct intel_dp *intel_dp = &intel_mst->primary->dp;
>  	const struct drm_display_mode *adjusted_mode =
> @@ -318,6 +319,10 @@ static int intel_dp_mst_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> +	if (intel_dp_need_bigjoiner(intel_dp, adjusted_mode->crtc_hdisplay,
> +				    adjusted_mode->crtc_clock))
> +		pipe_config->bigjoiner_pipes = GENMASK(crtc->pipe + 1, crtc->pipe);
> +
>  	pipe_config->sink_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->output_format = INTEL_OUTPUT_FORMAT_RGB;
>  	pipe_config->has_pch_encoder = false;
> @@ -936,12 +941,6 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  	if (ret)
>  		return ret;
>  
> -	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> -	    drm_dp_calc_pbn_mode(mode->clock, min_bpp, false) > port->full_pbn) {
> -		*status = MODE_CLOCK_HIGH;
> -		return 0;
> -	}
> -
>  	if (mode->clock < 10000) {
>  		*status = MODE_CLOCK_LOW;
>  		return 0;
> @@ -957,6 +956,12 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  		max_dotclk *= 2;
>  	}
>  
> +	if (mode_rate > max_rate || mode->clock > max_dotclk ||
> +	    drm_dp_calc_pbn_mode(mode->clock, min_bpp, false) > port->full_pbn) {
> +		*status = MODE_CLOCK_HIGH;
> +		return 0;
> +	}
> +
>  	if (DISPLAY_VER(dev_priv) >= 10 &&
>  	    drm_dp_sink_supports_dsc(intel_dp->dsc_dpcd)) {
>  		/*
> @@ -994,7 +999,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  	if (mode_rate > max_rate && !dsc)
>  		return MODE_CLOCK_HIGH;
>  
> -	*status = intel_mode_valid_max_plane_size(dev_priv, mode, false);
> +	*status = intel_mode_valid_max_plane_size(dev_priv, mode, bigjoiner);
>  	return 0;
>  }
>  
> -- 
> 2.33.0

-- 
Ville Syrjälä
Intel
