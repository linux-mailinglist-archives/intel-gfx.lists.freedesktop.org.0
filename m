Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AAB4C1F94D
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Oct 2025 11:35:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 3EE3A10E25A;
	Thu, 30 Oct 2025 10:35:07 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B13yXtMl";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4B72710E25A;
 Thu, 30 Oct 2025 10:35:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1761820505; x=1793356505;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=bL0hrB/Reksb+EZeXvtNDrfhKsy3f1QNGu1J0kTrH+I=;
 b=B13yXtMlnoC95/JMFiTZseKWZPVPQocCMniyt4GhvYh/qLDPUDsShlNm
 fOVxM9n3R79CxCXSJeq9UFmzKRLYtU3bX9tQ85TETbwWCMRsht9vJuoo5
 SqkqLgW0fqiv8lJEs9CDnQMWuzxcllHe5W5/FtCB1T/BSTRU5Oy2pjqaP
 4DVn4Zb7G1brRbs6njITvWGoQDDbHn7mwN+EdqvD3p6edazlYn+CQhNuI
 MJvMaBkcHv5rqS2vCG3n3ZbfPrMXVGrGiRSp2QBE0TOMrTLe92kPA7KnT
 iHr9/PCcSymHSfTXJvm31P7xf39Wzgw80/tdHxUlWsmIo44NA9mbsNH8s A==;
X-CSE-ConnectionGUID: pf6hnFK5TKKu2PSYxImWBQ==
X-CSE-MsgGUID: L7lVrs9KSDWEtxguMG58Bg==
X-IronPort-AV: E=McAfee;i="6800,10657,11597"; a="66573491"
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="66573491"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 03:35:05 -0700
X-CSE-ConnectionGUID: pnw3iRzXRwaoEdY5bV2fEA==
X-CSE-MsgGUID: vHx0c7FcTpa3Kp0lQghriw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,266,1754982000"; d="scan'208";a="185802756"
Received: from klitkey1-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.245.136])
 by fmviesa006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Oct 2025 03:35:03 -0700
Date: Thu, 30 Oct 2025 12:35:00 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jouni.hogander@intel.com
Subject: Re: [PATCH 5/5] drm/i915/alpm: Allow LOBF only if window1 > alpm
 check_entry lines
Message-ID: <aQM_VK0wTlEiub9O@intel.com>
References: <20251030051755.3071648-1-ankit.k.nautiyal@intel.com>
 <20251030051755.3071648-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251030051755.3071648-6-ankit.k.nautiyal@intel.com>
X-Patchwork-Hint: comment
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
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

On Thu, Oct 30, 2025 at 10:47:55AM +0530, Ankit Nautiyal wrote:
> LOBF must be disabled if the number of lines within Window 1 is not greater
> than ALPM_CTL[ALPM Entry Check]
> 
> Bspec:71041
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 1c240dd8d668..58cd0d2a4395 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -255,6 +255,7 @@ void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	int waketime_in_lines, first_sdp_position;
> +	int window1;
>  
>  	if (intel_dp->alpm.lobf_disable_debug) {
>  		drm_dbg_kms(display->drm, "LOBF is disabled by debug flag\n");
> @@ -287,6 +288,18 @@ void intel_alpm_lobf_compute_config_late(struct intel_dp *intel_dp,
>  	if (!intel_alpm_compute_params(intel_dp, crtc_state))
>  		return;
>  
> +	/*
> +	 * LOBF must be disabled if the number of lines within Window 1 is not
> +	 * greater than ALPM_CTL[ALPM Entry Check]
> +	 */
> +	window1 = adjusted_mode->crtc_vtotal -
> +		  (adjusted_mode->crtc_vdisplay +
> +		   crtc_state->vrr.guardband +
> +		   crtc_state->set_context_latency);

vdisplay+guardband+scl isn't a value that means anything.
So the extra parentheses make this rather confusing.

This also doesn't account for the case where SCL would start already
in vertical active on PTL+. I know we don't do that currently, but we
should probably write this in a way that accounts for that so that we
don't have to rewrite this yet again.

Apparently this lobf stuff depends on actually having a window1,
which means it can only be used if we're using the VRR timing generator
with an optimized guardband. That means it never did anything (or it
did things wrong) until you enabled the optimized guardband.

It sort of looks like intel_alpm_{pre,post}_plane_update() might
allow us to enable this even for the 'vrr.enable==true &&
always_use_vrr_tg()==false' case. Either that or we should just
enable it for the always_use_vrr_tg()==true case. Whatever the
case, we definitely seem to be missing some kind of a VRR check
here.

I'm also 90% sure that alpm pre/post plane stuff isn't handling
DRRS/LRR/etc correctly...

> +
> +	if (window1 <= crtc_state->alpm_state.check_entry_lines)
> +		return;
> +
>  	/*
>  	 * LOBF can only be enabled if the time from the start of the SCL+Guardband
>  	 * window to the position of the first SDP is greater than the time it takes
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
