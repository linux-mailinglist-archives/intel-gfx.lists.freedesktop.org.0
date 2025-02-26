Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 81D0BA46434
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 16:11:32 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2B5C810E936;
	Wed, 26 Feb 2025 15:11:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="BGMmXTAa";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6BDF110E936;
 Wed, 26 Feb 2025 15:11:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740582690; x=1772118690;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=aGb35M39aqjZGMzHMBB4A6cBWkzMVMICZCPk4vg3yPY=;
 b=BGMmXTAac33Do/rwxn1kalv66NwUNc4G1advS0fGZ2MvBQcPZGQFE8hX
 uwURny9o5vh/nYOsAkBRbNgfZGRKxXNZZe0/fNgS0fShhzolSIuJSkoBa
 QUlW+TlsXKQnE1yrcstjTVsOLreOHwYPxWztDD93qeqvmD5m5KQCa+nvL
 b2TuhJ0Uyfima8lyBquOH+94LzRqUBN/64cg6uin9o3Oe67Xp6Q0fSoHU
 72ZwMiko3+pc6BJ23ddtEw4D3e71ridx+4SNCB1xI3P7RrMQT/wZwOnFL
 55QmamR9Y5SzG/Gk+a779dD9FXUcDL0JcYshEmiUnfiWHihxzEFkV6sq+ Q==;
X-CSE-ConnectionGUID: 4x7QacetTqiG5MF9+qpRIw==
X-CSE-MsgGUID: BMc2wwVhRx60gKxiR98uDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="41356916"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="41356916"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 07:11:19 -0800
X-CSE-ConnectionGUID: dxOqah4hTO62MV5v96y3XA==
X-CSE-MsgGUID: 8TotnxWCTIm2ozwGh4nuDw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121982710"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 07:11:05 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 17:11:03 +0200
Date: Wed, 26 Feb 2025 17:11:03 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 18/20] drm/i915/vrr: Use fixed timings for platforms that
 support VRR
Message-ID: <Z78vB6J2BWXvXhPK@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-19-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-19-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:47:15AM +0530, Ankit Nautiyal wrote:
> For fixed refresh rate use fixed timings for all platforms that support
> VRR. For this add checks to avoid computing and reading VRR for
> platforms that do not support VRR.
> For platforms that do support VRR, readback vrr timings whether or not
> VRR_CTL_FLIP_LINE_EN is set in VRR_CTL or not.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 43 ++++++++++++------------
>  1 file changed, 22 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 551dcc16f0d4..975fed9930c1 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -344,6 +344,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	int vmin = 0, vmax = 0;
>  
> +	if (!HAS_VRR(display))
> +		return;
> +
>  	if (adjusted_mode->flags & DRM_MODE_FLAG_INTERLACE)
>  		return;
>  
> @@ -358,9 +361,6 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  
>  	vmin = intel_vrr_compute_vmin(crtc_state);
>  
> -	if (vmin >= vmax)
> -		return;
> -
>  	crtc_state->vrr.vmin = vmin;
>  	crtc_state->vrr.vmax = vmax;

I think your earlier pathc left vmax==0 here for the !in_range so
this looks a bit wrong. But if you change the earlier patch like I
suggested to set vmax=vmin then this would be fine.

>  
> @@ -373,7 +373,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	 */
>  	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
>  
> -	if (crtc_state->uapi.vrr_enabled)
> +	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
>  		intel_vrr_compute_vrr_timings(crtc_state);
>  	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>  		intel_vrr_compute_cmrr_timings(crtc_state);
> @@ -640,6 +640,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	u32 trans_vrr_ctl, trans_vrr_vsync;
>  
> +	if (!HAS_VRR(display))
> +		return;

I think the caller is already checking that. But I suppose we could
move the checks into the VRR code.

> +
>  	trans_vrr_ctl = intel_de_read(display,
>  				      TRANS_VRR_CTL(display, cpu_transcoder));
>  
> @@ -663,23 +666,21 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  			crtc_state->vrr.pipeline_full =
>  				REG_FIELD_GET(VRR_CTL_PIPELINE_FULL_MASK, trans_vrr_ctl);
>  
> -	if (trans_vrr_ctl & VRR_CTL_FLIP_LINE_EN) {
> -		crtc_state->vrr.flipline = intel_de_read(display,
> -							 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
> -		crtc_state->vrr.vmax = intel_de_read(display,
> -						     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
> -		crtc_state->vrr.vmin = intel_de_read(display,
> -						     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
> -
> -		if (HAS_AS_SDP(display)) {
> -			trans_vrr_vsync =
> -				intel_de_read(display,
> -					      TRANS_VRR_VSYNC(display, cpu_transcoder));
> -			crtc_state->vrr.vsync_start =
> -				REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
> -			crtc_state->vrr.vsync_end =
> -				REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
> -		}

I think you want to keep the VRR_CTL_FLIP_LINE_EN check around the
TRANS_VRR_FLIPLINE read at least, because we want the state checker
to catch any misprogrammng of VRR_CTL_FLIP_LINE_EN.

> +	crtc_state->vrr.flipline = intel_de_read(display,
> +						 TRANS_VRR_FLIPLINE(display, cpu_transcoder)) + 1;
> +	crtc_state->vrr.vmax = intel_de_read(display,
> +					     TRANS_VRR_VMAX(display, cpu_transcoder)) + 1;
> +	crtc_state->vrr.vmin = intel_de_read(display,
> +					     TRANS_VRR_VMIN(display, cpu_transcoder)) + 1;
> +
> +	if (HAS_AS_SDP(display)) {
> +		trans_vrr_vsync =
> +			intel_de_read(display,
> +				      TRANS_VRR_VSYNC(display, cpu_transcoder));
> +		crtc_state->vrr.vsync_start =
> +			REG_FIELD_GET(VRR_VSYNC_START_MASK, trans_vrr_vsync);
> +		crtc_state->vrr.vsync_end =
> +			REG_FIELD_GET(VRR_VSYNC_END_MASK, trans_vrr_vsync);
>  	}
>  
>  	crtc_state->vrr.enable = trans_vrr_ctl & VRR_CTL_VRR_ENABLE &&
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
