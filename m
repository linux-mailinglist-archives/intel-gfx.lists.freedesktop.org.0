Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id E31C66CD717
	for <lists+intel-gfx@lfdr.de>; Wed, 29 Mar 2023 11:57:34 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5C35110EA50;
	Wed, 29 Mar 2023 09:57:33 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6B3A810EA50
 for <intel-gfx@lists.freedesktop.org>; Wed, 29 Mar 2023 09:57:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1680083850; x=1711619850;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=pqsM3SVUUy1+Wk1yOuJ+VFX9UzpeDAQrTrBwHYtiGfw=;
 b=AwpOeeKtMY4Tdzu7Maar7lDEAj17T4bBw2oNd1m6Ss2MnefbMY9NlKO0
 WEAhskmydUkiKVcbvupUc1RYxREO4D9Oa7ChxaKkY6wiIboBXm3P3yr+u
 dOZbOxCK/+ewQiLX3SvW1eAtEl5UggFD4VOKyMUNMcxkHOxDHLtnpPayp
 EgWz0DJjYyd6qRK/BvAxUYGC5L6GpWw5YB1ORmTVEgsADfTEjyjh6yBBC
 Qku9e9bwcGU0O3A8vwDnM7J5Rowv72EfFcKn+QxDtwInVEZOsy15/WaDR
 wJ/lUgVri+5/5l/XP7VfNtSXaUkyg5UUG3pwvDVsaugiDFxsqm5D7vW0E w==;
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="324738210"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="324738210"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Mar 2023 02:57:29 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10663"; a="714562311"
X-IronPort-AV: E=Sophos;i="5.98,300,1673942400"; d="scan'208";a="714562311"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.70])
 by orsmga008.jf.intel.com with SMTP; 29 Mar 2023 02:57:26 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 29 Mar 2023 12:57:26 +0300
Date: Wed, 29 Mar 2023 12:57:26 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Message-ID: <ZCQLhkwNGRnZkD4k@intel.com>
References: <20230329084449.717954-1-ankit.k.nautiyal@intel.com>
 <20230329084449.717954-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230329084449.717954-3-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Subject: Re: [Intel-gfx] [PATCH 2/2] drm/i915/dp: Use current cdclk for DSC
 Bigjoiner BW check
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

On Wed, Mar 29, 2023 at 02:14:49PM +0530, Ankit Nautiyal wrote:
> As per Bspec, Big Joiner BW check is:
> Output bpp <= PPC * CDCLK frequency * Big joiner interface bits /
> Pixel clock
> 
> Currently we always use max_cdclk in the check for both modevalid
> and compute config steps.
> 
> During modevalid use max_cdclk_freq for the check.
> During compute config step use current cdclk for the check.

Nak. cdclk is computed much later based on what is actually needed.
The cdclk freq you are using here is essentially a random number.

> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 9 ++++++---
>  drivers/gpu/drm/i915/display/intel_dp.h     | 1 +
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 1 +
>  3 files changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3fe651a8f5d0..d6600de1ab49 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -711,6 +711,7 @@ u32 intel_dp_dsc_nearest_valid_bpp(struct drm_i915_private *i915, u32 bpp, u32 p
>  u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  				u32 link_clock, u32 lane_count,
>  				u32 mode_clock, u32 mode_hdisplay,
> +				unsigned int cdclk,
>  				bool bigjoiner,
>  				u32 pipe_bpp,
>  				u32 timeslots)
> @@ -757,9 +758,9 @@ u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  
>  	if (bigjoiner) {
>  		int bigjoiner_interface_bits = DISPLAY_VER(i915) <= 12 ? 24 : 36;
> -		u32 max_bpp_bigjoiner =
> -			i915->display.cdclk.max_cdclk_freq * 2 * bigjoiner_interface_bits /
> -			intel_dp_mode_to_fec_clock(mode_clock);
> +
> +		u32 max_bpp_bigjoiner = cdclk * 2 * bigjoiner_interface_bits /
> +					intel_dp_mode_to_fec_clock(mode_clock);
>  
>  		bits_per_pixel = min(bits_per_pixel, max_bpp_bigjoiner);
>  	}
> @@ -1073,6 +1074,7 @@ intel_dp_mode_valid(struct drm_connector *_connector,
>  							    max_lanes,
>  							    target_clock,
>  							    mode->hdisplay,
> +							    dev_priv->display.cdclk.max_cdclk_freq,
>  							    bigjoiner,
>  							    pipe_bpp, 64) >> 4;
>  			dsc_slice_count =
> @@ -1580,6 +1582,7 @@ int intel_dp_dsc_compute_config(struct intel_dp *intel_dp,
>  							    pipe_config->lane_count,
>  							    adjusted_mode->crtc_clock,
>  							    adjusted_mode->crtc_hdisplay,
> +							    dev_priv->display.cdclk.hw.cdclk,
>  							    pipe_config->bigjoiner_pipes,
>  							    pipe_bpp,
>  							    timeslots);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.h b/drivers/gpu/drm/i915/display/intel_dp.h
> index ef39e4f7a329..d150bfe8abf4 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp.h
> @@ -106,6 +106,7 @@ int intel_dp_dsc_compute_bpp(struct intel_dp *intel_dp, u8 dsc_max_bpc);
>  u16 intel_dp_dsc_get_output_bpp(struct drm_i915_private *i915,
>  				u32 link_clock, u32 lane_count,
>  				u32 mode_clock, u32 mode_hdisplay,
> +				unsigned int cdclk,
>  				bool bigjoiner,
>  				u32 pipe_bpp,
>  				u32 timeslots);
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index a860cbc5dbea..266e31b78729 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -925,6 +925,7 @@ intel_dp_mst_mode_valid_ctx(struct drm_connector *connector,
>  							    max_lanes,
>  							    target_clock,
>  							    mode->hdisplay,
> +							    dev_priv->display.cdclk.max_cdclk_freq,
>  							    bigjoiner,
>  							    pipe_bpp, 64) >> 4;
>  			dsc_slice_count =
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
