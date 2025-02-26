Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 50494A46069
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 14:12:06 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id F119410E90C;
	Wed, 26 Feb 2025 13:12:04 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="bBJt9Squ";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D343010E8F4;
 Wed, 26 Feb 2025 13:12:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740575523; x=1772111523;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=znZSy1VLqhNeoziOMHagLdIIKk4WY9i34du33bdnfBY=;
 b=bBJt9SquFkSg0s5bPdj81w3JIxj1ShFNEF4a5YtASSgWRliNp8PKDU57
 AWY9/iLhlMWosHzlDbCD24kSYyzIEXsvCqAQVlNf7F+Ew9CLnCE5cZmBN
 ldoSZSM4lKO5Om6La+zUYiUfU0WupXFdO81cA3gZNFPKpuZCSYvBWtFOy
 tCtOCy0X1K6pUh1A7RctR1eBISdrcgFSBBECnwmyC0hnyxd9GbM1o65lZ
 tQRKIwXmTQFltahTfOkcnwMPo9/vDwXjX3YeLhJoY3FQLvRVY3MwEo77a
 1ZW8QVQvIRpsjVAz7/jlcKwTTYte7kM+x5S9BW/AZBiol2ww3avrgFjIB g==;
X-CSE-ConnectionGUID: dTbAjn2nRSG5+NL44ub2iA==
X-CSE-MsgGUID: R8anjndEQi+SgdHNoqF4Kw==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52052526"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="52052526"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 05:12:02 -0800
X-CSE-ConnectionGUID: IEFoHTj/QTOqNjq3T1EywA==
X-CSE-MsgGUID: FjR4QwMRQ7WrsSjeftdJAQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121948347"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 05:12:00 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 15:11:58 +0200
Date: Wed, 26 Feb 2025 15:11:58 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 06/20] drm/i915/vrr: Use crtc_vtotal for vmin
Message-ID: <Z78THrwbbKjH4nyD@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-7-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-7-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:47:03AM +0530, Ankit Nautiyal wrote:
> To have fixed refresh rate with VRR timing generator the
> guardband/pipeline full can't be programmed on the fly. So we need to
> ensure that the values satisfy both the fixed and variable refresh
> rates.
> 
> Since we compute these value based on vmin, lets set the vmin to
> crtc_vtotal for both fixed and variable timings instead of using the
> current refresh rate based approach. This way the guardband remains
> sufficient for both cases.
> 
> v2: Avoid using vblank delay while computing vtotal, as this comes into
> the picture later. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 21 ++++++++++-----------
>  1 file changed, 10 insertions(+), 11 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 4d7f29be55b8..b6120ff1a87c 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -247,17 +247,16 @@ void intel_vrr_compute_vrr_timings(struct intel_crtc_state *crtc_state)
>  }
>  
>  static
> -int intel_vrr_compute_vmin(struct intel_connector *connector,
> -			   struct drm_display_mode *adjusted_mode)
> +int intel_vrr_compute_vmin(struct intel_crtc_state *crtc_state)
>  {
> -	int vmin;
> -	const struct drm_display_info *info = &connector->base.display_info;
> -
> -	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> -			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
> -	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
> -
> -	return vmin;
> +	/*
> +	 * To make fixed rr and vrr work seamless the guardband/pipeline full
> +	 * should be set such that it satisfies both the fixed and variable
> +	 * timings.
> +	 * For this set the vmin as crtc_vtotal. With this we never need to
> +	 * change anything to do with the guardband.
> +	 */
> +	return crtc_state->hw.adjusted_mode.crtc_vtotal;

This is also more consistent what the DP Spec says IIRC, which is
roughtly along the lines of "the timings of the mode define the max
refresh rate". And we do the intel_vrr_is_in_range() check for these
so we know they are good.


Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  }
>  
>  static
> @@ -305,7 +304,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	if (HAS_LRR(display))
>  		crtc_state->update_lrr = true;
>  
> -	vmin = intel_vrr_compute_vmin(connector, adjusted_mode);
> +	vmin = intel_vrr_compute_vmin(crtc_state);
>  	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
>  
>  	if (vmin >= vmax)
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
