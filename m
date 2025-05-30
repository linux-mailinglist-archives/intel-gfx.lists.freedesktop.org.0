Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 784A2AC8D04
	for <lists+intel-gfx@lfdr.de>; Fri, 30 May 2025 13:35:47 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 0CB4310E7ED;
	Fri, 30 May 2025 11:35:46 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="J8vb2sm+";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.9])
 by gabe.freedesktop.org (Postfix) with ESMTPS id D26A610E7E0;
 Fri, 30 May 2025 11:35:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1748604943; x=1780140943;
 h=date:from:to:cc:subject:message-id:references:
 mime-version:content-transfer-encoding:in-reply-to;
 bh=e+GZHHUANJXB9oqeEuT2row/v3tIeZaMWMy8OSWNEZQ=;
 b=J8vb2sm+YcEvKvyWzCYrlfkvkyaaPkfSDb+194PBuKYBIPaN3CZPXt8i
 Ib/CJAj4xK9Mi9NnMpFUC6Ygcv1diPeDJ6fhTHy/2vKDtzGd4Xsu3T+Wi
 jgLhCtoE0ZnaIRG5qPm74nVtjFFaA4apj78hqGtIX+Yn6dzbkmiRzdjG+
 OjNuWF2WbDK32Ae0wUaTmENFDET7WltneGaqzFK+fAEzMkv+FrGGoGL7P
 BKK6kvkuXIvepsGzOm8lMHC0sTN8iryRaW6D1YFlvXZRuW9P4CmA5HrIP
 36rbFB7pqyzYuwz6PS8lJIeji9eD4qWxAQS4h1MKy+FwHLVxLSle3U8qw w==;
X-CSE-ConnectionGUID: VONr/klgTq2OtKKwNmLJZA==
X-CSE-MsgGUID: tVIfgzpGRfSMDrK44YWSCA==
X-IronPort-AV: E=McAfee;i="6700,10204,11449"; a="73228989"
X-IronPort-AV: E=Sophos;i="6.16,195,1744095600"; d="scan'208";a="73228989"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 May 2025 04:35:43 -0700
X-CSE-ConnectionGUID: 7i2xCv/6RxSahWY1IjwXbw==
X-CSE-MsgGUID: 9M9OSXlkTZCkregBO20naw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.16,195,1744095600"; d="scan'208";a="149123889"
Received: from pgcooper-mobl3.ger.corp.intel.com (HELO stinkbox)
 ([10.245.245.2])
 by orviesa005.jf.intel.com with SMTP; 30 May 2025 04:35:40 -0700
Received: by stinkbox (sSMTP sendmail emulation);
 Fri, 30 May 2025 14:35:39 +0300
Date: Fri, 30 May 2025 14:35:39 +0300
From: Ville =?iso-8859-1?Q?Syrj=E4l=E4?= <ville.syrjala@linux.intel.com>
To: Nemesa Garg <nemesa.garg@intel.com>
Cc: intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Subject: Re: [PATCH] drm/i915/display: Implement wa_16011342517
Message-ID: <aDmYCwbnTG38UiL1@intel.com>
References: <20250530091240.56570-1-nemesa.garg@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250530091240.56570-1-nemesa.garg@intel.com>
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

On Fri, May 30, 2025 at 02:42:40PM +0530, Nemesa Garg wrote:
> While doing voltage swing for type-c phy
> for DP 1.62 and HDMI write the
> LOADGEN_SHARING_PMD_DISABLE bit to 1.
> 
> -v2: Update commit message.
>      Add bspec[Suraj]
> 
> Bspec: 55359
> Signed-off-by: Nemesa Garg <nemesa.garg@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_ddi.c         | 16 ++++++++++++++++
>  .../gpu/drm/i915/display/intel_dkl_phy_regs.h    |  4 ++++
>  2 files changed, 20 insertions(+)
> 
> diff --git a/drivers/gpu/drm/i915/display/intel_ddi.c b/drivers/gpu/drm/i915/display/intel_ddi.c
> index 4c845dd410a2..2cdd51cdfe17 100644
> --- a/drivers/gpu/drm/i915/display/intel_ddi.c
> +++ b/drivers/gpu/drm/i915/display/intel_ddi.c
> @@ -77,6 +77,7 @@
>  #include "intel_psr.h"
>  #include "intel_quirks.h"
>  #include "intel_snps_phy.h"
> +#include "intel_step.h"
>  #include "intel_tc.h"
>  #include "intel_vdsc.h"
>  #include "intel_vdsc_regs.h"
> @@ -1439,6 +1440,21 @@ static void tgl_dkl_phy_set_signal_levels(struct intel_encoder *encoder,
>  					  DKL_TX_DPCNTL2_CFG_LOADGENSELECT_TX2_MASK,
>  					  val);
>  		}
> +
> +		/* Wa_16011342517:adl-p */

That one is tagged as 'pre-prod stepping' in bspec. Can someone try
to figure out which steppings are actually pre-prod and which are not?
The bspec page that is supposed to have that information has become
completely useless for new platforms :(

> +		if (display->platform.alderlake_p &&
> +		    IS_DISPLAY_STEP(display, STEP_A0, STEP_D0)) {
> +			if ((intel_crtc_has_type(crtc_state, INTEL_OUTPUT_HDMI) &&
> +			     crtc_state->port_clock == 594000) ||

The w/a says to do it for HDMI in general. Hmm, Windows does seem to do the
link rate change for HDMI as well though. Shrug.

> +			     (intel_crtc_has_type(crtc_state, INTEL_OUTPUT_DP) &&

Insufficient to catch all DP cases.

> +			     crtc_state->port_clock == 162000)) {
> +				intel_dkl_phy_rmw(display, DKLP_PCS_GLUE_TX_DPCNTL2(tc_port),
> +						  LOADGEN_SHARING_PMD_DISABLE, 1);
> +			} else {
> +				intel_dkl_phy_rmw(display, DKLP_PCS_GLUE_TX_DPCNTL2(tc_port),
> +						  LOADGEN_SHARING_PMD_DISABLE, 0);
> +			}
> +		}
>  	}

Windows seems to do this w/a before the DKL_TX_PMD_LANE_SUS write.
No idea if the order is meaningful or not, if yes we should do the
same, if not we should just combine this with the DKL_TX_DPCNTL2
loadgen programming we already do.

>  }
>  
> diff --git a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> index 56085b32956d..70ad3f1b1289 100644
> --- a/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_dkl_phy_regs.h
> @@ -188,6 +188,10 @@ struct intel_dkl_phy_reg {
>  								 _DKL_CMN_UC_DW27)
>  #define  DKL_CMN_UC_DW27_UC_HEALTH			(0x1 << 15)
>  
> +#define _DKLP_PCS_GLUE_TX_DPCNTL2                       0xB68

No idea what these weird 0x168b?? addressed are that are listed in bspec.
The whole DKL register documentation is a complete mess, but this seems
to be just DKL_TX_DPCNTL2.

> +#define DKLP_PCS_GLUE_TX_DPCNTL2(tc_port)		_DKL_REG(tc_port, \
> +								 _DKLP_PCS_GLUE_TX_DPCNTL2)
> +#define LOADGEN_SHARING_PMD_DISABLE                     REG_BIT(12)
>  /*
>   * Each Dekel PHY is addressed through a 4KB aperture. Each PHY has more than
>   * 4KB of register space, so a separate index is programmed in HIP_INDEX_REG0
> -- 
> 2.25.1

-- 
Ville Syrjälä
Intel
