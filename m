Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 88ADECC80B0
	for <lists+intel-gfx@lfdr.de>; Wed, 17 Dec 2025 15:01:30 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 7563210E5BE;
	Wed, 17 Dec 2025 14:01:28 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="eiGlO8Xw";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 0FE2B10E359;
 Wed, 17 Dec 2025 14:01:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1765980087; x=1797516087;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=iYk+/a3M5DQKoBDCxdQSdBKN+f6WRbD8Xemd44DILck=;
 b=eiGlO8Xw2jRdeHhDey6YeMYrQ/xzJhehB4Q7lDfAVlVYx71zaKm8CIfG
 8gyW4M2AWjwrKtffduv2cns6SDfimIWc40E1vBiMYwEd5B+w9HZt5Kg7B
 MPLUiYe8FtaV2RG4UNtbHKLKpHw+91rIXBIcoVQ9/wjslepeT/1RuhbiZ
 eEbeLAr8eGjoLT0GEQBHfZ8FBwvxujANVQsbOWp2oH79eUg4dX3iQZ7WB
 FsHkOK05qhgovDTBur5ek1L6ocQnOdUwUhWryshFY/Qlgzhpn7K6iVyQZ
 7fLvkT4lUmTtd3ZFS6SmxCzcxd3EbaffH04PfiBvSpKF8PEtePuPPXUX9 g==;
X-CSE-ConnectionGUID: DxUUUcELS3KKnWFc9xAp1g==
X-CSE-MsgGUID: L0QU5AkaQTmuDif8eOcXoQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11645"; a="79373340"
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="79373340"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 06:01:27 -0800
X-CSE-ConnectionGUID: WoKMKGNCQoKQLY2tnZvFPQ==
X-CSE-MsgGUID: ISyaLKPfS9ChCYOEd5aNJA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,155,1763452800"; d="scan'208";a="203212480"
Received: from ettammin-mobl2.ger.corp.intel.com (HELO localhost)
 ([10.245.246.216])
 by fmviesa004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Dec 2025 06:01:24 -0800
From: Jani Nikula <jani.nikula@intel.com>
To: Uma Shankar <uma.shankar@intel.com>, intel-gfx@lists.freedesktop.org,
 intel-xe@lists.freedesktop.org
Cc: ville.syrjala@linux.intel.com, Uma Shankar <uma.shankar@intel.com>
Subject: Re: [PATCH 04/19] drm/{i915, xe}: Extract DSPCLK_GATE_D
In-Reply-To: <20251217062209.852324-5-uma.shankar@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - c/o Alberga Business Park,
 6 krs Bertel Jungin Aukio 5, 02600 Espoo, Finland
References: <20251217062209.852324-1-uma.shankar@intel.com>
 <20251217062209.852324-5-uma.shankar@intel.com>
Date: Wed, 17 Dec 2025 16:01:21 +0200
Message-ID: <d3f267d6cbe746ace8ea9a0237489eca7d8b82cd@intel.com>
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

On Wed, 17 Dec 2025, Uma Shankar <uma.shankar@intel.com> wrote:
> Move DSPCLK_GATE_D register definition to common header.
> This allows intel_gmbus.c free of i915_reg.h include.

I think these too should be moved to intel_display_regs.h (or some
suitable new file) instead of include/drm/intel.

The intel_clock_gating.c users of the registers should be moved under
display/, though not necessarily in this series. For starters,
intel_clock_gating.c and gvt can include the necessary headers from
display/.

BR,
Jani.

>
> Signed-off-by: Uma Shankar <uma.shankar@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_gmbus.c |  2 +-
>  drivers/gpu/drm/i915/i915_reg.h            | 50 ----------------------
>  include/drm/intel/intel_gmd_common_regs.h  | 49 +++++++++++++++++++++
>  3 files changed, 50 insertions(+), 51 deletions(-)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_gmbus.c b/drivers/gpu/drm/i915/display/intel_gmbus.c
> index 2caff677600c..b77860c5d649 100644
> --- a/drivers/gpu/drm/i915/display/intel_gmbus.c
> +++ b/drivers/gpu/drm/i915/display/intel_gmbus.c
> @@ -34,8 +34,8 @@
>  
>  #include <drm/drm_print.h>
>  #include <drm/display/drm_hdcp_helper.h>
> +#include <drm/intel/intel_gmd_common_regs.h>
>  
> -#include "i915_reg.h"
>  #include "intel_de.h"
>  #include "intel_display_regs.h"
>  #include "intel_display_types.h"
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index a338f01a539b..30f504a47593 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -614,47 +614,6 @@
>  #define  DSTATE_GFX_CLOCK_GATING		(1 << 1)
>  #define  DSTATE_DOT_CLOCK_GATING		(1 << 0)
>  
> -#define DSPCLK_GATE_D			_MMIO(0x6200)
> -#define VLV_DSPCLK_GATE_D		_MMIO(VLV_DISPLAY_BASE + 0x6200)
> -# define DPUNIT_B_CLOCK_GATE_DISABLE		(1 << 30) /* 965 */
> -# define VSUNIT_CLOCK_GATE_DISABLE		(1 << 29) /* 965 */
> -# define VRHUNIT_CLOCK_GATE_DISABLE		(1 << 28) /* 965 */
> -# define VRDUNIT_CLOCK_GATE_DISABLE		(1 << 27) /* 965 */
> -# define AUDUNIT_CLOCK_GATE_DISABLE		(1 << 26) /* 965 */
> -# define DPUNIT_A_CLOCK_GATE_DISABLE		(1 << 25) /* 965 */
> -# define DPCUNIT_CLOCK_GATE_DISABLE		(1 << 24) /* 965 */
> -# define PNV_GMBUSUNIT_CLOCK_GATE_DISABLE	(1 << 24) /* pnv */
> -# define TVRUNIT_CLOCK_GATE_DISABLE		(1 << 23) /* 915-945 */
> -# define TVCUNIT_CLOCK_GATE_DISABLE		(1 << 22) /* 915-945 */
> -# define TVFUNIT_CLOCK_GATE_DISABLE		(1 << 21) /* 915-945 */
> -# define TVEUNIT_CLOCK_GATE_DISABLE		(1 << 20) /* 915-945 */
> -# define DVSUNIT_CLOCK_GATE_DISABLE		(1 << 19) /* 915-945 */
> -# define DSSUNIT_CLOCK_GATE_DISABLE		(1 << 18) /* 915-945 */
> -# define DDBUNIT_CLOCK_GATE_DISABLE		(1 << 17) /* 915-945 */
> -# define DPRUNIT_CLOCK_GATE_DISABLE		(1 << 16) /* 915-945 */
> -# define DPFUNIT_CLOCK_GATE_DISABLE		(1 << 15) /* 915-945 */
> -# define DPBMUNIT_CLOCK_GATE_DISABLE		(1 << 14) /* 915-945 */
> -# define DPLSUNIT_CLOCK_GATE_DISABLE		(1 << 13) /* 915-945 */
> -# define DPLUNIT_CLOCK_GATE_DISABLE		(1 << 12) /* 915-945 */
> -# define DPOUNIT_CLOCK_GATE_DISABLE		(1 << 11)
> -# define DPBUNIT_CLOCK_GATE_DISABLE		(1 << 10)
> -# define DCUNIT_CLOCK_GATE_DISABLE		(1 << 9)
> -# define DPUNIT_CLOCK_GATE_DISABLE		(1 << 8)
> -# define VRUNIT_CLOCK_GATE_DISABLE		(1 << 7) /* 915+: reserved */
> -# define OVHUNIT_CLOCK_GATE_DISABLE		(1 << 6) /* 830-865 */
> -# define DPIOUNIT_CLOCK_GATE_DISABLE		(1 << 6) /* 915-945 */
> -# define OVFUNIT_CLOCK_GATE_DISABLE		(1 << 5)
> -# define OVBUNIT_CLOCK_GATE_DISABLE		(1 << 4)
> -/*
> - * This bit must be set on the 830 to prevent hangs when turning off the
> - * overlay scaler.
> - */
> -# define OVRUNIT_CLOCK_GATE_DISABLE		(1 << 3)
> -# define OVCUNIT_CLOCK_GATE_DISABLE		(1 << 2)
> -# define OVUUNIT_CLOCK_GATE_DISABLE		(1 << 1)
> -# define ZVUNIT_CLOCK_GATE_DISABLE		(1 << 0) /* 830 */
> -# define OVLUNIT_CLOCK_GATE_DISABLE		(1 << 0) /* 845,865 */
> -
>  #define RENCLK_GATE_D1		_MMIO(0x6204)
>  # define BLITTER_CLOCK_GATE_DISABLE		(1 << 13) /* 945GM only */
>  # define MPEG_CLOCK_GATE_DISABLE		(1 << 12) /* 945GM only */
> @@ -990,15 +949,6 @@
>  #define   TRANS_CHICKEN1_HDMIUNIT_GC_DISABLE	REG_BIT(10)
>  #define   TRANS_CHICKEN1_DP0UNIT_GC_DISABLE	REG_BIT(4)
>  
> -#define SOUTH_DSPCLK_GATE_D	_MMIO(0xc2020)
> -#define  PCH_GMBUSUNIT_CLOCK_GATE_DISABLE (1 << 31)
> -#define  PCH_DPLUNIT_CLOCK_GATE_DISABLE (1 << 30)
> -#define  PCH_DPLSUNIT_CLOCK_GATE_DISABLE (1 << 29)
> -#define  PCH_DPMGUNIT_CLOCK_GATE_DISABLE (1 << 15)
> -#define  PCH_CPUNIT_CLOCK_GATE_DISABLE (1 << 14)
> -#define  CNP_PWM_CGE_GATING_DISABLE (1 << 13)
> -#define  PCH_LP_PARTITION_LEVEL_DISABLE  (1 << 12)
> -
>  #define  VLV_PMWGICZ				_MMIO(0x1300a4)
>  
>  #define  HSW_EDRAM_CAP				_MMIO(0x120010)
> diff --git a/include/drm/intel/intel_gmd_common_regs.h b/include/drm/intel/intel_gmd_common_regs.h
> index b4cfd186d5c0..fb2a327befd8 100644
> --- a/include/drm/intel/intel_gmd_common_regs.h
> +++ b/include/drm/intel/intel_gmd_common_regs.h
> @@ -4,6 +4,46 @@
>  #ifndef _INTEL_GMD_COMMON_REG_H_
>  #define _INTEL_GMD_COMMON_REG_H_
>  
> +#define DSPCLK_GATE_D			_MMIO(0x6200)
> +#define VLV_DSPCLK_GATE_D		_MMIO(VLV_DISPLAY_BASE + 0x6200)
> +# define DPUNIT_B_CLOCK_GATE_DISABLE		(1 << 30) /* 965 */
> +# define VSUNIT_CLOCK_GATE_DISABLE		(1 << 29) /* 965 */
> +# define VRHUNIT_CLOCK_GATE_DISABLE		(1 << 28) /* 965 */
> +# define VRDUNIT_CLOCK_GATE_DISABLE		(1 << 27) /* 965 */
> +# define AUDUNIT_CLOCK_GATE_DISABLE		(1 << 26) /* 965 */
> +# define DPUNIT_A_CLOCK_GATE_DISABLE		(1 << 25) /* 965 */
> +# define DPCUNIT_CLOCK_GATE_DISABLE		(1 << 24) /* 965 */
> +# define PNV_GMBUSUNIT_CLOCK_GATE_DISABLE	(1 << 24) /* pnv */
> +# define TVRUNIT_CLOCK_GATE_DISABLE		(1 << 23) /* 915-945 */
> +# define TVCUNIT_CLOCK_GATE_DISABLE		(1 << 22) /* 915-945 */
> +# define TVFUNIT_CLOCK_GATE_DISABLE		(1 << 21) /* 915-945 */
> +# define TVEUNIT_CLOCK_GATE_DISABLE		(1 << 20) /* 915-945 */
> +# define DVSUNIT_CLOCK_GATE_DISABLE		(1 << 19) /* 915-945 */
> +# define DSSUNIT_CLOCK_GATE_DISABLE		(1 << 18) /* 915-945 */
> +# define DDBUNIT_CLOCK_GATE_DISABLE		(1 << 17) /* 915-945 */
> +# define DPRUNIT_CLOCK_GATE_DISABLE		(1 << 16) /* 915-945 */
> +# define DPFUNIT_CLOCK_GATE_DISABLE		(1 << 15) /* 915-945 */
> +# define DPBMUNIT_CLOCK_GATE_DISABLE		(1 << 14) /* 915-945 */
> +# define DPLSUNIT_CLOCK_GATE_DISABLE		(1 << 13) /* 915-945 */
> +# define DPLUNIT_CLOCK_GATE_DISABLE		(1 << 12) /* 915-945 */
> +# define DPOUNIT_CLOCK_GATE_DISABLE		(1 << 11)
> +# define DPBUNIT_CLOCK_GATE_DISABLE		(1 << 10)
> +# define DCUNIT_CLOCK_GATE_DISABLE		(1 << 9)
> +# define DPUNIT_CLOCK_GATE_DISABLE		(1 << 8)
> +# define VRUNIT_CLOCK_GATE_DISABLE		(1 << 7) /* 915+: reserved */
> +# define OVHUNIT_CLOCK_GATE_DISABLE		(1 << 6) /* 830-865 */
> +# define DPIOUNIT_CLOCK_GATE_DISABLE		(1 << 6) /* 915-945 */
> +# define OVFUNIT_CLOCK_GATE_DISABLE		(1 << 5)
> +# define OVBUNIT_CLOCK_GATE_DISABLE		(1 << 4)
> +/*
> + * This bit must be set on the 830 to prevent hangs when turning off the
> + * overlay scaler.
> + */
> +# define OVRUNIT_CLOCK_GATE_DISABLE		(1 << 3)
> +# define OVCUNIT_CLOCK_GATE_DISABLE		(1 << 2)
> +# define OVUUNIT_CLOCK_GATE_DISABLE		(1 << 1)
> +# define ZVUNIT_CLOCK_GATE_DISABLE		(1 << 0) /* 830 */
> +# define OVLUNIT_CLOCK_GATE_DISABLE		(1 << 0) /* 845,865 */
>  #define SOUTH_CHICKEN1		_MMIO(0xc2000)
>  #define  FDIA_PHASE_SYNC_SHIFT_OVR	19
>  #define  FDIA_PHASE_SYNC_SHIFT_EN	18
> @@ -31,6 +71,15 @@
>  #define  LPT_PWM_GRANULARITY		(1 << 5)
>  #define  DPLS_EDP_PPS_FIX_DIS		(1 << 0)
>  
> +#define SOUTH_DSPCLK_GATE_D	_MMIO(0xc2020)
> +#define  PCH_GMBUSUNIT_CLOCK_GATE_DISABLE (1 << 31)
> +#define  PCH_DPLUNIT_CLOCK_GATE_DISABLE (1 << 30)
> +#define  PCH_DPLSUNIT_CLOCK_GATE_DISABLE (1 << 29)
> +#define  PCH_DPMGUNIT_CLOCK_GATE_DISABLE (1 << 15)
> +#define  PCH_CPUNIT_CLOCK_GATE_DISABLE (1 << 14)
> +#define  CNP_PWM_CGE_GATING_DISABLE (1 << 13)
> +#define  PCH_LP_PARTITION_LEVEL_DISABLE  (1 << 12)
> +
>  #define _TRANSA_CHICKEN2	 0xf0064
>  #define _TRANSB_CHICKEN2	 0xf1064
>  #define TRANS_CHICKEN2(pipe)	_MMIO_PIPE(pipe, _TRANSA_CHICKEN2, _TRANSB_CHICKEN2)

-- 
Jani Nikula, Intel
