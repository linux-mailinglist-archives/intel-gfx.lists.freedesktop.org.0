Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 13B37A22E9A
	for <lists+intel-gfx@lfdr.de>; Thu, 30 Jan 2025 15:03:12 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id E868510E98A;
	Thu, 30 Jan 2025 14:03:09 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="SqIfv86k";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 9253810E98A;
 Thu, 30 Jan 2025 14:03:08 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1738245789; x=1769781789;
 h=date:from:to:cc:subject:message-id:reply-to:references:
 mime-version:in-reply-to;
 bh=BjQC7AarXKmnMb3ssif2j93kUy0BN5iazNnxIYE31mU=;
 b=SqIfv86ksxDIHhxswlC6PAveeEIgivn4iSB7yYIf4aip+6m2h9eOMMyW
 lZsFQSCHn7XfzuSHhYdCVcqxNTbcUeOFOgARVZcJMPk9K5ZSFqA2ocjHa
 JnG7fo5L9zOZ1NynWuw9R1eQW4YUZvDv7xO+WFzNb3e/BTFS1xNSDjvMu
 FuVudyYcQaxEsq8EwDvuzD3bruGPouXyK6QoYgyRC4HiunJ4ziyQkUrNl
 h7hH2N0RIQ3DqaVkkcZv1sXBlP5dgkERwAYLOR2ZDiUp3dzLwrMZ9T5id
 2fT6hxywyOLGAVu8GKrBLtsC7lmiHVKqjt2XboR53oINV8aqaFHE2BWzS Q==;
X-CSE-ConnectionGUID: jvNuXFXiTqGZ/BLd2qFHiQ==
X-CSE-MsgGUID: 51D0I9fTR7+iaIKxgbpQOw==
X-IronPort-AV: E=McAfee;i="6700,10204,11331"; a="39055298"
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="39055298"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 06:03:05 -0800
X-CSE-ConnectionGUID: SZNInMC1Si2xXJJoWTrNpg==
X-CSE-MsgGUID: Il8SN996TsueR61+Piy0Vg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,245,1732608000"; d="scan'208";a="114344880"
Received: from ideak-desk.fi.intel.com ([10.237.72.78])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jan 2025 06:03:03 -0800
Date: Thu, 30 Jan 2025 16:03:59 +0200
From: Imre Deak <imre.deak@intel.com>
To: Jani Nikula <jani.nikula@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH 2/6] drm/i915/dp: change the order of
 intel_dp_mtp_tu_compute_config() params
Message-ID: <Z5uGzy46BTXX2aUG@ideak-desk.fi.intel.com>
References: <cover.1738161945.git.jani.nikula@intel.com>
 <ea9669edc5973cdbca92aeb4e168850015e9d1bb.1738161945.git.jani.nikula@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ea9669edc5973cdbca92aeb4e168850015e9d1bb.1738161945.git.jani.nikula@intel.com>
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
Reply-To: imre.deak@intel.com
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Wed, Jan 29, 2025 at 04:46:34PM +0200, Jani Nikula wrote:
> Pointers first, bpp params in min, max, step. This is slightly more
> natural to follow.
> 
> Signed-off-by: Jani Nikula <jani.nikula@intel.com>

Reviewed-by: Imre Deak <imre.deak@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_dp.c     | 2 +-
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 8 +++-----
>  drivers/gpu/drm/i915/display/intel_dp_mst.h | 3 +--
>  3 files changed, 5 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp.c b/drivers/gpu/drm/i915/display/intel_dp.c
> index d367f9c2fa23..c387de69d55e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp.c
> @@ -2643,9 +2643,9 @@ intel_dp_compute_link_config(struct intel_encoder *encoder,
>  		if (!ret && intel_dp_is_uhbr(pipe_config))
>  			ret = intel_dp_mtp_tu_compute_config(intel_dp,
>  							     pipe_config,
> +							     conn_state,
>  							     pipe_config->pipe_bpp,
>  							     pipe_config->pipe_bpp,
> -							     conn_state,
>  							     0, false);
>  		if (ret)
>  			dsc_needed = true;
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 2acc26aad6a0..98d7cdddfead 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -211,9 +211,8 @@ static int intel_dp_mst_dsc_get_slice_count(const struct intel_connector *connec
>  
>  int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  				   struct intel_crtc_state *crtc_state,
> -				   int max_bpp, int min_bpp,
>  				   struct drm_connector_state *conn_state,
> -				   int step, bool dsc)
> +				   int min_bpp, int max_bpp, int step, bool dsc)
>  {
>  	struct intel_display *display = to_intel_display(intel_dp);
>  	struct drm_atomic_state *state = crtc_state->uapi.state;
> @@ -380,9 +379,8 @@ static int mst_stream_find_vcpi_slots_for_bpp(struct intel_dp *intel_dp,
>  	mst_state->pbn_div = drm_dp_get_vc_payload_bw(crtc_state->port_clock,
>  						      crtc_state->lane_count);
>  
> -	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state,
> -					      max_bpp, min_bpp,
> -					      conn_state, step, dsc);
> +	return intel_dp_mtp_tu_compute_config(intel_dp, crtc_state, conn_state,
> +					      min_bpp, max_bpp, step, dsc);
>  }
>  
>  static int mst_stream_compute_link_config(struct intel_dp *intel_dp,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.h b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> index c6bdc1d190a4..a713a1c10154 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.h
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.h
> @@ -33,8 +33,7 @@ bool intel_dp_mst_verify_dpcd_state(struct intel_dp *intel_dp);
>  
>  int intel_dp_mtp_tu_compute_config(struct intel_dp *intel_dp,
>  				   struct intel_crtc_state *crtc_state,
> -				   int max_bpp, int min_bpp,
>  				   struct drm_connector_state *conn_state,
> -				   int step, bool dsc);
> +				   int min_bpp, int max_bpp, int step, bool dsc);
>  
>  #endif /* __INTEL_DP_MST_H__ */
> -- 
> 2.39.5
> 
