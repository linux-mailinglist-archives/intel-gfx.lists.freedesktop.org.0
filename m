Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 719E4A71705
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Mar 2025 14:01:13 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 99B1E10E6BA;
	Wed, 26 Mar 2025 13:01:11 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="V9j25TyS";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9CB4610E6BA;
 Wed, 26 Mar 2025 13:01:10 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742994071; x=1774530071;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=hfLfTfImQD1y+nfF8Yfv+SULUkhFT9dKCqzIFBHg22I=;
 b=V9j25TySFrIaktVcNaOetXE0qKr8tMKdziJ6ku37NjMYDeRNWGVD8CY6
 pZDJMH828f6GV4LMLRPENXCOqgooGfQ7qXZtbddze3iaGLbPJ1oLxF1P4
 G5eFMxFgnHq9Ua6rX7g5UdB2qhG9JULVXuwIL+BNee7JDBSFGtBkz855T
 k8mBxMsh/BkWgS7LFNOejtcwO2UIXPXXJ84ZiyvVmXg/KJAtl2Ix8BAn7
 Ym7RSHRR+yVAkg4d2jf/JG4q96mQWs9B3tYthkpWsGsmJuz/2w5zAk0H6
 jxJRQzHBPe7zMGf6niuKda472COpIQB2LeLMiGgt5KzLd49UgQx9/o/1G A==;
X-CSE-ConnectionGUID: t1HVI+cURXuKushcPDWE2Q==
X-CSE-MsgGUID: lJIuResJRY6EsVaiS9ArQw==
X-IronPort-AV: E=McAfee;i="6700,10204,11384"; a="66735137"
X-IronPort-AV: E=Sophos;i="6.14,277,1736841600"; d="scan'208";a="66735137"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Mar 2025 06:01:11 -0700
X-CSE-ConnectionGUID: cwxj1ROzRyisQh1D7M6EOA==
X-CSE-MsgGUID: L8/Tc/e6SwaPXhvfof/t2Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,277,1736841600"; d="scan'208";a="129935945"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Mar 2025 06:01:07 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Mar 2025 15:01:06 +0200
Date: Wed, 26 Mar 2025 15:01:06 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 1/2] drm/i915/display: Introduce transcoder_has_vrr()
 helper
Message-ID: <Z-P6kte30AoB8HFo@intel.com>
References: <20250326040538.504861-1-ankit.k.nautiyal@intel.com>
 <20250326040538.504861-2-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250326040538.504861-2-ankit.k.nautiyal@intel.com>
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

On Wed, Mar 26, 2025 at 09:35:37AM +0530, Ankit Nautiyal wrote:
> To avoid having VRR read/write for DSI transcoders, we currently use
> !transcoder_is_dsi() in many places.
> Instead introduce a new helper to check transcoder_has_vrr() and use
> that to exclude transcoders which do not support VRR.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_display.c | 12 +++++++++---
>  1 file changed, 9 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_display.c b/drivers/gpu/drm/i915/display/intel_display.c
> index ee7812126129..bde53b2de70c 100644
> --- a/drivers/gpu/drm/i915/display/intel_display.c
> +++ b/drivers/gpu/drm/i915/display/intel_display.c
> @@ -2625,6 +2625,12 @@ void intel_cpu_transcoder_set_m2_n2(struct intel_crtc *crtc,
>  		      PIPE_LINK_N2(display, transcoder));
>  }
>  
> +static bool
> +transcoder_has_vrr(enum transcoder cpu_transcoder)
> +{

I would put the HAS_VRR() check in here as well.

> +	return !transcoder_is_dsi(cpu_transcoder);
> +}
> +
>  static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> @@ -2635,7 +2641,7 @@ static void intel_set_transcoder_timings(const struct intel_crtc_state *crtc_sta
>  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
>  	int vsyncshift = 0;
>  
> -	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
> +	drm_WARN_ON(display->drm, !transcoder_has_vrr(cpu_transcoder));
>  
>  	/* We need to be careful not to changed the adjusted mode, for otherwise
>  	 * the hw state checker will get angry at the mismatch. */
> @@ -2717,7 +2723,7 @@ static void intel_set_transcoder_timings_lrr(const struct intel_crtc_state *crtc
>  	const struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	u32 crtc_vdisplay, crtc_vtotal, crtc_vblank_start, crtc_vblank_end;
>  
> -	drm_WARN_ON(display->drm, transcoder_is_dsi(cpu_transcoder));
> +	drm_WARN_ON(display->drm, !transcoder_has_vrr(cpu_transcoder));
>  
>  	crtc_vdisplay = adjusted_mode->crtc_vdisplay;
>  	crtc_vtotal = adjusted_mode->crtc_vtotal;
> @@ -3908,7 +3914,7 @@ static bool hsw_get_pipe_config(struct intel_crtc *crtc,
>  	    DISPLAY_VER(display) >= 11)
>  		intel_get_transcoder_timings(crtc, pipe_config);
>  
> -	if (HAS_VRR(display) && !transcoder_is_dsi(pipe_config->cpu_transcoder))
> +	if (HAS_VRR(display) && transcoder_has_vrr(pipe_config->cpu_transcoder))
>  		intel_vrr_get_config(pipe_config);
>  
>  	intel_get_pipe_src_size(crtc, pipe_config);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
