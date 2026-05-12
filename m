Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
Delivered-To: lists+intel-gfx@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EMjOMEAGA2plzwEAu9opvQ
	(envelope-from <intel-gfx-bounces@lists.freedesktop.org>)
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 12:51:44 +0200
X-Original-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A1FE51EE17
	for <lists+intel-gfx@lfdr.de>; Tue, 12 May 2026 12:51:43 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 2344810E26B;
	Tue, 12 May 2026 10:51:42 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="JpuDCRh2";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id EBB1210E26B;
 Tue, 12 May 2026 10:51:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778583101; x=1810119101;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=B3hS72iLs17s6+NFd5lcvAOr/XV+qfLFp3Vu+zEXkBk=;
 b=JpuDCRh2H40+v96uGdojSJz20vK1Zs+MSzb+XNSsKhmsVNSmH+Per11u
 Yjp2UAVXF1PdZjWGdADXacDP/vEiGLSHSe/hK6aufck1WotaiIJCBkHd+
 LhUGC1AjkOc7YPCJlscI//QEKgSMoAIucmM2muZOVMesfZN4Pfem3dnek
 dZQc+mD1qHCl5spX9AE2CV6Kmi+EPesUP6S23kdlsNOM9DJ9dvn6D1q9w
 Vp/40vxoiFqtoR8u70RxaSiHcBDmy6CkXR2LFDj29nCgiYtyLRv/siFhB
 YeQmCJvFNh8xTjKXw9xz80qMbbkK3RnAhgO7X9/dqPgPHlpy0j+zBcxOl A==;
X-CSE-ConnectionGUID: AFHpfj5OSy6wixBu3Oqcgg==
X-CSE-MsgGUID: 7buCQCXQSAOHKcFiVU4pWw==
X-IronPort-AV: E=McAfee;i="6800,10657,11783"; a="89791126"
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="89791126"
Received: from fmviesa002.fm.intel.com ([10.60.135.142])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 03:51:41 -0700
X-CSE-ConnectionGUID: DyBIFdq+RoKxLf03evjm7Q==
X-CSE-MsgGUID: +Pywwp5vTcu6AbRrb0c+Tw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,230,1770624000"; d="scan'208";a="261228942"
Received: from vpanait-mobl.ger.corp.intel.com (HELO localhost)
 ([10.245.245.203])
 by fmviesa002-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 03:51:37 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, uma.shankar@intel.com,
 chaitanya.kumar.borah@intel.com, pranay.samala@intel.com
Subject: Re: [PATCH v3 3/4] drm/i915: Avoid programming color HW blocks for
 NV12 Y planes
In-Reply-To: <20260511053213.3122314-4-chaitanya.kumar.borah@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20260511053213.3122314-1-chaitanya.kumar.borah@intel.com>
 <20260511053213.3122314-4-chaitanya.kumar.borah@intel.com>
Date: Tue, 12 May 2026 13:51:34 +0300
Message-ID: <e6f018b234eec50c96035973f9028af74acb3feb@intel.com>
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
X-Rspamd-Queue-Id: 2A1FE51EE17
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.19 / 15.00];
	MID_RHS_MATCH_TO(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[intel.com,none];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:131.252.210.177:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[intel.com:s=Intel];
	RWL_MAILSPIKE_GOOD(-0.10)[131.252.210.177:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	ARC_NA(0.00)[];
	HAS_ORG_HEADER(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jani.nikula@linux.intel.com,intel-gfx-bounces@lists.freedesktop.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	DKIM_TRACE(0.00)[intel.com:+];
	TAGGED_RCPT(0.00)[intel-gfx];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:6366, ipnet:131.252.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[gabe.freedesktop.org:helo,gabe.freedesktop.org:rdns,intel.com:email,intel.com:mid,intel.com:dkim]
X-Rspamd-Action: no action

On Mon, 11 May 2026, Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com> wrote:
> link_nv12_planes() currently copies the full UV plane hw state to
> the Y plane. This includes the color pipeline blobs (ctm, degamma_lut,
> gamma_lut, lut_3d) which is incorrect as we don't need to program these
> HW blocks for Y plane.
>
> This is harmless currently as the color pipeline uapi does not support
> YUV (both packed and planar) formats but that can change in the future.
>
> Add a new static helper intel_plane_y_copy_hw_state() that copies only
> the rendering parameters a Y plane actually needs, leaving all color
> pipeline blobs unset. Remove the helper intel_plane_copy_hw_state() as
> there are no users for it.
>
> Assisted-by: GitHub Copilot:Claude Sonnet 4.6
> Signed-off-by: Chaitanya Kumar Borah <chaitanya.kumar.borah@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_plane.c | 26 +++++++++++++---------
>  drivers/gpu/drm/i915/display/intel_plane.h |  2 --
>  2 files changed, 16 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.c b/drivers/gpu/drm/i915/display/intel_plane.c
> index a8efe0011b23..559eef467dda 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.c
> +++ b/drivers/gpu/drm/i915/display/intel_plane.c
> @@ -450,16 +450,22 @@ void intel_plane_copy_uapi_to_hw_state(struct intel_atomic_state *state,
>  	intel_plane_color_copy_uapi_to_hw_state(state, plane_state, from_plane_state, crtc);
>  }
>  
> -void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
> -			       const struct intel_plane_state *from_plane_state)
> +static void intel_plane_y_copy_hw_state(struct intel_plane_state *y_plane_state,
> +					const struct intel_plane_state *uv_plane_state)
>  {
> -	intel_plane_clear_hw_state(plane_state);
> -
> -	memcpy(&plane_state->hw, &from_plane_state->hw,
> -	       sizeof(plane_state->hw));
> -
> -	if (plane_state->hw.fb)
> -		drm_framebuffer_get(plane_state->hw.fb);
> +	intel_plane_clear_hw_state(y_plane_state);
> +
> +	y_plane_state->hw.crtc		= uv_plane_state->hw.crtc;
> +	y_plane_state->hw.fb		= uv_plane_state->hw.fb;
> +	if (y_plane_state->hw.fb)
> +		drm_framebuffer_get(y_plane_state->hw.fb);
> +
> +	y_plane_state->hw.alpha		= uv_plane_state->hw.alpha;
> +	y_plane_state->hw.pixel_blend_mode = uv_plane_state->hw.pixel_blend_mode;
> +	y_plane_state->hw.rotation	= uv_plane_state->hw.rotation;
> +	y_plane_state->hw.color_encoding = uv_plane_state->hw.color_encoding;
> +	y_plane_state->hw.color_range	= uv_plane_state->hw.color_range;
> +	y_plane_state->hw.scaling_filter = uv_plane_state->hw.scaling_filter;

Please drop the extra spaces before ='s.

BR,
Jani.

>  }
>  
>  static void unlink_nv12_plane(struct intel_crtc_state *crtc_state,
> @@ -1549,7 +1555,7 @@ static void link_nv12_planes(struct intel_crtc_state *crtc_state,
>  	crtc_state->rel_data_rate[y_plane->id] = crtc_state->rel_data_rate_y[uv_plane->id];
>  
>  	/* Copy parameters to Y plane */
> -	intel_plane_copy_hw_state(y_plane_state, uv_plane_state);
> +	intel_plane_y_copy_hw_state(y_plane_state, uv_plane_state);
>  	y_plane_state->uapi.src = uv_plane_state->uapi.src;
>  	y_plane_state->uapi.dst = uv_plane_state->uapi.dst;
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_plane.h b/drivers/gpu/drm/i915/display/intel_plane.h
> index 9d627d321f2e..a5bb0caa54a1 100644
> --- a/drivers/gpu/drm/i915/display/intel_plane.h
> +++ b/drivers/gpu/drm/i915/display/intel_plane.h
> @@ -39,8 +39,6 @@ void intel_plane_copy_uapi_to_hw_state(struct intel_atomic_state *state,
>  				       struct intel_plane_state *plane_state,
>  				       const struct intel_plane_state *from_plane_state,
>  				       struct intel_crtc *crtc);
> -void intel_plane_copy_hw_state(struct intel_plane_state *plane_state,
> -			       const struct intel_plane_state *from_plane_state);
>  void intel_plane_async_flip(struct intel_dsb *dsb,
>  			    struct intel_plane *plane,
>  			    const struct intel_crtc_state *crtc_state,

-- 
Jani Nikula, Intel
