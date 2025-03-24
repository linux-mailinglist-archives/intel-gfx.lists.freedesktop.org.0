Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id D8870A6E134
	for <lists+intel-gfx@lfdr.de>; Mon, 24 Mar 2025 18:42:33 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id CC11B10E1E0;
	Mon, 24 Mar 2025 17:42:31 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="PJBmGFid";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 7AAA910E17F;
 Mon, 24 Mar 2025 17:42:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1742838149; x=1774374149;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=tLLI+d9hbMEdL33RWsB83G/WtDVNQw09KSW8rFNXVpg=;
 b=PJBmGFidSWryLa4yDb4RIhLQrrsP3l7Deph/L0PaJ8z5m2kt/i2JmN44
 x00iALOPek1BTQRJPprGO2P5QssQN4Fmz3TtY8i05XY0w7TxtfouGmjl3
 tT/36gcFD32YyWZv7ny96C3I0fh1JdzQN/aFOYFShwpOYGGrDXLCsrh/2
 EN6VVwfKIPaBHz7uHxfl4I6k1zaSFBPNtNxZkY/+I3NSDBUs+2umOT80o
 trYTRT0NIpkyAcA78QeJwGGBFOWvZiQi9e6q9RvYkps313UnN7fjN/nOb
 wp/V4X3j3ZsQKAJXHeWofWrrbGAXl77RzYbKtZfLeOohIbPPQU0i9aZc+ A==;
X-CSE-ConnectionGUID: 8Nqx+k7rS26eIlH0laLJNw==
X-CSE-MsgGUID: VY5j8IR7RtGi/3tyDJFDTw==
X-IronPort-AV: E=McAfee;i="6700,10204,11383"; a="43947581"
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="43947581"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Mar 2025 10:42:29 -0700
X-CSE-ConnectionGUID: 7nsTWlxYQxCzRXK5n5mhPw==
X-CSE-MsgGUID: XqvU4p9TQ1+BOB/vf4dexQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,272,1736841600"; d="scan'208";a="129312898"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 24 Mar 2025 10:42:27 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Mon, 24 Mar 2025 19:42:25 +0200
Date: Mon, 24 Mar 2025 19:42:25 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 02/16] drm/i915/dp_mst: Use VRR Timing generator for DP
 MST for fixed_rr
Message-ID: <Z-GZgQMTdRgTD585@intel.com>
References: <20250324133248.4071909-1-ankit.k.nautiyal@intel.com>
 <20250324133248.4071909-3-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250324133248.4071909-3-ankit.k.nautiyal@intel.com>
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

On Mon, Mar 24, 2025 at 07:02:34PM +0530, Ankit Nautiyal wrote:
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
> With this change, we need to exclude MST in intel_vrr_is_capable for
> now, to avoid having LRR with MST.
> 
> v2: Exclude MST in intel_vrr_is_capable() for now. (Ville)
> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
>  drivers/gpu/drm/i915/display/intel_vrr.c    | 2 ++
>  2 files changed, 5 insertions(+)
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
> +
>  	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
>  
>  	intel_ddi_compute_min_voltage_level(pipe_config);
> diff --git a/drivers/gpu/drm/i915/display/intel_vrr.c b/drivers/gpu/drm/i915/display/intel_vrr.c
> index 6bdcdfed4b9b..c682c487eb25 100644
> --- a/drivers/gpu/drm/i915/display/intel_vrr.c
> +++ b/drivers/gpu/drm/i915/display/intel_vrr.c
> @@ -32,6 +32,8 @@ bool intel_vrr_is_capable(struct intel_connector *connector)
>  			return false;
>  		fallthrough;
>  	case DRM_MODE_CONNECTOR_DisplayPort:
> +		if (connector->mst.dp)
> +			return false;

The DP spec is pretty vague about this, but it looks to me like it's
saying that the last MST branch device must support the "ignore MSA"
bit in order to support adaptive sync. I guess we might need to do that
stuff via remote DPCD. Or perhaps in the worst case we'd have iterate
through the whole MST chain.

Looks like there's at least this MST hub that claims adaptive sync
support:
https://club-3d.com/en/detail/2486/usb_type_c_3.2_gen_1_multi_stream_transport_(mst)hub_displayport1.4_triple_monitor/
We should probably get one and see if we can get this working.

In the meantime
Reviewed-by: Ville Syrjälä <ville.syrjala@linux.intel.com>

>  		intel_dp = intel_attached_dp(connector);
>  
>  		if (!drm_dp_sink_can_do_video_without_timing_msa(intel_dp->dpcd))
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
