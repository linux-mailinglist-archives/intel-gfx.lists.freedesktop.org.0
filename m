Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id F127EA551B6
	for <lists+intel-gfx@lfdr.de>; Thu,  6 Mar 2025 17:47:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 83A3110EA20;
	Thu,  6 Mar 2025 16:47:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="lhG+/yrH";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.10])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 054D810EA20;
 Thu,  6 Mar 2025 16:47:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741279626; x=1772815626;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=Bd6EMNFPe7M2Zf7vBZk7zTb60k7emnrPpvSJpFfDhkU=;
 b=lhG+/yrHKS0+liUJ8uUL5KBVlEshpRxrZ9KeaqK/GYc3hM8e9yjkBtRe
 pcgkdxZ3FwYuXHicD2JHOwg3qEr7I/9039OuDDwvdAtoAsdTrv13/I/66
 ckRVSj19YjUbJZQg+5dvsGiTO7cBb+AgkrxK8xQP+jjQdhdTRmTWokGd5
 rTnwfxS5hS/OIe2WY/uG7rJJu81ovBaAbErFMFf/fdbr4OiBQH0gPIQaV
 YNDo8pkdz3pjgWZFD5fYu0AA2aPux/8lfReUHFwiaVd9LxicF2mvaytvT
 eY6NlDoa+2154/2dfMNW441bFDDzyLeZE50n9ftQb7vfSL1aUTk8Ubo/M Q==;
X-CSE-ConnectionGUID: 1RtAfk0cRXelTc8RFRIq6Q==
X-CSE-MsgGUID: FKGhxCknSfSNHeN/06Miyw==
X-IronPort-AV: E=McAfee;i="6700,10204,11365"; a="53705711"
X-IronPort-AV: E=Sophos;i="6.14,226,1736841600"; d="scan'208";a="53705711"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Mar 2025 08:47:05 -0800
X-CSE-ConnectionGUID: a+lEe+/4QnOEAi3be3Xuhg==
X-CSE-MsgGUID: hjh/24UzQhCF/Qtrn3N2rw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="124293003"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 06 Mar 2025 08:47:02 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Thu, 06 Mar 2025 18:47:01 +0200
Date: Thu, 6 Mar 2025 18:47:01 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 16/21] drm/i915/vrr: Use fixed timings for platforms that
 support VRR
Message-ID: <Z8nRhWFMs4_173c0@intel.com>
References: <20250306131100.3989503-1-ankit.k.nautiyal@intel.com>
 <20250306131100.3989503-17-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250306131100.3989503-17-ankit.k.nautiyal@intel.com>
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

On Thu, Mar 06, 2025 at 06:40:55PM +0530, Ankit Nautiyal wrote:
> For fixed refresh rate use fixed timings for all platforms that support
> VRR. For this add checks to avoid computing and reading VRR for
> platforms that do not support VRR.
> 
> v2: Avoid touching check for VRR_CTL_FLIP_LINE_EN. (Ville)
> v3: Avoid redundant statements in vrr_{compute/get}_config. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>

Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_vrr.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index d7580b6e4e37..efa26a39b86a 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -351,6 +351,9 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  	struct drm_display_mode *adjusted_mode = &crtc_state->hw.adjusted_mode;
>  	int vmin, vmax;
>  
> +	if (!HAS_VRR(display))
> +		return;
> +
>  	/*
>  	 * FIXME all joined pipes share the same transcoder.
>  	 * Need to account for that during VRR toggle/push/etc.
> @@ -374,15 +377,12 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  		vmax = vmin;
>  	}
>  
> -	if (vmin >= vmax)
> -		return;
> -
>  	crtc_state->vrr.vmin = vmin;
>  	crtc_state->vrr.vmax = vmax;
>  
>  	crtc_state->vrr.flipline = crtc_state->vrr.vmin;
>  
> -	if (crtc_state->uapi.vrr_enabled)
> +	if (crtc_state->uapi.vrr_enabled && vmin < vmax)
>  		intel_vrr_compute_vrr_timings(crtc_state);
>  	else if (is_cmrr_frac_required(crtc_state) && is_edp)
>  		intel_vrr_compute_cmrr_timings(crtc_state);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
