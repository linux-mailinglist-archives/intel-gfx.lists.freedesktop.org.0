Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D2C0D91F0D7
	for <lists+intel-gfx@lfdr.de>; Tue,  2 Jul 2024 10:15:11 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id AB19B10E559;
	Tue,  2 Jul 2024 08:15:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Jl3/wD44";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id C2EE610E559
 for <intel-gfx@lists.freedesktop.org>; Tue,  2 Jul 2024 08:15:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719908109; x=1751444109;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=yCE+PNmelzv0a9/lUTI1JPwtS54I7KarltkOHFiBvW4=;
 b=Jl3/wD44ZfL9wkI0kt/5IXj5RI7rNrKauZLMH6HVyGC24RnZCpSS/GFN
 PvFm82kt+MHU3GIQwaByY2OcKFjeynDqKFi1d6UcXj5D+otoqkzIZL02k
 Osd8daqd0q4RVcr58puUeVjrfUpk+Df9b15xAFosulLOSivyyz1i9WGb4
 TZW3rYmrgl2ln8HmD9dm6FU/hNtYqUK7ohCMfT05AqB8nxZDdoLFxqtNB
 Bx77R8oMmV6bvHPZhNfi4au3W/ky9jhF9C9aL3iyfzEca6GPDXv4ngD7M
 b+7IGKYgp6dEAETAajFe7a5sY8C9a8VsKxa/DlHVzQ/Za77hnSf4PkypD Q==;
X-CSE-ConnectionGUID: LbYftSN9RWuw9uBPumn9kA==
X-CSE-MsgGUID: Phm5tXe9Suyj6OfIbH4ClQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11120"; a="19967998"
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="19967998"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 01:15:08 -0700
X-CSE-ConnectionGUID: gwIfiw04QbuyWPrRylshNA==
X-CSE-MsgGUID: u7HP5P/kS7qvnzx1oe8uNQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,178,1716274800"; d="scan'208";a="45954261"
Received: from bergbenj-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.179])
 by orviesa009-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2024 01:15:07 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>,
 intel-gfx@lists.freedesktop.org
Cc: ankit.k.nautiyal@intel.com, imre.deak@intel.com
Subject: Re: [PATCH 1/2] drm/i915/display: Avoid reading as sdp caps during
 each atomic commit
In-Reply-To: <20240702050755.2091221-2-mitulkumar.ajitkumar.golani@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240702050755.2091221-1-mitulkumar.ajitkumar.golani@intel.com>
 <20240702050755.2091221-2-mitulkumar.ajitkumar.golani@intel.com>
Date: Tue, 02 Jul 2024 11:15:03 +0300
Message-ID: <87le2k9pmg.fsf@intel.com>
MIME-Version: 1.0
Content-Type: text/plain
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

On Tue, 02 Jul 2024, Mitul Golani <mitulkumar.ajitkumar.golani@intel.com> wrote:
> Add new member to struct intel_dp to cache support of Adaptive Sync
> SDP capabilities and use it whenever required to avoid HW access
> to read capability during each atomic commit.

Every commit must work. This breaks adaptive sync. Nothing sets
intel_dp->as_sdp_supported.

Just squash the two patches together.

BR,
Jani.

>
> Signed-off-by: Mitul Golani <mitulkumar.ajitkumar.golani@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_alpm.c          | 2 +-
>  drivers/gpu/drm/i915/display/intel_display_types.h | 1 +
>  drivers/gpu/drm/i915/display/intel_dp.c            | 3 +--
>  drivers/gpu/drm/i915/display/intel_vrr.c           | 3 +--
>  4 files changed, 4 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_alpm.c b/drivers/gpu/drm/i915/display/intel_alpm.c
> index 866b3b409c4d..f4f05a859379 100644
> --- a/drivers/gpu/drm/i915/display/intel_alpm.c
> +++ b/drivers/gpu/drm/i915/display/intel_alpm.c
> @@ -280,7 +280,7 @@ void intel_alpm_lobf_compute_config(struct intel_dp *intel_dp,
>  	if (DISPLAY_VER(i915) < 20)
>  		return;
>  
> -	if (!intel_dp_as_sdp_supported(intel_dp))
> +	if (!intel_dp->as_sdp_supported)
>  		return;
>  
>  	if (crtc_state->has_psr)
> diff --git a/drivers/gpu/drm/i915/display/intel_display_types.h b/drivers/gpu/drm/i915/display/intel_display_types.h
> index 8713835e2307..a9d2acdc51a4 100644
> --- a/drivers/gpu/drm/i915/display/intel_display_types.h
> +++ b/drivers/gpu/drm/i915/display/intel_display_types.h
> @@ -1806,6 +1806,7 @@ struct intel_dp {
>  
>  	/* connector directly attached - won't be use for modeset in mst world */
>  	struct intel_connector *attached_connector;
> +	bool as_sdp_supported;
>  
>  	struct drm_dp_tunnel *tunnel;
>  	bool tunnel_suspended:1;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index 3903f6ead6e6..c6f0a46a0388 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2625,8 +2625,7 @@ static void intel_dp_compute_as_sdp(struct intel_dp *intel_dp,
>  	const struct drm_display_mode *adjusted_mode =
>  		&crtc_state->hw.adjusted_mode;
>  
> -	if (!crtc_state->vrr.enable ||
> -	    !intel_dp_as_sdp_supported(intel_dp))
> +	if (!crtc_state->vrr.enable || intel_dp->as_sdp_supported)
>  		return;
>  
>  	crtc_state->infoframes.enable |= intel_hdmi_infoframe_enable(DP_SDP_ADAPTIVE_SYNC);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 5a0da64c7db3..7e1d9c718214 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -233,8 +233,7 @@ intel_vrr_compute_config(struct intel_crtc_state *crtc_state,
>  		crtc_state->mode_flags |= I915_MODE_FLAG_VRR;
>  	}
>  
> -	if (intel_dp_as_sdp_supported(intel_dp) &&
> -	    crtc_state->vrr.enable) {
> +	if (intel_dp->as_sdp_supported && crtc_state->vrr.enable) {
>  		crtc_state->vrr.vsync_start =
>  			(crtc_state->hw.adjusted_mode.crtc_vtotal -
>  			 crtc_state->hw.adjusted_mode.vsync_start);

-- 
Jani Nikula, Intel
