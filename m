Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 93D00A4604A
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 14:10:09 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 374E610E910;
	Wed, 26 Feb 2025 13:10:08 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="hafUxGex";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 02C2310E90F;
 Wed, 26 Feb 2025 13:10:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740575406; x=1772111406;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=iTxYAfzCI4fRdZvwOiwJ5G5l0oO7umy1K5w6+/YhHpk=;
 b=hafUxGexawBclvOMnJwekG4YmiAmJ4SuVglG4CWdcwBnWe3fX4kdHXC8
 7SE1gjipgjdTCy9X802ZI3a5hcAHWTUI2s/MbPDEnhH1UCER/XVV2MNTD
 cdm2sAhchB3DuciQIDSDMd5jQe/1JsNaqBSXz9mRgoaYeXCToeLiNC4KW
 +Jx/Na89n986v73CID1Mc7n1vUOBsLQI4hgO7EdfevyxN22feo+b8XMB7
 hVTCMxJeeEENSk1guRlqe7FFKvqKmF7zVh2kYO5ztq9ncgPofE70kYGs5
 N09Exp+UIkiNFSxbYI79k/LsVqFDu6JdN2hR7fz/jxQ5Ra9EUtGqmAzN7 w==;
X-CSE-ConnectionGUID: IbJbpoH9R9KmLedRF9EAAQ==
X-CSE-MsgGUID: Zk9253PxT7mOQUz8+uWpRQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="52052179"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="52052179"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 05:10:05 -0800
X-CSE-ConnectionGUID: +GlGff68ReaVEzCC9/HtCw==
X-CSE-MsgGUID: RMRMMR+UR/2CyqoRDPgg2A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121947946"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 05:10:03 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 15:10:01 +0200
Date: Wed, 26 Feb 2025 15:10:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 05/20] drm/i915/vrr: Track vrr.enable only for variable
 timing
Message-ID: <Z78SqQsiwE_syvg7@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-6-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-6-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:47:02AM +0530, Ankit Nautiyal wrote:
> Since CMRR is now disabled, use the flag vrr.enable to tracks if vrr timing
> generator is used with variable timings.
> 
> Avoid setting vrr.enable for CMRR and adjust readout to not set vrr.enable
> when vmax == vmin == flipline (fixed refresh rate timing).
> 
> v2: Use intel_vrr_vmin_flipline() to account for adjustments required
> for icl/tgl. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 13 +++++++++++--
>  1 file changed, 11 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 0ee7fb0362ce..4d7f29be55b8 100644
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
> +	       crtc_state->vrr.flipline == intel_vrr_vmin_flipline(crtc_state);
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

This thing is now inconsistent for CMRR, but since that's disabled now
I guess we don't really care. Just need to keep this in mind when we
fix up CMRR.

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  }
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
