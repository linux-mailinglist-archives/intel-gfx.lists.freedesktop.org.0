Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id C269FA4618F
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 15:01:41 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 60E4A10E82E;
	Wed, 26 Feb 2025 14:01:40 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="l9wOyCqn";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id DEE1310E822;
 Wed, 26 Feb 2025 14:01:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740578498; x=1772114498;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=86BMUnhpz0XsUNuM2UexkdQE1Eivz6jgeBNEz2ZvTdM=;
 b=l9wOyCqnovIZC2HP0oZeTu1R/KmIFIic8MJVMmwCuFE0GF7f/TGoPIFO
 S9tmEDi8hzwe4uO/tcqEKfIPFwQ405C1NP9+KH00x6TIHghVkcmC3754s
 CqsW5JElUJDkfr/XChlN+eAm/dMVcaj6cnUCOO6UReaW6FDLMQ7D80lrT
 dZ7mvOaZlLGssS64Q7MbDM+VdWeSHBZ+iTgvDeZYdtMrIM8XYVFKiTDRV
 33dXbAYY0qgvX1yJuCK/JRKHo1N0OUMwiW4xN5czg0ZbyoEx0ewULRcDb
 iFS8tGVyqLs493ybauYistMJhpVvPFwkjAL6p52+HbNw146LlJJQ9UL4F g==;
X-CSE-ConnectionGUID: TVJ3BqaYRxefpYZY+7KnQA==
X-CSE-MsgGUID: x2TJy0uFQW2g/F3vKuQFhw==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52813884"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="52813884"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 06:01:30 -0800
X-CSE-ConnectionGUID: vWrdl9RWTCWiBeW3I8jQxA==
X-CSE-MsgGUID: 6IqOgySYQ2yoLESakfLAug==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121956869"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 06:01:28 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 16:01:27 +0200
Date: Wed, 26 Feb 2025 16:01:27 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 14/20] drm/i915/vrr: Refactor condition for computing
 vmax and LRR
Message-ID: <Z78et1xp-bBxPUye@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-15-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-15-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:47:11AM +0530, Ankit Nautiyal wrote:
> LRR and Vmax can be computed only if VRR is supported and vrr.in_range
> is set. Currently we proceed with vrr timings only for VRR supporting
> panels and return otherwise. For using VRR TG with fix timings, need to
> continue even for panels that do not support VRR.
> 
> To achieve this, refactor the condition for computing vmax and
> update_lrr so that we can continue for fixed timings for panels that do
> not support VRR.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 30fcd1e66a12..024c3014670a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -343,21 +343,21 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
>  	bool is_edp = intel_dp_is_edp(intel_dp);
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> -	int vmin, vmax;
> +	int vmin = 0, vmax = 0;
>  
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>  		return;
>  
>  	crtc_state->vrr.in_range =
>  		intel_vrr_is_in_range(connector, drm_mode_vrefresh(adjusted_mode));
> -	if (!crtc_state->vrr.in_range)
> -		return;
>  
> -	if (HAS_LRR(display))
> -		crtc_state->update_lrr = true;
> +	if (crtc_state->vrr.in_range) {
> +		if (HAS_LRR(display))
> +			crtc_state->update_lrr = true;
> +		vmax = intel_vrr_compute_vmax(connector, adjusted_mode);

} else {
	vmax = vmin;
}

might be a bit more clear way do this?

>  
>  	vmin = intel_vrr_compute_vmin(crtc_state);
> -	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
>  
>  	if (vmin >= vmax)
>  		return;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
