Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id A3CE7A71CAC
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 18:09:05 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id D66FA10E75A;
	Wed, 26 Mar 2025 17:09:03 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="ePVXTPnJ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A0A2910E17C;
 Wed, 26 Mar 2025 17:09:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1743008943; x=1774544943;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=oEx0OzHB7ffR59AkwwkeCcAYnPGZtmB2eDsgap66tsU=;
 b=ePVXTPnJlaC18OgdR6f3h7hw1h28VB8ViE9y7kbMuVRaWp3tBdN6Z58K
 6cwe933VHlKQMXVSGBTER0qI4GCq7KhCIoL3wSEG0D9RJJ6hxpXqIFRmd
 R8JxDDKCwoPUPVyVbwrASopP6xRd1cezzq7I9fcFv2PPhegJ2PcfhkdfM
 +d13wVL2U/26goUjCTl+wXFxwp6KyXjLThQkyhedWlDOXxycYh1VIVgfO
 3yZmvH6u9h+Zw1TxYMLYqF1eoXkEtNBS/B10IkQPKn4BRX1pwKQJzRWIs
 FbhXLa4LTATl86rOnSLJ/dgoCO8RErZV0Y24nzeRgetd6YD+aAFK98GEZ Q==;
X-CSE-ConnectionGUID: ddqReRsOT8qHH4efZNSJEQ==
X-CSE-MsgGUID: lbsIeYjISmaiggUk5CstvA==
X-IronPort-AV: E=McAfee;i="6700,10204,11385"; a="44201321"
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="44201321"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 10:09:02 -0700
X-CSE-ConnectionGUID: svdMch+gS0Cnwlur1Wd/mA==
X-CSE-MsgGUID: ukHT09eQTomsGMGs/5/nJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,278,1736841600"; d="scan'208";a="130032195"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 10:08:59 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 19:08:58 +0200
Date: Wed, 26 Mar 2025 19:08:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 1/2] drm/i915/display: Introduce transcoder_has_vrr()
 helper
Message-ID: <Z-Q0quW7h2y-eKy2@intel.com>
References: <20250326160321.550753-1-ankit.k.nautiyal@intel.com>
 <20250326160321.550753-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250326160321.550753-2-ankit.k.nautiyal@intel.com>
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

On Wed, Mar 26, 2025 at 09:33:20PM +0530, Ankit Nautiyal wrote:
> To avoid having VRR read/write for DSI transcoders, we currently use
> !transcoder_is_dsi() in many places.
> Instead introduce a new helper to check transcoder_has_vrr() and use
> that to exclude transcoders which do not support VRR.
> 
> v2: Include HAS_VRR into the helper. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 15 ++++++++++++---
>  1 file changed, 12 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ee7812126129..0db1cd4fc963 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2625,6 +2625,15 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
>  		      PIPE_LINK_N2(display, transcoder));
>  }
>  
> +static bool
> +transcoder_has_vrr(const struct intel_crtc_state *crtc_state)
> +{
> +	struct intel_display *display = to_intel_display(crtc_state);
> +	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
> +
> +	return HAS_VRR(display) && !transcoder_is_dsi(cpu_transcoder);
> +}
> +
>  static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> @@ -2635,7 +2644,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
>  	int vsyncshift = 0;
>  
> -	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
> +	drm_WARN_ON(display->drm, !transcoder_has_vrr(crtc_state));

Actually, this one should stay as is. We don't use this for
DSI even on hardware that lacks VRR support.

>  
>  	/* We need to be careful not to changed the adjusted mode, for otherwise
>  	 * the hw state checker will get angry at the mismatch. */
> @@ -2717,7 +2726,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>  	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
>  
> -	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
> +	drm_WARN_ON(display->drm, !transcoder_has_vrr(crtc_state));

same here.

>  
>  	crtc_vdisplay = adjusted_mode->crtc_vdisplay;
>  	crtc_vtotal = adjusted_mode->crtc_vtotal;
> @@ -3908,7 +3917,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  	    DISPLAY_VER(display) >= 11)
>  		intel_get_transcoder_timings(crtc, pipe_config);
>  
> -	if (HAS_VRR(display) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
> +	if (transcoder_has_vrr(pipe_config))
>  		intel_vrr_get_config(pipe_config);

This one is fine.

>  
>  	intel_get_pipe_src_size(crtc, pipe_config);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
