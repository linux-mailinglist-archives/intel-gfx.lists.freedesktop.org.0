Return-Path: <intel-gfx-bounces@lists.freedesktop.org>
X-Original-To: lists+intel-gfx@lfdr.de
Delivered-To: lists+intel-gfx@lfdr.de
Received: from gabe.freedesktop.org (gabe.freedesktop.org [131.252.210.177])
	by mail.lfdr.de (Postfix) with ESMTPS id 83AE68A5681
	for <lists+intel-gfx@lfdr.de>; Mon, 15 Apr 2024 17:32:58 +0200 (CEST)
Received: from gabe.freedesktop.org (localhost [127.0.0.1])
	by gabe.freedesktop.org (Postfix) with ESMTP id B07AA10ECC8;
	Mon, 15 Apr 2024 15:32:56 +0000 (UTC)
Authentication-Results: gabe.freedesktop.org;
	dkim=pass (2048-bit key; unprotected) header.d=intel.com header.i=@intel.com header.b="cThdCRw1";
	dkim-atps=neutral
X-Original-To: intel-gfx@lists.freedesktop.org
Delivered-To: intel-gfx@lists.freedesktop.org
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.11])
 by gabe.freedesktop.org (Postfix) with ESMTPS id 4EC7710ECC8;
 Mon, 15 Apr 2024 15:32:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1713195176; x=1744731176;
 h=from:to:cc:subject:in-reply-to:references:date:
 message-id:mime-version;
 bh=wlHgv8Amspd+Xq86o+d83W/dxLCMdBOEtO5XIucxbac=;
 b=cThdCRw1wi+2/aSINJsmj5fIMhUbi2Ijjh8iisCQUmtLzj4JKfN9E6IG
 Z7HJQ2nwkzSsDZbTZapnXWxC7FdIrZtlk/Qyt8tjkJ5ZgHX0rHNVXDhOq
 QDxUOJvaXSme11JWnNySsHzVhRNVvAFOLB1Am6VweWbbFQsHcqpqmj8fk
 u8ty6o29gIYX1l0OwqdbNWr3d6Z1eGj4SFYsdL/lTxoK/e72+GHfHbEvw
 ey6aVcryBolQ3TrCEGi90PK40HsEN8g2wfRqI9N19z/AIpCcnuShT98ex
 jnQDMyB1rksqcKYu6hm8fKITqpIGTxwvvl4KAYY8qWAIJAlXZa/1SCBf1 w==;
X-CSE-ConnectionGUID: iCAXzLk1S3uCguLnhE87dQ==
X-CSE-MsgGUID: Pd6k5TlHTGOXGOFITxmnCQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11045"; a="19153809"
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="19153809"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 08:32:56 -0700
X-CSE-ConnectionGUID: ufqCz1fxRYalFECK2DIwBQ==
X-CSE-MsgGUID: E8x8ZDy9Qg+7JIfqnv71mA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,203,1708416000"; d="scan'208";a="22045738"
Received: from lcariou-mobl.ger.corp.intel.com (HELO localhost)
 ([10.252.61.121])
 by fmviesa007-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2024 08:32:52 -0700
From: Jani Nikula <jani.nikula@linux.intel.com>
To: Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com>,
 intel-xe@lists.freedesktop.org, intel-gfx@lists.freedesktop.org
Cc: Lucas De Marchi <lucas.demarchi@intel.com>, Matt Roper
 <matthew.d.roper@intel.com>, Balasubramani Vivekanandan
 <balasubramani.vivekanandan@intel.com>, Clint Taylor
 <Clinton.A.Taylor@intel.com>, Gustavo Sousa <gustavo.sousa@intel.com>
Subject: Re: [PATCH v3 08/21] drm/i915/xe2hpd: Add new C20 PHY SRAM address
In-Reply-To: <20240415081423.495834-9-balasubramani.vivekanandan@intel.com>
Organization: Intel Finland Oy - BIC 0357606-4 - Westendinkatu 7, 02160 Espoo
References: <20240415081423.495834-1-balasubramani.vivekanandan@intel.com>
 <20240415081423.495834-9-balasubramani.vivekanandan@intel.com>
Date: Mon, 15 Apr 2024 18:32:41 +0300
Message-ID: <87bk6a1w12.fsf@intel.com>
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

On Mon, 15 Apr 2024, Balasubramani Vivekanandan <balasubramani.vivekanandan@intel.com> wrote:
> diff --git a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> index bdd0c8c4ef97..23a79e911972 100644
> --- a/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> +++ b/drivers/gpu/drm/i915/display/intel_cx0_phy_regs.h
> @@ -254,24 +254,67 @@
>  #define PHY_C20_VDR_CUSTOM_WIDTH	0xD02
>  #define   PHY_C20_CUSTOM_WIDTH_MASK	REG_GENMASK(1, 0)
>  #define   PHY_C20_CUSTOM_WIDTH(val)	REG_FIELD_PREP8(PHY_C20_CUSTOM_WIDTH_MASK, val)
> -#define PHY_C20_A_TX_CNTX_CFG(idx)	(0xCF2E - (idx))
> -#define PHY_C20_B_TX_CNTX_CFG(idx)	(0xCF2A - (idx))

The style absolutely everywhere is to define the values with prefix
underscore right above the macro that uses them. Please just look
around. Look at the big comment near the top of i915_reg.h.

No need for the _ADDR suffix.

Please also add a helper to choose which one to use instead of
duplicating absolutely everywhere.

Something like this:

#define _IS_XE2HPD_C20(i915)	(DISPLAY_VER_FULL(i915) == IP_VER(14, 1))

#define _MTL_C20_A_TX_CNTX_CFG		0xcf2e
#define _XE2HPD_C20_A_TX_CNTX_CFG	0xcf5e
#define PHY_C20_A_TX_CNTX_CFG(i915, idx) \
	((_IS_XE2HPD_C20(i915) ? _XE2HPD_C20_A_TX_CNTX_CFG : _MTL_C20_A_TX_CNTX_CFG) - (idx))

And that's enough wrapping, no need to split across four lines.

BR,
Jani.


> +
> +#define PHY_C20_A_TX_CNTX_CFG(i915, idx)	\
> +		(((DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) ? \
> +		XE2HPD_C20_A_TX_CNTX_CFG_ADDR : MTL_C20_A_TX_CNTX_CFG_ADDR) - \
> +		(idx))
> +#define PHY_C20_B_TX_CNTX_CFG(i915, idx)	\
> +		(((DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) ? \
> +		XE2HPD_C20_B_TX_CNTX_CFG_ADDR : MTL_C20_B_TX_CNTX_CFG_ADDR) - \
> +		(idx))
>  #define   C20_PHY_TX_RATE		REG_GENMASK(2, 0)
> -#define PHY_C20_A_CMN_CNTX_CFG(idx)	(0xCDAA - (idx))
> -#define PHY_C20_B_CMN_CNTX_CFG(idx)	(0xCDA5 - (idx))
> -#define PHY_C20_A_MPLLA_CNTX_CFG(idx)	(0xCCF0 - (idx))
> -#define PHY_C20_B_MPLLA_CNTX_CFG(idx)	(0xCCE5 - (idx))
> +#define PHY_C20_A_CMN_CNTX_CFG(i915, idx)	\
> +		(((DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) ? \
> +		XE2HPD_C20_A_CMN_CNTX_CFG_ADDR : MTL_C20_A_CMN_CNTX_CFG_ADDR) - \
> +		(idx))
> +#define PHY_C20_B_CMN_CNTX_CFG(i915, idx)	\
> +		(((DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) ? \
> +		XE2HPD_C20_B_CMN_CNTX_CFG_ADDR : MTL_C20_B_CMN_CNTX_CFG_ADDR) - \
> +		(idx))
> +#define PHY_C20_A_MPLLA_CNTX_CFG(i915, idx)	\
> +		(((DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) ? \
> +		XE2HPD_C20_A_MPLLA_CFG_ADDR : MTL_C20_A_MPLLA_CFG_ADDR) - \
> +		(idx))
> +#define PHY_C20_B_MPLLA_CNTX_CFG(i915, idx)	\
> +		(((DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) ? \
> +		XE2HPD_C20_B_MPLLA_CFG_ADDR : MTL_C20_B_MPLLA_CFG_ADDR) - \
> +		(idx))
>  #define   C20_MPLLA_FRACEN		REG_BIT(14)
>  #define   C20_FB_CLK_DIV4_EN		REG_BIT(13)
>  #define   C20_MPLLA_TX_CLK_DIV_MASK	REG_GENMASK(10, 8)
> -#define PHY_C20_A_MPLLB_CNTX_CFG(idx)	(0xCB5A - (idx))
> -#define PHY_C20_B_MPLLB_CNTX_CFG(idx)	(0xCB4E - (idx))
> +#define PHY_C20_A_MPLLB_CNTX_CFG(i915, idx)	\
> +		(((DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) ? \
> +		XE2HPD_C20_A_MPLLB_CFG_ADDR : MTL_C20_A_MPLLB_CFG_ADDR) - \
> +		(idx))
> +#define PHY_C20_B_MPLLB_CNTX_CFG(i915, idx)	\
> +		(((DISPLAY_VER_FULL(i915) == IP_VER(14, 1)) ? \
> +		XE2HPD_C20_B_MPLLB_CFG_ADDR : MTL_C20_B_MPLLB_CFG_ADDR) - \
> +		(idx))
>  #define   C20_MPLLB_TX_CLK_DIV_MASK	REG_GENMASK(15, 13)
>  #define   C20_MPLLB_FRACEN		REG_BIT(13)
>  #define   C20_REF_CLK_MPLLB_DIV_MASK	REG_GENMASK(12, 10)
>  #define   C20_MULTIPLIER_MASK		REG_GENMASK(11, 0)
>  #define   C20_PHY_USE_MPLLB		REG_BIT(7)
>  
> +#define MTL_C20_A_TX_CNTX_CFG_ADDR	0xCF2E
> +#define MTL_C20_B_TX_CNTX_CFG_ADDR	0xCF2A
> +#define MTL_C20_A_CMN_CNTX_CFG_ADDR	0xCDAA
> +#define MTL_C20_B_CMN_CNTX_CFG_ADDR	0xCDA5
> +#define MTL_C20_A_MPLLA_CFG_ADDR	0xCCF0
> +#define MTL_C20_B_MPLLA_CFG_ADDR	0xCCE5
> +#define MTL_C20_A_MPLLB_CFG_ADDR	0xCB5A
> +#define MTL_C20_B_MPLLB_CFG_ADDR	0xCB4E
> +
> +#define XE2HPD_C20_A_TX_CNTX_CFG_ADDR	0xCF5E
> +#define XE2HPD_C20_B_TX_CNTX_CFG_ADDR	0xCF5A
> +#define XE2HPD_C20_A_CMN_CNTX_CFG_ADDR	0xCE8E
> +#define XE2HPD_C20_B_CMN_CNTX_CFG_ADDR	0xCE89
> +#define XE2HPD_C20_A_MPLLA_CFG_ADDR	0xCE58
> +#define XE2HPD_C20_B_MPLLA_CFG_ADDR	0xCE4D
> +#define XE2HPD_C20_A_MPLLB_CFG_ADDR	0xCCC2
> +#define XE2HPD_C20_B_MPLLB_CFG_ADDR	0xCCB6
> +
>  /* C20 Phy VSwing Masks */
>  #define C20_PHY_VSWING_PREEMPH_MASK	REG_GENMASK8(5, 0)
>  #define C20_PHY_VSWING_PREEMPH(val)	REG_FIELD_PREP8(C20_PHY_VSWING_PREEMPH_MASK, val)

-- 
Jani Nikula, Intel
