Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 39B3DA6C1C4
	for <lists+intel-gfx@lfdr.de>; Fri, 21 Mar 2025 18:42:31 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 1984C10E808;
	Fri, 21 Mar 2025 17:42:29 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="A/Uco0wK";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 932A710E805;
 Fri, 21 Mar 2025 17:42:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742578948; x=1774114948;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=0Mx2xLqEQPltOQXfm9W2prVM6jIW2kgGRh4sMjqLVNE=;
 b=A/Uco0wK/L1raKnVJt0wu6p2gg344TQGakwSD6eFGnW/eNbS3mtRqByc
 8aghEAGDhpk4LUzHo8mU28CQtvslqw9Ks5wqD0Oi2Qkp4ugOOkVozI04q
 8lyEL2wxluaUXe61N43T3uh6RZHC5FepbyEpVaEiilglWTi0UnbZtbe11
 m104VMPm/u86ltfOw1ypvbpDE01nDafB5yGkdjwWMpxYn9WKLp4kHQlwJ
 XrzSymKK3oTYGR7wDqHnjB8w5UcRYyZAz1w8jqgb2BRITGBwAxxg/13Ks
 vTNogS1NhNa2kp6fltt7+iJVA+WkipYvqAJAigPc4Z8J0aA+4LSUYTQdF g==;
X-CSE-ConnectionGUID: upCC1LkcTS6rlMRaFGpnJQ==
X-CSE-MsgGUID: edf6bCfcReO7VAW0CIbLgQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11380"; a="43971951"
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="43971951"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Mar 2025 10:42:27 -0700
X-CSE-ConnectionGUID: YjwmDyVvQpmtGKUnwPMf3g==
X-CSE-MsgGUID: 5EOb7f0GTVaqMwFiEaiUZg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,265,1736841600"; d="scan'208";a="128683751"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 21 Mar 2025 10:42:25 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 21 Mar 2025 19:42:23 +0200
Date: Fri, 21 Mar 2025 19:42:23 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 04/16] drm/i915/dp_mst: Use VRR Timing generator for DP
 MST for fixed_rr
Message-ID: <Z92k_3nvjfIyawu5@intel.com>
References: <20250318073540.2773890-1-ankit.k.nautiyal@intel.com>
 <20250318073540.2773890-5-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250318073540.2773890-5-ankit.k.nautiyal@intel.com>
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

On Tue, Mar 18, 2025 at 01:05:28PM +0530, Ankit Nautiyal wrote:
> Currently the variable timings are supported only for DP and eDP and not
> for DP MST. Call intel_vrr_compute_config() for MST which will configure
> fixed refresh rate timings irrespective of whether VRR is supported or
> not. Since vrr_capable still doesn't have support for DP MST this will be
> just treated as non VRR case and vrr.vmin/vmax/flipline will be all set
> to adjusted_mode->crtc_vtotal.
> 
> This will help to move away from the legacy timing generator and
> always use VRR timing generator by default.
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 02f95108c637..bd47cf127b4c 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -52,6 +52,7 @@
>  #include "intel_pfit.h"
>  #include "intel_psr.h"
>  #include "intel_vdsc.h"
> +#include "intel_vrr.h"
>  #include "skl_scaler.h"
>  
>  /*
> @@ -710,6 +711,8 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  		pipe_config->lane_lat_optim_mask =
>  			bxt_dpio_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
>  
> +	intel_vrr_compute_config(pipe_config, conn_state);

This looks like it may start to consider MST outputs as VRR capable.
Granted we don't attach the uapi property to the conneector so no one
can enable actual VRR mode on it, but I think we would enable the LRR
codepaths on MST with this. To avoid that I think we want to exclude
MST in intel_vrr_is_capable() for now.

> +
>  	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
>  
>  	intel_ddi_compute_min_voltage_level(pipe_config);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
