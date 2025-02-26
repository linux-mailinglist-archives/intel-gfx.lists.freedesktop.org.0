Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 591ADA45FE9
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 13:59:53 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 5027C10E8E5;
	Wed, 26 Feb 2025 12:59:51 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="kY7kZU2d";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D856210E8E5;
 Wed, 26 Feb 2025 12:59:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740574789; x=1772110789;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=nf245Vbqg6wUfZnhaiosNz0V9/3+wafBs44LX9HlLg8=;
 b=kY7kZU2dgZjeuCrh4/45GMBiDTknnXjViK/wue1o1Cw6LiQqHxMUJJXm
 PFfA8aLSc9sHtdteJdujCsIPUkqyuzLa4w6rMWTT/gbooo4DCUepIx9Gm
 f5H0yVB/l+SvBBQOh4ZJt8J+5Egb2GxbQxzP2YY6x3BL4CgfBDx3k0p7o
 76qYTcEVaUxtNSF9oZnrBIX8XwC78SPOkmU+E/TjhPtVu4NhGJhDHcDJ1
 F3NJODDBjWcEeRh/swQtgwdX5QT4ArrUSk+DFCQtBDQlLEtBRb76JeISs
 Yiwk6YZwD6HWwMK8XEzPyZyIhVwxZKvns77d9QBZhw/Bt4q6bz36E2J/I w==;
X-CSE-ConnectionGUID: hrvyeRg7SnCtsPwSfwKCqg==
X-CSE-MsgGUID: f+Ey8x89Q0id2T/AHOdH2g==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52050476"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="52050476"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 04:59:47 -0800
X-CSE-ConnectionGUID: s9Ye1UYMTdaMCctnZWNJbQ==
X-CSE-MsgGUID: jEhdDpTASpaOtoeQEbZnjA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121945321"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 04:59:44 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 14:59:43 +0200
Date: Wed, 26 Feb 2025 14:59:43 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 02/20] drm/i915:vrr: Separate out functions to compute
 vmin and vmax
Message-ID: <Z78QP3O50UYhdeq2@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-3-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:46:59AM +0530, Ankit Nautiyal wrote:
> Make helpers to compute vmin and vmax.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 39 +++++++++++++++++++-----
>  1 file changed, 31 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 106bfaf6649b..a435b8d5b631 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -222,6 +222,35 @@ cmrr_get_vtotal(struct intel_crtc_state *crtc_state, bool video_mode_required)
>  	return vtotal;
>  }
>  
> +static
> +int intel_vrr_compute_vmin(struct intel_connector *connector,
> +			   struct drm_display_mode *adjusted_mode)

Make the adjusted mode const

> +{
> +	int vmin;
> +	const struct drm_display_info *info = &connector->base.display_info;

I generally prefer to order these approximately by the line length
in descending order. So swapping these would look better to me.
Same in the vmax counterpart.

> +
> +	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> +			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
> +	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
> +
> +	return vmin;
> +}
> +
> +static
> +int intel_vrr_compute_vmax(struct intel_connector *connector,
> +			   struct drm_display_mode *adjusted_mode)

adjusted_mode should be const here as well

> +{
> +	int vmax;
> +	const struct drm_display_info *info = &connector->base.display_info;
> +
> +	vmax = adjusted_mode->crtc_clock * 1000 /
> +		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
> +

extra newline here but not in the vmin counterpart

> +	vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
> +
> +	return vmax;
> +}
> +

With those sorted this is
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  void
>  intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  			 struct drm_connector_state *conn_state)
> @@ -232,7 +261,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	struct intel_dp *intel_dp = intel_attached_dp(connector);
>  	bool is_edp = intel_dp_is_edp(intel_dp);
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
> -	const struct drm_display_info *info = &connector->base.display_info;
>  	int vmin, vmax;
>  
>  	/*
> @@ -253,13 +281,8 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	if (HAS_LRR(display))
>  		crtc_state->update_lrr = true;
>  
> -	vmin = DIV_ROUND_UP(adjusted_mode->crtc_clock * 1000,
> -			    adjusted_mode->crtc_htotal * info->monitor_range.max_vfreq);
> -	vmax = adjusted_mode->crtc_clock * 1000 /
> -		(adjusted_mode->crtc_htotal * info->monitor_range.min_vfreq);
> -
> -	vmin = max_t(int, vmin, adjusted_mode->crtc_vtotal);
> -	vmax = max_t(int, vmax, adjusted_mode->crtc_vtotal);
> +	vmin = intel_vrr_compute_vmin(connector, adjusted_mode);
> +	vmax = intel_vrr_compute_vmax(connector, adjusted_mode);
>  
>  	if (vmin >= vmax)
>  		return;
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
