Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 4E8BBA71CAD
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 18:09:23 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CFBDB10E762;
	Wed, 26 Mar 2025 17:09:21 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="E2Jy9ZbA";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 2922910E761;
 Wed, 26 Mar 2025 17:09:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743008960; x=1774544960;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=IkNElz21i0nsKXHDASAuGEUpKYD3WSVDvoga52GMoM0=;
 b=E2Jy9ZbARIgkalVxPQJKfqPRGTfg+U2y/wOOjBeOd7yv1I5kggfMaex/
 iqtGCkYr1h533XuNGzsodCjyR6rIAiohJbN5awmtBGwv28xPualzjT406
 69d+Od0wCjaINbjrtpdrLvo3cu1jLuE8EfHgsNE/qJ0XZ9qxoqRo+NaIq
 sFH0aMlixVgtrZnjhJovBL3sOJEZWTivJE5Xv09fuDG/UFpT5NBjoU42H
 BwQsUDzg0N9fC2pZE/1JW+pdrOr962Yd3QnG/b0dn6+/z6tIXEgs/VzM6
 nfqxManL1yeFxw348D8sWztZH9fSnPi+F7KazG3w3mlcRI7QYK5OQcEbs Q==;
X-CSE-ConnectionGUID: iuIk3qWlQ0aeRTKgbVICMQ==
X-CSE-MsgGUID: 3l5rkbP9Q8mK6ZDRw8nDzg==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44201404"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44201404"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 10:09:20 -0700
X-CSE-ConnectionGUID: U4LZQJWHSHe/HuVZJwnxYw==
X-CSE-MsgGUID: Mape+4WXRBekVHVlp4pl5A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130032367"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 10:09:17 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 19:09:16 +0200
Date: Wed, 26 Mar 2025 19:09:16 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 2/2] drm/i915/display: Avoid use of VTOTAL.Vtotal bits
Message-ID: <Z-Q0vCeByHofHFdv@intel.com>
References: <20250326160321.550753-1-ankit.k.nautiyal@intel.com>
 <20250326160321.550753-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250326160321.550753-3-ankit.k.nautiyal@intel.com>
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

On Wed, Mar 26, 2025 at 09:33:21PM +0530, Ankit Nautiyal wrote:
> For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> bits are not required. Since the support for these bits is going to
> be deprecated in upcoming platforms, avoid writing these bits for the
> platforms that do not use legacy Timing Generator.
> 
> Since for these platforms TRAN_VMIN is always filled with crtc_vtotal,
> use TRAN_VRR_VMIN to get the vtotal for adjusted_mode.
> 
> v2: Avoid having a helper for manipulating VTOTAL register, and instead
> just make the change where required. (Ville)
> v3: Set `crtc_vtotal` instead of working with the bits directly (Ville).
> Use intel_vrr_vmin_vtotal() to set the vtotal during readout. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 31 +++++++++++++++++++-
>  drivers/gpu/drm/i915/display/intel_vrr.c     | 10 +++++++
>  2 files changed, 40 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index 0db1cd4fc963..6796dd0307a6 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2698,9 +2698,19 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
>  		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>  
> +	/*
> +	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> +	 * bits are not required. Since the support for these bits is going to
> +	 * be deprecated in upcoming platforms, avoid writing these bits for the
> +	 * platforms that do not use legacy Timing Generator.
> +	 */
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		crtc_vtotal = 1;
> +
>  	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
>  		       VACTIVE(crtc_vdisplay - 1) |
>  		       VTOTAL(crtc_vtotal - 1));
> +

spurious whitespace change

>  	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
>  		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));
> @@ -2758,6 +2768,15 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>  	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
>  		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));
> +	/*
> +	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> +	 * bits are not required. Since the support for these bits is going to
> +	 * be deprecated in upcoming platforms, avoid writing these bits for the
> +	 * platforms that do not use legacy Timing Generator.
> +	 */
> +	if (intel_vrr_always_use_vrr_tg(display))
> +		crtc_vtotal = 1;
> +
>  	/*
>  	 * The double buffer latch point for TRANS_VTOTAL
>  	 * is the transcoder's undelayed vblank.
> @@ -2827,7 +2846,17 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>  
>  	tmp = intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder));
>  	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
> -	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
> +
> +	/*
> +	 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> +	 * bits are not filled. The value for adjusted_mode->crtc_vtotal is read
> +	 * from VRR_VMIN register in intel_vrr_get_config.
> +	 * Just set this to 0 here.
> +	 */
> +	if (intel_vrr_always_use_vrr_tg(display))

This one either needs the transcoder_has_vrr() check, or we could just
keep on blindly reading this anyway, and let intel_vrr_get_config()
overwrite it afterwards. That's kinda how we deal with
TRANS_SET_CONTEXT_LATENCY as well.

> +		adjusted_mode->crtc_vtotal = 0;
> +	else
> +		adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
>  
>  	/* FIXME TGL+ DSI transcoders have this! */
>  	if (!transcoder_is_dsi(cpu_transcoder)) {
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 414f93851059..7359d66fc091 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -708,6 +708,16 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  		crtc_state->vrr.vmin = intel_de_read(display,
>  						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
>  
> +		/*
> +		 * For platforms that always use VRR Timing Generator, the VTOTAL.Vtotal
> +		 * bits are not filled. Since for these platforms TRAN_VMIN is always
> +		 * filled with crtc_vtotal, use TRAN_VRR_VMIN to get the vtotal for
> +		 * adjusted_mode.
> +		 */
> +		if (intel_vrr_always_use_vrr_tg(display))
> +			crtc_state->hw.adjusted_mode.crtc_vtotal =
> +				intel_vrr_vmin_vtotal(crtc_state);
> +
>  		if (HAS_AS_SDP(display)) {
>  			trans_vrr_vsync =
>  				intel_de_read(display,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
