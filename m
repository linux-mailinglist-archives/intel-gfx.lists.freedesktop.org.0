Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83A6BA6E200
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 19:02:18 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0ABF510E4AB;
	Mon, 24 Mar 2025 18:02:17 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="beW3HsoI";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 00B2410E4A9;
 Mon, 24 Mar 2025 18:02:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742839335; x=1774375335;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=mfjvPltj/qVBccvOdAYFy3BZs5cpZdVa/BZ+FZHZB6A=;
 b=beW3HsoIcFU/zL/ztl/ELFfxsYsZMS3xtPjBUdVJ9hqyDxevr8ijc3bi
 x9A48DODPoMLlVE0VB8KxoE/D5KoHxEA5Awg8Uay8stwN6+p3TMBcwQqR
 g9EY0ouQPvhM3ne4D9ALP/bdVKH6pplsVO3w4rM0MVORvLPHhn9VrS2Hv
 VZiRuBO6QgloxIQ5AddS3DHesH1WpJqlyjE9ioJ6dHS7dsKja/bTBg4I2
 5mQDpnaWCgMnGGJKxLcy4dL0rNzm/AJIfFBQ8GYRMbjFerw1DW+lzv6wH
 FNvD9XlQ7VIj08C4d/ADH8hQ3qBF2crWkWC16vrWdU7+56eoG4BI+smOT g==;
X-CSE-ConnectionGUID: F5tvZkcfQHK0KbhwyX82JQ==
X-CSE-MsgGUID: T0fJHaw0TMmdsRrkKQe+UQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="47934957"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="47934957"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 11:02:14 -0700
X-CSE-ConnectionGUID: vIBWETAuSVe6NLuxozHTyw==
X-CSE-MsgGUID: 90C64zTxTeK/mKT9i7Z9bQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="129317245"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 24 Mar 2025 11:02:11 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Mar 2025 20:02:10 +0200
Date: Mon, 24 Mar 2025 20:02:10 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 15/16] drm/i915/display: Separate out functions to
 get/set VTOTAL register
Message-ID: <Z-GeIi5I0R9U4EGS@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
 <20250324133248.4071909-16-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250324133248.4071909-16-ankit.k.nautiyal@intel.com>
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

On Mon, Mar 24, 2025 at 07:02:47PM +0530, Ankit Nautiyal wrote:
> Introduce helpers to get and set TRANS_VTOTAL registers.
> This will pave way to avoid reading/writing VTOTAL.Vtotal bits for
> platforms that always use VRR timing generator.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 41 +++++++++++++-------
>  1 file changed, 27 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ae1dc32044fb..fa9c6793357e 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2638,6 +2638,15 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
>  		      PIPE_LINK_N2(display, transcoder));
>  }
>  
> +static void intel_crtc_set_vtotal(struct intel_display *display,
> +				  enum transcoder cpu_transcoder,
> +				  u32 crtc_vdisplay, u32 crtc_vtotal)
> +{
> +	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> +		       VACTIVE(crtc_vdisplay - 1) |
> +		       VTOTAL(crtc_vtotal - 1));
> +}
> +
>  static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> @@ -2702,9 +2711,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  		       HSYNC_START(adjusted_mode->crtc_hsync_start - 1) |
>  		       HSYNC_END(adjusted_mode->crtc_hsync_end - 1));
>  
> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> -		       VACTIVE(crtc_vdisplay - 1) |
> -		       VTOTAL(crtc_vtotal - 1));
> +	intel_crtc_set_vtotal(display, cpu_transcoder, crtc_vdisplay, crtc_vtotal);
> +
>  	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
>  		       VBLANK_START(crtc_vblank_start - 1) |
>  		       VBLANK_END(crtc_vblank_end - 1));
> @@ -2718,9 +2726,8 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	 * bits. */
>  	if (display->platform.haswell && cpu_transcoder == TRANSCODER_EDP &&
>  	    (pipe == PIPE_B || pipe == PIPE_C))
> -		intel_de_write(display, TRANS_VTOTAL(display, pipe),
> -			       VACTIVE(crtc_vdisplay - 1) |
> -			       VTOTAL(crtc_vtotal - 1));
> +		intel_crtc_set_vtotal(display, (enum transcoder)pipe,
> +				      crtc_vdisplay, crtc_vtotal);
>  }
>  
>  static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc_state)
> @@ -2766,9 +2773,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>  	 * The double buffer latch point for TRANS_VTOTAL
>  	 * is the transcoder's undelayed vblank.
>  	 */
> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> -		       VACTIVE(crtc_vdisplay - 1) |
> -		       VTOTAL(crtc_vtotal - 1));
> +	intel_crtc_set_vtotal(display, cpu_transcoder, crtc_vdisplay, crtc_vtotal);

Not really a fan of special casing this that much. I think we should
probably handle it the same way we deal with the VBLANK_START vs.
TRANS_SET_CONTEXT_LATENCY.

The readount should perhaps just be handled in intel_vrr_get_config().
But I think we'll need somehting like transcoder_has_vrr() to exclude 
the DSI transcoders in a consistent way.

>  
>  	intel_vrr_set_fixed_rr_timings(crtc_state);
>  	intel_vrr_transcoder_enable(crtc_state);
> @@ -2806,6 +2811,17 @@ static bool intel_pipe_is_interlaced(const struct intel_crtc_state *crtc_state)
>  				     TRANSCONF(display, cpu_transcoder)) & TRANSCONF_INTERLACE_MASK;
>  }
>  
> +static void intel_crtc_get_vtotal(struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> +	u32 tmp = intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder));
> +
> +	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
> +	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
> +}
> +
>  static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>  					 struct intel_crtc_state *pipe_config)
>  {
> @@ -2829,9 +2845,7 @@ static void intel_get_transcoder_timings(struct intel_crtc *crtc,
>  	adjusted_mode->crtc_hsync_start = REG_FIELD_GET(HSYNC_START_MASK, tmp) + 1;
>  	adjusted_mode->crtc_hsync_end = REG_FIELD_GET(HSYNC_END_MASK, tmp) + 1;
>  
> -	tmp = intel_de_read(display, TRANS_VTOTAL(display, cpu_transcoder));
> -	adjusted_mode->crtc_vdisplay = REG_FIELD_GET(VACTIVE_MASK, tmp) + 1;
> -	adjusted_mode->crtc_vtotal = REG_FIELD_GET(VTOTAL_MASK, tmp) + 1;
> +	intel_crtc_get_vtotal(pipe_config);

>  
>  	/* FIXME TGL+ DSI transcoders have this! */
>  	if (!transcoder_is_dsi(cpu_transcoder)) {
> @@ -8168,8 +8182,7 @@ void i830_enable_pipe(struct intel_display *display, enum pipe pipe)
>  		       HBLANK_START(640 - 1) | HBLANK_END(800 - 1));
>  	intel_de_write(display, TRANS_HSYNC(display, cpu_transcoder),
>  		       HSYNC_START(656 - 1) | HSYNC_END(752 - 1));
> -	intel_de_write(display, TRANS_VTOTAL(display, cpu_transcoder),
> -		       VACTIVE(480 - 1) | VTOTAL(525 - 1));
> +	intel_crtc_set_vtotal(display, cpu_transcoder, 480, 525);


>  	intel_de_write(display, TRANS_VBLANK(display, cpu_transcoder),
>  		       VBLANK_START(480 - 1) | VBLANK_END(525 - 1));
>  	intel_de_write(display, TRANS_VSYNC(display, cpu_transcoder),
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
