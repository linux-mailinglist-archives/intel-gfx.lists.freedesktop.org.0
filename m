Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 6922A986778
	for <lists+intel-gfx@lfdr.de>; Wed, 25 Sep 2024 22:14:00 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0C8B110E86A;
	Wed, 25 Sep 2024 20:13:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="dGWU2O/w";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id A611610E86A
 for <intel-gfx@lists.freedesktop.org>; Wed, 25 Sep 2024 20:13:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1727295237; x=1758831237;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=H+/BQSTOmxtVTbkv6/zyNV7ccdTAlFkcwve9rWUdAZM=;
 b=dGWU2O/wRtLZOE/YYEMl01g2kmn3Sy2/IzQCS7CeJqLvCxcs4Su+ekGw
 lo6gdhJpmOKo/D3DLy8gOatOAPcGVaTFA5Qlz8Xuhvv/BVFvG0OEgJ9g8
 Vmmk/c8bc94yPxrLm/qFn9Hbc4ykEbdxmWXoMoKWv6mN4Q7VtdMvpEGV5
 CBoKzNPZ/2oQCmrniwvh0kdB6TPCDvTEgg0rOnrCNKh2rLhomafv7m/0s
 CQVsfkUUWqGQeZaVwH3S4O9AoMp82G7glL7hUJ5+TM4/O2Kfi5aagwV7g
 gmqeS9+5SJ0p4o+fyIQTP4ejJ+gbAFm3PBxVrvRITITxIJ/iZ+9ZzvjtU A==;
X-CSE-ConnectionGUID: 7Hg3GVQASaKmL6rv1NEXVg==
X-CSE-MsgGUID: BtzZswSYSg6nzgjoneFW7A==
X-IronPort-AV: E=McAfee;i="6700,10204,11206"; a="26465081"
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="26465081"
Received: from fmviesa008.fm.intel.com ([10.60.135.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2024 13:13:57 -0700
X-CSE-ConnectionGUID: deiORVHfRk6kNSwAphgu5A==
X-CSE-MsgGUID: ie5qn+EeTMa5GX7n8uMLfQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.10,258,1719903600"; d="scan'208";a="72031795"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by fmviesa008.fm.intel.com with SMTP; 25 Sep 2024 13:13:54 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 25 Sep 2024 23:13:54 +0300
Date: Wed, 25 Sep 2024 23:13:54 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org
Subject: Re: [PATCH 1/3] drm/i915/display: Modify panel_fitting code for joiner
Message-ID: <ZvRvAuoicZLr0Kfp@intel.com>
References: <20240925063032.2311796-1-nemesa.garg@intel.com>
 <20240925063032.2311796-2-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240925063032.2311796-2-nemesa.garg@intel.com>
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

On Wed, Sep 25, 2024 at 12:00:30PM +0530, Nemesa Garg wrote:
> Replace adjusted_mode with pipe_mode in pch_panel_fitting
> so as to that final pipe src width and height is used after
> joiner calculation. De-couple the current intel_panel_fitting
> function, one pre-ilk and one post-ilk, as post-ilk
> pch_panel_fitting is called from pipe_config.
> 
> v4: Replace adjusted_mode with pipe_mode[Ville]
>     Keep gmch panel fitting in same place[Ville]
> 
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_panel.c | 52 +++++++++++-----------
>  drivers/gpu/drm/i915/display/intel_panel.h |  8 +++-
>  2 files changed, 32 insertions(+), 28 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.c b/drivers/gpu/drm/i915/display/intel_panel.c
> index 71454ddef20f..bd25c96f2e57 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.c
> +++ b/drivers/gpu/drm/i915/display/intel_panel.c
> @@ -387,15 +387,15 @@ void intel_panel_add_encoder_fixed_mode(struct intel_connector *connector,
>  static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  			     const struct drm_connector_state *conn_state)
>  {
> -	const struct drm_display_mode *adjusted_mode =
> -		&crtc_state->hw.adjusted_mode;
> +	const struct drm_display_mode *pipe_mode =
> +		&crtc_state->hw.pipe_mode;

We don't have that where this currently gets caller.

We'll need to do this in careful steps:
1) reject joiner + pfit (assuming we are allowing this currently?)
   needs to be first so we can backport it
2) call pch_panel_fitting() after pipe_src+pipe_mode have been
   computed
3) switch to using pipe_mode in pch_panel_fitting()
4) allow joiner+pfit again, assuming everyhting looks kosher

5) ponteially follow up with some cleanups, eg. get rid of the
   early pipe_src initialization in intel_modeset_pipe_config().
   This needs to be done without breaking the gmch stuff mind you,
   as that would presumably still need pipe_src early

>  	int pipe_src_w = drm_rect_width(&crtc_state->pipe_src);
>  	int pipe_src_h = drm_rect_height(&crtc_state->pipe_src);
>  	int x, y, width, height;
>  
>  	/* Native modes don't need fitting */
> -	if (adjusted_mode->crtc_hdisplay == pipe_src_w &&
> -	    adjusted_mode->crtc_vdisplay == pipe_src_h &&
> +	if (pipe_mode->crtc_hdisplay == pipe_src_w &&
> +	    pipe_mode->crtc_vdisplay == pipe_src_h &&
>  	    crtc_state->output_format != INTEL_OUTPUT_FORMAT_YCBCR420)
>  		return 0;
>  
> @@ -403,45 +403,45 @@ static int pch_panel_fitting(struct intel_crtc_state *crtc_state,
>  	case DRM_MODE_SCALE_CENTER:
>  		width = pipe_src_w;
>  		height = pipe_src_h;
> -		x = (adjusted_mode->crtc_hdisplay - width + 1)/2;
> -		y = (adjusted_mode->crtc_vdisplay - height + 1)/2;
> +		x = (pipe_mode->crtc_hdisplay - width + 1) / 2;
> +		y = (pipe_mode->crtc_vdisplay - height + 1) / 2;
>  		break;
>  
>  	case DRM_MODE_SCALE_ASPECT:
>  		/* Scale but preserve the aspect ratio */
>  		{
> -			u32 scaled_width = adjusted_mode->crtc_hdisplay * pipe_src_h;
> -			u32 scaled_height = pipe_src_w * adjusted_mode->crtc_vdisplay;
> +			u32 scaled_width = pipe_mode->crtc_hdisplay * pipe_src_h;
> +			u32 scaled_height = pipe_src_w * pipe_mode->crtc_vdisplay;
>  			if (scaled_width > scaled_height) { /* pillar */
>  				width = scaled_height / pipe_src_h;
>  				if (width & 1)
>  					width++;
> -				x = (adjusted_mode->crtc_hdisplay - width + 1) / 2;
> +				x = (pipe_mode->crtc_hdisplay - width + 1) / 2;
>  				y = 0;
> -				height = adjusted_mode->crtc_vdisplay;
> +				height = pipe_mode->crtc_vdisplay;
>  			} else if (scaled_width < scaled_height) { /* letter */
>  				height = scaled_width / pipe_src_w;
>  				if (height & 1)
>  				    height++;
> -				y = (adjusted_mode->crtc_vdisplay - height + 1) / 2;
> +				y = (pipe_mode->crtc_vdisplay - height + 1) / 2;
>  				x = 0;
> -				width = adjusted_mode->crtc_hdisplay;
> +				width = pipe_mode->crtc_hdisplay;
>  			} else {
>  				x = y = 0;
> -				width = adjusted_mode->crtc_hdisplay;
> -				height = adjusted_mode->crtc_vdisplay;
> +				width = pipe_mode->crtc_hdisplay;
> +				height = pipe_mode->crtc_vdisplay;
>  			}
>  		}
>  		break;
>  
>  	case DRM_MODE_SCALE_NONE:
> -		WARN_ON(adjusted_mode->crtc_hdisplay != pipe_src_w);
> -		WARN_ON(adjusted_mode->crtc_vdisplay != pipe_src_h);
> +		WARN_ON(pipe_mode->crtc_hdisplay != pipe_src_w);
> +		WARN_ON(pipe_mode->crtc_vdisplay != pipe_src_h);
>  		fallthrough;
>  	case DRM_MODE_SCALE_FULLSCREEN:
>  		x = y = 0;
> -		width = adjusted_mode->crtc_hdisplay;
> -		height = adjusted_mode->crtc_vdisplay;
> +		width = pipe_mode->crtc_hdisplay;
> +		height = pipe_mode->crtc_vdisplay;
>  		break;
>  
>  	default:
> @@ -666,16 +666,16 @@ static int gmch_panel_fitting(struct intel_crtc_state *crtc_state,
>  	return 0;
>  }
>  
> -int intel_panel_fitting(struct intel_crtc_state *crtc_state,
> -			const struct drm_connector_state *conn_state)
> +int intel_gch_panel_fitting(struct intel_crtc_state *crtc_state,
> +			    const struct drm_connector_state *conn_state)
>  {
> -	struct intel_crtc *crtc = to_intel_crtc(crtc_state->uapi.crtc);
> -	struct drm_i915_private *i915 = to_i915(crtc->base.dev);
> +	return gmch_panel_fitting(crtc_state, conn_state);
> +}
>  
> -	if (HAS_GMCH(i915))
> -		return gmch_panel_fitting(crtc_state, conn_state);
> -	else
> -		return pch_panel_fitting(crtc_state, conn_state);
> +int intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
> +			    const struct drm_connector_state *conn_state)
> +{
> +	return pch_panel_fitting(crtc_state, conn_state);
>  }
>  
>  enum drm_connector_status
> diff --git a/drivers/gpu/drm/i915/display/intel_panel.h b/drivers/gpu/drm/i915/display/intel_panel.h
> index 15a8c897b33f..0f678cd72403 100644
> --- a/drivers/gpu/drm/i915/display/intel_panel.h
> +++ b/drivers/gpu/drm/i915/display/intel_panel.h
> @@ -42,8 +42,12 @@ enum drrs_type intel_panel_drrs_type(struct intel_connector *connector);
>  enum drm_mode_status
>  intel_panel_mode_valid(struct intel_connector *connector,
>  		       const struct drm_display_mode *mode);
> -int intel_panel_fitting(struct intel_crtc_state *crtc_state,
> -			const struct drm_connector_state *conn_state);
> +int intel_gch_panel_fitting(struct intel_crtc_state *crtc_state,
> +			    const struct drm_connector_state *conn_state);
> +
> +int intel_pch_panel_fitting(struct intel_crtc_state *crtc_state,
> +			    const struct drm_connector_state *conn_state);
> +
>  int intel_panel_compute_config(struct intel_connector *connector,
>  			       struct drm_display_mode *adjusted_mode);
>  void intel_panel_add_edid_fixed_modes(struct intel_connector *connector,
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
