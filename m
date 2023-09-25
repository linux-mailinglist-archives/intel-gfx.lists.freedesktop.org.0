Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [IPv6:2610:10:20:722:a800:ff:fe36:1795])
	by mail.lfdr.de (Postfix) with ESMTPS id 101B37AE524
	for <lists+intel-gfx@lfdr.de>; Tue, 26 Sep 2023 07:40:04 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 8A4C910E0B5;
	Tue, 26 Sep 2023 05:39:59 +0000 (UTC)
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
X-Greylist: delayed 426 seconds by postgrey-1.36 at gabe;
 Tue, 26 Sep 2023 05:39:57 UTC
Received: from mgamail.intel.com (unknown [198.175.65.13])
 by gabe.freedesktop.org (Postfix) with ESMTPS id F22BA10E0B5
 for <intel-gfx@lists.freedesktop.org>; Tue, 26 Sep 2023 05:39:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1695706798; x=1727242798;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:in-reply-to;
 bh=UNIWnm/8VhH9tlbBojTi2H3pGwi7Gu3mBIhpPS4ZpEE=;
 b=KNluR6UMCieR6jLm4IRVpa4E3OhK+J7FPxPEMx6dpElsgNbhd3HxBelQ
 vqSY0s8JJqPce/1YI774y6Pvpn9HHqKIaL5w2RUCfskBNAARTzdpGpwNW
 BUltjlkE6Fxas3cx4knXrxq26myO6FOXIXNc8nT4r2b3T8PfQ4oHdfbSo
 NkzpGzekdEHSycSstDB83RzJs9jUqhK+2WpC5vXMJVaZHjUyLK6JXxok+
 oLIDye0iS4F0zNzLBhp5GiT0ljxbYQvPsfRZPLomn1qNyTpaECbXj1ds7
 BlLS2W/HzbLa7+GLAc/7b68Q8D0Z9+y8ftdD1xu5jKZVU3yVW5BIlzfy7 g==;
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="133248"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; 
   d="scan'208";a="133248"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 01:00:46 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10843"; a="891576326"
X-IronPort-AV: E=Sophos;i="6.03,174,1694761200"; d="scan'208";a="891576326"
Received: from unknown (HELO intel.com) ([10.237.72.65])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Sep 2023 00:59:42 -0700
Date: Mon, 25 Sep 2023 11:00:40 +0300
From: "Lisovskiy, Stanislav" <stanislav.lisovskiy@intel.com>
To: Imre Deak <imre.deak@intel.com>
Message-ID: <ZRE+KJMoJnaI+yMD@intel.com>
References: <20230914192659.757475-1-imre.deak@intel.com>
 <20230914192659.757475-20-imre.deak@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230914192659.757475-20-imre.deak@intel.com>
Subject: Re: [Intel-gfx] [PATCH v3 19/25] drm/i915/dp_mst: Program the DSC
 PPS SDP for each stream
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
Cc: intel-gfx@lists.freedesktop.org
Errors-To: intel-gfx-bounces@lists.freedesktop.org
Sender: "Intel-gfx" <intel-gfx-bounces@lists.freedesktop.org>

On Thu, Sep 14, 2023 at 10:26:53PM +0300, Imre Deak wrote:
> Atm the DSC PPS SDP is programmed only if the first stream is compressed
> and then it's programmed only for the first stream. This left all other
> compressed streams blank. Program the SDP for all streams.
> 
> Signed-off-by: Imre Deak <imre.deak@intel.com>

Reviewed-by: Stanislav Lisovskiy <stanislav.lisovskiy@intel.com>

> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c    | 12 +++++++-----
>  drivers/gpu/drm/i915/display/intel_dp_mst.c |  2 ++
>  2 files changed, 9 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 45db6349af94f..962c9c7c211ce 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -2505,7 +2505,8 @@ static void mtl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	/* 6.o Configure and enable FEC if needed */
>  	intel_ddi_enable_fec(encoder, crtc_state);
>  
> -	intel_dsc_dp_pps_write(encoder, crtc_state);
> +	if (!is_mst)
> +		intel_dsc_dp_pps_write(encoder, crtc_state);
>  }
>  
>  static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
> @@ -2643,7 +2644,8 @@ static void tgl_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  	/* 7.l Configure and enable FEC if needed */
>  	intel_ddi_enable_fec(encoder, crtc_state);
>  
> -	intel_dsc_dp_pps_write(encoder, crtc_state);
> +	if (!is_mst)
> +		intel_dsc_dp_pps_write(encoder, crtc_state);
>  }
>  
>  static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
> @@ -2705,10 +2707,10 @@ static void hsw_ddi_pre_enable_dp(struct intel_atomic_state *state,
>  
>  	intel_ddi_enable_fec(encoder, crtc_state);
>  
> -	if (!is_mst)
> +	if (!is_mst) {
>  		intel_ddi_enable_transcoder_clock(encoder, crtc_state);
> -
> -	intel_dsc_dp_pps_write(encoder, crtc_state);
> +		intel_dsc_dp_pps_write(encoder, crtc_state);
> +	}
>  }
>  
>  static void intel_ddi_pre_enable_dp(struct intel_atomic_state *state,
> diff --git a/drivers/gpu/drm/i915/display/intel_dp_mst.c b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> index 832e8b0e87e84..19548242fa0f2 100644
> --- a/drivers/gpu/drm/i915/display/intel_dp_mst.c
> +++ b/drivers/gpu/drm/i915/display/intel_dp_mst.c
> @@ -43,6 +43,7 @@
>  #include "intel_dpio_phy.h"
>  #include "intel_hdcp.h"
>  #include "intel_hotplug.h"
> +#include "intel_vdsc.h"
>  #include "skl_scaler.h"
>  
>  static int intel_dp_mst_check_constraints(struct drm_i915_private *i915, int bpp,
> @@ -775,6 +776,7 @@ static void intel_mst_pre_enable_dp(struct intel_atomic_state *state,
>  	if (DISPLAY_VER(dev_priv) < 12 || !first_mst_stream)
>  		intel_ddi_enable_transcoder_clock(encoder, pipe_config);
>  
> +	intel_dsc_dp_pps_write(&dig_port->base, pipe_config);
>  	intel_ddi_set_dp_msa(pipe_config, conn_state);
>  }
>  
> -- 
> 2.37.2
> 
