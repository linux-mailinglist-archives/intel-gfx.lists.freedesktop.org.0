Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B35EAA460F2
	for <lists+intel-gfx@lfdr.de>; Wed, 26 Feb 2025 14:31:00 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 52CDC10E916;
	Wed, 26 Feb 2025 13:30:59 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="Pd2D80JL";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 751C610E916;
 Wed, 26 Feb 2025 13:30:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1740576658; x=1772112658;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=VT9MfL4O4WiXHSZftXwyfuyEXazma/8eqmMMcB8gX18=;
 b=Pd2D80JLQ5PfG85329RNY3Tv/2l4RmK5ex9LHOleg6FTh4/QiBCZjOMo
 JTwsVg9ounTxcRZ58j3fqW+2YOOAc41fHjg1q/rjgR96RKIErbSojdRIy
 oPIxVkDpOApkBzbH71TyLdmhlF4UA9ISzdoKOx+TG1QDTw5R9Nsypaf8E
 6WFMJZpxGTFR3uvwhIuF0PeWlR+0DmlP7XQX/QyA9461zjazQ1g7dDEPR
 5XGtnJHWHL/36G3rtAKmvrwGjYHPvxNttjKzxRncVSPPyKQsRhBZYlsQj
 sYfPv3Z9AjSsBz60FsWuYUjl3j0QU4962TL9BClPTH8/RTUyJJ0Ab+UxE A==;
X-CSE-ConnectionGUID: n3PfxoLARHO7wzPLj3Xmgg==
X-CSE-MsgGUID: cRVNLzlrQ02zeZQ4WmQO4A==
X-IronPort-AV: E=McAfee;i="6700,10204,11357"; a="44244023"
X-IronPort-AV: E=Sophos;i="6.13,317,1732608000"; d="scan'208";a="44244023"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Feb 2025 05:30:58 -0800
X-CSE-ConnectionGUID: sKcZyiFhSlSfj7FwvNh3wA==
X-CSE-MsgGUID: yn51BagzTeSyV2SJnuUDHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.12,224,1728975600"; d="scan'208";a="121951549"
Received: from stinkpipe.fi.intel.com (HELO stinkbox) ([10.237.72.74])
 by orviesa005.jf.intel.com with SMTP; 26 Feb 2025 05:30:56 -0800
Received: by stinkbox (sSMTP sendmail emulation);
 Wed, 26 Feb 2025 15:30:54 +0200
Date: Wed, 26 Feb 2025 15:30:54 +0200
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org,
 jani.nikula@linux.intel.com, mitulkumar.ajitkumar.golani@intel.com
Subject: Re: [PATCH 10/20] drm/i915/dp_mst: Use VRR Timing generator for DP MST
Message-ID: <Z78Xjoj23jhIbIQG@intel.com>
References: <20250224061717.1095226-1-ankit.k.nautiyal@intel.com>
 <20250224061717.1095226-11-ankit.k.nautiyal@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250224061717.1095226-11-ankit.k.nautiyal@intel.com>
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

On Mon, Feb 24, 2025 at 11:47:07AM +0530, Ankit Nautiyal wrote:
> Configure VRR timing generator for DP MST for fixed refresh rate.
> Currently the variable timings are supported only for DP and eDP and not
> for DP MST. Call intel_vrr_compute_config for MST which will configure
> fixed refresh rate timings irrespective of whether VRR is supported or
> not.

Also needs actual justification like the HDMI version.

> 
> Signed-off-by: Ankit Nautiyal <ankit.k.nautiyal@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_dp_mst.c | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 167e4a70ab12..2c4a9ac6f61e 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -51,6 +51,7 @@
>  #include "intel_link_bw.h"
>  #include "intel_psr.h"
>  #include "intel_vdsc.h"
> +#include "intel_vrr.h"
>  #include "skl_scaler.h"
>  
>  /*
> @@ -709,6 +710,8 @@ static int mst_stream_compute_config(struct intel_encoder *encoder,
>  		pipe_config->lane_lat_optim_mask =
>  			bxt_dpio_phy_calc_lane_lat_optim_mask(pipe_config->lane_count);
>  
> +	intel_vrr_compute_config(pipe_config, conn_state);
> +
>  	intel_dp_audio_compute_config(encoder, pipe_config, conn_state);
>  
>  	intel_ddi_compute_min_voltage_level(pipe_config);
> -- 
> 2.45.2

-- 
Ville Syrjälä
Intel
