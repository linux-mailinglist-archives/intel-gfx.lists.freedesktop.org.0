Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D5B4A4EC7A
	for <lists+intel-gfx@lfdr.de>; Tue,  4 Mar 2025 19:53:50 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8F50D10E0AA;
	Tue,  4 Mar 2025 18:53:48 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="RMxJY2QV";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.15])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4DA4C10E0AA;
 Tue,  4 Mar 2025 18:53:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741114427; x=1772650427;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=ZZbuSXNpRHQCrQ2wggaTXsAS0h2GSfnKYX0dmZyYKeI=;
 b=RMxJY2QVdgSDg4+gx5DVXay91YcihRgJkXDxbSuAU/X1BclZwSkUDy++
 DD/1MjYJP2bhqQn53H3Q/kC4OLWFZl8yQi1mgg76vrpsgMrz2C/3L8VOq
 gqE+TTSmetLbfSIlh9MkKbUwowLklvbKDDZ9y9D/xxcDIEZ5Tf3h3IYrD
 PjKPy56yB/rZILew9qcI4mMSJR/TrZlbkR0s7Zdx26VLhTSNZ1bb3sDbs
 hIPDTsdvp3MuNv7bgVYQAwmym2mwc23QrYU5RwInPNhvKWuaL+iHYmQZE
 2cY53K2FhVL7mjqXdkD0zbMJBr1iZY/z3Z0mBFof2wrt3/6eF92fL2Ovu Q==;
X-CSE-ConnectionGUID: KQkxDCEPScKzYF8YW+1RkQ==
X-CSE-MsgGUID: uyjNBOE1QD+IWZr+PPxKNQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11363"; a="42181423"
X-IronPort-AV: E=Sophos;i="6.14,220,1736841600"; d="scan'208";a="42181423"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa109.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Mar 2025 10:53:44 -0800
X-CSE-ConnectionGUID: o5qYwDHnRTGYPZivyNfPug==
X-CSE-MsgGUID: Pd44pSjVRriG9P940g47cw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="123661329"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 04 Mar 2025 10:53:41 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Tue, 04 Mar 2025 20:53:40 +0200
Date: Tue, 4 Mar 2025 20:53:40 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 16/22] drm/i915/vrr: Use fixed timings for platforms that
 support VRR
Message-ID: <Z8dMNIG2H9FuG9Qi@intel.com>
References: <20250304081948.3177034-1-ankit.k.nautiyal@intel.com>
 <20250304081948.3177034-17-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250304081948.3177034-17-ankit.k.nautiyal@intel.com>
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

On Tue, Mar 04, 2025 at 01:49:42PM +0530, Ankit Nautiyal wrote:
> For fixed refresh rate use fixed timings for all platforms that support
> VRR. For this add checks to avoid computing and reading VRR for
> platforms that do not support VRR.
> 
> v2: Avoid touching check for VRR_CTL_FLIP_LINE_EN. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 11 ++++++++---
>  1 file changed, 8 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 97040ab9ed86..11f23affd13a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -347,6 +347,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	int vmin, vmax;
>  
> +	if (!HAS_VRR(display))
> +		return;
> +
>  	/*
>  	 * FIXME all joined pipes share the same transcoder.
>  	 * Need to account for that during VRR toggle/push/etc.
> @@ -370,8 +373,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  		vmax = vmin;
>  	}
>  
> -	if (vmin >= vmax)
> -		return;
> +	vmin = intel_vrr_compute_vmin(crtc_state);

Didn't we already do that?

>  
>  	crtc_state->vrr.vmin = vmin;
>  	crtc_state->vrr.vmax = vmax;
> @@ -385,7 +387,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	 */
>  	crtc_state->vrr.vmin -= intel_vrr_flipline_offset(display);
>  
> -	if (crtc_state->uapi.vrr_enabled)
> +	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
>  		intel_vrr_compute_vrr_timings(crtc_state);
>  	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>  		intel_vrr_compute_cmrr_timings(crtc_state);
> @@ -659,6 +661,9 @@ void intel_vrr_get_config(struct intel_crtc_state *crtc_state)
>  	enum transcoder cpu_transcoder = crtc_state->cpu_transcoder;
>  	u32 trans_vrr_ctl, trans_vrr_vsync;
>  
> +	if (!HAS_VRR(display))
> +		return;
> +

The caller already checks that, so should not be needed here.

>  	trans_vrr_ctl = intel_de_read(display,
>  				      TRANS_VRR_CTL(display, cpu_transcoder));
>  
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
