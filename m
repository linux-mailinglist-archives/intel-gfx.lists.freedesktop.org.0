Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id EE50BA38B0C
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 19:06:58 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E10E710E589;
	Mon, 17 Feb 2025 18:06:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="jVVr5F+P";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D86B910E585;
 Mon, 17 Feb 2025 18:06:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739815616; x=1771351616;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Yszty2VvXRR8K90+8L3aMXR6eWln77Dt7R58x7wDZLo=;
 b=jVVr5F+Pc4ULrfb7l41SX5J7iaseKs43GmoDrXzSD2CRH8cfNqWVCrS/
 1gAoCmRLflvbjxWyD/+qWTVHAqYPp3QCDubkcTftP5GUTzlbddztg8P3h
 OGe/7YPsT8MYVpF0KSdqUyoo7p6I6VYuuyD6jvBiiZ6AkKqMwQV15yJs9
 u7C5aKiFmzs0KU1O/F2Fh9phQaY6U0+7YgGHWqBrpNoGGOSVWm83hVZ5r
 16DAtGXVcokqkGFj2oZF3WI10M/AcHYMQgOBm3wuosJ4x+es1VHdDtFSS
 2TN43fnXDt2tudoVHJyBbGOasdNKm99giJqI6E/iFaX6kkBcO3/n8s500 w==;
X-CSE-ConnectionGUID: PuHsDJetQ0efXBmYx0RCpw==
X-CSE-MsgGUID: 1UuqgvQQRc6YOskzqgH0eA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="57906805"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="57906805"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 10:06:56 -0800
X-CSE-ConnectionGUID: exq8ugI0TL6pULdkcboY3Q==
X-CSE-MsgGUID: u2g6JzC+SeGyfcrFLxzBkg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="114382183"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Feb 2025 10:06:52 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 20:06:52 +0200
Date: Mon, 17 Feb 2025 20:06:52 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 05/19] drm/i915/vrr: Track vrr.enable only for variable
 timing
Message-ID: <Z7N6vPdH1Y8TOiFR@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250214121130.1808451-6-ankit.k.nautiyal@intel.com>
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

On Fri, Feb 14, 2025 at 05:41:15PM +0530, Ankit Nautiyal wrote:
> Since CMRR is now disabled, use the flag vrr.enable to tracks if vrr timing
> generator is used with variable timings.
> 
> Avoid setting vrr.enable for CMRR and adjust readout to not set vrr.enable
> when vmax == vmin == flipline (fixed refresh rate timing).
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 0ee7fb0362ce..efa2aa284285 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -226,7 +226,6 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
>  static
>  void intel_vrr_compute_cmrr_timings(struct intel_crtc_state *crtc_state)
>  {
> -	crtc_state->vrr.enable = true;
>  	crtc_state->cmrr.enable = true;
>  	/*
>  	 * TODO: Compute precise target refresh rate to determine
> @@ -528,6 +527,14 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  	intel_de_write(display, TRANS_PUSH(display, cpu_transcoder), 0);
>  }
>  
> +static
> +bool intel_vrr_is_fixed_rr(const struct intel_crtc_state *crtc_state)
> +{
> +	return crtc_state->vrr.flipline &&
> +	       crtc_state->vrr.flipline == crtc_state->vrr.vmax &&
> +	       crtc_state->vrr.flipline == crtc_state->vrr.vmin;

crtc_state->vrr.flipling == intel_vrr_vmin_flipline(...)
to make this also do the right thing for icl/tgl.

> +}
> +
>  void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  {
>  	struct intel_display *display = to_intel_display(crtc_state);
> @@ -537,7 +544,6 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  	trans_vrr_ctl = intel_de_read(display,
>  				      TRANS_VRR_CTL(display, cpu_transcoder));
>  
> -	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE;
>  	if (HAS_CMRR(display))
>  		crtc_state->cmrr.enable = (trans_vrr_ctl & VRR_CTL_CMRR_ENABLE);
>  
> @@ -577,6 +583,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  		}
>  	}
>  
> +	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
> +				 !intel_vrr_is_fixed_rr(crtc_state);
> +
>  	if (crtc_state->vrr.enable)
>  		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>  }
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
