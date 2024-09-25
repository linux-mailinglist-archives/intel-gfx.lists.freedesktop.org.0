Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D809398678D
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 22:21:57 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CFCC10E05A;
	Wed, 25 Sep 2024 20:21:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="B5W6bJ6+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 3313410E05A
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 20:21:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727295714; x=1758831714;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=K3FpDMFNp4K/RERcwS/o+JjKNesdEFEANiGEw6dh7pc=;
 b=B5W6bJ6+cR8XwEOxemm/wIFSYS2v8CJhQT/3/TFF7DXg2f12GqxVrsij
 4JkBU1rDpMVs/dKhD0l18IHxeWcC6dUkITbtZNNscqsdia0D1CklY/Psp
 5sjjtQiwDea5PB6sSzgdsNduoN4z5QfoC9Uex9Gh8Vjut9qBtR2XbCo1u
 gO7R48jPLGNoqm6Hv6v0fMx2qfEM6c2LjNNOarqnZlr6709X1ZTj+oGlO
 VZnUEI0AM9TZb+opvLzlM0Envc70YDQJowO9L22hWW6FPMdUyEuGCL3VW
 ISK6OXPHA2ikglQmw/TQABQq/uFnLjbD/aEsdLYv9l3vop9sHoomjPCjF w==;
X-CSE-ConnectionGUID: 9AhXCuptSciWJRIRIlGf8Q==
X-CSE-MsgGUID: kJChAaLlR1aI90CtRR0YJQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26465972"
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="26465972"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 13:21:54 -0700
X-CSE-ConnectionGUID: nWCm0QGSRuaCw6950ydsng==
X-CSE-MsgGUID: NHi9kCLBQBqsL36P7x/6pw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="72033574"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 25 Sep 2024 13:21:51 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Sep 2024 23:21:50 +0300
Date: Wed, 25 Sep 2024 23:21:50 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 2/3] drm/i915/display: Add gmch_panel_fitting in all
 encoders
Message-ID: <ZvRw3vqQ15OCrUo3@intel.com>
References: <20240925063032.2311796-1-nemesa.garg@intel.com>
 <20240925063032.2311796-3-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240925063032.2311796-3-nemesa.garg@intel.com>
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

On Wed, Sep 25, 2024 at 12:00:31PM +0530, Nemesa Garg wrote:
> For all encoders add gmch_panel_fitting and remove
> pch_panel_fitting as it will be called from pipe_config
> after joiner calculation is done.
> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/icl_dsi.c    | 8 +++++---
>  drivers/gpu/drm/i915/display/intel_dp.c   | 5 ++---
>  drivers/gpu/drm/i915/display/intel_hdmi.c | 4 ++--
>  drivers/gpu/drm/i915/display/intel_lvds.c | 8 +++++---
>  drivers/gpu/drm/i915/display/vlv_dsi.c    | 8 +++++---
>  5 files changed, 19 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/icl_dsi.c b/drivers/gpu/drm/i915/display/icl_dsi.c
> index 293efc1f841d..cfbfbc815d8c 100644
> --- a/drivers/gpu/drm/i915/display/icl_dsi.c
> +++ b/drivers/gpu/drm/i915/display/icl_dsi.c
> @@ -1641,9 +1641,11 @@ static int gen11_dsi_compute_config(struct intel_encoder *encoder,
>  	if (ret)
>  		return ret;
>  
> -	ret = intel_panel_fitting(pipe_config, conn_state);
> -	if (ret)
> -		return ret;
> +	if (HAS_GMCH(i915)) {
> +		ret = intel_gch_panel_fitting(pipe_config, conn_state);
> +		if (ret)
> +			return ret;
> +	}

This one can be nuked entirely as Jani pointed out.

>  
>  	adjusted_mode->flags = 0;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index a1fcedfd404b..480cb8dc2948 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -3049,9 +3049,8 @@ intel_dp_compute_config(struct intel_encoder *encoder,
>  	if (ret)
>  		return ret;
>  
> -	if ((intel_dp_is_edp(intel_dp) && fixed_mode) ||
> -	    pipe_config->output_format == INTEL_OUTPUT_FORMAT_YCBCR420) {
> -		ret = intel_panel_fitting(pipe_config, conn_state);
> +	if (HAS_GMCH(dev_priv)) {

Hmm. Technically we only need this for eDP (no 4:2:0
on gmch so that part is irrelevant), but I suppose
there should be no real harm in calling it
unconditionally as gmch_panel_fitting() will check
whether pipe_src matches the mode.

> +		ret = intel_gch_panel_fitting(pipe_config, conn_state);
>  		if (ret)
>  			return ret;
>  	}
> diff --git a/drivers/gpu/drm/i915/display/intel_hdmi.c b/drivers/gpu/drm/i915/display/intel_hdmi.c
> index cd9ee171e0df..90b4664f66f8 100644
> --- a/drivers/gpu/drm/i915/display/intel_hdmi.c
> +++ b/drivers/gpu/drm/i915/display/intel_hdmi.c
> @@ -2345,8 +2345,8 @@ int intel_hdmi_compute_config(struct intel_encoder *encoder,
>  		return ret;
>  	}
>  
> -	if (intel_hdmi_is_ycbcr420(pipe_config)) {
> -		ret = intel_panel_fitting(pipe_config, conn_state);
> +	if (HAS_GMCH(display)) {
> +		ret = intel_gch_panel_fitting(pipe_config, conn_state);
>  		if (ret)
>  			return ret;
>  	}

This too can be nuked since there is no 4:2:0 support 
on gmch platforms.

> diff --git a/drivers/gpu/drm/i915/display/intel_lvds.c b/drivers/gpu/drm/i915/display/intel_lvds.c
> index fb4ed9f7855b..c28979b4ac15 100644
> --- a/drivers/gpu/drm/i915/display/intel_lvds.c
> +++ b/drivers/gpu/drm/i915/display/intel_lvds.c
> @@ -463,9 +463,11 @@ static int intel_lvds_compute_config(struct intel_encoder *encoder,
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
>  
> -	ret = intel_panel_fitting(crtc_state, conn_state);
> -	if (ret)
> -		return ret;
> +	if (HAS_GMCH(i915)) {
> +		ret = intel_gch_panel_fitting(crtc_state, conn_state);
> +		if (ret)
> +			return ret;
> +	}
>  
>  	/*
>  	 * XXX: It would be nice to support lower refresh rates on the
> diff --git a/drivers/gpu/drm/i915/display/vlv_dsi.c b/drivers/gpu/drm/i915/display/vlv_dsi.c
> index d21f3fb39706..753a883c30c2 100644
> --- a/drivers/gpu/drm/i915/display/vlv_dsi.c
> +++ b/drivers/gpu/drm/i915/display/vlv_dsi.c
> @@ -282,9 +282,11 @@ static int intel_dsi_compute_config(struct intel_encoder *encoder,
>  	if (ret)
>  		return ret;
>  
> -	ret = intel_panel_fitting(pipe_config, conn_state);
> -	if (ret)
> -		return ret;
> +	if (HAS_GMCH(dev_priv)) {
> +		ret = intel_gch_panel_fitting(pipe_config, conn_state);
> +		if (ret)
> +			return ret;
> +	}
>  
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_DBLSCAN)
>  		return -EINVAL;
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
