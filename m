Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A8DA38B2E
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 19:17:46 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B483010E5A2;
	Mon, 17 Feb 2025 18:17:44 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cpUif5+a";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6738910E5A2;
 Mon, 17 Feb 2025 18:17:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739816265; x=1771352265;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=FB4LZWEviHSiPS3rKzqMS1Wij39hAeLprN9YnMzc1H4=;
 b=cpUif5+aWbpqkqSW7b59NmE9Za5I7yW+frX8m1PhzX93x+wyYm7oTXAb
 dFIhfniAWNGWavfjUU4ViBlyF3uf2fslv09uLuBUrD5dhPi0ZcgPJVH2i
 wIifktl0BH9YQWH9UBvAenLs75PUIXDn/cx2O0uh7RNYPwuXjWfxaC/Qk
 uIXTJ3NDy73wo9KxHtWhfmCSW0ajTuhqICGyXBARTnWZpZ0NyvSeWqt1a
 RMm67Be0B+JukUHVoPw+QF1TX8gazdhKToxwRpSTBH+1Ll6Mpx4yh1Jky
 8B8SOa9+eSkmJRFMhrs+H5crp39CYH9Z7MzC3QaEe/PbWr15EZlJowwdi g==;
X-CSE-ConnectionGUID: UtOYPvBdTvqO2xyvjsxN/g==
X-CSE-MsgGUID: 9kdhsJpyQ5+66W4vCUJajw==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="57907615"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="57907615"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 10:17:44 -0800
X-CSE-ConnectionGUID: 5dfQFHpQSZmnxqCtqzOYMw==
X-CSE-MsgGUID: 41c+79oHTyCBsZl0zkub6Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="114383529"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Feb 2025 10:17:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 20:17:40 +0200
Date: Mon, 17 Feb 2025 20:17:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 13/19] drm/i915/vrr: Handle joiner with vrr
Message-ID: <Z7N9RHhQDltsygA_@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-14-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250214121130.1808451-14-ankit.k.nautiyal@intel.com>
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

On Fri, Feb 14, 2025 at 05:41:23PM +0530, Ankit Nautiyal wrote:
> Do not program transcoder registers for VRR for the secondary pipe of
> the joiner. Remove check to skip VRR for joiner case.

Premature. We need to figure out how to correctly sequence
transcoder level stuff vs. pipe level stuff in the commit.

> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 19 ++++++++++++-------
>  1 file changed, 12 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index a4ed102a2119..61b4ec3756e8 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -332,13 +332,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	int vmin, vmax;
>  
> -	/*
> -	 * FIXME all joined pipes share the same transcoder.
> -	 * Need to account for that during VRR toggle/push/etc.
> -	 */
> -	if (crtc_state->joiner_pipes)
> -		return;
> -
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>  		return;
>  
> @@ -430,6 +423,9 @@ void intel_vrr_set_transcoder_timings(const struct intel_crtc_state *crtc_state)
>  	struct intel_display *display = to_intel_display(crtc_state);
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  
> +	if (intel_crtc_is_joiner_secondary(crtc_state))
> +		return;
> +
>  	/*
>  	 * This bit seems to have two meanings depending on the platform:
>  	 * TGL: generate VRR "safe window" for DSB vblank waits
> @@ -481,6 +477,9 @@ void intel_vrr_send_push(struct intel_dsb *dsb,
>  	if (!crtc_state->vrr.enable)
>  		return;
>  
> +	if (intel_crtc_is_joiner_secondary(crtc_state))
> +		return;
> +
>  	if (dsb)
>  		intel_dsb_nonpost_start(dsb);
>  
> @@ -545,6 +544,9 @@ void intel_vrr_enable(const struct intel_crtc_state *crtc_state)
>  	if (!crtc_state->vrr.enable)
>  		return;
>  
> +	if (intel_crtc_is_joiner_secondary(crtc_state))
> +		return;
> +
>  	intel_de_write(display, TRANS_VRR_VMIN(display, cpu_transcoder),
>  		       crtc_state->vrr.vmin - 1);
>  	intel_de_write(display, TRANS_VRR_VMAX(display, cpu_transcoder),
> @@ -587,6 +589,9 @@ void intel_vrr_disable(const struct intel_crtc_state *old_crtc_state)
>  	if (!old_crtc_state->vrr.enable)
>  		return;
>  
> +	if (intel_crtc_is_joiner_secondary(old_crtc_state))
> +		return;
> +
>  	intel_de_write(display, TRANS_VRR_CTL(display, cpu_transcoder),
>  		       trans_vrr_ctl(old_crtc_state));
>  	intel_de_wait_for_clear(display,
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
