Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 862C9A38B64
	for <lists+intel-gfx@lfdr.de>; Mon, 17 Feb 2025 19:39:55 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2CA3710E5A9;
	Mon, 17 Feb 2025 18:39:54 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="QG7Cn+sq";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4FB6110E5A9;
 Mon, 17 Feb 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739817593; x=1771353593;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=CyfX8WR0YJzx4SBEITbxFOYyXy3UhuqabsGZWdodIqA=;
 b=QG7Cn+sqPuOs97N8j2a+2LcnQ7J9Q3CA8mqZsvQRSnEZlTZlt9QsS0Cc
 7/6iAR0nb7w8wDRgK7XZWVoPmzhtWJARTccXBXPRvDoIJYEfhe9X3cVlM
 53rxFBFZ7qUDQi4OOiWU/DcG75fZKiEukfsI9r2ve1QNdlIZcCV2Gtc3a
 jFQ7gx0vyq1sbwkBC2HaXPZx0d6dKa/HndosLxYX4ByHK94wBmNhObBOn
 Q9uKQHSvS75mA7I1+ACahR3pDZolxNOgFA3OAzgRrIr4aBnnDGF7O994/
 1GzHE6pPaMQ3AL0qEOgxPpeiTTQP+D9omSKYwBMDnYCBm6Iy5PQq3l0Yc w==;
X-CSE-ConnectionGUID: AfZapR15T/KbyF7Ze/y3FA==
X-CSE-MsgGUID: xaKz8v6lT+ehkY7OwQcAUA==
X-IronPort-AV: E=McAfee;i="6700,10204,11348"; a="40214454"
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="40214454"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Feb 2025 10:39:53 -0800
X-CSE-ConnectionGUID: d+E1Rb7GTGORqHGn0hLFoA==
X-CSE-MsgGUID: vVHAR1eFRs+jCn/mZmo2ZA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,293,1732608000"; d="scan'208";a="114386722"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 17 Feb 2025 10:39:50 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 17 Feb 2025 20:39:49 +0200
Date: Mon, 17 Feb 2025 20:39:49 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 18/19] drm/i915/vrr: Always use VRR timing generator for
 MTL+
Message-ID: <Z7OCdfwij_Rmo__E@intel.com>
References: <20250214121130.1808451-1-ankit.k.nautiyal@intel.com>
 <20250214121130.1808451-19-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250214121130.1808451-19-ankit.k.nautiyal@intel.com>
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

On Fri, Feb 14, 2025 at 05:41:28PM +0530, Ankit Nautiyal wrote:
> Currently VRR timing generator is used only when VRR is enabled by
> userspace for sinks that support VRR. From MTL+ gradually move away from
> the older timing generator and use VRR timing generator for both variable
> and fixed timings.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 4151fcd0f978..d0b18102ef2c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -346,7 +346,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  
>  	vmin = intel_vrr_compute_vmin(crtc_state);
>  
> -	if (vmin >= vmax)
> +	if (vmin >= vmax && !intel_vrr_always_use_vrr_tg(display))

I don't think we should add any platform differences here.
Ie. even if we don't end up using the VRR timing generator
for fixed refresh rate we should still program it with those
timings.

>  		return;
>  
>  	crtc_state->vrr.vmin = vmin;
> @@ -361,7 +361,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	 */
>  	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
>  
> -	if (crtc_state->uapi.vrr_enabled)
> +	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
>  		intel_vrr_compute_vrr_timings(crtc_state);
>  	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>  		intel_vrr_compute_cmrr_timings(crtc_state);
> @@ -545,7 +545,9 @@ bool intel_vrr_always_use_vrr_tg(struct intel_display *display)
>  	if (!HAS_VRR(display))
>  		return false;
>  
> -	/* #TODO return true for platforms supporting fixed_rr */
> +	if (DISPLAY_VER(display) >= 14)
> +		return true;
> +
>  	return false;
>  }
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
