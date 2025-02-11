Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id B09D4A31033
	for <lists+intel-gfx@lfdr.de>; Tue, 11 Feb 2025 16:51:07 +0100 (CET)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id 02AAD10E6F7;
	Tue, 11 Feb 2025 15:51:06 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="FoMAzTh9";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 6975B10E0EE;
 Tue, 11 Feb 2025 15:51:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1739289065; x=1770825065;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=E8CJrnFoxbpMXUIyvV8KiBbzuGuUR+4lmVFywOacSyU=;
 b=FoMAzTh9EdL9JvSktd65/RIqpdnjqlq5b7PF4aK0dTrSIJN9dC5kq9C0
 AS6CZrfCO2sRk06tEN8UwT1BeH8lQKw0Uvm3JAxTMGQ++xXoNBTtIaZVt
 l5N6oI+CDQwcam2BbkLnq3MQDM3Qe9PA+0ANBOcU7AJ+gl6ITqL+u52ET
 uGBlGHk8MJ5nvKaR7TyVeKIxYZFS7XvPhiRmH/gk0us/Snt1AnmXfFI4A
 bFN9Z/crCV75r1LQ+V7RiNuT+VWnK/TXFpq8lfuYWXrrq59pAO+X/Fp4T
 2PWt6FJbvEzu2AleyGwbIpahAtXEA+ygCvbDOlDwN/dwyO3pSgL4MxTbG A==;
X-CSE-ConnectionGUID: qaqgDQsMTTaQJ8iyXuYiaQ==
X-CSE-MsgGUID: 5rn6EkDuRgegrmuDBX2RUQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11342"; a="40038409"
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="40038409"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 07:51:05 -0800
X-CSE-ConnectionGUID: vXKwbUKeSNOMX14nSXI5ag==
X-CSE-MsgGUID: cuMM7nbiQy2n70EPsaSsFw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.13,277,1732608000"; d="scan'208";a="117561742"
Received: from ncintean-mobl1.ger.corp.intel.com (HELO localhost)
 ([10.245.246.93])
 by orviesa004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Feb 2025 07:51:02 -0800
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Vinod Govindapillai <vinod.govindapillai@intel.com>,
 intel-gfx@lists.freedesktop.org, intel-xe@lists.freedesktop.org
Cc: vinod.govindapillai@intel.com, uma.shankar@intel.com,
 jani.saarinen@intel.com
Subject: Re: [PATCH v2] drm/i915/display: implement wa_18038517565
In-Reply-To: <20250211152400.460496-1-vinod.govindapillai@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20250211152400.460496-1-vinod.govindapillai@intel.com>
Date: Tue, 11 Feb 2025 17:50:59 +0200
Message-ID: <878qqc1nvg.fsf@intel.com>
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

On Tue, 11 Feb 2025, Vinod Govindapillai <vinod.govindapillai@intel.com> wrote:
> Disable FBC compressor clock gating before enabling FBC and
> clear it after disabling FBC.
>
> v2: update the DG2 registers for this wa
>
> Bspec: 74212, 72197, 69741, 65555
> Signed-off-by: Vinod Govindapillai <vinod.govindapillai@intel.com>
> ---
>  drivers/gpu/drm/i915/display/intel_fbc.c | 23 +++++++++++++++++++++++
>  drivers/gpu/drm/i915/i915_reg.h          |  7 +++++++
>  2 files changed, 30 insertions(+)
>
> diff --git a/drivers/gpu/drm/i915/display/intel_fbc.c b/drivers/gpu/drm/i915/display/intel_fbc.c
> index df05904bac8a..ac11110159f1 100644
> --- a/drivers/gpu/drm/i915/display/intel_fbc.c
> +++ b/drivers/gpu/drm/i915/display/intel_fbc.c
> @@ -522,6 +522,21 @@ static void ilk_fbc_activate(struct intel_fbc *fbc)
>  		       DPFC_CTL_EN | g4x_dpfc_ctl(fbc));
>  }
>  
> +static void fbc_compressor_clkgate_disable_wa(struct intel_fbc *fbc,
> +					      bool disable)
> +{
> +	struct intel_display *display = fbc->display;
> +
> +	if (display->platform.dg2)
> +		intel_de_rmw(fbc->display, GEN9_CLKGATE_DIS_4,

You already have display local variable, use it.

> +			     DG2_DPFC_GATING_DIS,
> +			     disable ? DG2_DPFC_GATING_DIS : 0);
> +	else if (DISPLAY_VER(display) >= 14)
> +		intel_de_rmw(fbc->display, MTL_PIPE_CLKGATE_DIS2(fbc->id),

Ditto.

> +			     MTL_DPFC_GATING_DIS,
> +			     disable ? MTL_DPFC_GATING_DIS : 0);
> +}
> +
>  static void ilk_fbc_deactivate(struct intel_fbc *fbc)
>  {
>  	struct intel_display *display = fbc->display;
> @@ -532,6 +547,10 @@ static void ilk_fbc_deactivate(struct intel_fbc *fbc)
>  	if (dpfc_ctl & DPFC_CTL_EN) {
>  		dpfc_ctl &= ~DPFC_CTL_EN;
>  		intel_de_write(display, ILK_DPFC_CONTROL(fbc->id), dpfc_ctl);
> +
> +		/* wa_18038517565 Enable DPFC clock gating after FBC disable */
> +		if (display->platform.dg2 || DISPLAY_VER(display) >= 14)
> +			fbc_compressor_clkgate_disable_wa(fbc, false);
>  	}
>  }
>  
> @@ -912,6 +931,10 @@ static void intel_fbc_program_workarounds(struct intel_fbc *fbc)
>  	if (DISPLAY_VER(display) >= 11 && !IS_DG2(i915))
>  		intel_de_rmw(display, ILK_DPFC_CHICKEN(fbc->id),
>  			     0, DPFC_CHICKEN_FORCE_SLB_INVALIDATION);
> +
> +	/* wa_18038517565 Disable DPFC clock gating before FBC enable */
> +	if (display->platform.dg2 || DISPLAY_VER(display) >= 14)
> +		fbc_compressor_clkgate_disable_wa(fbc, true);
>  }
>  
>  static void __intel_fbc_cleanup_cfb(struct intel_fbc *fbc)
> diff --git a/drivers/gpu/drm/i915/i915_reg.h b/drivers/gpu/drm/i915/i915_reg.h
> index 670cd2371f94..6a95bf472258 100644
> --- a/drivers/gpu/drm/i915/i915_reg.h
> +++ b/drivers/gpu/drm/i915/i915_reg.h
> @@ -1043,6 +1043,7 @@
>  
>  #define GEN9_CLKGATE_DIS_4		_MMIO(0x4653C)
>  #define   BXT_GMBUS_GATING_DIS		(1 << 14)
> +#define   DG2_DPFC_GATING_DIS		REG_BIT(31)
>  
>  #define GEN9_CLKGATE_DIS_5		_MMIO(0x46540)
>  #define   DPCE_GATING_DIS		REG_BIT(17)
> @@ -4273,6 +4274,12 @@ enum skl_power_gate {
>  #define MTL_CLKGATE_DIS_TRANS(dev_priv, trans)			_MMIO_TRANS2(dev_priv, trans, _MTL_CLKGATE_DIS_TRANS_A)
>  #define  MTL_CLKGATE_DIS_TRANS_DMASC_GATING_DIS		REG_BIT(7)
>  
> +#define _MTL_PIPE_CLKGATE_DIS2_A			0x60114
> +#define _MTL_PIPE_CLKGATE_DIS2_B			0x61114
> +#define MTL_PIPE_CLKGATE_DIS2(pipe) \
> +	_MMIO_PIPE(pipe, _MTL_PIPE_CLKGATE_DIS2_A, _MTL_PIPE_CLKGATE_DIS2_B)

In the register definitions, please err towards longer lines.

> +#define   MTL_DPFC_GATING_DIS			REG_BIT(6)
> +
>  #define MTL_MEM_SS_INFO_GLOBAL			_MMIO(0x45700)
>  #define   MTL_N_OF_ENABLED_QGV_POINTS_MASK	REG_GENMASK(11, 8)
>  #define   MTL_N_OF_POPULATED_CH_MASK		REG_GENMASK(7, 4)

-- 
Jani Nikula, Intel
